#!/usr/bin/python
## #!/usr/bin/python

import os, errno
import sys
from operator import attrgetter

#find out the file location within the sources tree
global pathLen,this_module_dir_path
this_module_dir_path = os.path.abspath ( os.path.dirname( sys.modules[__name__].__file__) )
pathLen = len(this_module_dir_path)
#find out gccxml location
#gccxml_09_path = os.path.join( this_module_dir_path, '..', '..', '..', 'gccxml_bin', 'v09', sys.platform, 'bin' )
gccxml_09_path = os.path.join( 'gccxml' )
#add pygccxml package to Python path
#sys.path.append( os.path.join( this_module_dir_path, '..', '..' ) )

print this_module_dir_path
from pygccxml import parser
from pygccxml import declarations

#configure GCC-XML parser
config = parser.config_t( gccxml_path=gccxml_09_path, compiler='gcc' )

#parsing source file
decls = parser.parse( ['HaskellBulletAPI.h'], config )
global_ns = declarations.get_global_namespace( decls )

#from bulletCfg import *

#{#fun  [pure] [unsafe] cid [as (hsid | ^)] [ctxt =>] { parm1 , ... , parmn } -> parm
#{#class [hsid1 =>] hsid2 hsid3#}
# class example

#{#pointer *GtkWidget newtype#}
#{#class GtkObjectClass => GtkWidgetClass GtkWidget#}

# Overview:
#   from c++ headers collect methods and synthetize following things
#       - c binding code
#       - hsc binding code
#
#   type representations
#       - c type representation (unsafe)
#       - haskell type representation (nice, typesafe)
#
#   data type binding chain should look like
#       haskell -> c -> c++
#
#       - some types are simple types, they are passed by value
#       - some types are transformed into value representation (called glued type)
#       - other types are just passed as pointers
#

# Roadmap: 2010. augusztus 22. and 29.
#   done - allocate objects using aligned allocator
#   done - support embedded classes: ex ::btRaycastVehicle::btVehicleTuning
#   done - support static class method binding
#   done - modified: generate separate chs files for each class in separate module
#     this will help generate haddock documentation
#     example module design: Physics.BulletRaw - imports all classes
#                            Physics.BulletRaw.Class_1
#                            ...
#     we generate paragraphs instead of separated modules
#     Hint: paragraph notation
#       -- ** Embedding producers into IO 
#       -- * Embedding producers into IO 
#   done - generate haddock URL-s which points to bullet source files from google code repository
#       Hint: http://code.google.com/p/bullet/source/browse/tags/bullet-2.76/src/BulletDynamics/Vehicle/btRaycastVehicle.h#79
#   done - split into more modules: according the first two level of directory hierachy
#   done - generate sophisticated binding functions:
#          skip incoming parameter of getter functions 
#          or for non const glue types generate two functions:
#            method  :: Glue -> IO Glue
#            method' :: IO Glue 
#   done - generate destructor methods
#   skip because vector math is not installed (bullet build system problem) - bind more classes: multithread support
#   - generate unsafe binding functions 
#   - support arrays of supported types
#   - support jhc

# Todo: 2010. augusztus 23.
#   done - refactor objList (use more sophisticated solution based on types)
#   done - support Obj pointer getters (this requires a design, we should support garbage collecion)
#   done - support overloaded functions (idea: postfix number or tag like btRigidBody1, btRigidBody_1 or btRigidBodyC1, guarantee consistency via method declaration sorting)
#   - support operator overloading (idea: replace operator names)
#   - support glue haskell types via Storable typeclass
#       Minimal complete definition: sizeOf, alignment, one of peek, peekElemOff and peekByteOff, and one of poke, pokeElemOff and pokeByteOff.
#   - bind enums
# Todo: 2010. oktober 11.
#   - use Vect library as default vector lib
#   - add arg names to haddock comments

global hSrc, cppSrc, chsSrc, hsAttrs
hSrc    = ''
cppSrc  = ''
chsSrc  = ''
hsAttrs = {}

global docLink
#docLink = 'http://code.google.com/p/bullet/source/browse/tags/bullet-2.77/src'
#http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btContactProcessing.cpp?r=1630#34    
docLink = 'http://code.google.com/p/bullet/source/browse/trunk/src'

btScalar = global_ns.typedef(name='btScalar').type.decl_string
# (C type, Haskell type, inMashaller, outMarshaller)
primTypes = { 'void'                        : ('void',              '()',       '',                 '')
            , 'bool'                        : ('int',               'Bool',     '',                 '')
            , 'char'                        : ('char',              'Char',     'castCharToCChar',  'castCCharToChar')
            , 'unsigned char'               : ('unsigned char',     'Char',     'castCharToCUChar', 'castCUCharToChar')
            , 'short'                       : ('short',             'Int',      '',                 '')
            , 'short int'                   : ('short int',         'Int',      '',                 '')
            , 'short unsigned int'          : ('short unsigned int','Int',      '',                 '')
            , 'int'                         : ('int',               'Int',      '',                 '')
            , 'unsigned int'                : ('unsigned int',      'Word32',   '',                 '')
            , 'long'                        : ('long',              'Int',      '',                 '')
            , 'long unsigned int'           : ('long unsigned int', 'Word64',   '',                 '')
            , 'float'                       : ('float',             'Float',    '',                 '')
            , 'double'                      : ('double',            'Double',   '',                 '')
            #, 'void *'                      : ('void *',            'Ptr ()',   'withVoidPtr',      'peekVoidPtr')
            , 'char *'                      : ('char *',            'String',   '',                 '')
            , 'char const *'                : ('char const *',      'String',   '',                 '')
            , '::btScalar'                  : (btScalar,            'Float',    '',                 '')
            , '::btScalar const &'          : (btScalar,            'Float',    '',                 '')
            }

def idGlue(n,t):                return ''
def toVector3Glue(n,t):         return '\tbtVector3 %s(%s[0],%s[1],%s[2]);\n'%(t,n,n,n)
def fromVector3Glue(n,t):       return '\t%s[0]=%s.m_floats[0];%s[1]=%s.m_floats[1];%s[2]=%s.m_floats[2];\n'%(n,t,n,t,n,t)
def toQuaternionGlue(n,t):      return '\tbtQuaternion %s(%s[0],%s[1],%s[2],%s[3]);\n'%(t,n,n,n,n)
def fromQuaternionGlue(n,t):    return '\t%s[0]=%s.getX();%s[1]=%s.getY();%s[2]=%s.getZ();%s[3]=%s.getW();\n'%(n,t,n,t,n,t,n,t)
def toVector4Glue(n,t):         return '\tbtVector4 %s(%s[0],%s[1],%s[2],%s[3]);\n'%(t,n,n,n,n)
def fromVector4Glue(n,t):       return '\t%s[0]=%s.getX();%s[1]=%s.getY();%s[2]=%s.getZ();%s[3]=%s.getW();\n'%(n,t,n,t,n,t,n,t)
def toMatrix3x3Glue(n,t):       return '\tbtMatrix3x3 %s(%s[0],%s[1],%s[2],%s[3],%s[4],%s[5],%s[6],%s[7],%s[8]);\n'%(t,n,n,n,n,n,n,n,n,n)
def fromMatrix3x3Glue(n,t):     return '\t%s[0]=%s.getRow(0).m_floats[0];%s[1]=%s.getRow(0).m_floats[1];%s[2]=%s.getRow(0).m_floats[2];%s[3]=%s.getRow(1).m_floats[0];%s[4]=%s.getRow(1).m_floats[1];%s[5]=%s.getRow(1).m_floats[2];%s[6]=%s.getRow(2).m_floats[0];%s[7]=%s.getRow(2).m_floats[1];%s[8]=%s.getRow(2).m_floats[2];\n'%(n,t,n,t,n,t,n,t,n,t,n,t,n,t,n,t,n,t)
def toTransformGlue(n,t):
    return (    '\tbtMatrix3x3 m%s(%s[0],%s[1],%s[2],%s[3],%s[4],%s[5],%s[6],%s[7],%s[8]);\n'%(t,n,n,n,n,n,n,n,n,n) +
                '\tbtVector3 v%s(%s[9],%s[10],%s[11]);\n'%(t,n,n,n) +
                '\tbtTransform %s(m%s,v%s);\n'%(t,t,t))
def fromTransformGlue(n,t):
    t2 = t+'.getOrigin()'
    return (    fromMatrix3x3Glue(n,t+'.getBasis()') +
                '\t%s[9]=%s.m_floats[0];%s[10]=%s.m_floats[1];%s[11]=%s.m_floats[2];\n'%(n,t2,n,t2,n,t2))
    
glueMap = { 'btVector3'     : ('Vec3',           btScalar + '*', toVector3Glue,      fromVector3Glue)
          , 'btVector4'     : ('Vec4',           btScalar + '*', toVector4Glue,      fromVector4Glue)
          , 'btQuaternion'  : ('UnitQuaternion', btScalar + '*', toQuaternionGlue,   fromQuaternionGlue)
          , 'btMatrix3x3'   : ('Mat3',           btScalar + '*', toMatrix3x3Glue,    fromMatrix3x3Glue)
          , 'btTransform'   : ('Transform',      btScalar + '*', toTransformGlue,    fromTransformGlue)
          }

templateBlacklist = [
    ]

methodBlacklist = [
    'btAxisSweep3Internal_unsignedint__processAllOverlappingPairs',
    'btAxisSweep3Internal_unsignedshort__processAllOverlappingPairs',
    'btGeometryUtil_isInside',
    'btMultiSapBroadphase_quicksort',
    'btQuantizedBvh_walkRecursiveQuantizedTreeAgainstQuantizedTree',
    'btSoftBody_RayFromToCaster_rayFromToTriangle',
    'cProfileIterator_Enter_Largest_Child',
    ]

methodPostfixBlacklist = [
    '__findBinarySearch',
    '__copyFromArray',
    '__findLinearSearch',
    '__remove',
    ]

attrClassWhitelist = [
#    'BtConeTwistConstraint',
#    'BtSliderConstraint',
#    'BtHingeConstraint',
#    'BtHinge2Constraint',
#    'BtRotationalLimitMotor',
#    'BtTranslationalLimitMotor',
#    'BtGeneric6DofConstraint',
#    'BtGeneric6DofSpringConstraint',
#    'BtPoint2PointConstraint',
#    'BtUniversalConstraint',
    'btTypedConstraint',
    'btCollisionObject',
    ]

attrClassBlacklist = [
    'btSoftBody',
    ]

def hsFnName(s):
    return s[0:1].lower() + s[1:]

def className(c):
    return c.decl_string[2:].replace('::','_').replace('*','_ptr').replace('<','_').replace('>','_').replace(' ','').replace(',','_')

selectedClass = []
def matcherFun(m):
    def isInPublicScope(n):
        if declarations.type_traits.is_class(n):
            o = n
            p = n.parent
            while p != None:
                if declarations.type_traits.is_class(p):
                    if not o in p.public_members:
                        print 'exclude', n
                        return False
                o = p
                p = p.parent
        return True
    global pathLen,this_module_dir_path
    l = m.location.as_tuple()[0]
    if (not className(m)[0] in ['_']) & \
       (l[:pathLen] == this_module_dir_path) & \
       ('vectormath' not in l[pathLen:].split('/')) & \
       (m.name not in glueMap) & \
       (not m.decl_string in selectedClass):
        selectedClass.append(m.decl_string)
        if declarations.templates.is_instantiation(m.decl_string):
            if m.decl_string in templateBlacklist:
                print 'exclude <template, on blacklist>', m
                return False
            for a in declarations.templates.split(m.decl_string)[1]:
                # make class from decl string
                ty = declarations.type_traits.impl_details.find_value_type(global_ns,a)
                if ty == None:
                    return True
                ty = declarations.type_traits.base_type(ty)
                baseTy = declarations.type_traits.decompose_class(ty)
                if isinstance(ty,declarations.cpptypes.declarated_t):
                    ty = ty.declaration
                c = ty # baseTy # .declaration
                if not isInPublicScope(c):
                    print 'exclude <template>', m
                    return False
        if isInPublicScope(m):
            return True
        else:
            print 'exclude', m
            return False
    else:
        print 'exclude', m
        return False

classList = sorted(global_ns.classes(header_dir=this_module_dir_path, function = declarations.custom_matcher_t(matcherFun) & (~(declarations.access_type_matcher_t( 'private' ) | declarations.access_type_matcher_t( 'protected' )) )), key=attrgetter('name'))
enumList = sorted(global_ns.enums(header_dir=this_module_dir_path), key=attrgetter('name'))

tyNone = 0
tyPrim = 1
tyGlue = 2
tyObj  = 3

def isGlueType(ty):
    ty = declarations.type_traits.remove_reference(declarations.type_traits.remove_cv(ty)) 
    ty = declarations.type_traits.remove_cv(ty)
    baseTy = declarations.type_traits.base_type(ty)
    if  (declarations.type_traits.is_fundamental(baseTy)) | (not declarations.type_traits.is_class(ty)) | (not declarations.type_traits.is_same(baseTy,ty)):
        return False
    if baseTy.declaration.name in glueMap:
        return True
    return False

def isObjType(ty):
    ty = declarations.type_traits.remove_cv(ty)
    if declarations.type_traits.is_reference(ty):
        ty = declarations.type_traits.remove_reference(ty)
        ty = declarations.type_traits.remove_cv(ty)
        if declarations.type_traits.is_pointer(ty):
            ty = declarations.type_traits.remove_pointer(ty)
    elif declarations.type_traits.is_pointer(ty):
        ty = declarations.type_traits.remove_pointer(ty)
    else:
        return False
    ty = declarations.type_traits.remove_cv(ty)
    baseTy = declarations.type_traits.base_type(ty)
    if  (declarations.type_traits.is_fundamental(baseTy)) | (not declarations.type_traits.is_class(ty)) | (not declarations.type_traits.is_same(baseTy,ty)):
        return False
    if baseTy.declaration in classList:
        return True
    return False
    
def typeKind(ty):
    if ty.decl_string in primTypes:
        return tyPrim
    elif isGlueType(ty):
        return tyGlue
    elif isObjType(ty):
        return tyObj
    else:
        return tyNone

def simplifyObjType(ty0):
    ty = ty0
    if isObjType(ty):
        ty = declarations.type_traits.remove_cv(ty)
        if declarations.type_traits.is_reference(ty):
            ty = declarations.type_traits.remove_reference(ty)
            ty = declarations.type_traits.remove_cv(ty)
            if declarations.type_traits.is_pointer(ty):
                return ty
    return ty0

def hsPtr(c):
    s = className(c)
    return s[0:1].capitalize() + s[1:]

def hsName(s):
    return s[0:1].capitalize() + s[1:]

def hsTyClass(c):
    return hsPtr(c) + 'Class'
    
# result tuple: (Haskell type, C param type name, C param name, C++ param name, pre call glue code, post call glue code)
#   [0] -   Haskell type
#   [1] -   Haskell inMarshall function
#   [2] -   Haskell outMarshall function
#   [3] -   C param type name
#   [4] -   C param name
#   [5] -   C++ param name
#   [6] -   C++ pre call glue code
#   [7] -   C++ post call glue code
class BindType:
    def __init__(self,tt,n):
        tt = simplifyObjType(tt)
        self.typeRef = tt
        self.isTypeOk = True
        t = tt.decl_string
        if t == 'void *':
            # hack for void * support
            self.kind = tyObj
            n2 = 't'+n
            self.isConst = True
            self.hscType = ' `VoidPtr\' '
            self.hscTypeVar = ' `'+ n + '\' '
            self.hsTypeContext = ''
            self.hsWith = 'withVoidPtr*'
            self.hsPeek = 'peekVoidPtr*'
            self.hsMk = 'mkVoidPtr*'
            self.hsAlloca = ''
            self.cVarType = 'void*'
            self.cVar = n
            self.cppVar = n2
            self.cppPre = '\t%s %s = (%s)%s;\n'%(t,n2,t,n)
            self.cppPost = ''
            self.cppToFn = idGlue
            self.cppFromFn = idGlue
            return

        kind = typeKind(tt)
        self.kind = kind
        if kind == tyPrim:
            self.isConst = True
            self.hscType = ' `' + primTypes[t][1] + '\' '
            self.hscTypeVar = self.hscType # FIXME
            self.hsTypeContext = ''
            self.hsWith = primTypes[t][2]
            self.hsPeek = primTypes[t][3]
            self.hsMk = primTypes[t][3]
            self.hsAlloca = ''
            self.cVarType = primTypes[t][0]
            self.cVar = n
            self.cppVar = n
            self.cppPre = ''
            self.cppPost = ''
            self.cppToFn = idGlue
            self.cppFromFn = idGlue
        elif kind == tyGlue:
            classDecl = declarations.type_traits.base_type(tt).declaration
            (hscType,cVarType,pre,post) = glueMap[classDecl.name]
            n2 = 't'+n
            self.isConst = declarations.type_traits.is_const(tt)
            self.hscType = ' `' + hscType + '\' '
            self.hscTypeVar = '' #' `'+ n + '\' '
            self.hsTypeContext = '' #' ' + hsTyClass(c) + ' ' + n + ' '
            self.hsWith = 'with' + hscType + '*'
            self.hsPeek = 'peek' + hscType + '*'
            #self.hsWith = 'withBt*'
            #self.hsPeek = 'peekBt*'
            self.hsMk = ''
            self.hsAlloca = 'alloca' + hscType
            self.cVarType = cVarType
            self.cVar = n
            self.cppVar = n2
            self.cppPre = pre(n,n2)
            self.cppPost = '' if self.isConst else post(n,n2)
            self.cppToFn = pre
            self.cppFromFn = idGlue if self.isConst else post
        elif kind == tyObj:
            classDecl = declarations.type_traits.base_type(tt).declaration
            n2 = 't'+n
            self.isConst = True
            self.hscType = ' `' + hsPtr(classDecl) + '\' '
            #self.hscType = ' `' + hsPtr(classDecl) + '\' mk' + hsPtr(classDecl) + '* '
            self.hscTypeVar = ' `'+ n + '\' '
            self.hsTypeContext = ' ' + hsTyClass(classDecl) + ' ' + n + ' '
            self.hsWith = 'withBt*'
            self.hsPeek = ''
            self.hsMk = 'mk' + hsPtr(classDecl) + '*'
            self.hsAlloca = ''
            self.cVarType = 'void*'
            self.cVar = n
            self.cppVar = n2
            if declarations.type_traits.is_reference(tt):
                self.cppPre = '\t%s %s = *(%s *)%s;\n'%(t,n2,declarations.type_traits.remove_reference(tt).decl_string,n)
            else:
                self.cppPre = '\t%s %s = (%s)%s;\n'%(t,n2,t,n)
            self.cppPost = ''
            self.cppToFn = idGlue
            self.cppFromFn = idGlue
        else:
            self.isTypeOk = False
            print 'type binding error %s %s' % (tt,n)

def bindType((tt,n)):
    return BindType(tt,n)

def C(l):
    return ''.join(l)

def L(l):
    return ','.join(l)

def L2(l,k):
    # FIXME: c2hs does not supoort haddock comments
    cnt = len(l)
    s = ''
    for a,b in zip(l,k):
        s += a + ' -- ^ ' + b + ('\n' if cnt == 1 else '\n,')
        cnt -= 1
    return s

def cArgs(l):
    return map(lambda a: '%s %s'%(a.cVarType,a.cVar), l)

def cppArgs(l):
    return map(lambda a: a.cppVar, l)

def cppPres(l):
    return map(lambda bt: bt.cppPre, l)
    
def cppPosts(l):
    return map(lambda bt: bt.cppPost, l)

def okArgs(l):
    return reduce(lambda r,bt: r and bt.isTypeOk, l, True)

def errorArgs(l):
    return ', '.join(map(lambda bt: bt.typeRef.decl_string + ' - ok' if bt.isTypeOk else ' - unsupported', l))

def hsCtxs(l):
    return filter(lambda r: r!='',map(lambda bt: bt.hsTypeContext, l))

#def hscTys(l):
#    return map(lambda bt: bt.hscType, l)

def hscTysTo(l):
    def f(a):
        if a.hsTypeContext == '': 
            return a.hscType 
        else: 
            return a.hscTypeVar

    return map(lambda bt: ' ' + bt.hsWith + f(bt), l)
#    return map(lambda bt: ' ' + bt.hsWith + bt.hscTypeVar, l)

def hscTysFrom(l):
    def f(a):
        if a.hsTypeContext == '': 
            return a.hscType 
        else: 
            return a.hscTypeVar

    return map(lambda bt: ' ' + bt.hsAlloca + '- ' + f(bt) + ' ' + bt.hsPeek, l)
#    return map(lambda bt: ' ' + bt.hsWith + bt.hscTypeVar, l)

def hscTysToFrom(l):
#                chsSrc += '    { withBt* `bc\' , ' + arg.hsAlloca + '- ' + arg.hscType + ' ' + arg.hsPeek + ' } -> `()\' #}\n'
    def f(a):
        if a.hsTypeContext == '': 
            return a.hscType 
        else: 
            return a.hscTypeVar
    def g(a):
        if a.isConst:
            return ''
        else:
            return ' ' + a.hsPeek
    return map(lambda bt: ' ' + bt.hsWith + f(bt) + g(bt), l)
#    return map(lambda bt: ' ' + bt.hsWith + bt.hscTypeVar, l)

def hscTysToFromAllocaGlue(l):
#                chsSrc += '    { withBt* `bc\' , ' + arg.hsAlloca + '- ' + arg.hscType + ' ' + arg.hsPeek + ' } -> `()\' #}\n'
    def f(a):
        if a.hsTypeContext == '': 
            return a.hscType 
        else: 
            return a.hscTypeVar
    def g(a):
        if a.isConst:
            return ''
        else:
            return ' ' + a.hsPeek
    return map(lambda bt: ' ' + (bt.hsWith if bt.kind != tyGlue else bt.hsAlloca + '- ') + f(bt) + g(bt), l)
#    return map(lambda bt: ' ' + bt.hsWith + bt.hscTypeVar, l)

def hintA(s,m):
    return '//attribute: ' + m.type.decl_string + ' ' + s + '->' + m.name + '\n'

def hintM(m):
    return '//method: ' + m.name + ' ' + m.decl_string + '\n'

def hintC(m):
    return '//constructor: ' + m.name + ' ' + m.decl_string + '\n'

def docStr(o):
    (l,n) = o.location.as_tuple()
    return '<' + docLink + l[pathLen:] + '?r=2223#' + str(n) + '>'
    
def emitAttrBinding(c,m):
    global hSrc, cppSrc, chsSrc, hsAttrs
    s = hsFnName(className(c))
    ct = c.partial_decl_string
    cppSrc += hintA(s,m)

    # object type support
    ty = m.type
    ty0 = ty
    isClass = False
    hasAssign = False
    if declarations.type_traits.is_class(ty):
        hasAssign = declarations.type_traits.has_public_assign(ty)
        ty = declarations.cpptypes.reference_t(ty)
        isClass = True

    arg = bindType((ty,'a'))
    arg0 = bindType((ty0,'a'))
    if arg0.kind == tyGlue:
        arg = arg0
        isClass = False

    if not arg.isTypeOk:
        hSrc += '// attribute not supported: ' + hintA(s,m)
        cppSrc += '// attribute not supported: ' + hintA(s,m)
        return

    hasSetter = False
    hasGetter = True
    lnksrc = m.location.as_tuple()[0].replace('.h','.cpp')
    # setter - this is generic for every type
    if not isClass or hasAssign:
        hSrc += 'void ' + s + '_' + m.name + '_set(' + L(['void *c'] + cArgs([arg])) + '); ' + hintA(s,m)
    
        cppSrc += 'void ' + s + '_' + m.name + '_set(' + L(['void *c'] + cArgs([arg])) + ') {\n'
        cppSrc += '\t' + ct + ' *o = (' + ct + '*)c;\n'
        cppSrc += C(cppPres([arg]))
        # needs copy operator
        cppSrc += '\to->' + m.name + ' = ' + L(cppArgs([arg])) + ';\n'
        cppSrc += '}\n' 
    
        chsSrc += '{- | ' + docStr(m) + '\n'
        chsSrc += '     <' + docLink + lnksrc[pathLen:] + '?r=2223>\n'
        chsSrc += '-}\n'

        chsSrc += '{#fun ' + s + '_' + m.name + '_set'
        chsSrc += '    `( '+ L([hsTyClass(c) + ' bc '] + hsCtxs([arg])) + ')\' => '
        chsSrc += '    { ' + L(['withBt* `bc\' '] + hscTysTo([arg])) + ' } -> `()\' #}\n'
        hasSetter = True
    # getter
    if arg.kind in [tyPrim, tyObj]: # TODO: add tyObj
        hSrc += arg.cVarType + ' ' + s + '_' + m.name + '_get(void *c); ' + hintA(s,m)

        cppSrc += arg.cVarType + ' ' + s + '_' + m.name + '_get(void *c) {\n'
        cppSrc += '\t' + ct + ' *o = (' + ct + '*)c;\n'
        if isClass or declarations.type_traits.is_reference(ty):
            cppSrc += '\treturn (' + arg.cVarType + ')&(o->' + m.name + ');\n'
        else:
            cppSrc += '\treturn (' + arg.cVarType + ')(o->' + m.name + ');\n'
        cppSrc += '}\n'
        cppSrc += '\n'

        #chsSrc += '-- | ' + docStr(m) + '\n'
        chsSrc += '{- | ' + docStr(m) + '\n'
        chsSrc += '     <' + docLink + lnksrc[pathLen:] + '?r=2223>\n'
        chsSrc += '-}\n'
        chsSrc += '{#fun ' + s + '_' + m.name + '_get'
        chsSrc += '    `( '+ hsTyClass(c) + ' bc )\' => '
        chsSrc += '    { withBt* `bc\'  } -> ' + arg.hscType + ' ' + arg.hsMk +' #}\n'

    elif arg.kind == tyGlue:
        hSrc += 'void ' + s + '_' + m.name + '_get(' + L(['void *c'] + cArgs([arg])) + ');\n'
        
        cppSrc += 'void ' + s + '_' + m.name + '_get(' + L(['void *c'] + cArgs([arg])) + ') {\n'
        cppSrc += '\t' + ct + ' *o = (' + ct + '*)c;\n'
        cppSrc += arg.cppFromFn(arg.cVar,'(o->' + m.name + ')')
        cppSrc += '}\n'
        cppSrc += '\n'

        #chsSrc += '-- | ' + docStr(m) + '\n'
        chsSrc += '{- | ' + docStr(m) + '\n'
        chsSrc += '     <' + docLink + lnksrc[pathLen:] + '?r=2223>\n'
        chsSrc += '-}\n'
        chsSrc += '{#fun ' + s + '_' + m.name + '_get'
        chsSrc += '    `( '+ hsTyClass(c) + ' bc )\' => '
        chsSrc += '    { withBt* `bc\' , ' + arg.hsAlloca + '- ' + arg.hscType + ' ' + arg.hsPeek + ' } -> `()\' #}\n'
    else:
        hSrc += '// attribute getter not supported: ' + hintA(s,m)
        cppSrc += '// attribute getter not supported: ' + hintA(s,m)
        hasGetter = False

    def checkAttrClass(n):
        bases = [b.related_class.name for b in c.recursive_bases]
        bases.append(n.name)
        white = False
        black = False
        for a in bases:
            if a in attrClassWhitelist:
                white = True
            if a in attrClassBlacklist:
                black = True
        if black:
            return False
        return white

    if checkAttrClass(c) and hasGetter and hasSetter:
        def cln(a): return a.replace("'","").replace('`','')

        # calculate attrName
        attrName = m.name
        if len(attrName) > 2 and attrName[0:2] == 'm_' and not attrName[2].isdigit():
            attrName = attrName[2:]
        attrName = hsFnName(attrName)
        if attrName in ['data']: # haskell keywords
            attrName += "'"

        attrType = cln(arg.hscType).split()[0]
        attrGetter = s + '_' + m.name + '_get'
        attrSetter = s + '_' + m.name + '_set'
        attrBtType = hsPtr(c)
        entry = (attrBtType,attrGetter,attrSetter)
        if attrName in hsAttrs:
            if attrType in hsAttrs[attrName]:
                hsAttrs[attrName][attrType].append(entry)
            else:
                hsAttrs[attrName][attrType] = [entry]
        else:
            hsAttrs[attrName] = {attrType: [entry]}

def getHsc(c,retType,argtypes,m,postfixC,_hscTysToFrom,postfix,args):
    s = hsFnName(className(c))
    chsSrc = ''
    static = m.has_static
    #chsSrc += '-- | ' + ' -> '.join(args) + '  ' + docStr(m) + '\n'
    #chsSrc += '-- | ' + docStr(m) + '\n'
    lnksrc = m.location.as_tuple()[0].replace('.h','.cpp')
    chsSrc += '{- | ' + docStr(m) + '\n'
    chsSrc += '     <' + docLink + lnksrc[pathLen:] + '?r=2223>\n'
    chsSrc += '-}\n'
    chsSrc += '{#fun ' + s + '_' + m.name + postfixC + ' as ' + s + '_' + m.name + postfix
    if static:
        chsSrc += '    `( '+ L(hsCtxs(argtypes)) + ')\' => '
    else:
        chsSrc += '    `( '+ L([hsTyClass(c) + ' bc '] + hsCtxs(argtypes)) + ')\' => '
    if retType.kind == tyGlue:
        if static:
            chsSrc += '    { ' + L2(_hscTysToFrom(argtypes) + hscTysFrom([retType]),args + ['']) +' } -> `()\' #}\n'
        else:
            chsSrc += '    { ' + L2(['withBt* `bc\' '] + _hscTysToFrom(argtypes) + hscTysFrom([retType]),[''] + args + ['']) +' } -> `()\' #}\n'
    elif retType.kind in [tyObj,tyPrim]:
        if static:
            chsSrc += '    { ' + L2(_hscTysToFrom(argtypes), args) +' } -> ' + retType.hscType + ' ' + retType.hsMk + ' #}\n'
        else:
            chsSrc += '    { ' + L2(['withBt* `bc\' '] + _hscTysToFrom(argtypes), [''] + args) +' } -> ' + retType.hscType + ' ' + retType.hsMk + ' #}\n'
    return chsSrc
    
def genHsc(c,retType,argtypes,m,postfix,postfixC,args):
    global hSrc, cppSrc, chsSrc
    isConst = reduce(lambda r,bt: r and bt.isConst, argtypes, True)
    chsSrc += getHsc(c,retType,argtypes,m,postfixC,hscTysToFrom,postfix,args)
    if not isConst:
        chsSrc += getHsc(c,retType,argtypes,m,postfixC,hscTysToFromAllocaGlue,postfix+'\'',args)

def emitMethodBinding(c,m,postfix='',postfixC=''):
    global hSrc, cppSrc, chsSrc
    s = hsFnName(className(c))
    methodName = s + '_' + m.name + postfixC
    if methodName in methodBlacklist or any([methodName.endswith(n) for n in methodPostfixBlacklist]):
        print 'exclude method', methodName
        return
    ct = c.partial_decl_string
    args = map(bindType,zip([a for a in m.argument_types],[('p%i'%p) for p in range(len(m.argument_types))]))
    retType = bindType((m.return_type,'ret'))
    # static method
    # btGImpactCollisionAlgorithm::registerAlgorithm(dispatcher);
    static = m.has_static
    if okArgs(args + [retType]):
        genHsc(c,retType,args,m,postfix,postfixC, map(lambda a: a.name, m.arguments))
        cppSrc += hintM(m)
        argStr = L(([] if static else ['void *c']) + cArgs(args))
        if retType.typeRef.decl_string == 'void':
            hSrc += retType.cVarType + ' ' + s + '_' + m.name + postfix + '(' + argStr + '); ' + hintM(m)
            
            cppSrc += retType.cVarType + ' ' + s + '_' + m.name + postfix + '(' + argStr + ') {\n'
            if not static:
                cppSrc += '\t' + ct + ' *o = (' + ct + '*)c;\n'
            cppSrc += C(cppPres(args))
            cppSrc += ('\t' + ct + '::' if static else '\to->') + m.name + '(' + L(cppArgs(args)) +');\n'
            cppSrc += C(cppPosts(args))
            cppSrc += '}\n'
            
        elif retType.kind == tyGlue:
            argStr = L(([] if static else ['void *c']) + cArgs(args + [retType]))
            hSrc += 'void ' + s + '_' + m.name + postfix + '(' + argStr + '); ' + hintM(m)
            
            cppSrc += 'void ' + s + '_' + m.name + postfix + '(' + argStr + ') {\n'
            if not static:
                cppSrc += '\t' + ct + ' *o = (' + ct + '*)c;\n'
            cppSrc += C(cppPres(args + [retType]))
            cppSrc += '\t' + retType.cppVar + ' = ' + (ct + '::' if static else 'o->') + m.name + '(' + L(cppArgs(args)) +');\n'
            cppSrc += C(cppPosts(args + [retType]))
            cppSrc += '}\n'
            
        elif retType.kind == tyPrim:
            # FIXME: we always have to emit post cpp code snippets
            hSrc += retType.cVarType + ' ' + s + '_' + m.name + postfix + '(' + argStr + '); ' + hintM(m)
            
            cppSrc += retType.cVarType + ' ' + s + '_' + m.name + postfix + '(' + argStr + ') {\n'
            if not static:
                cppSrc += '\t' + ct + ' *o = (' + ct + '*)c;\n'
            cppSrc += C(cppPres(args))
            #cppSrc += ('\t' + ct + '::' if static else '\to->') + m.name + '(' + L(cppArgs(args)) +');\n'
            cppSrc += '\t' + retType.cVarType + ' retVal = (' + retType.cVarType + ')' + (ct + '::' if static else 'o->') + m.name + '(' + L(cppArgs(args)) +');\n'
            cppSrc += C(cppPosts(args))
            cppSrc += '\treturn retVal;\n'        
            cppSrc += '}\n'        
        elif retType.kind == tyObj:
            hSrc += retType.cVarType + ' ' + s + '_' + m.name + postfix + '(' + argStr + '); ' + hintM(m)
            
            cppSrc += retType.cVarType + ' ' + s + '_' + m.name + postfix + '(' + argStr + ') {\n'
            if not static:
                cppSrc += '\t' + ct + ' *o = (' + ct + '*)c;\n'
            cppSrc += C(cppPres(args))
            # FIXME: dirty hack
            if declarations.type_traits.is_reference(retType.typeRef):
                cppSrc += '\t' + retType.cVarType + ' retVal = (' + retType.cVarType + ') &(' +(ct + '::' if static else 'o->') + m.name + '(' + L(cppArgs(args)) +'));\n'
            else:
                cppSrc += '\t' + retType.cVarType + ' retVal = (' + retType.cVarType + ') ' + (ct + '::' if static else 'o->') + m.name + '(' + L(cppArgs(args)) +');\n'
            cppSrc += C(cppPosts(args))
            cppSrc += '\treturn retVal;\n'        
            cppSrc += '}\n'        
        else:
            cppSrc += '//not supported return type in method: ' + m.name + ' ' + m.decl_string + '\n'
    else:        
        print 'not supported method: ' + m.name + ' ' + m.decl_string
        hSrc += '//not supported method: ' + m.name + ' ' + m.decl_string + '\n'
        hSrc += '// error: ' + errorArgs(args + [retType]) + '\n\n'
        cppSrc += '//not supported method: ' + m.name + ' ' + m.decl_string + '\n'
        cppSrc += '// error: ' + errorArgs(args + [retType]) + '\n\n'

def emitConstructorBinding(c,m,postfix=''):
    global hSrc, cppSrc, chsSrc
    s = hsFnName(className(c))
    ct = c.partial_decl_string
    args = map(bindType,zip([a for a in m.argument_types],[('p%i'%p) for p in range(len(m.argument_types))]))
    
    # aligned allocator example
    #void* mem = btAlignedAlloc(sizeof(btBoxShape),16);
    #return (plCollisionShapeHandle) new (mem)btBoxShape(btVector3(x,y,z));
    
    if okArgs(args):
        cppSrc += hintC(m)
        hSrc += 'void* ' + s + '_new' + postfix + '(' + L(cArgs(args)) + '); ' + hintC(m)
        
        cppSrc += 'void* ' + s + '_new' + postfix + '(' + L(cArgs(args)) + ') {\n'
        cppSrc += '\t' + ct + ' *o = 0;\n'
        cppSrc += '\t void *mem = 0;\n'
        cppSrc += C(cppPres(args))
        cppSrc += '\tmem = btAlignedAlloc(sizeof(' + ct + '),16);\n'
        cppSrc += '\to = new (mem)' + ct + '(' + L(cppArgs(args)) +');\n'
        cppSrc += C(cppPosts(args))
        cppSrc += '\treturn (void*)o;\n'
        cppSrc += '}\n'
        # todo !!!!!!!!!
        
        #chsSrc += '-- | ' + docStr(m) + '\n'
        lnksrc = m.location.as_tuple()[0].replace('.h','.cpp')
        chsSrc += '{- | ' + docStr(m) + '\n'
        chsSrc += '     <' + docLink + lnksrc[pathLen:] + '?r=2223>\n'
        chsSrc += '-}\n'
        chsSrc += '{#fun ' + s + '_new' + postfix + ' as ' + s + postfix
        ctx = hsCtxs(args)
        if ctx != []:
            chsSrc += '    `(' + L(ctx) + ')\' => '
        chsSrc += '    { ' + L(hscTysTo(args)) +' } -> `' + hsPtr(c) + '\' mk' + hsPtr(c) + '* #}\n'
        return True
    else:
        hSrc += '//not supported constructor: ' + m.name + ' ' + m.decl_string + '\n'
        hSrc += '// error: ' + errorArgs(args) + '\n\n'
        cppSrc += '//not supported constructor: ' + m.name + ' ' + m.decl_string + '\n'
        cppSrc += '// error: ' + errorArgs(args) + '\n\n'
        return False

def emitDestructorBinding(c):
    global hSrc, cppSrc, chsSrc
    s = hsFnName(className(c))
    ct = c.partial_decl_string

    hSrc += 'void ' + s + '_free(void *c); \n'
    
    cppSrc += 'void ' + s + '_free(void *c) {\n'
    cppSrc += '\t' + ct + ' *o = (' + ct + '*)c;\n'
    cppSrc += '\tdelete o;\n'
    cppSrc += '}\n'
    
    chsSrc += '{#fun ' + s + '_free'
    chsSrc += '    `( '+ L([hsTyClass(c) + ' bc ']) + ')\' => '
    chsSrc += '    { ' + L(['withBt* `bc\' ']) + ' } -> `()\' #}\n'
    return True

def emitClassMethods(c):
    global hSrc, cppSrc, chsSrc
    #chsSrc += '-- *** Constructors\n'
    query = declarations.access_type_matcher_t( 'public' )
    #query = declarations.custom_matcher_t( lambda f: len(f.overloads) == 0) & declarations.access_type_matcher_t( 'public' )
    if not c.is_abstract:
        tc = []
        if c.find_trivial_constructor() != None:
            tc.append(c.find_trivial_constructor())
        ok = False
        cons = [a for a in c.constructors(allow_empty=True, function=query, recursive = False) if not a.is_copy_constructor]
        if len(cons) == 1:
            emitConstructorBinding(c,cons[0])
        else:
            cnt = 0
            for mf in cons: # + tc:
                emitConstructorBinding(c,mf,str(cnt))
                cnt += 1
        emitDestructorBinding(c)
    #chsSrc += '-- *** Methods\n'
    methods = {}
    for mf in c.mem_funs(allow_empty=True, function=query, recursive = False):
        if methods.has_key(mf.name):
            methods[mf.name].append(mf)
        else:
            methods[mf.name] = [mf]
    for mname,mlist in methods.iteritems():
        if len(mlist) == 1:
            emitMethodBinding(c,mlist[0]) # default method is the first one
        else:
            emitMethodBinding(c,mlist[0],'','0')
            cnt = 0
            for mf in mlist:
                emitMethodBinding(c,mf,str(cnt),str(cnt))
                cnt += 1

def emitClassAttributes(c):
    global hSrc, cppSrc, chsSrc
    #chsSrc += '-- *** Attributes\n'
    query = declarations.access_type_matcher_t( 'public' )
    for ma in c.vars(allow_empty=True, function=query, recursive = False):
        emitAttrBinding(c ,ma)

def emitEnumBinding(e):
    global hSrc, cppSrc, chsSrc
    chsSrc += '-- enum: ' + e.decl_string + '\n'
    pn = 'e' + e.decl_string.replace('::','_')
    for n,v in e.values:
        chsSrc += pn + '_' + n + ' = ' + str(v) + ' :: Int\n'

#build module hierarhy
moduleDict = ({},[])
for c in classList:
    d = moduleDict
    p = c.location.as_tuple()[0][pathLen+1:].split('/')
    p = p[:len(p)-1]
    #print (className(c),p)
    for m in p:
        if d[0].has_key(m):
            d = d[0][m]
        else:
            d[0][m] = ({},[])
            d = d[0][m]
    d[1].append(c)

cppSrc += '#include \"Bullet.h\"\n'
cppSrc += '#include \"HaskellBulletAPI.h\"\n'
cppSrc += '#include \"LinearMath/btAlignedAllocator.h\"\n'

chsSrc += '{-#LANGUAGE ForeignFunctionInterface, GeneralizedNewtypeDeriving#-}\n'
chsSrc += '#include \"Bullet.h\"\n'
chsSrc += 'module Physics.Bullet.Raw.Class where\n'
chsSrc += 'import Control.Monad\n'
chsSrc += 'import Foreign.Marshal.Alloc\n'
chsSrc += 'import Foreign.ForeignPtr\n'
chsSrc += 'import Foreign.Ptr\n'
chsSrc += 'import Physics.Bullet.Raw.C2HS\n'
chsSrc += 'import Physics.Bullet.Raw.Types\n'

hSrc += '#ifdef __cplusplus\n'
hSrc += 'extern "C" { \n'
hSrc += '#endif\n'

chsSrc += 'type VoidPtr = Ptr ()\n'
chsSrc += 'withVoidPtr p f = f p\n'
chsSrc += 'peekVoidPtr p = return p\n'
chsSrc += 'mkVoidPtr p = return p\n'

chsSrc += '-- * Class Pointer Types\n'

for c in classList:
    s = hsFnName(className(c))
    hSrc += 'typedef void* O_' + s + ';\n'
    chsSrc += '{#pointer O_' + s + ' as ' + hsPtr(c) + ' foreign newtype nocode#}\n'
    chsSrc += 'newtype ' + hsPtr(c) + ' = ' + hsPtr(c) + ' (ForeignPtr (' + hsPtr(c) + ')) deriving (Eq,Ord,Show)\n'
    chsSrc += 'with' + hsPtr(c) + ' (' + hsPtr(c) + ' fptr) = withForeignPtr fptr\n'

    chsSrc += 'mk' + hsPtr(c) + ' p = liftM ' + hsPtr(c) + ' $ newForeignPtr_ $ castPtr p\n'
    #chsSrc += '{#pointer O_' + s + ' as ' + cn + ' #}\n'

chsSrc += '-- * Class Hierarchy\n'
#build class hierarchy
chsSrc += 'class BtClass p where\n'
chsSrc += '  withBt :: p -> (Ptr a -> IO b) -> IO b\n'
chsSrc += '  btToPtr :: p -> Ptr ()\n'
#chsSrc += '  peekBt :: Ptr a -> IO p\n'
classDone = []

# possible python bug???
# this gives None
#classListDecl = [cl.decl_string for cl in classList].sort()

classListDecl = [cl.decl_string for cl in classList]
classListDecl.sort()

for c in classListDecl:
    print c

while classDone != classListDecl:
    for c in [c for c in classList if not c.decl_string in classDone]:
        bases = [b.related_class for b in c.recursive_bases if b.related_class.decl_string in classListDecl]
#        print c.name, classDone
        if len([b for b in bases if not b.decl_string in classDone])==0:
            bs = [b.related_class for b in c.bases if b.related_class.decl_string in classListDecl]
            classDone.append(c.decl_string)
            s = hsFnName(className(c))
            if bs == []:
                chsSrc += 'class BtClass p => ' + hsPtr(c) + 'Class p\n'
                chsSrc += 'instance ' + hsPtr(c) + 'Class ' + hsPtr(c) + '\n'
                chsSrc += 'instance BtClass ' + hsPtr(c) + ' where\n'
                chsSrc += '  withBt (' + hsPtr(c) + ' p) b = (withForeignPtr p (\\a -> return $ castPtr a)) >>= b\n'
                chsSrc += '  btToPtr (' + hsPtr(c) + ' p) = castPtr $ unsafeForeignPtrToPtr p\n'
                #chsSrc += '  peekBt = undefined\n'
            elif len(bs) == 1:
                bc = bs[0] # we only support simple inheritence
                chsSrc += 'class ' + hsTyClass(bc) + ' p => ' + hsTyClass(c) + ' p\n'
                for b in bases:
                    chsSrc += 'instance ' + hsTyClass(b) + ' ' + hsPtr(c) + '\n'
                chsSrc += 'instance ' + hsTyClass(c) + ' ' + hsPtr(c) + '\n'
                chsSrc += 'instance BtClass ' + hsPtr(c) + ' where\n'
                chsSrc += '  withBt (' + hsPtr(c) + ' p) b = (withForeignPtr p (\\a -> return $ castPtr a)) >>= b\n'
                chsSrc += '  btToPtr (' + hsPtr(c) + ' p) = castPtr $ unsafeForeignPtrToPtr p\n'
                #chsSrc += '  peekBt = undefined\n'
            else:
                chsSrc += '-- not supported ' + s + ': ' + L([b.name for b in bs]) + '\n'
    classDone.sort()                

try:
    os.makedirs('Physics/Bullet/Raw')
except OSError, e:
    if e.errno != errno.EEXIST:
        raise

for e in enumList:
    emitEnumBinding(e)

f = open('Physics/Bullet/Raw/Class.chs', 'w')
f.write(chsSrc)
f.close()

def printDict(t,d):
    global hSrc, cppSrc, chsSrc
    chsSrc = ''
    chsSrc += '{-#LANGUAGE ForeignFunctionInterface#-}\n'
    chsSrc += '#include \"Bullet.h\"\n'
    chsSrc += 'module ' + t + ' (\n'
    for m in d[0].keys():
        chsSrc += 'module ' + t + '.' + hsName(m) + ',\n'
    chsSrc += 'module ' + t + '\n'
    chsSrc += ') where\n'
    chsSrc += 'import Control.Monad\n'
    chsSrc += 'import Foreign.Marshal.Alloc\n'
    chsSrc += 'import Foreign.ForeignPtr\n'
    chsSrc += 'import Foreign.Ptr\n'
    chsSrc += 'import Physics.Bullet.Raw.C2HS\n'
    chsSrc += 'import Physics.Bullet.Raw.Types\n'
    chsSrc += 'import Physics.Bullet.Raw.Class\n'

    for m in d[0].keys():
        chsSrc += 'import ' + t + '.' + hsName(m) + '\n'
    for c in d[1]:
        l = c.location.as_tuple()[0].replace('.h','.cpp')
        #chsSrc += '-- * ' + c.name + '\t<' + docLink + l[pathLen:] + '?r=2223>\n'
        chsSrc += '-- * ' + c.name + '\n'
        cppSrc += '// ' + c.partial_decl_string + '\n'
#        emitClassMethods(c)
        emitClassAttributes(c)
        #chsSrc += '-- *** Internal functions\n'
        cppSrc += '\n'
    pl = t.split('.')
    try:
        os.makedirs('/'.join(pl[:len(pl)-1]))
    except OSError, e:
        if e.errno != errno.EEXIST:
            raise
    f = open('/'.join(pl) + '.chs', 'w')
    f.write(chsSrc)
    f.close()

    for m in d[0].keys():
        printDict(t + '.' + hsName(m), d[0][m])

printDict('Physics.Bullet.Raw',moduleDict)


hSrc += '#ifdef __cplusplus\n'
hSrc += '} \n'
hSrc += '#endif\n'


f = open('Bullet.h', 'w')
f.write(hSrc)
f.close()

f = open('Bullet.cpp', 'w')
f.write(cppSrc)
f.close()

hsSrc = """
{-# LANGUAGE ExistentialQuantification #-}

module Physics.Bullet where
import Physics.Bullet.Raw
import Physics.Bullet.Raw.Class
import Physics.Bullet.Raw.Types
import Physics.Bullet.Raw.Utils
import Foreign

data Attr o a = forall x . Attr !(o -> IO a) !(o -> a -> IO x)

"""

#   dict attrname -> dict attrtype -> [(BtType,get,set)]
#   method:
#       - if the attrype dict contains only one entry then use attrname else use attrname_attrtype
#       - create a type class for every attribute name
#       - generate instances
#       - generate Attr list according the new typeclasses
classHsSrc = ''
for attrName,attrTypeDict in hsAttrs.iteritems():
    # create type classes
    for attrType,entries in attrTypeDict.iteritems():
        className = '%s_%s' % (attrName,attrType)
        classHsSrc += 'class Attr_%s a where\n' % className
        classHsSrc += '  set_%s :: a -> %s -> IO ()\n' % (className,attrType)
        classHsSrc += '  get_%s :: a -> IO %s\n\n' % (className,attrType)
        classes = []
        for c,g,s in entries:
            classHsSrc += 'instance Attr_%s %s where\n' % (className,c)
            classHsSrc += '  set_%s = %s\n' % (className,s)
            classHsSrc += '  get_%s = %s\n\n' % (className,g)
            classes.append(c)

        name = attrName if len(attrTypeDict) <= 1 else className
        hsSrc += '-- %s\n' % ', '.join(classes)
        hsSrc += '%s :: Attr_%s o => Attr o %s\n' % (name,className,attrType)
        hsSrc += '%s = Attr get_%s set_%s\n\n' % (name,className,className)
 
f = open('Bullet.hs', 'w')
f.write(hsSrc + classHsSrc)
f.close()
