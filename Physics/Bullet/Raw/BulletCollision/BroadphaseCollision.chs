{-#LANGUAGE ForeignFunctionInterface#-}
#include "Bullet.h"
module Physics.Bullet.Raw.BulletCollision.BroadphaseCollision (
module Physics.Bullet.Raw.BulletCollision.BroadphaseCollision
) where
import Control.Monad
import Foreign.Marshal.Alloc
import Foreign.ForeignPtr.Unsafe
import Foreign.Ptr
import Physics.Bullet.Raw.C2HS
import Physics.Bullet.Raw.Types
import Physics.Bullet.Raw.Class
-- * IClone
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.h?r=2223#242>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.cpp?r=2223>
-}
{#fun btDbvt_IClone_new as btDbvt_IClone    {  } -> `BtDbvt_IClone' mkBtDbvt_IClone* #}
{#fun btDbvt_IClone_free    `( BtDbvt_ICloneClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.h?r=2223#244>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.cpp?r=2223>
-}
{#fun btDbvt_IClone_CloneLeaf as btDbvt_IClone_CloneLeaf    `( BtDbvt_ICloneClass bc , BtDbvtNodeClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ arg0
 } ->  `()'   #}
-- * ICollide
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.h?r=2223#224>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.cpp?r=2223>
-}
{#fun btDbvt_ICollide_new as btDbvt_ICollide    {  } -> `BtDbvt_ICollide' mkBtDbvt_ICollide* #}
{#fun btDbvt_ICollide_free    `( BtDbvt_ICollideClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.h?r=2223#226>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.cpp?r=2223>
-}
{#fun btDbvt_ICollide_Process0 as btDbvt_ICollide_Process    `( BtDbvt_ICollideClass bc , BtDbvtNodeClass p0 , BtDbvtNodeClass p1 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ arg0
, withBt* `p1'  -- ^ arg1
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.h?r=2223#226>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.cpp?r=2223>
-}
{#fun btDbvt_ICollide_Process0 as btDbvt_ICollide_Process0    `( BtDbvt_ICollideClass bc , BtDbvtNodeClass p0 , BtDbvtNodeClass p1 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ arg0
, withBt* `p1'  -- ^ arg1
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.h?r=2223#227>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.cpp?r=2223>
-}
{#fun btDbvt_ICollide_Process1 as btDbvt_ICollide_Process1    `( BtDbvt_ICollideClass bc , BtDbvtNodeClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ arg0
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.h?r=2223#228>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.cpp?r=2223>
-}
{#fun btDbvt_ICollide_Process2 as btDbvt_ICollide_Process2    `( BtDbvt_ICollideClass bc , BtDbvtNodeClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ n
,  `Float'  -- ^ arg1
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.h?r=2223#230>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.cpp?r=2223>
-}
{#fun btDbvt_ICollide_AllLeaves as btDbvt_ICollide_AllLeaves    `( BtDbvt_ICollideClass bc , BtDbvtNodeClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ arg0
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.h?r=2223#229>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.cpp?r=2223>
-}
{#fun btDbvt_ICollide_Descent as btDbvt_ICollide_Descent    `( BtDbvt_ICollideClass bc , BtDbvtNodeClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ arg0
 } ->  `Bool'   #}
-- * IWriter
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.h?r=2223#238>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.cpp?r=2223>
-}
{#fun btDbvt_IWriter_WriteLeaf as btDbvt_IWriter_WriteLeaf    `( BtDbvt_IWriterClass bc , BtDbvtNodeClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ arg0
,  `Int'  -- ^ index
,  `Int'  -- ^ parent
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.h?r=2223#237>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.cpp?r=2223>
-}
{#fun btDbvt_IWriter_WriteNode as btDbvt_IWriter_WriteNode    `( BtDbvt_IWriterClass bc , BtDbvtNodeClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ arg0
,  `Int'  -- ^ index
,  `Int'  -- ^ parent
,  `Int'  -- ^ child0
,  `Int'  -- ^ child1
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.h?r=2223#236>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.cpp?r=2223>
-}
{#fun btDbvt_IWriter_Prepare as btDbvt_IWriter_Prepare    `( BtDbvt_IWriterClass bc , BtDbvtNodeClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ root
,  `Int'  -- ^ numnodes
 } ->  `()'   #}
-- * bt32BitAxisSweep3
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.h?r=2223#1046>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp?r=2223>
-}
{#fun bt32BitAxisSweep3_new as bt32BitAxisSweep3    `( BtOverlappingPairCacheClass p3 )' =>     {  withVec3* `Vec3' , withVec3* `Vec3' ,  `Word32' , withBt* `p3' ,  `Bool'  } -> `Bt32BitAxisSweep3' mkBt32BitAxisSweep3* #}
{#fun bt32BitAxisSweep3_free    `( Bt32BitAxisSweep3Class bc )' =>     { withBt* `bc'  } -> `()' #}
-- * btAxisSweep3
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.h?r=2223#1035>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp?r=2223>
-}
{#fun btAxisSweep3_new as btAxisSweep3    `( BtOverlappingPairCacheClass p3 )' =>     {  withVec3* `Vec3' , withVec3* `Vec3' ,  `Int' , withBt* `p3' ,  `Bool'  } -> `BtAxisSweep3' mkBtAxisSweep3* #}
{#fun btAxisSweep3_free    `( BtAxisSweep3Class bc )' =>     { withBt* `bc'  } -> `()' #}
-- * btAxisSweep3Internal<unsigned int>
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.h?r=2223#352>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp?r=2223>
-}
{#fun btAxisSweep3Internal_unsignedint__new as btAxisSweep3Internal_unsignedint_    `( BtOverlappingPairCacheClass p5 )' =>     {  withVec3* `Vec3' , withVec3* `Vec3' ,  `Word32' ,  `Word32' ,  `Word32' , withBt* `p5' ,  `Bool'  } -> `BtAxisSweep3Internal_unsignedint_' mkBtAxisSweep3Internal_unsignedint_* #}
{#fun btAxisSweep3Internal_unsignedint__free    `( BtAxisSweep3Internal_unsignedint_Class bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.h?r=2223#859>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp?r=2223>
-}
{#fun btAxisSweep3Internal_unsignedint__sortMinUp as btAxisSweep3Internal_unsignedint__sortMinUp    `( BtAxisSweep3Internal_unsignedint_Class bc , BtDispatcherClass p2 )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ axis
,  `Word32'  -- ^ edge
, withBt* `p2'  -- ^ dispatcher
,  `Bool'  -- ^ updateOverlaps
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.h?r=2223#481>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp?r=2223>
-}
{#fun btAxisSweep3Internal_unsignedint__allocHandle as btAxisSweep3Internal_unsignedint__allocHandle    `( BtAxisSweep3Internal_unsignedint_Class bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Word32'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.h?r=2223#130>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp?r=2223>
-}
{#fun btAxisSweep3Internal_unsignedint__getNumHandles as btAxisSweep3Internal_unsignedint__getNumHandles    `( BtAxisSweep3Internal_unsignedint_Class bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Word32'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.h?r=2223#505>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp?r=2223>
-}
{#fun btAxisSweep3Internal_unsignedint__addHandle as btAxisSweep3Internal_unsignedint__addHandle    `( BtAxisSweep3Internal_unsignedint_Class bc , BtDispatcherClass p5 )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ aabbMin
, withVec3* `Vec3'  peekVec3* -- ^ aabbMax
, withVoidPtr* `VoidPtr'  -- ^ pOwner
,  `Int'  -- ^ collisionFilterGroup
,  `Int'  -- ^ collisionFilterMask
, withBt* `p5'  -- ^ dispatcher
, withVoidPtr* `VoidPtr'  -- ^ multiSapProxy
 } ->  `Word32'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.h?r=2223#505>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp?r=2223>
-}
{#fun btAxisSweep3Internal_unsignedint__addHandle as btAxisSweep3Internal_unsignedint__addHandle'    `( BtAxisSweep3Internal_unsignedint_Class bc , BtDispatcherClass p5 )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMin
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMax
, withVoidPtr* `VoidPtr'  -- ^ pOwner
,  `Int'  -- ^ collisionFilterGroup
,  `Int'  -- ^ collisionFilterMask
, withBt* `p5'  -- ^ dispatcher
, withVoidPtr* `VoidPtr'  -- ^ multiSapProxy
 } ->  `Word32'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.h?r=2223#978>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp?r=2223>
-}
{#fun btAxisSweep3Internal_unsignedint__sortMaxUp as btAxisSweep3Internal_unsignedint__sortMaxUp    `( BtAxisSweep3Internal_unsignedint_Class bc , BtDispatcherClass p2 )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ axis
,  `Word32'  -- ^ edge
, withBt* `p2'  -- ^ arg2
,  `Bool'  -- ^ updateOverlaps
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.h?r=2223#561>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp?r=2223>
-}
{#fun btAxisSweep3Internal_unsignedint__removeHandle as btAxisSweep3Internal_unsignedint__removeHandle    `( BtAxisSweep3Internal_unsignedint_Class bc , BtDispatcherClass p1 )' =>     { withBt* `bc'  -- ^ 
,  `Word32'  -- ^ handle
, withBt* `p1'  -- ^ dispatcher
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.h?r=2223#175>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp?r=2223>
-}
{#fun btAxisSweep3Internal_unsignedint__getOverlappingPairUserCallback as btAxisSweep3Internal_unsignedint__getOverlappingPairUserCallback    `( BtAxisSweep3Internal_unsignedint_Class bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtOverlappingPairCallback'  mkBtOverlappingPairCallback* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.h?r=2223#915>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp?r=2223>
-}
{#fun btAxisSweep3Internal_unsignedint__sortMaxDown as btAxisSweep3Internal_unsignedint__sortMaxDown    `( BtAxisSweep3Internal_unsignedint_Class bc , BtDispatcherClass p2 )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ axis
,  `Word32'  -- ^ edge
, withBt* `p2'  -- ^ dispatcher
,  `Bool'  -- ^ updateOverlaps
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.h?r=2223#270>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp?r=2223>
-}
{#fun btAxisSweep3Internal_unsignedint__rayTest as btAxisSweep3Internal_unsignedint__rayTest    `( BtAxisSweep3Internal_unsignedint_Class bc , BtBroadphaseRayCallbackClass p2 )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ rayFrom
, withVec3* `Vec3'  peekVec3* -- ^ rayTo
, withBt* `p2'  -- ^ rayCallback
, withVec3* `Vec3'  peekVec3* -- ^ aabbMin
, withVec3* `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.h?r=2223#270>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp?r=2223>
-}
{#fun btAxisSweep3Internal_unsignedint__rayTest as btAxisSweep3Internal_unsignedint__rayTest'    `( BtAxisSweep3Internal_unsignedint_Class bc , BtBroadphaseRayCallbackClass p2 )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ rayFrom
, allocaVec3-  `Vec3'  peekVec3* -- ^ rayTo
, withBt* `p2'  -- ^ rayCallback
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMin
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.h?r=2223#258>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp?r=2223>
-}
{#fun btAxisSweep3Internal_unsignedint__setAabb as btAxisSweep3Internal_unsignedint__setAabb    `( BtAxisSweep3Internal_unsignedint_Class bc , BtBroadphaseProxyClass p0 , BtDispatcherClass p3 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ proxy
, withVec3* `Vec3'  peekVec3* -- ^ aabbMin
, withVec3* `Vec3'  peekVec3* -- ^ aabbMax
, withBt* `p3'  -- ^ dispatcher
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.h?r=2223#258>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp?r=2223>
-}
{#fun btAxisSweep3Internal_unsignedint__setAabb as btAxisSweep3Internal_unsignedint__setAabb'    `( BtAxisSweep3Internal_unsignedint_Class bc , BtBroadphaseProxyClass p0 , BtDispatcherClass p3 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ proxy
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMin
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMax
, withBt* `p3'  -- ^ dispatcher
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.h?r=2223#618>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp?r=2223>
-}
{#fun btAxisSweep3Internal_unsignedint__resetPool as btAxisSweep3Internal_unsignedint__resetPool    `( BtAxisSweep3Internal_unsignedint_Class bc , BtDispatcherClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ dispatcher
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.h?r=2223#722>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp?r=2223>
-}
{#fun btAxisSweep3Internal_unsignedint__testAabbOverlap as btAxisSweep3Internal_unsignedint__testAabbOverlap    `( BtAxisSweep3Internal_unsignedint_Class bc , BtBroadphaseProxyClass p0 , BtBroadphaseProxyClass p1 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ proxy0
, withBt* `p1'  -- ^ proxy1
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.h?r=2223#318>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp?r=2223>
-}
{#fun btAxisSweep3Internal_unsignedint__getAabb as btAxisSweep3Internal_unsignedint__getAabb    `( BtAxisSweep3Internal_unsignedint_Class bc , BtBroadphaseProxyClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ proxy
, withVec3* `Vec3'  peekVec3* -- ^ aabbMin
, withVec3* `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.h?r=2223#318>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp?r=2223>
-}
{#fun btAxisSweep3Internal_unsignedint__getAabb as btAxisSweep3Internal_unsignedint__getAabb'    `( BtAxisSweep3Internal_unsignedint_Class bc , BtBroadphaseProxyClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ proxy
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMin
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.h?r=2223#756>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp?r=2223>
-}
{#fun btAxisSweep3Internal_unsignedint__updateHandle as btAxisSweep3Internal_unsignedint__updateHandle    `( BtAxisSweep3Internal_unsignedint_Class bc , BtDispatcherClass p3 )' =>     { withBt* `bc'  -- ^ 
,  `Word32'  -- ^ handle
, withVec3* `Vec3'  peekVec3* -- ^ aabbMin
, withVec3* `Vec3'  peekVec3* -- ^ aabbMax
, withBt* `p3'  -- ^ dispatcher
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.h?r=2223#756>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp?r=2223>
-}
{#fun btAxisSweep3Internal_unsignedint__updateHandle as btAxisSweep3Internal_unsignedint__updateHandle'    `( BtAxisSweep3Internal_unsignedint_Class bc , BtDispatcherClass p3 )' =>     { withBt* `bc'  -- ^ 
,  `Word32'  -- ^ handle
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMin
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMax
, withBt* `p3'  -- ^ dispatcher
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.h?r=2223#493>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp?r=2223>
-}
{#fun btAxisSweep3Internal_unsignedint__freeHandle as btAxisSweep3Internal_unsignedint__freeHandle    `( BtAxisSweep3Internal_unsignedint_Class bc )' =>     { withBt* `bc'  -- ^ 
,  `Word32'  -- ^ handle
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.h?r=2223#188>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp?r=2223>
-}
{#fun btAxisSweep3Internal_unsignedint__printStats as btAxisSweep3Internal_unsignedint__printStats    `( BtAxisSweep3Internal_unsignedint_Class bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.h?r=2223#231>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp?r=2223>
-}
{#fun btAxisSweep3Internal_unsignedint__createProxy as btAxisSweep3Internal_unsignedint__createProxy    `( BtAxisSweep3Internal_unsignedint_Class bc , BtDispatcherClass p6 )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ aabbMin
, withVec3* `Vec3'  peekVec3* -- ^ aabbMax
,  `Int'  -- ^ shapeType
, withVoidPtr* `VoidPtr'  -- ^ userPtr
,  `Int'  -- ^ collisionFilterGroup
,  `Int'  -- ^ collisionFilterMask
, withBt* `p6'  -- ^ dispatcher
, withVoidPtr* `VoidPtr'  -- ^ multiSapProxy
 } ->  `BtBroadphaseProxy'  mkBtBroadphaseProxy* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.h?r=2223#231>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp?r=2223>
-}
{#fun btAxisSweep3Internal_unsignedint__createProxy as btAxisSweep3Internal_unsignedint__createProxy'    `( BtAxisSweep3Internal_unsignedint_Class bc , BtDispatcherClass p6 )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMin
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMax
,  `Int'  -- ^ shapeType
, withVoidPtr* `VoidPtr'  -- ^ userPtr
,  `Int'  -- ^ collisionFilterGroup
,  `Int'  -- ^ collisionFilterMask
, withBt* `p6'  -- ^ dispatcher
, withVoidPtr* `VoidPtr'  -- ^ multiSapProxy
 } ->  `BtBroadphaseProxy'  mkBtBroadphaseProxy* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.h?r=2223#171>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp?r=2223>
-}
{#fun btAxisSweep3Internal_unsignedint__setOverlappingPairUserCallback as btAxisSweep3Internal_unsignedint__setOverlappingPairUserCallback    `( BtAxisSweep3Internal_unsignedint_Class bc , BtOverlappingPairCallbackClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ pairCallback
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.h?r=2223#636>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp?r=2223>
-}
{#fun btAxisSweep3Internal_unsignedint__calculateOverlappingPairs as btAxisSweep3Internal_unsignedint__calculateOverlappingPairs    `( BtAxisSweep3Internal_unsignedint_Class bc , BtDispatcherClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ dispatcher
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.h?r=2223#162>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp?r=2223>
-}
{#fun btAxisSweep3Internal_unsignedint__getOverlappingPairCache0 as btAxisSweep3Internal_unsignedint__getOverlappingPairCache    `( BtAxisSweep3Internal_unsignedint_Class bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtOverlappingPairCache'  mkBtOverlappingPairCache* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.h?r=2223#162>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp?r=2223>
-}
{#fun btAxisSweep3Internal_unsignedint__getOverlappingPairCache0 as btAxisSweep3Internal_unsignedint__getOverlappingPairCache0    `( BtAxisSweep3Internal_unsignedint_Class bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtOverlappingPairCache'  mkBtOverlappingPairCache* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.h?r=2223#166>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp?r=2223>
-}
{#fun btAxisSweep3Internal_unsignedint__getOverlappingPairCache1 as btAxisSweep3Internal_unsignedint__getOverlappingPairCache1    `( BtAxisSweep3Internal_unsignedint_Class bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtOverlappingPairCache'  mkBtOverlappingPairCache* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.h?r=2223#327>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp?r=2223>
-}
{#fun btAxisSweep3Internal_unsignedint__unQuantize as btAxisSweep3Internal_unsignedint__unQuantize    `( BtAxisSweep3Internal_unsignedint_Class bc , BtBroadphaseProxyClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ proxy
, withVec3* `Vec3'  peekVec3* -- ^ aabbMin
, withVec3* `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.h?r=2223#327>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp?r=2223>
-}
{#fun btAxisSweep3Internal_unsignedint__unQuantize as btAxisSweep3Internal_unsignedint__unQuantize'    `( BtAxisSweep3Internal_unsignedint_Class bc , BtBroadphaseProxyClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ proxy
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMin
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.h?r=2223#807>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp?r=2223>
-}
{#fun btAxisSweep3Internal_unsignedint__sortMinDown as btAxisSweep3Internal_unsignedint__sortMinDown    `( BtAxisSweep3Internal_unsignedint_Class bc , BtDispatcherClass p2 )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ axis
,  `Word32'  -- ^ edge
, withBt* `p2'  -- ^ arg2
,  `Bool'  -- ^ updateOverlaps
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.h?r=2223#291>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp?r=2223>
-}
{#fun btAxisSweep3Internal_unsignedint__aabbTest as btAxisSweep3Internal_unsignedint__aabbTest    `( BtAxisSweep3Internal_unsignedint_Class bc , BtBroadphaseAabbCallbackClass p2 )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ aabbMin
, withVec3* `Vec3'  peekVec3* -- ^ aabbMax
, withBt* `p2'  -- ^ callback
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.h?r=2223#291>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp?r=2223>
-}
{#fun btAxisSweep3Internal_unsignedint__aabbTest as btAxisSweep3Internal_unsignedint__aabbTest'    `( BtAxisSweep3Internal_unsignedint_Class bc , BtBroadphaseAabbCallbackClass p2 )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMin
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMax
, withBt* `p2'  -- ^ callback
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.h?r=2223#182>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp?r=2223>
-}
{#fun btAxisSweep3Internal_unsignedint__getBroadphaseAabb as btAxisSweep3Internal_unsignedint__getBroadphaseAabb    `( BtAxisSweep3Internal_unsignedint_Class bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ aabbMin
, withVec3* `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.h?r=2223#182>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp?r=2223>
-}
{#fun btAxisSweep3Internal_unsignedint__getBroadphaseAabb as btAxisSweep3Internal_unsignedint__getBroadphaseAabb'    `( BtAxisSweep3Internal_unsignedint_Class bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMin
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.h?r=2223#249>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp?r=2223>
-}
{#fun btAxisSweep3Internal_unsignedint__destroyProxy as btAxisSweep3Internal_unsignedint__destroyProxy    `( BtAxisSweep3Internal_unsignedint_Class bc , BtBroadphaseProxyClass p0 , BtDispatcherClass p1 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ proxy
, withBt* `p1'  -- ^ dispatcher
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.h?r=2223#40>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp?r=2223>
-}
{#fun btAxisSweep3Internal_unsignedint__m_bpHandleMask_set    `( BtAxisSweep3Internal_unsignedint_Class bc )' =>     { withBt* `bc' ,  `Word32'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.h?r=2223#40>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp?r=2223>
-}
{#fun btAxisSweep3Internal_unsignedint__m_bpHandleMask_get    `( BtAxisSweep3Internal_unsignedint_Class bc )' =>     { withBt* `bc'  } ->  `Word32'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.h?r=2223#41>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp?r=2223>
-}
{#fun btAxisSweep3Internal_unsignedint__m_handleSentinel_set    `( BtAxisSweep3Internal_unsignedint_Class bc )' =>     { withBt* `bc' ,  `Word32'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.h?r=2223#41>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp?r=2223>
-}
{#fun btAxisSweep3Internal_unsignedint__m_handleSentinel_get    `( BtAxisSweep3Internal_unsignedint_Class bc )' =>     { withBt* `bc'  } ->  `Word32'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.h?r=2223#74>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp?r=2223>
-}
{#fun btAxisSweep3Internal_unsignedint__m_worldAabbMin_set    `( BtAxisSweep3Internal_unsignedint_Class bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.h?r=2223#74>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp?r=2223>
-}
{#fun btAxisSweep3Internal_unsignedint__m_worldAabbMin_get    `( BtAxisSweep3Internal_unsignedint_Class bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.h?r=2223#75>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp?r=2223>
-}
{#fun btAxisSweep3Internal_unsignedint__m_worldAabbMax_set    `( BtAxisSweep3Internal_unsignedint_Class bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.h?r=2223#75>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp?r=2223>
-}
{#fun btAxisSweep3Internal_unsignedint__m_worldAabbMax_get    `( BtAxisSweep3Internal_unsignedint_Class bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.h?r=2223#77>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp?r=2223>
-}
{#fun btAxisSweep3Internal_unsignedint__m_quantize_set    `( BtAxisSweep3Internal_unsignedint_Class bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.h?r=2223#77>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp?r=2223>
-}
{#fun btAxisSweep3Internal_unsignedint__m_quantize_get    `( BtAxisSweep3Internal_unsignedint_Class bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.h?r=2223#79>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp?r=2223>
-}
{#fun btAxisSweep3Internal_unsignedint__m_numHandles_set    `( BtAxisSweep3Internal_unsignedint_Class bc )' =>     { withBt* `bc' ,  `Word32'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.h?r=2223#79>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp?r=2223>
-}
{#fun btAxisSweep3Internal_unsignedint__m_numHandles_get    `( BtAxisSweep3Internal_unsignedint_Class bc )' =>     { withBt* `bc'  } ->  `Word32'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.h?r=2223#80>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp?r=2223>
-}
{#fun btAxisSweep3Internal_unsignedint__m_maxHandles_set    `( BtAxisSweep3Internal_unsignedint_Class bc )' =>     { withBt* `bc' ,  `Word32'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.h?r=2223#80>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp?r=2223>
-}
{#fun btAxisSweep3Internal_unsignedint__m_maxHandles_get    `( BtAxisSweep3Internal_unsignedint_Class bc )' =>     { withBt* `bc'  } ->  `Word32'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.h?r=2223#83>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp?r=2223>
-}
{#fun btAxisSweep3Internal_unsignedint__m_firstFreeHandle_set    `( BtAxisSweep3Internal_unsignedint_Class bc )' =>     { withBt* `bc' ,  `Word32'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.h?r=2223#83>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp?r=2223>
-}
{#fun btAxisSweep3Internal_unsignedint__m_firstFreeHandle_get    `( BtAxisSweep3Internal_unsignedint_Class bc )' =>     { withBt* `bc'  } ->  `Word32'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.h?r=2223#88>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp?r=2223>
-}
{#fun btAxisSweep3Internal_unsignedint__m_pairCache_set    `( BtAxisSweep3Internal_unsignedint_Class bc , BtOverlappingPairCacheClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.h?r=2223#88>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp?r=2223>
-}
{#fun btAxisSweep3Internal_unsignedint__m_pairCache_get    `( BtAxisSweep3Internal_unsignedint_Class bc )' =>     { withBt* `bc'  } ->  `BtOverlappingPairCache'  mkBtOverlappingPairCache* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.h?r=2223#91>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp?r=2223>
-}
{#fun btAxisSweep3Internal_unsignedint__m_userPairCallback_set    `( BtAxisSweep3Internal_unsignedint_Class bc , BtOverlappingPairCallbackClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.h?r=2223#91>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp?r=2223>
-}
{#fun btAxisSweep3Internal_unsignedint__m_userPairCallback_get    `( BtAxisSweep3Internal_unsignedint_Class bc )' =>     { withBt* `bc'  } ->  `BtOverlappingPairCallback'  mkBtOverlappingPairCallback* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.h?r=2223#93>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp?r=2223>
-}
{#fun btAxisSweep3Internal_unsignedint__m_ownsPairCache_set    `( BtAxisSweep3Internal_unsignedint_Class bc )' =>     { withBt* `bc' ,  `Bool'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.h?r=2223#93>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp?r=2223>
-}
{#fun btAxisSweep3Internal_unsignedint__m_ownsPairCache_get    `( BtAxisSweep3Internal_unsignedint_Class bc )' =>     { withBt* `bc'  } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.h?r=2223#95>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp?r=2223>
-}
{#fun btAxisSweep3Internal_unsignedint__m_invalidPair_set    `( BtAxisSweep3Internal_unsignedint_Class bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.h?r=2223#95>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp?r=2223>
-}
{#fun btAxisSweep3Internal_unsignedint__m_invalidPair_get    `( BtAxisSweep3Internal_unsignedint_Class bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.h?r=2223#99>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp?r=2223>
-}
{#fun btAxisSweep3Internal_unsignedint__m_raycastAccelerator_set    `( BtAxisSweep3Internal_unsignedint_Class bc , BtDbvtBroadphaseClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.h?r=2223#99>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp?r=2223>
-}
{#fun btAxisSweep3Internal_unsignedint__m_raycastAccelerator_get    `( BtAxisSweep3Internal_unsignedint_Class bc )' =>     { withBt* `bc'  } ->  `BtDbvtBroadphase'  mkBtDbvtBroadphase* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.h?r=2223#100>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp?r=2223>
-}
{#fun btAxisSweep3Internal_unsignedint__m_nullPairCache_set    `( BtAxisSweep3Internal_unsignedint_Class bc , BtOverlappingPairCacheClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.h?r=2223#100>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp?r=2223>
-}
{#fun btAxisSweep3Internal_unsignedint__m_nullPairCache_get    `( BtAxisSweep3Internal_unsignedint_Class bc )' =>     { withBt* `bc'  } ->  `BtOverlappingPairCache'  mkBtOverlappingPairCache* #}
-- * btAxisSweep3Internal<unsigned short>
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.h?r=2223#352>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp?r=2223>
-}
{#fun btAxisSweep3Internal_unsignedshort__new as btAxisSweep3Internal_unsignedshort_    `( BtOverlappingPairCacheClass p5 )' =>     {  withVec3* `Vec3' , withVec3* `Vec3' ,  `Int' ,  `Int' ,  `Int' , withBt* `p5' ,  `Bool'  } -> `BtAxisSweep3Internal_unsignedshort_' mkBtAxisSweep3Internal_unsignedshort_* #}
{#fun btAxisSweep3Internal_unsignedshort__free    `( BtAxisSweep3Internal_unsignedshort_Class bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.h?r=2223#859>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp?r=2223>
-}
{#fun btAxisSweep3Internal_unsignedshort__sortMinUp as btAxisSweep3Internal_unsignedshort__sortMinUp    `( BtAxisSweep3Internal_unsignedshort_Class bc , BtDispatcherClass p2 )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ axis
,  `Int'  -- ^ edge
, withBt* `p2'  -- ^ dispatcher
,  `Bool'  -- ^ updateOverlaps
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.h?r=2223#481>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp?r=2223>
-}
{#fun btAxisSweep3Internal_unsignedshort__allocHandle as btAxisSweep3Internal_unsignedshort__allocHandle    `( BtAxisSweep3Internal_unsignedshort_Class bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.h?r=2223#130>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp?r=2223>
-}
{#fun btAxisSweep3Internal_unsignedshort__getNumHandles as btAxisSweep3Internal_unsignedshort__getNumHandles    `( BtAxisSweep3Internal_unsignedshort_Class bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.h?r=2223#505>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp?r=2223>
-}
{#fun btAxisSweep3Internal_unsignedshort__addHandle as btAxisSweep3Internal_unsignedshort__addHandle    `( BtAxisSweep3Internal_unsignedshort_Class bc , BtDispatcherClass p5 )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ aabbMin
, withVec3* `Vec3'  peekVec3* -- ^ aabbMax
, withVoidPtr* `VoidPtr'  -- ^ pOwner
,  `Int'  -- ^ collisionFilterGroup
,  `Int'  -- ^ collisionFilterMask
, withBt* `p5'  -- ^ dispatcher
, withVoidPtr* `VoidPtr'  -- ^ multiSapProxy
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.h?r=2223#505>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp?r=2223>
-}
{#fun btAxisSweep3Internal_unsignedshort__addHandle as btAxisSweep3Internal_unsignedshort__addHandle'    `( BtAxisSweep3Internal_unsignedshort_Class bc , BtDispatcherClass p5 )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMin
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMax
, withVoidPtr* `VoidPtr'  -- ^ pOwner
,  `Int'  -- ^ collisionFilterGroup
,  `Int'  -- ^ collisionFilterMask
, withBt* `p5'  -- ^ dispatcher
, withVoidPtr* `VoidPtr'  -- ^ multiSapProxy
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.h?r=2223#978>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp?r=2223>
-}
{#fun btAxisSweep3Internal_unsignedshort__sortMaxUp as btAxisSweep3Internal_unsignedshort__sortMaxUp    `( BtAxisSweep3Internal_unsignedshort_Class bc , BtDispatcherClass p2 )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ axis
,  `Int'  -- ^ edge
, withBt* `p2'  -- ^ arg2
,  `Bool'  -- ^ updateOverlaps
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.h?r=2223#561>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp?r=2223>
-}
{#fun btAxisSweep3Internal_unsignedshort__removeHandle as btAxisSweep3Internal_unsignedshort__removeHandle    `( BtAxisSweep3Internal_unsignedshort_Class bc , BtDispatcherClass p1 )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ handle
, withBt* `p1'  -- ^ dispatcher
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.h?r=2223#175>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp?r=2223>
-}
{#fun btAxisSweep3Internal_unsignedshort__getOverlappingPairUserCallback as btAxisSweep3Internal_unsignedshort__getOverlappingPairUserCallback    `( BtAxisSweep3Internal_unsignedshort_Class bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtOverlappingPairCallback'  mkBtOverlappingPairCallback* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.h?r=2223#915>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp?r=2223>
-}
{#fun btAxisSweep3Internal_unsignedshort__sortMaxDown as btAxisSweep3Internal_unsignedshort__sortMaxDown    `( BtAxisSweep3Internal_unsignedshort_Class bc , BtDispatcherClass p2 )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ axis
,  `Int'  -- ^ edge
, withBt* `p2'  -- ^ dispatcher
,  `Bool'  -- ^ updateOverlaps
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.h?r=2223#270>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp?r=2223>
-}
{#fun btAxisSweep3Internal_unsignedshort__rayTest as btAxisSweep3Internal_unsignedshort__rayTest    `( BtAxisSweep3Internal_unsignedshort_Class bc , BtBroadphaseRayCallbackClass p2 )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ rayFrom
, withVec3* `Vec3'  peekVec3* -- ^ rayTo
, withBt* `p2'  -- ^ rayCallback
, withVec3* `Vec3'  peekVec3* -- ^ aabbMin
, withVec3* `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.h?r=2223#270>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp?r=2223>
-}
{#fun btAxisSweep3Internal_unsignedshort__rayTest as btAxisSweep3Internal_unsignedshort__rayTest'    `( BtAxisSweep3Internal_unsignedshort_Class bc , BtBroadphaseRayCallbackClass p2 )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ rayFrom
, allocaVec3-  `Vec3'  peekVec3* -- ^ rayTo
, withBt* `p2'  -- ^ rayCallback
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMin
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.h?r=2223#258>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp?r=2223>
-}
{#fun btAxisSweep3Internal_unsignedshort__setAabb as btAxisSweep3Internal_unsignedshort__setAabb    `( BtAxisSweep3Internal_unsignedshort_Class bc , BtBroadphaseProxyClass p0 , BtDispatcherClass p3 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ proxy
, withVec3* `Vec3'  peekVec3* -- ^ aabbMin
, withVec3* `Vec3'  peekVec3* -- ^ aabbMax
, withBt* `p3'  -- ^ dispatcher
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.h?r=2223#258>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp?r=2223>
-}
{#fun btAxisSweep3Internal_unsignedshort__setAabb as btAxisSweep3Internal_unsignedshort__setAabb'    `( BtAxisSweep3Internal_unsignedshort_Class bc , BtBroadphaseProxyClass p0 , BtDispatcherClass p3 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ proxy
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMin
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMax
, withBt* `p3'  -- ^ dispatcher
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.h?r=2223#618>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp?r=2223>
-}
{#fun btAxisSweep3Internal_unsignedshort__resetPool as btAxisSweep3Internal_unsignedshort__resetPool    `( BtAxisSweep3Internal_unsignedshort_Class bc , BtDispatcherClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ dispatcher
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.h?r=2223#722>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp?r=2223>
-}
{#fun btAxisSweep3Internal_unsignedshort__testAabbOverlap as btAxisSweep3Internal_unsignedshort__testAabbOverlap    `( BtAxisSweep3Internal_unsignedshort_Class bc , BtBroadphaseProxyClass p0 , BtBroadphaseProxyClass p1 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ proxy0
, withBt* `p1'  -- ^ proxy1
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.h?r=2223#318>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp?r=2223>
-}
{#fun btAxisSweep3Internal_unsignedshort__getAabb as btAxisSweep3Internal_unsignedshort__getAabb    `( BtAxisSweep3Internal_unsignedshort_Class bc , BtBroadphaseProxyClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ proxy
, withVec3* `Vec3'  peekVec3* -- ^ aabbMin
, withVec3* `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.h?r=2223#318>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp?r=2223>
-}
{#fun btAxisSweep3Internal_unsignedshort__getAabb as btAxisSweep3Internal_unsignedshort__getAabb'    `( BtAxisSweep3Internal_unsignedshort_Class bc , BtBroadphaseProxyClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ proxy
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMin
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.h?r=2223#756>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp?r=2223>
-}
{#fun btAxisSweep3Internal_unsignedshort__updateHandle as btAxisSweep3Internal_unsignedshort__updateHandle    `( BtAxisSweep3Internal_unsignedshort_Class bc , BtDispatcherClass p3 )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ handle
, withVec3* `Vec3'  peekVec3* -- ^ aabbMin
, withVec3* `Vec3'  peekVec3* -- ^ aabbMax
, withBt* `p3'  -- ^ dispatcher
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.h?r=2223#756>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp?r=2223>
-}
{#fun btAxisSweep3Internal_unsignedshort__updateHandle as btAxisSweep3Internal_unsignedshort__updateHandle'    `( BtAxisSweep3Internal_unsignedshort_Class bc , BtDispatcherClass p3 )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ handle
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMin
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMax
, withBt* `p3'  -- ^ dispatcher
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.h?r=2223#493>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp?r=2223>
-}
{#fun btAxisSweep3Internal_unsignedshort__freeHandle as btAxisSweep3Internal_unsignedshort__freeHandle    `( BtAxisSweep3Internal_unsignedshort_Class bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ handle
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.h?r=2223#188>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp?r=2223>
-}
{#fun btAxisSweep3Internal_unsignedshort__printStats as btAxisSweep3Internal_unsignedshort__printStats    `( BtAxisSweep3Internal_unsignedshort_Class bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.h?r=2223#231>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp?r=2223>
-}
{#fun btAxisSweep3Internal_unsignedshort__createProxy as btAxisSweep3Internal_unsignedshort__createProxy    `( BtAxisSweep3Internal_unsignedshort_Class bc , BtDispatcherClass p6 )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ aabbMin
, withVec3* `Vec3'  peekVec3* -- ^ aabbMax
,  `Int'  -- ^ shapeType
, withVoidPtr* `VoidPtr'  -- ^ userPtr
,  `Int'  -- ^ collisionFilterGroup
,  `Int'  -- ^ collisionFilterMask
, withBt* `p6'  -- ^ dispatcher
, withVoidPtr* `VoidPtr'  -- ^ multiSapProxy
 } ->  `BtBroadphaseProxy'  mkBtBroadphaseProxy* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.h?r=2223#231>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp?r=2223>
-}
{#fun btAxisSweep3Internal_unsignedshort__createProxy as btAxisSweep3Internal_unsignedshort__createProxy'    `( BtAxisSweep3Internal_unsignedshort_Class bc , BtDispatcherClass p6 )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMin
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMax
,  `Int'  -- ^ shapeType
, withVoidPtr* `VoidPtr'  -- ^ userPtr
,  `Int'  -- ^ collisionFilterGroup
,  `Int'  -- ^ collisionFilterMask
, withBt* `p6'  -- ^ dispatcher
, withVoidPtr* `VoidPtr'  -- ^ multiSapProxy
 } ->  `BtBroadphaseProxy'  mkBtBroadphaseProxy* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.h?r=2223#171>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp?r=2223>
-}
{#fun btAxisSweep3Internal_unsignedshort__setOverlappingPairUserCallback as btAxisSweep3Internal_unsignedshort__setOverlappingPairUserCallback    `( BtAxisSweep3Internal_unsignedshort_Class bc , BtOverlappingPairCallbackClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ pairCallback
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.h?r=2223#636>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp?r=2223>
-}
{#fun btAxisSweep3Internal_unsignedshort__calculateOverlappingPairs as btAxisSweep3Internal_unsignedshort__calculateOverlappingPairs    `( BtAxisSweep3Internal_unsignedshort_Class bc , BtDispatcherClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ dispatcher
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.h?r=2223#162>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp?r=2223>
-}
{#fun btAxisSweep3Internal_unsignedshort__getOverlappingPairCache0 as btAxisSweep3Internal_unsignedshort__getOverlappingPairCache    `( BtAxisSweep3Internal_unsignedshort_Class bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtOverlappingPairCache'  mkBtOverlappingPairCache* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.h?r=2223#162>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp?r=2223>
-}
{#fun btAxisSweep3Internal_unsignedshort__getOverlappingPairCache0 as btAxisSweep3Internal_unsignedshort__getOverlappingPairCache0    `( BtAxisSweep3Internal_unsignedshort_Class bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtOverlappingPairCache'  mkBtOverlappingPairCache* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.h?r=2223#166>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp?r=2223>
-}
{#fun btAxisSweep3Internal_unsignedshort__getOverlappingPairCache1 as btAxisSweep3Internal_unsignedshort__getOverlappingPairCache1    `( BtAxisSweep3Internal_unsignedshort_Class bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtOverlappingPairCache'  mkBtOverlappingPairCache* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.h?r=2223#327>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp?r=2223>
-}
{#fun btAxisSweep3Internal_unsignedshort__unQuantize as btAxisSweep3Internal_unsignedshort__unQuantize    `( BtAxisSweep3Internal_unsignedshort_Class bc , BtBroadphaseProxyClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ proxy
, withVec3* `Vec3'  peekVec3* -- ^ aabbMin
, withVec3* `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.h?r=2223#327>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp?r=2223>
-}
{#fun btAxisSweep3Internal_unsignedshort__unQuantize as btAxisSweep3Internal_unsignedshort__unQuantize'    `( BtAxisSweep3Internal_unsignedshort_Class bc , BtBroadphaseProxyClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ proxy
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMin
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.h?r=2223#807>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp?r=2223>
-}
{#fun btAxisSweep3Internal_unsignedshort__sortMinDown as btAxisSweep3Internal_unsignedshort__sortMinDown    `( BtAxisSweep3Internal_unsignedshort_Class bc , BtDispatcherClass p2 )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ axis
,  `Int'  -- ^ edge
, withBt* `p2'  -- ^ arg2
,  `Bool'  -- ^ updateOverlaps
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.h?r=2223#291>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp?r=2223>
-}
{#fun btAxisSweep3Internal_unsignedshort__aabbTest as btAxisSweep3Internal_unsignedshort__aabbTest    `( BtAxisSweep3Internal_unsignedshort_Class bc , BtBroadphaseAabbCallbackClass p2 )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ aabbMin
, withVec3* `Vec3'  peekVec3* -- ^ aabbMax
, withBt* `p2'  -- ^ callback
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.h?r=2223#291>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp?r=2223>
-}
{#fun btAxisSweep3Internal_unsignedshort__aabbTest as btAxisSweep3Internal_unsignedshort__aabbTest'    `( BtAxisSweep3Internal_unsignedshort_Class bc , BtBroadphaseAabbCallbackClass p2 )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMin
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMax
, withBt* `p2'  -- ^ callback
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.h?r=2223#182>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp?r=2223>
-}
{#fun btAxisSweep3Internal_unsignedshort__getBroadphaseAabb as btAxisSweep3Internal_unsignedshort__getBroadphaseAabb    `( BtAxisSweep3Internal_unsignedshort_Class bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ aabbMin
, withVec3* `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.h?r=2223#182>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp?r=2223>
-}
{#fun btAxisSweep3Internal_unsignedshort__getBroadphaseAabb as btAxisSweep3Internal_unsignedshort__getBroadphaseAabb'    `( BtAxisSweep3Internal_unsignedshort_Class bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMin
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.h?r=2223#249>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp?r=2223>
-}
{#fun btAxisSweep3Internal_unsignedshort__destroyProxy as btAxisSweep3Internal_unsignedshort__destroyProxy    `( BtAxisSweep3Internal_unsignedshort_Class bc , BtBroadphaseProxyClass p0 , BtDispatcherClass p1 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ proxy
, withBt* `p1'  -- ^ dispatcher
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.h?r=2223#40>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp?r=2223>
-}
{#fun btAxisSweep3Internal_unsignedshort__m_bpHandleMask_set    `( BtAxisSweep3Internal_unsignedshort_Class bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.h?r=2223#40>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp?r=2223>
-}
{#fun btAxisSweep3Internal_unsignedshort__m_bpHandleMask_get    `( BtAxisSweep3Internal_unsignedshort_Class bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.h?r=2223#41>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp?r=2223>
-}
{#fun btAxisSweep3Internal_unsignedshort__m_handleSentinel_set    `( BtAxisSweep3Internal_unsignedshort_Class bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.h?r=2223#41>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp?r=2223>
-}
{#fun btAxisSweep3Internal_unsignedshort__m_handleSentinel_get    `( BtAxisSweep3Internal_unsignedshort_Class bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.h?r=2223#74>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp?r=2223>
-}
{#fun btAxisSweep3Internal_unsignedshort__m_worldAabbMin_set    `( BtAxisSweep3Internal_unsignedshort_Class bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.h?r=2223#74>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp?r=2223>
-}
{#fun btAxisSweep3Internal_unsignedshort__m_worldAabbMin_get    `( BtAxisSweep3Internal_unsignedshort_Class bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.h?r=2223#75>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp?r=2223>
-}
{#fun btAxisSweep3Internal_unsignedshort__m_worldAabbMax_set    `( BtAxisSweep3Internal_unsignedshort_Class bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.h?r=2223#75>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp?r=2223>
-}
{#fun btAxisSweep3Internal_unsignedshort__m_worldAabbMax_get    `( BtAxisSweep3Internal_unsignedshort_Class bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.h?r=2223#77>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp?r=2223>
-}
{#fun btAxisSweep3Internal_unsignedshort__m_quantize_set    `( BtAxisSweep3Internal_unsignedshort_Class bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.h?r=2223#77>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp?r=2223>
-}
{#fun btAxisSweep3Internal_unsignedshort__m_quantize_get    `( BtAxisSweep3Internal_unsignedshort_Class bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.h?r=2223#79>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp?r=2223>
-}
{#fun btAxisSweep3Internal_unsignedshort__m_numHandles_set    `( BtAxisSweep3Internal_unsignedshort_Class bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.h?r=2223#79>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp?r=2223>
-}
{#fun btAxisSweep3Internal_unsignedshort__m_numHandles_get    `( BtAxisSweep3Internal_unsignedshort_Class bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.h?r=2223#80>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp?r=2223>
-}
{#fun btAxisSweep3Internal_unsignedshort__m_maxHandles_set    `( BtAxisSweep3Internal_unsignedshort_Class bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.h?r=2223#80>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp?r=2223>
-}
{#fun btAxisSweep3Internal_unsignedshort__m_maxHandles_get    `( BtAxisSweep3Internal_unsignedshort_Class bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.h?r=2223#83>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp?r=2223>
-}
{#fun btAxisSweep3Internal_unsignedshort__m_firstFreeHandle_set    `( BtAxisSweep3Internal_unsignedshort_Class bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.h?r=2223#83>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp?r=2223>
-}
{#fun btAxisSweep3Internal_unsignedshort__m_firstFreeHandle_get    `( BtAxisSweep3Internal_unsignedshort_Class bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.h?r=2223#88>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp?r=2223>
-}
{#fun btAxisSweep3Internal_unsignedshort__m_pairCache_set    `( BtAxisSweep3Internal_unsignedshort_Class bc , BtOverlappingPairCacheClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.h?r=2223#88>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp?r=2223>
-}
{#fun btAxisSweep3Internal_unsignedshort__m_pairCache_get    `( BtAxisSweep3Internal_unsignedshort_Class bc )' =>     { withBt* `bc'  } ->  `BtOverlappingPairCache'  mkBtOverlappingPairCache* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.h?r=2223#91>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp?r=2223>
-}
{#fun btAxisSweep3Internal_unsignedshort__m_userPairCallback_set    `( BtAxisSweep3Internal_unsignedshort_Class bc , BtOverlappingPairCallbackClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.h?r=2223#91>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp?r=2223>
-}
{#fun btAxisSweep3Internal_unsignedshort__m_userPairCallback_get    `( BtAxisSweep3Internal_unsignedshort_Class bc )' =>     { withBt* `bc'  } ->  `BtOverlappingPairCallback'  mkBtOverlappingPairCallback* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.h?r=2223#93>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp?r=2223>
-}
{#fun btAxisSweep3Internal_unsignedshort__m_ownsPairCache_set    `( BtAxisSweep3Internal_unsignedshort_Class bc )' =>     { withBt* `bc' ,  `Bool'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.h?r=2223#93>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp?r=2223>
-}
{#fun btAxisSweep3Internal_unsignedshort__m_ownsPairCache_get    `( BtAxisSweep3Internal_unsignedshort_Class bc )' =>     { withBt* `bc'  } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.h?r=2223#95>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp?r=2223>
-}
{#fun btAxisSweep3Internal_unsignedshort__m_invalidPair_set    `( BtAxisSweep3Internal_unsignedshort_Class bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.h?r=2223#95>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp?r=2223>
-}
{#fun btAxisSweep3Internal_unsignedshort__m_invalidPair_get    `( BtAxisSweep3Internal_unsignedshort_Class bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.h?r=2223#99>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp?r=2223>
-}
{#fun btAxisSweep3Internal_unsignedshort__m_raycastAccelerator_set    `( BtAxisSweep3Internal_unsignedshort_Class bc , BtDbvtBroadphaseClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.h?r=2223#99>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp?r=2223>
-}
{#fun btAxisSweep3Internal_unsignedshort__m_raycastAccelerator_get    `( BtAxisSweep3Internal_unsignedshort_Class bc )' =>     { withBt* `bc'  } ->  `BtDbvtBroadphase'  mkBtDbvtBroadphase* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.h?r=2223#100>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp?r=2223>
-}
{#fun btAxisSweep3Internal_unsignedshort__m_nullPairCache_set    `( BtAxisSweep3Internal_unsignedshort_Class bc , BtOverlappingPairCacheClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.h?r=2223#100>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp?r=2223>
-}
{#fun btAxisSweep3Internal_unsignedshort__m_nullPairCache_get    `( BtAxisSweep3Internal_unsignedshort_Class bc )' =>     { withBt* `bc'  } ->  `BtOverlappingPairCache'  mkBtOverlappingPairCache* #}
-- * btBridgeProxy
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btMultiSapBroadphase.h?r=2223#53>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btMultiSapBroadphase.cpp?r=2223>
-}
{#fun btMultiSapBroadphase_btBridgeProxy_new as btMultiSapBroadphase_btBridgeProxy    {  } -> `BtMultiSapBroadphase_btBridgeProxy' mkBtMultiSapBroadphase_btBridgeProxy* #}
{#fun btMultiSapBroadphase_btBridgeProxy_free    `( BtMultiSapBroadphase_btBridgeProxyClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btMultiSapBroadphase.h?r=2223#55>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btMultiSapBroadphase.cpp?r=2223>
-}
{#fun btMultiSapBroadphase_btBridgeProxy_m_childBroadphase_set    `( BtMultiSapBroadphase_btBridgeProxyClass bc , BtBroadphaseInterfaceClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btMultiSapBroadphase.h?r=2223#55>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btMultiSapBroadphase.cpp?r=2223>
-}
{#fun btMultiSapBroadphase_btBridgeProxy_m_childBroadphase_get    `( BtMultiSapBroadphase_btBridgeProxyClass bc )' =>     { withBt* `bc'  } ->  `BtBroadphaseInterface'  mkBtBroadphaseInterface* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btMultiSapBroadphase.h?r=2223#54>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btMultiSapBroadphase.cpp?r=2223>
-}
{#fun btMultiSapBroadphase_btBridgeProxy_m_childProxy_set    `( BtMultiSapBroadphase_btBridgeProxyClass bc , BtBroadphaseProxyClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btMultiSapBroadphase.h?r=2223#54>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btMultiSapBroadphase.cpp?r=2223>
-}
{#fun btMultiSapBroadphase_btBridgeProxy_m_childProxy_get    `( BtMultiSapBroadphase_btBridgeProxyClass bc )' =>     { withBt* `bc'  } ->  `BtBroadphaseProxy'  mkBtBroadphaseProxy* #}
-- * btBroadphaseAabbCallback
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btBroadphaseInterface.h?r=2223#32>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btBroadphaseInterface.cpp?r=2223>
-}
{#fun btBroadphaseAabbCallback_process as btBroadphaseAabbCallback_process    `( BtBroadphaseAabbCallbackClass bc , BtBroadphaseProxyClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ proxy
 } ->  `Bool'   #}
-- * btBroadphaseInterface
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btBroadphaseInterface.h?r=2223#61>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btBroadphaseInterface.cpp?r=2223>
-}
{#fun btBroadphaseInterface_rayTest as btBroadphaseInterface_rayTest    `( BtBroadphaseInterfaceClass bc , BtBroadphaseRayCallbackClass p2 )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ rayFrom
, withVec3* `Vec3'  peekVec3* -- ^ rayTo
, withBt* `p2'  -- ^ rayCallback
, withVec3* `Vec3'  peekVec3* -- ^ aabbMin
, withVec3* `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btBroadphaseInterface.h?r=2223#61>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btBroadphaseInterface.cpp?r=2223>
-}
{#fun btBroadphaseInterface_rayTest as btBroadphaseInterface_rayTest'    `( BtBroadphaseInterfaceClass bc , BtBroadphaseRayCallbackClass p2 )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ rayFrom
, allocaVec3-  `Vec3'  peekVec3* -- ^ rayTo
, withBt* `p2'  -- ^ rayCallback
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMin
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btBroadphaseInterface.h?r=2223#58>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btBroadphaseInterface.cpp?r=2223>
-}
{#fun btBroadphaseInterface_setAabb as btBroadphaseInterface_setAabb    `( BtBroadphaseInterfaceClass bc , BtBroadphaseProxyClass p0 , BtDispatcherClass p3 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ proxy
, withVec3* `Vec3'  peekVec3* -- ^ aabbMin
, withVec3* `Vec3'  peekVec3* -- ^ aabbMax
, withBt* `p3'  -- ^ dispatcher
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btBroadphaseInterface.h?r=2223#58>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btBroadphaseInterface.cpp?r=2223>
-}
{#fun btBroadphaseInterface_setAabb as btBroadphaseInterface_setAabb'    `( BtBroadphaseInterfaceClass bc , BtBroadphaseProxyClass p0 , BtDispatcherClass p3 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ proxy
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMin
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMax
, withBt* `p3'  -- ^ dispatcher
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btBroadphaseInterface.h?r=2223#73>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btBroadphaseInterface.cpp?r=2223>
-}
{#fun btBroadphaseInterface_getBroadphaseAabb as btBroadphaseInterface_getBroadphaseAabb    `( BtBroadphaseInterfaceClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ aabbMin
, withVec3* `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btBroadphaseInterface.h?r=2223#73>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btBroadphaseInterface.cpp?r=2223>
-}
{#fun btBroadphaseInterface_getBroadphaseAabb as btBroadphaseInterface_getBroadphaseAabb'    `( BtBroadphaseInterfaceClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMin
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btBroadphaseInterface.h?r=2223#76>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btBroadphaseInterface.cpp?r=2223>
-}
{#fun btBroadphaseInterface_resetPool as btBroadphaseInterface_resetPool    `( BtBroadphaseInterfaceClass bc , BtDispatcherClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ dispatcher
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btBroadphaseInterface.h?r=2223#66>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btBroadphaseInterface.cpp?r=2223>
-}
{#fun btBroadphaseInterface_calculateOverlappingPairs as btBroadphaseInterface_calculateOverlappingPairs    `( BtBroadphaseInterfaceClass bc , BtDispatcherClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ dispatcher
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btBroadphaseInterface.h?r=2223#78>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btBroadphaseInterface.cpp?r=2223>
-}
{#fun btBroadphaseInterface_printStats as btBroadphaseInterface_printStats    `( BtBroadphaseInterfaceClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btBroadphaseInterface.h?r=2223#59>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btBroadphaseInterface.cpp?r=2223>
-}
{#fun btBroadphaseInterface_getAabb as btBroadphaseInterface_getAabb    `( BtBroadphaseInterfaceClass bc , BtBroadphaseProxyClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ proxy
, withVec3* `Vec3'  peekVec3* -- ^ aabbMin
, withVec3* `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btBroadphaseInterface.h?r=2223#59>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btBroadphaseInterface.cpp?r=2223>
-}
{#fun btBroadphaseInterface_getAabb as btBroadphaseInterface_getAabb'    `( BtBroadphaseInterfaceClass bc , BtBroadphaseProxyClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ proxy
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMin
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btBroadphaseInterface.h?r=2223#63>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btBroadphaseInterface.cpp?r=2223>
-}
{#fun btBroadphaseInterface_aabbTest as btBroadphaseInterface_aabbTest    `( BtBroadphaseInterfaceClass bc , BtBroadphaseAabbCallbackClass p2 )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ aabbMin
, withVec3* `Vec3'  peekVec3* -- ^ aabbMax
, withBt* `p2'  -- ^ callback
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btBroadphaseInterface.h?r=2223#63>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btBroadphaseInterface.cpp?r=2223>
-}
{#fun btBroadphaseInterface_aabbTest as btBroadphaseInterface_aabbTest'    `( BtBroadphaseInterfaceClass bc , BtBroadphaseAabbCallbackClass p2 )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMin
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMax
, withBt* `p2'  -- ^ callback
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btBroadphaseInterface.h?r=2223#56>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btBroadphaseInterface.cpp?r=2223>
-}
{#fun btBroadphaseInterface_createProxy as btBroadphaseInterface_createProxy    `( BtBroadphaseInterfaceClass bc , BtDispatcherClass p6 )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ aabbMin
, withVec3* `Vec3'  peekVec3* -- ^ aabbMax
,  `Int'  -- ^ shapeType
, withVoidPtr* `VoidPtr'  -- ^ userPtr
,  `Int'  -- ^ collisionFilterGroup
,  `Int'  -- ^ collisionFilterMask
, withBt* `p6'  -- ^ dispatcher
, withVoidPtr* `VoidPtr'  -- ^ multiSapProxy
 } ->  `BtBroadphaseProxy'  mkBtBroadphaseProxy* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btBroadphaseInterface.h?r=2223#56>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btBroadphaseInterface.cpp?r=2223>
-}
{#fun btBroadphaseInterface_createProxy as btBroadphaseInterface_createProxy'    `( BtBroadphaseInterfaceClass bc , BtDispatcherClass p6 )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMin
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMax
,  `Int'  -- ^ shapeType
, withVoidPtr* `VoidPtr'  -- ^ userPtr
,  `Int'  -- ^ collisionFilterGroup
,  `Int'  -- ^ collisionFilterMask
, withBt* `p6'  -- ^ dispatcher
, withVoidPtr* `VoidPtr'  -- ^ multiSapProxy
 } ->  `BtBroadphaseProxy'  mkBtBroadphaseProxy* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btBroadphaseInterface.h?r=2223#68>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btBroadphaseInterface.cpp?r=2223>
-}
{#fun btBroadphaseInterface_getOverlappingPairCache0 as btBroadphaseInterface_getOverlappingPairCache    `( BtBroadphaseInterfaceClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtOverlappingPairCache'  mkBtOverlappingPairCache* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btBroadphaseInterface.h?r=2223#68>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btBroadphaseInterface.cpp?r=2223>
-}
{#fun btBroadphaseInterface_getOverlappingPairCache0 as btBroadphaseInterface_getOverlappingPairCache0    `( BtBroadphaseInterfaceClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtOverlappingPairCache'  mkBtOverlappingPairCache* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btBroadphaseInterface.h?r=2223#69>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btBroadphaseInterface.cpp?r=2223>
-}
{#fun btBroadphaseInterface_getOverlappingPairCache1 as btBroadphaseInterface_getOverlappingPairCache1    `( BtBroadphaseInterfaceClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtOverlappingPairCache'  mkBtOverlappingPairCache* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btBroadphaseInterface.h?r=2223#57>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btBroadphaseInterface.cpp?r=2223>
-}
{#fun btBroadphaseInterface_destroyProxy as btBroadphaseInterface_destroyProxy    `( BtBroadphaseInterfaceClass bc , BtBroadphaseProxyClass p0 , BtDispatcherClass p1 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ proxy
, withBt* `p1'  -- ^ dispatcher
 } ->  `()'   #}
-- * btBroadphasePair
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btBroadphaseProxy.h?r=2223#188>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btBroadphaseProxy.cpp?r=2223>
-}
{#fun btBroadphasePair_new0 as btBroadphasePair0    {  } -> `BtBroadphasePair' mkBtBroadphasePair* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btBroadphaseProxy.h?r=2223#206>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btBroadphaseProxy.cpp?r=2223>
-}
{#fun btBroadphasePair_new1 as btBroadphasePair1    `( BtBroadphaseProxyClass p0 , BtBroadphaseProxyClass p1 )' =>     {  withBt* `p0' , withBt* `p1'  } -> `BtBroadphasePair' mkBtBroadphasePair* #}
{#fun btBroadphasePair_free    `( BtBroadphasePairClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btBroadphaseProxy.h?r=2223#229>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btBroadphaseProxy.cpp?r=2223>
-}
{#fun btBroadphasePair_m_algorithm_set    `( BtBroadphasePairClass bc , BtCollisionAlgorithmClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btBroadphaseProxy.h?r=2223#229>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btBroadphaseProxy.cpp?r=2223>
-}
{#fun btBroadphasePair_m_algorithm_get    `( BtBroadphasePairClass bc )' =>     { withBt* `bc'  } ->  `BtCollisionAlgorithm'  mkBtCollisionAlgorithm* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btBroadphaseProxy.h?r=2223#226>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btBroadphaseProxy.cpp?r=2223>
-}
{#fun btBroadphasePair_m_pProxy0_set    `( BtBroadphasePairClass bc , BtBroadphaseProxyClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btBroadphaseProxy.h?r=2223#226>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btBroadphaseProxy.cpp?r=2223>
-}
{#fun btBroadphasePair_m_pProxy0_get    `( BtBroadphasePairClass bc )' =>     { withBt* `bc'  } ->  `BtBroadphaseProxy'  mkBtBroadphaseProxy* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btBroadphaseProxy.h?r=2223#227>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btBroadphaseProxy.cpp?r=2223>
-}
{#fun btBroadphasePair_m_pProxy1_set    `( BtBroadphasePairClass bc , BtBroadphaseProxyClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btBroadphaseProxy.h?r=2223#227>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btBroadphaseProxy.cpp?r=2223>
-}
{#fun btBroadphasePair_m_pProxy1_get    `( BtBroadphasePairClass bc )' =>     { withBt* `bc'  } ->  `BtBroadphaseProxy'  mkBtBroadphaseProxy* #}
-- * btBroadphasePairSortPredicate
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btBroadphaseProxy.h?r=2223#246>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btBroadphaseProxy.cpp?r=2223>
-}
{#fun btBroadphasePairSortPredicate_new as btBroadphasePairSortPredicate    {  } -> `BtBroadphasePairSortPredicate' mkBtBroadphasePairSortPredicate* #}
{#fun btBroadphasePairSortPredicate_free    `( BtBroadphasePairSortPredicateClass bc )' =>     { withBt* `bc'  } -> `()' #}
-- * btBroadphaseProxy
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btBroadphaseProxy.h?r=2223#118>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btBroadphaseProxy.cpp?r=2223>
-}
{#fun btBroadphaseProxy_new0 as btBroadphaseProxy0    {  } -> `BtBroadphaseProxy' mkBtBroadphaseProxy* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btBroadphaseProxy.h?r=2223#122>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btBroadphaseProxy.cpp?r=2223>
-}
{#fun btBroadphaseProxy_new1 as btBroadphaseProxy1    {  withVec3* `Vec3' , withVec3* `Vec3' , withVoidPtr* `VoidPtr' ,  `Int' ,  `Int' , withVoidPtr* `VoidPtr'  } -> `BtBroadphaseProxy' mkBtBroadphaseProxy* #}
{#fun btBroadphaseProxy_free    `( BtBroadphaseProxyClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btBroadphaseProxy.h?r=2223#139>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btBroadphaseProxy.cpp?r=2223>
-}
{#fun btBroadphaseProxy_isConvex as btBroadphaseProxy_isConvex    `( )' =>     {   `Int'  -- ^ proxyType
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btBroadphaseProxy.h?r=2223#164>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btBroadphaseProxy.cpp?r=2223>
-}
{#fun btBroadphaseProxy_isInfinite as btBroadphaseProxy_isInfinite    `( )' =>     {   `Int'  -- ^ proxyType
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btBroadphaseProxy.h?r=2223#112>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btBroadphaseProxy.cpp?r=2223>
-}
{#fun btBroadphaseProxy_getUid as btBroadphaseProxy_getUid    `( BtBroadphaseProxyClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btBroadphaseProxy.h?r=2223#149>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btBroadphaseProxy.cpp?r=2223>
-}
{#fun btBroadphaseProxy_isConcave as btBroadphaseProxy_isConcave    `( )' =>     {   `Int'  -- ^ proxyType
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btBroadphaseProxy.h?r=2223#144>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btBroadphaseProxy.cpp?r=2223>
-}
{#fun btBroadphaseProxy_isNonMoving as btBroadphaseProxy_isNonMoving    `( )' =>     {   `Int'  -- ^ proxyType
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btBroadphaseProxy.h?r=2223#154>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btBroadphaseProxy.cpp?r=2223>
-}
{#fun btBroadphaseProxy_isCompound as btBroadphaseProxy_isCompound    `( )' =>     {   `Int'  -- ^ proxyType
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btBroadphaseProxy.h?r=2223#134>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btBroadphaseProxy.cpp?r=2223>
-}
{#fun btBroadphaseProxy_isPolyhedral as btBroadphaseProxy_isPolyhedral    `( )' =>     {   `Int'  -- ^ proxyType
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btBroadphaseProxy.h?r=2223#169>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btBroadphaseProxy.cpp?r=2223>
-}
{#fun btBroadphaseProxy_isConvex2d as btBroadphaseProxy_isConvex2d    `( )' =>     {   `Int'  -- ^ proxyType
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btBroadphaseProxy.h?r=2223#159>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btBroadphaseProxy.cpp?r=2223>
-}
{#fun btBroadphaseProxy_isSoftBody as btBroadphaseProxy_isSoftBody    `( )' =>     {   `Int'  -- ^ proxyType
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btBroadphaseProxy.h?r=2223#110>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btBroadphaseProxy.cpp?r=2223>
-}
{#fun btBroadphaseProxy_m_aabbMax_set    `( BtBroadphaseProxyClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btBroadphaseProxy.h?r=2223#110>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btBroadphaseProxy.cpp?r=2223>
-}
{#fun btBroadphaseProxy_m_aabbMax_get    `( BtBroadphaseProxyClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btBroadphaseProxy.h?r=2223#109>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btBroadphaseProxy.cpp?r=2223>
-}
{#fun btBroadphaseProxy_m_aabbMin_set    `( BtBroadphaseProxyClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btBroadphaseProxy.h?r=2223#109>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btBroadphaseProxy.cpp?r=2223>
-}
{#fun btBroadphaseProxy_m_aabbMin_get    `( BtBroadphaseProxyClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btBroadphaseProxy.h?r=2223#103>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btBroadphaseProxy.cpp?r=2223>
-}
{#fun btBroadphaseProxy_m_clientObject_set    `( BtBroadphaseProxyClass bc )' =>     { withBt* `bc' , withVoidPtr* `VoidPtr'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btBroadphaseProxy.h?r=2223#103>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btBroadphaseProxy.cpp?r=2223>
-}
{#fun btBroadphaseProxy_m_clientObject_get    `( BtBroadphaseProxyClass bc )' =>     { withBt* `bc'  } ->  `VoidPtr'  mkVoidPtr* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btBroadphaseProxy.h?r=2223#104>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btBroadphaseProxy.cpp?r=2223>
-}
{#fun btBroadphaseProxy_m_collisionFilterGroup_set    `( BtBroadphaseProxyClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btBroadphaseProxy.h?r=2223#104>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btBroadphaseProxy.cpp?r=2223>
-}
{#fun btBroadphaseProxy_m_collisionFilterGroup_get    `( BtBroadphaseProxyClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btBroadphaseProxy.h?r=2223#105>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btBroadphaseProxy.cpp?r=2223>
-}
{#fun btBroadphaseProxy_m_collisionFilterMask_set    `( BtBroadphaseProxyClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btBroadphaseProxy.h?r=2223#105>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btBroadphaseProxy.cpp?r=2223>
-}
{#fun btBroadphaseProxy_m_collisionFilterMask_get    `( BtBroadphaseProxyClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btBroadphaseProxy.h?r=2223#106>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btBroadphaseProxy.cpp?r=2223>
-}
{#fun btBroadphaseProxy_m_multiSapParentProxy_set    `( BtBroadphaseProxyClass bc )' =>     { withBt* `bc' , withVoidPtr* `VoidPtr'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btBroadphaseProxy.h?r=2223#106>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btBroadphaseProxy.cpp?r=2223>
-}
{#fun btBroadphaseProxy_m_multiSapParentProxy_get    `( BtBroadphaseProxyClass bc )' =>     { withBt* `bc'  } ->  `VoidPtr'  mkVoidPtr* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btBroadphaseProxy.h?r=2223#107>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btBroadphaseProxy.cpp?r=2223>
-}
{#fun btBroadphaseProxy_m_uniqueId_set    `( BtBroadphaseProxyClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btBroadphaseProxy.h?r=2223#107>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btBroadphaseProxy.cpp?r=2223>
-}
{#fun btBroadphaseProxy_m_uniqueId_get    `( BtBroadphaseProxyClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
-- * btBroadphaseRayCallback
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btBroadphaseInterface.h?r=2223#41>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btBroadphaseInterface.cpp?r=2223>
-}
{#fun btBroadphaseRayCallback_m_lambda_max_set    `( BtBroadphaseRayCallbackClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btBroadphaseInterface.h?r=2223#41>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btBroadphaseInterface.cpp?r=2223>
-}
{#fun btBroadphaseRayCallback_m_lambda_max_get    `( BtBroadphaseRayCallbackClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btBroadphaseInterface.h?r=2223#39>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btBroadphaseInterface.cpp?r=2223>
-}
{#fun btBroadphaseRayCallback_m_rayDirectionInverse_set    `( BtBroadphaseRayCallbackClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btBroadphaseInterface.h?r=2223#39>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btBroadphaseInterface.cpp?r=2223>
-}
{#fun btBroadphaseRayCallback_m_rayDirectionInverse_get    `( BtBroadphaseRayCallbackClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
-- * btBvhSubtreeInfo
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#131>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btBvhSubtreeInfo_new as btBvhSubtreeInfo    {  } -> `BtBvhSubtreeInfo' mkBtBvhSubtreeInfo* #}
{#fun btBvhSubtreeInfo_free    `( BtBvhSubtreeInfoClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#137>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btBvhSubtreeInfo_setAabbFromQuantizeNode as btBvhSubtreeInfo_setAabbFromQuantizeNode    `( BtBvhSubtreeInfoClass bc , BtQuantizedBvhNodeClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ quantizedNode
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#126>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btBvhSubtreeInfo_m_rootNodeIndex_set    `( BtBvhSubtreeInfoClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#126>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btBvhSubtreeInfo_m_rootNodeIndex_get    `( BtBvhSubtreeInfoClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#128>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btBvhSubtreeInfo_m_subtreeSize_set    `( BtBvhSubtreeInfoClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#128>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btBvhSubtreeInfo_m_subtreeSize_get    `( BtBvhSubtreeInfoClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
-- * btBvhSubtreeInfoData
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#502>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btBvhSubtreeInfoData_new as btBvhSubtreeInfoData    {  } -> `BtBvhSubtreeInfoData' mkBtBvhSubtreeInfoData* #}
{#fun btBvhSubtreeInfoData_free    `( BtBvhSubtreeInfoDataClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#503>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btBvhSubtreeInfoData_m_rootNodeIndex_set    `( BtBvhSubtreeInfoDataClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#503>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btBvhSubtreeInfoData_m_rootNodeIndex_get    `( BtBvhSubtreeInfoDataClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#504>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btBvhSubtreeInfoData_m_subtreeSize_set    `( BtBvhSubtreeInfoDataClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#504>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btBvhSubtreeInfoData_m_subtreeSize_get    `( BtBvhSubtreeInfoDataClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
-- * btCollisionAlgorithm
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btCollisionAlgorithm.h?r=2223#76>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btCollisionAlgorithm.cpp?r=2223>
-}
{#fun btCollisionAlgorithm_getAllContactManifolds as btCollisionAlgorithm_getAllContactManifolds    `( BtCollisionAlgorithmClass bc , BtAlignedObjectArray_btPersistentManifold_ptr_Class p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ manifoldArray
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btCollisionAlgorithm.h?r=2223#74>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btCollisionAlgorithm.cpp?r=2223>
-}
{#fun btCollisionAlgorithm_calculateTimeOfImpact as btCollisionAlgorithm_calculateTimeOfImpact    `( BtCollisionAlgorithmClass bc , BtCollisionObjectClass p0 , BtCollisionObjectClass p1 , BtDispatcherInfoClass p2 , BtManifoldResultClass p3 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ body0
, withBt* `p1'  -- ^ body1
, withBt* `p2'  -- ^ dispatchInfo
, withBt* `p3'  -- ^ resultOut
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btCollisionAlgorithm.h?r=2223#72>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btCollisionAlgorithm.cpp?r=2223>
-}
{#fun btCollisionAlgorithm_processCollision as btCollisionAlgorithm_processCollision    `( BtCollisionAlgorithmClass bc , BtCollisionObjectClass p0 , BtCollisionObjectClass p1 , BtDispatcherInfoClass p2 , BtManifoldResultClass p3 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ body0
, withBt* `p1'  -- ^ body1
, withBt* `p2'  -- ^ dispatchInfo
, withBt* `p3'  -- ^ resultOut
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btCollisionAlgorithm.h?r=2223#59>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btCollisionAlgorithm.cpp?r=2223>
-}
{#fun btCollisionAlgorithm_m_dispatcher_set    `( BtCollisionAlgorithmClass bc , BtDispatcherClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btCollisionAlgorithm.h?r=2223#59>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btCollisionAlgorithm.cpp?r=2223>
-}
{#fun btCollisionAlgorithm_m_dispatcher_get    `( BtCollisionAlgorithmClass bc )' =>     { withBt* `bc'  } ->  `BtDispatcher'  mkBtDispatcher* #}
-- * btCollisionAlgorithmConstructionInfo
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btCollisionAlgorithm.h?r=2223#33>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btCollisionAlgorithm.cpp?r=2223>
-}
{#fun btCollisionAlgorithmConstructionInfo_new0 as btCollisionAlgorithmConstructionInfo0    {  } -> `BtCollisionAlgorithmConstructionInfo' mkBtCollisionAlgorithmConstructionInfo* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btCollisionAlgorithm.h?r=2223#38>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btCollisionAlgorithm.cpp?r=2223>
-}
{#fun btCollisionAlgorithmConstructionInfo_new1 as btCollisionAlgorithmConstructionInfo1    `( BtDispatcherClass p0 )' =>     {  withBt* `p0' ,  `Int'  } -> `BtCollisionAlgorithmConstructionInfo' mkBtCollisionAlgorithmConstructionInfo* #}
{#fun btCollisionAlgorithmConstructionInfo_free    `( BtCollisionAlgorithmConstructionInfoClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btCollisionAlgorithm.h?r=2223#44>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btCollisionAlgorithm.cpp?r=2223>
-}
{#fun btCollisionAlgorithmConstructionInfo_m_dispatcher1_set    `( BtCollisionAlgorithmConstructionInfoClass bc , BtDispatcherClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btCollisionAlgorithm.h?r=2223#44>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btCollisionAlgorithm.cpp?r=2223>
-}
{#fun btCollisionAlgorithmConstructionInfo_m_dispatcher1_get    `( BtCollisionAlgorithmConstructionInfoClass bc )' =>     { withBt* `bc'  } ->  `BtDispatcher'  mkBtDispatcher* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btCollisionAlgorithm.h?r=2223#45>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btCollisionAlgorithm.cpp?r=2223>
-}
{#fun btCollisionAlgorithmConstructionInfo_m_manifold_set    `( BtCollisionAlgorithmConstructionInfoClass bc , BtPersistentManifoldClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btCollisionAlgorithm.h?r=2223#45>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btCollisionAlgorithm.cpp?r=2223>
-}
{#fun btCollisionAlgorithmConstructionInfo_m_manifold_get    `( BtCollisionAlgorithmConstructionInfoClass bc )' =>     { withBt* `bc'  } ->  `BtPersistentManifold'  mkBtPersistentManifold* #}
-- * btDbvt
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.h?r=2223#265>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.cpp?r=2223>
-}
{#fun btDbvt_new as btDbvt    {  } -> `BtDbvt' mkBtDbvt* #}
{#fun btDbvt_free    `( BtDbvtClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.h?r=2223#694>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.cpp?r=2223>
-}
{#fun btDbvt_enumLeaves as btDbvt_enumLeaves    `(  BtDbvtNodeClass p0 , BtDbvt_ICollideClass p1 )' =>     {  withBt* `p0'  -- ^ root
, withBt* `p1'  -- ^ policy
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.h?r=2223#271>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.cpp?r=2223>
-}
{#fun btDbvt_optimizeIncremental as btDbvt_optimizeIncremental    `( BtDbvtClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ passes
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.h?r=2223#996>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.cpp?r=2223>
-}
{#fun btDbvt_rayTest as btDbvt_rayTest    `(  BtDbvtNodeClass p0 , BtDbvt_ICollideClass p3 )' =>     {  withBt* `p0'  -- ^ root
, withVec3* `Vec3'  peekVec3* -- ^ rayFrom
, withVec3* `Vec3'  peekVec3* -- ^ rayTo
, withBt* `p3'  -- ^ policy
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.h?r=2223#996>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.cpp?r=2223>
-}
{#fun btDbvt_rayTest as btDbvt_rayTest'    `(  BtDbvtNodeClass p0 , BtDbvt_ICollideClass p3 )' =>     {  withBt* `p0'  -- ^ root
, allocaVec3-  `Vec3'  peekVec3* -- ^ rayFrom
, allocaVec3-  `Vec3'  peekVec3* -- ^ rayTo
, withBt* `p3'  -- ^ policy
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.h?r=2223#270>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.cpp?r=2223>
-}
{#fun btDbvt_optimizeTopDown as btDbvt_optimizeTopDown    `( BtDbvtClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ bu_treshold
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.h?r=2223#680>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.cpp?r=2223>
-}
{#fun btDbvt_enumNodes as btDbvt_enumNodes    `(  BtDbvtNodeClass p0 , BtDbvt_ICollideClass p1 )' =>     {  withBt* `p0'  -- ^ root
, withBt* `p1'  -- ^ policy
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.h?r=2223#279>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.cpp?r=2223>
-}
{#fun btDbvt_write as btDbvt_write    `( BtDbvtClass bc , BtDbvt_IWriterClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ iwriter
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.h?r=2223#373>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.cpp?r=2223>
-}
{#fun btDbvt_allocate as btDbvt_allocate    `(  BtAlignedObjectArray_int_Class p0 , BtAlignedObjectArray_btDbvt_sStkNPS_Class p1 , BtDbvt_sStkNPSClass p2 )' =>     {  withBt* `p0'  -- ^ ifree
, withBt* `p1'  -- ^ stock
, withBt* `p2'  -- ^ value
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.h?r=2223#268>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.cpp?r=2223>
-}
{#fun btDbvt_empty as btDbvt_empty    `( BtDbvtClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.h?r=2223#910>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.cpp?r=2223>
-}
{#fun btDbvt_collideTV as btDbvt_collideTV    `( BtDbvtClass bc , BtDbvtNodeClass p0 , BtDbvtAabbMmClass p1 , BtDbvt_ICollideClass p2 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ root
, withBt* `p1'  -- ^ vol
, withBt* `p2'  -- ^ policy
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.h?r=2223#1216>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.cpp?r=2223>
-}
{#fun btDbvt_collideTU as btDbvt_collideTU    `(  BtDbvtNodeClass p0 , BtDbvt_ICollideClass p1 )' =>     {  withBt* `p0'  -- ^ root
, withBt* `p1'  -- ^ policy
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.h?r=2223#712>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.cpp?r=2223>
-}
{#fun btDbvt_collideTT as btDbvt_collideTT    `( BtDbvtClass bc , BtDbvtNodeClass p0 , BtDbvtNodeClass p1 , BtDbvt_ICollideClass p2 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ root0
, withBt* `p1'  -- ^ root1
, withBt* `p2'  -- ^ policy
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.h?r=2223#777>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.cpp?r=2223>
-}
{#fun btDbvt_collideTTpersistentStack as btDbvt_collideTTpersistentStack    `( BtDbvtClass bc , BtDbvtNodeClass p0 , BtDbvtNodeClass p1 , BtDbvt_ICollideClass p2 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ root0
, withBt* `p1'  -- ^ root1
, withBt* `p2'  -- ^ policy
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.h?r=2223#280>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.cpp?r=2223>
-}
{#fun btDbvt_clone as btDbvt_clone    `( BtDbvtClass bc , BtDbvtClass p0 , BtDbvt_ICloneClass p1 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ dest
, withBt* `p1'  -- ^ iclone
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.h?r=2223#287>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.cpp?r=2223>
-}
{#fun btDbvt_benchmark as btDbvt_benchmark    `( )' =>     {  } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.h?r=2223#273>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.cpp?r=2223>
-}
{#fun btDbvt_update0 as btDbvt_update    `( BtDbvtClass bc , BtDbvtNodeClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ leaf
,  `Int'  -- ^ lookahead
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.h?r=2223#273>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.cpp?r=2223>
-}
{#fun btDbvt_update0 as btDbvt_update0    `( BtDbvtClass bc , BtDbvtNodeClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ leaf
,  `Int'  -- ^ lookahead
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.h?r=2223#274>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.cpp?r=2223>
-}
{#fun btDbvt_update1 as btDbvt_update1    `( BtDbvtClass bc , BtDbvtNodeClass p0 , BtDbvtAabbMmClass p1 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ leaf
, withBt* `p1'  -- ^ volume
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.h?r=2223#275>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.cpp?r=2223>
-}
{#fun btDbvt_update2 as btDbvt_update2    `( BtDbvtClass bc , BtDbvtNodeClass p0 , BtDbvtAabbMmClass p1 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ leaf
, withBt* `p1'  -- ^ volume
, withVec3* `Vec3'  peekVec3* -- ^ velocity
,  `Float'  -- ^ margin
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.h?r=2223#275>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.cpp?r=2223>
-}
{#fun btDbvt_update2 as btDbvt_update2'    `( BtDbvtClass bc , BtDbvtNodeClass p0 , BtDbvtAabbMmClass p1 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ leaf
, withBt* `p1'  -- ^ volume
, allocaVec3-  `Vec3'  peekVec3* -- ^ velocity
,  `Float'  -- ^ margin
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.h?r=2223#276>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.cpp?r=2223>
-}
{#fun btDbvt_update3 as btDbvt_update3    `( BtDbvtClass bc , BtDbvtNodeClass p0 , BtDbvtAabbMmClass p1 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ leaf
, withBt* `p1'  -- ^ volume
, withVec3* `Vec3'  peekVec3* -- ^ velocity
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.h?r=2223#276>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.cpp?r=2223>
-}
{#fun btDbvt_update3 as btDbvt_update3'    `( BtDbvtClass bc , BtDbvtNodeClass p0 , BtDbvtAabbMmClass p1 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ leaf
, withBt* `p1'  -- ^ volume
, allocaVec3-  `Vec3'  peekVec3* -- ^ velocity
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.h?r=2223#277>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.cpp?r=2223>
-}
{#fun btDbvt_update4 as btDbvt_update4    `( BtDbvtClass bc , BtDbvtNodeClass p0 , BtDbvtAabbMmClass p1 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ leaf
, withBt* `p1'  -- ^ volume
,  `Float'  -- ^ margin
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.h?r=2223#282>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.cpp?r=2223>
-}
{#fun btDbvt_countLeaves as btDbvt_countLeaves    `(  BtDbvtNodeClass p0 )' =>     {  withBt* `p0'  -- ^ node
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.h?r=2223#272>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.cpp?r=2223>
-}
{#fun btDbvt_insert as btDbvt_insert    `( BtDbvtClass bc , BtDbvtAabbMmClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ box
, withVoidPtr* `VoidPtr'  -- ^ data
 } ->  `BtDbvtNode'  mkBtDbvtNode* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.h?r=2223#283>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.cpp?r=2223>
-}
{#fun btDbvt_extractLeaves as btDbvt_extractLeaves    `(  BtDbvtNodeClass p0 , BtAlignedObjectArray_btDbvtNodeconst_ptr_Class p1 )' =>     {  withBt* `p0'  -- ^ node
, withBt* `p1'  -- ^ leaves
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.h?r=2223#278>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.cpp?r=2223>
-}
{#fun btDbvt_remove as btDbvt_remove    `( BtDbvtClass bc , BtDbvtNodeClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ leaf
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.h?r=2223#281>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.cpp?r=2223>
-}
{#fun btDbvt_maxdepth as btDbvt_maxdepth    `(  BtDbvtNodeClass p0 )' =>     {  withBt* `p0'  -- ^ node
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.h?r=2223#267>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.cpp?r=2223>
-}
{#fun btDbvt_clear as btDbvt_clear    `( BtDbvtClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.h?r=2223#269>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.cpp?r=2223>
-}
{#fun btDbvt_optimizeBottomUp as btDbvt_optimizeBottomUp    `( BtDbvtClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.h?r=2223#255>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.cpp?r=2223>
-}
{#fun btDbvt_m_free_set    `( BtDbvtClass bc , BtDbvtNodeClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.h?r=2223#255>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.cpp?r=2223>
-}
{#fun btDbvt_m_free_get    `( BtDbvtClass bc )' =>     { withBt* `bc'  } ->  `BtDbvtNode'  mkBtDbvtNode* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.h?r=2223#257>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.cpp?r=2223>
-}
{#fun btDbvt_m_leaves_set    `( BtDbvtClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.h?r=2223#257>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.cpp?r=2223>
-}
{#fun btDbvt_m_leaves_get    `( BtDbvtClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.h?r=2223#256>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.cpp?r=2223>
-}
{#fun btDbvt_m_lkhd_set    `( BtDbvtClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.h?r=2223#256>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.cpp?r=2223>
-}
{#fun btDbvt_m_lkhd_get    `( BtDbvtClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.h?r=2223#258>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.cpp?r=2223>
-}
{#fun btDbvt_m_opath_set    `( BtDbvtClass bc )' =>     { withBt* `bc' ,  `Word32'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.h?r=2223#258>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.cpp?r=2223>
-}
{#fun btDbvt_m_opath_get    `( BtDbvtClass bc )' =>     { withBt* `bc'  } ->  `Word32'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.h?r=2223#254>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.cpp?r=2223>
-}
{#fun btDbvt_m_root_set    `( BtDbvtClass bc , BtDbvtNodeClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.h?r=2223#254>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.cpp?r=2223>
-}
{#fun btDbvt_m_root_get    `( BtDbvtClass bc )' =>     { withBt* `bc'  } ->  `BtDbvtNode'  mkBtDbvtNode* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.h?r=2223#261>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.cpp?r=2223>
-}
{#fun btDbvt_m_stkStack_set    `( BtDbvtClass bc , BtAlignedObjectArray_btDbvt_sStkNN_Class a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.h?r=2223#261>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.cpp?r=2223>
-}
{#fun btDbvt_m_stkStack_get    `( BtDbvtClass bc )' =>     { withBt* `bc'  } ->  `BtAlignedObjectArray_btDbvt_sStkNN_'  mkBtAlignedObjectArray_btDbvt_sStkNN_* #}
-- * btDbvtAabbMm
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.h?r=2223#131>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.cpp?r=2223>
-}
{#fun btDbvtAabbMm_new as btDbvtAabbMm    {  } -> `BtDbvtAabbMm' mkBtDbvtAabbMm* #}
{#fun btDbvtAabbMm_free    `( BtDbvtAabbMmClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.h?r=2223#446>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.cpp?r=2223>
-}
{#fun btDbvtAabbMm_SignedExpand as btDbvtAabbMm_SignedExpand    `( BtDbvtAabbMmClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ e
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.h?r=2223#446>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.cpp?r=2223>
-}
{#fun btDbvtAabbMm_SignedExpand as btDbvtAabbMm_SignedExpand'    `( BtDbvtAabbMmClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ e
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.h?r=2223#134>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.cpp?r=2223>
-}
{#fun btDbvtAabbMm_Extents as btDbvtAabbMm_Extents    `( BtDbvtAabbMmClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.h?r=2223#132>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.cpp?r=2223>
-}
{#fun btDbvtAabbMm_Center as btDbvtAabbMm_Center    `( BtDbvtAabbMmClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.h?r=2223#133>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.cpp?r=2223>
-}
{#fun btDbvtAabbMm_Lengths as btDbvtAabbMm_Lengths    `( BtDbvtAabbMmClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.h?r=2223#136>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.cpp?r=2223>
-}
{#fun btDbvtAabbMm_Maxs as btDbvtAabbMm_Maxs    `( BtDbvtAabbMmClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.h?r=2223#493>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.cpp?r=2223>
-}
{#fun btDbvtAabbMm_ProjectMinimum as btDbvtAabbMm_ProjectMinimum    `( BtDbvtAabbMmClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ v
,  `Word32'  -- ^ signs
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.h?r=2223#493>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.cpp?r=2223>
-}
{#fun btDbvtAabbMm_ProjectMinimum as btDbvtAabbMm_ProjectMinimum'    `( BtDbvtAabbMmClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ v
,  `Word32'  -- ^ signs
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.h?r=2223#465>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.cpp?r=2223>
-}
{#fun btDbvtAabbMm_Classify as btDbvtAabbMm_Classify    `( BtDbvtAabbMmClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ n
,  `Float'  -- ^ o
,  `Int'  -- ^ s
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.h?r=2223#465>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.cpp?r=2223>
-}
{#fun btDbvtAabbMm_Classify as btDbvtAabbMm_Classify'    `( BtDbvtAabbMmClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ n
,  `Float'  -- ^ o
,  `Int'  -- ^ s
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.h?r=2223#454>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.cpp?r=2223>
-}
{#fun btDbvtAabbMm_Contain as btDbvtAabbMm_Contain    `( BtDbvtAabbMmClass bc , BtDbvtAabbMmClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ a
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.h?r=2223#135>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.cpp?r=2223>
-}
{#fun btDbvtAabbMm_Mins as btDbvtAabbMm_Mins    `( BtDbvtAabbMmClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.h?r=2223#440>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.cpp?r=2223>
-}
{#fun btDbvtAabbMm_Expand as btDbvtAabbMm_Expand    `( BtDbvtAabbMmClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ e
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.h?r=2223#440>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.cpp?r=2223>
-}
{#fun btDbvtAabbMm_Expand as btDbvtAabbMm_Expand'    `( BtDbvtAabbMmClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ e
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.h?r=2223#166>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.cpp?r=2223>
-}
{#fun btDbvtAabbMm_mi_set    `( BtDbvtAabbMmClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.h?r=2223#166>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.cpp?r=2223>
-}
{#fun btDbvtAabbMm_mi_get    `( BtDbvtAabbMmClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.h?r=2223#166>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.cpp?r=2223>
-}
{#fun btDbvtAabbMm_mx_set    `( BtDbvtAabbMmClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.h?r=2223#166>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.cpp?r=2223>
-}
{#fun btDbvtAabbMm_mx_get    `( BtDbvtAabbMmClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
-- * btDbvtBroadphase
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.h?r=2223#101>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.cpp?r=2223>
-}
{#fun btDbvtBroadphase_new as btDbvtBroadphase    `( BtOverlappingPairCacheClass p0 )' =>     {  withBt* `p0'  } -> `BtDbvtBroadphase' mkBtDbvtBroadphase* #}
{#fun btDbvtBroadphase_free    `( BtDbvtBroadphaseClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.h?r=2223#126>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.cpp?r=2223>
-}
{#fun btDbvtBroadphase_setVelocityPrediction as btDbvtBroadphase_setVelocityPrediction    `( BtDbvtBroadphaseClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ prediction
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.h?r=2223#110>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.cpp?r=2223>
-}
{#fun btDbvtBroadphase_rayTest as btDbvtBroadphase_rayTest    `( BtDbvtBroadphaseClass bc , BtBroadphaseRayCallbackClass p2 )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ rayFrom
, withVec3* `Vec3'  peekVec3* -- ^ rayTo
, withBt* `p2'  -- ^ rayCallback
, withVec3* `Vec3'  peekVec3* -- ^ aabbMin
, withVec3* `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.h?r=2223#110>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.cpp?r=2223>
-}
{#fun btDbvtBroadphase_rayTest as btDbvtBroadphase_rayTest'    `( BtDbvtBroadphaseClass bc , BtBroadphaseRayCallbackClass p2 )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ rayFrom
, allocaVec3-  `Vec3'  peekVec3* -- ^ rayTo
, withBt* `p2'  -- ^ rayCallback
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMin
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.h?r=2223#124>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.cpp?r=2223>
-}
{#fun btDbvtBroadphase_performDeferredRemoval as btDbvtBroadphase_performDeferredRemoval    `( BtDbvtBroadphaseClass bc , BtDispatcherClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ dispatcher
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.h?r=2223#109>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.cpp?r=2223>
-}
{#fun btDbvtBroadphase_setAabb as btDbvtBroadphase_setAabb    `( BtDbvtBroadphaseClass bc , BtBroadphaseProxyClass p0 , BtDispatcherClass p3 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ proxy
, withVec3* `Vec3'  peekVec3* -- ^ aabbMin
, withVec3* `Vec3'  peekVec3* -- ^ aabbMax
, withBt* `p3'  -- ^ dispatcher
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.h?r=2223#109>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.cpp?r=2223>
-}
{#fun btDbvtBroadphase_setAabb as btDbvtBroadphase_setAabb'    `( BtDbvtBroadphaseClass bc , BtBroadphaseProxyClass p0 , BtDispatcherClass p3 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ proxy
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMin
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMax
, withBt* `p3'  -- ^ dispatcher
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.h?r=2223#117>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.cpp?r=2223>
-}
{#fun btDbvtBroadphase_getBroadphaseAabb as btDbvtBroadphase_getBroadphaseAabb    `( BtDbvtBroadphaseClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ aabbMin
, withVec3* `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.h?r=2223#117>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.cpp?r=2223>
-}
{#fun btDbvtBroadphase_getBroadphaseAabb as btDbvtBroadphase_getBroadphaseAabb'    `( BtDbvtBroadphaseClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMin
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.h?r=2223#130>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.cpp?r=2223>
-}
{#fun btDbvtBroadphase_getVelocityPrediction as btDbvtBroadphase_getVelocityPrediction    `( BtDbvtBroadphaseClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.h?r=2223#141>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.cpp?r=2223>
-}
{#fun btDbvtBroadphase_benchmark as btDbvtBroadphase_benchmark    `(  BtBroadphaseInterfaceClass p0 )' =>     {  withBt* `p0'  -- ^ arg0
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.h?r=2223#103>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.cpp?r=2223>
-}
{#fun btDbvtBroadphase_collide as btDbvtBroadphase_collide    `( BtDbvtBroadphaseClass bc , BtDispatcherClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ dispatcher
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.h?r=2223#122>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.cpp?r=2223>
-}
{#fun btDbvtBroadphase_resetPool as btDbvtBroadphase_resetPool    `( BtDbvtBroadphaseClass bc , BtDispatcherClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ dispatcher
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.h?r=2223#104>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.cpp?r=2223>
-}
{#fun btDbvtBroadphase_optimize as btDbvtBroadphase_optimize    `( BtDbvtBroadphaseClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.h?r=2223#114>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.cpp?r=2223>
-}
{#fun btDbvtBroadphase_calculateOverlappingPairs as btDbvtBroadphase_calculateOverlappingPairs    `( BtDbvtBroadphaseClass bc , BtDispatcherClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ dispatcher
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.h?r=2223#139>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.cpp?r=2223>
-}
{#fun btDbvtBroadphase_setAabbForceUpdate as btDbvtBroadphase_setAabbForceUpdate    `( BtDbvtBroadphaseClass bc , BtBroadphaseProxyClass p0 , BtDispatcherClass p3 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ absproxy
, withVec3* `Vec3'  peekVec3* -- ^ aabbMin
, withVec3* `Vec3'  peekVec3* -- ^ aabbMax
, withBt* `p3'  -- ^ arg3
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.h?r=2223#139>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.cpp?r=2223>
-}
{#fun btDbvtBroadphase_setAabbForceUpdate as btDbvtBroadphase_setAabbForceUpdate'    `( BtDbvtBroadphaseClass bc , BtBroadphaseProxyClass p0 , BtDispatcherClass p3 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ absproxy
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMin
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMax
, withBt* `p3'  -- ^ arg3
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.h?r=2223#118>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.cpp?r=2223>
-}
{#fun btDbvtBroadphase_printStats as btDbvtBroadphase_printStats    `( BtDbvtBroadphaseClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.h?r=2223#113>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.cpp?r=2223>
-}
{#fun btDbvtBroadphase_getAabb as btDbvtBroadphase_getAabb    `( BtDbvtBroadphaseClass bc , BtBroadphaseProxyClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ proxy
, withVec3* `Vec3'  peekVec3* -- ^ aabbMin
, withVec3* `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.h?r=2223#113>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.cpp?r=2223>
-}
{#fun btDbvtBroadphase_getAabb as btDbvtBroadphase_getAabb'    `( BtDbvtBroadphaseClass bc , BtBroadphaseProxyClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ proxy
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMin
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.h?r=2223#111>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.cpp?r=2223>
-}
{#fun btDbvtBroadphase_aabbTest as btDbvtBroadphase_aabbTest    `( BtDbvtBroadphaseClass bc , BtBroadphaseAabbCallbackClass p2 )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ aabbMin
, withVec3* `Vec3'  peekVec3* -- ^ aabbMax
, withBt* `p2'  -- ^ callback
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.h?r=2223#111>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.cpp?r=2223>
-}
{#fun btDbvtBroadphase_aabbTest as btDbvtBroadphase_aabbTest'    `( BtDbvtBroadphaseClass bc , BtBroadphaseAabbCallbackClass p2 )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMin
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMax
, withBt* `p2'  -- ^ callback
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.h?r=2223#107>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.cpp?r=2223>
-}
{#fun btDbvtBroadphase_createProxy as btDbvtBroadphase_createProxy    `( BtDbvtBroadphaseClass bc , BtDispatcherClass p6 )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ aabbMin
, withVec3* `Vec3'  peekVec3* -- ^ aabbMax
,  `Int'  -- ^ shapeType
, withVoidPtr* `VoidPtr'  -- ^ userPtr
,  `Int'  -- ^ collisionFilterGroup
,  `Int'  -- ^ collisionFilterMask
, withBt* `p6'  -- ^ dispatcher
, withVoidPtr* `VoidPtr'  -- ^ multiSapProxy
 } ->  `BtBroadphaseProxy'  mkBtBroadphaseProxy* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.h?r=2223#107>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.cpp?r=2223>
-}
{#fun btDbvtBroadphase_createProxy as btDbvtBroadphase_createProxy'    `( BtDbvtBroadphaseClass bc , BtDispatcherClass p6 )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMin
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMax
,  `Int'  -- ^ shapeType
, withVoidPtr* `VoidPtr'  -- ^ userPtr
,  `Int'  -- ^ collisionFilterGroup
,  `Int'  -- ^ collisionFilterMask
, withBt* `p6'  -- ^ dispatcher
, withVoidPtr* `VoidPtr'  -- ^ multiSapProxy
 } ->  `BtBroadphaseProxy'  mkBtBroadphaseProxy* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.h?r=2223#115>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.cpp?r=2223>
-}
{#fun btDbvtBroadphase_getOverlappingPairCache0 as btDbvtBroadphase_getOverlappingPairCache    `( BtDbvtBroadphaseClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtOverlappingPairCache'  mkBtOverlappingPairCache* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.h?r=2223#115>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.cpp?r=2223>
-}
{#fun btDbvtBroadphase_getOverlappingPairCache0 as btDbvtBroadphase_getOverlappingPairCache0    `( BtDbvtBroadphaseClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtOverlappingPairCache'  mkBtOverlappingPairCache* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.h?r=2223#116>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.cpp?r=2223>
-}
{#fun btDbvtBroadphase_getOverlappingPairCache1 as btDbvtBroadphase_getOverlappingPairCache1    `( BtDbvtBroadphaseClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtOverlappingPairCache'  mkBtOverlappingPairCache* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.h?r=2223#108>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.cpp?r=2223>
-}
{#fun btDbvtBroadphase_destroyProxy as btDbvtBroadphase_destroyProxy    `( BtDbvtBroadphaseClass bc , BtBroadphaseProxyClass p0 , BtDispatcherClass p1 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ proxy
, withBt* `p1'  -- ^ dispatcher
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.h?r=2223#85>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.cpp?r=2223>
-}
{#fun btDbvtBroadphase_m_cid_set    `( BtDbvtBroadphaseClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.h?r=2223#85>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.cpp?r=2223>
-}
{#fun btDbvtBroadphase_m_cid_get    `( BtDbvtBroadphaseClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.h?r=2223#78>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.cpp?r=2223>
-}
{#fun btDbvtBroadphase_m_cupdates_set    `( BtDbvtBroadphaseClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.h?r=2223#78>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.cpp?r=2223>
-}
{#fun btDbvtBroadphase_m_cupdates_get    `( BtDbvtBroadphaseClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.h?r=2223#88>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.cpp?r=2223>
-}
{#fun btDbvtBroadphase_m_deferedcollide_set    `( BtDbvtBroadphaseClass bc )' =>     { withBt* `bc' ,  `Bool'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.h?r=2223#88>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.cpp?r=2223>
-}
{#fun btDbvtBroadphase_m_deferedcollide_get    `( BtDbvtBroadphaseClass bc )' =>     { withBt* `bc'  } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.h?r=2223#77>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.cpp?r=2223>
-}
{#fun btDbvtBroadphase_m_dupdates_set    `( BtDbvtBroadphaseClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.h?r=2223#77>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.cpp?r=2223>
-}
{#fun btDbvtBroadphase_m_dupdates_get    `( BtDbvtBroadphaseClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.h?r=2223#80>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.cpp?r=2223>
-}
{#fun btDbvtBroadphase_m_fixedleft_set    `( BtDbvtBroadphaseClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.h?r=2223#80>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.cpp?r=2223>
-}
{#fun btDbvtBroadphase_m_fixedleft_get    `( BtDbvtBroadphaseClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.h?r=2223#76>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.cpp?r=2223>
-}
{#fun btDbvtBroadphase_m_fupdates_set    `( BtDbvtBroadphaseClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.h?r=2223#76>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.cpp?r=2223>
-}
{#fun btDbvtBroadphase_m_fupdates_get    `( BtDbvtBroadphaseClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.h?r=2223#86>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.cpp?r=2223>
-}
{#fun btDbvtBroadphase_m_gid_set    `( BtDbvtBroadphaseClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.h?r=2223#86>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.cpp?r=2223>
-}
{#fun btDbvtBroadphase_m_gid_get    `( BtDbvtBroadphaseClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.h?r=2223#89>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.cpp?r=2223>
-}
{#fun btDbvtBroadphase_m_needcleanup_set    `( BtDbvtBroadphaseClass bc )' =>     { withBt* `bc' ,  `Bool'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.h?r=2223#89>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.cpp?r=2223>
-}
{#fun btDbvtBroadphase_m_needcleanup_get    `( BtDbvtBroadphaseClass bc )' =>     { withBt* `bc'  } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.h?r=2223#79>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.cpp?r=2223>
-}
{#fun btDbvtBroadphase_m_newpairs_set    `( BtDbvtBroadphaseClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.h?r=2223#79>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.cpp?r=2223>
-}
{#fun btDbvtBroadphase_m_newpairs_get    `( BtDbvtBroadphaseClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.h?r=2223#73>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.cpp?r=2223>
-}
{#fun btDbvtBroadphase_m_paircache_set    `( BtDbvtBroadphaseClass bc , BtOverlappingPairCacheClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.h?r=2223#73>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.cpp?r=2223>
-}
{#fun btDbvtBroadphase_m_paircache_get    `( BtDbvtBroadphaseClass bc )' =>     { withBt* `bc'  } ->  `BtOverlappingPairCache'  mkBtOverlappingPairCache* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.h?r=2223#84>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.cpp?r=2223>
-}
{#fun btDbvtBroadphase_m_pid_set    `( BtDbvtBroadphaseClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.h?r=2223#84>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.cpp?r=2223>
-}
{#fun btDbvtBroadphase_m_pid_get    `( BtDbvtBroadphaseClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.h?r=2223#74>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.cpp?r=2223>
-}
{#fun btDbvtBroadphase_m_prediction_set    `( BtDbvtBroadphaseClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.h?r=2223#74>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.cpp?r=2223>
-}
{#fun btDbvtBroadphase_m_prediction_get    `( BtDbvtBroadphaseClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.h?r=2223#87>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.cpp?r=2223>
-}
{#fun btDbvtBroadphase_m_releasepaircache_set    `( BtDbvtBroadphaseClass bc )' =>     { withBt* `bc' ,  `Bool'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.h?r=2223#87>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.cpp?r=2223>
-}
{#fun btDbvtBroadphase_m_releasepaircache_get    `( BtDbvtBroadphaseClass bc )' =>     { withBt* `bc'  } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.h?r=2223#75>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.cpp?r=2223>
-}
{#fun btDbvtBroadphase_m_stageCurrent_set    `( BtDbvtBroadphaseClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.h?r=2223#75>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.cpp?r=2223>
-}
{#fun btDbvtBroadphase_m_stageCurrent_get    `( BtDbvtBroadphaseClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.h?r=2223#81>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.cpp?r=2223>
-}
{#fun btDbvtBroadphase_m_updates_call_set    `( BtDbvtBroadphaseClass bc )' =>     { withBt* `bc' ,  `Word32'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.h?r=2223#81>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.cpp?r=2223>
-}
{#fun btDbvtBroadphase_m_updates_call_get    `( BtDbvtBroadphaseClass bc )' =>     { withBt* `bc'  } ->  `Word32'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.h?r=2223#82>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.cpp?r=2223>
-}
{#fun btDbvtBroadphase_m_updates_done_set    `( BtDbvtBroadphaseClass bc )' =>     { withBt* `bc' ,  `Word32'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.h?r=2223#82>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.cpp?r=2223>
-}
{#fun btDbvtBroadphase_m_updates_done_get    `( BtDbvtBroadphaseClass bc )' =>     { withBt* `bc'  } ->  `Word32'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.h?r=2223#83>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.cpp?r=2223>
-}
{#fun btDbvtBroadphase_m_updates_ratio_set    `( BtDbvtBroadphaseClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.h?r=2223#83>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.cpp?r=2223>
-}
{#fun btDbvtBroadphase_m_updates_ratio_get    `( BtDbvtBroadphaseClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
-- * btDbvtNode
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.h?r=2223#174>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.cpp?r=2223>
-}
{#fun btDbvtNode_new as btDbvtNode    {  } -> `BtDbvtNode' mkBtDbvtNode* #}
{#fun btDbvtNode_free    `( BtDbvtNodeClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.h?r=2223#178>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.cpp?r=2223>
-}
{#fun btDbvtNode_isinternal as btDbvtNode_isinternal    `( BtDbvtNodeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.h?r=2223#177>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.cpp?r=2223>
-}
{#fun btDbvtNode_isleaf as btDbvtNode_isleaf    `( BtDbvtNodeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.h?r=2223#176>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.cpp?r=2223>
-}
{#fun btDbvtNode_parent_set    `( BtDbvtNodeClass bc , BtDbvtNodeClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.h?r=2223#176>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.cpp?r=2223>
-}
{#fun btDbvtNode_parent_get    `( BtDbvtNodeClass bc )' =>     { withBt* `bc'  } ->  `BtDbvtNode'  mkBtDbvtNode* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.h?r=2223#175>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.cpp?r=2223>
-}
{#fun btDbvtNode_volume_set    `( BtDbvtNodeClass bc , BtDbvtAabbMmClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.h?r=2223#175>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.cpp?r=2223>
-}
{#fun btDbvtNode_volume_get    `( BtDbvtNodeClass bc )' =>     { withBt* `bc'  } ->  `BtDbvtAabbMm'  mkBtDbvtAabbMm* #}
-- * btDbvtProxy
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.h?r=2223#50>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.cpp?r=2223>
-}
{#fun btDbvtProxy_new as btDbvtProxy    {  withVec3* `Vec3' , withVec3* `Vec3' , withVoidPtr* `VoidPtr' ,  `Int' ,  `Int'  } -> `BtDbvtProxy' mkBtDbvtProxy* #}
{#fun btDbvtProxy_free    `( BtDbvtProxyClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.h?r=2223#46>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.cpp?r=2223>
-}
{#fun btDbvtProxy_leaf_set    `( BtDbvtProxyClass bc , BtDbvtNodeClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.h?r=2223#46>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.cpp?r=2223>
-}
{#fun btDbvtProxy_leaf_get    `( BtDbvtProxyClass bc )' =>     { withBt* `bc'  } ->  `BtDbvtNode'  mkBtDbvtNode* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.h?r=2223#48>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.cpp?r=2223>
-}
{#fun btDbvtProxy_stage_set    `( BtDbvtProxyClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.h?r=2223#48>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvtBroadphase.cpp?r=2223>
-}
{#fun btDbvtProxy_stage_get    `( BtDbvtProxyClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
-- * btDispatcher
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDispatcher.h?r=2223#103>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDispatcher.cpp?r=2223>
-}
{#fun btDispatcher_allocateCollisionAlgorithm as btDispatcher_allocateCollisionAlgorithm    `( BtDispatcherClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ size
 } ->  `VoidPtr'  mkVoidPtr* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDispatcher.h?r=2223#83>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDispatcher.cpp?r=2223>
-}
{#fun btDispatcher_releaseManifold as btDispatcher_releaseManifold    `( BtDispatcherClass bc , BtPersistentManifoldClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ manifold
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDispatcher.h?r=2223#93>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDispatcher.cpp?r=2223>
-}
{#fun btDispatcher_getNumManifolds as btDispatcher_getNumManifolds    `( BtDispatcherClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDispatcher.h?r=2223#85>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDispatcher.cpp?r=2223>
-}
{#fun btDispatcher_clearManifold as btDispatcher_clearManifold    `( BtDispatcherClass bc , BtPersistentManifoldClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ manifold
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDispatcher.h?r=2223#105>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDispatcher.cpp?r=2223>
-}
{#fun btDispatcher_freeCollisionAlgorithm as btDispatcher_freeCollisionAlgorithm    `( BtDispatcherClass bc )' =>     { withBt* `bc'  -- ^ 
, withVoidPtr* `VoidPtr'  -- ^ ptr
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDispatcher.h?r=2223#79>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDispatcher.cpp?r=2223>
-}
{#fun btDispatcher_findAlgorithm as btDispatcher_findAlgorithm    `( BtDispatcherClass bc , BtCollisionObjectClass p0 , BtCollisionObjectClass p1 , BtPersistentManifoldClass p2 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ body0
, withBt* `p1'  -- ^ body1
, withBt* `p2'  -- ^ sharedManifold
 } ->  `BtCollisionAlgorithm'  mkBtCollisionAlgorithm* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDispatcher.h?r=2223#89>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDispatcher.cpp?r=2223>
-}
{#fun btDispatcher_needsResponse as btDispatcher_needsResponse    `( BtDispatcherClass bc , BtCollisionObjectClass p0 , BtCollisionObjectClass p1 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ body0
, withBt* `p1'  -- ^ body1
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDispatcher.h?r=2223#81>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDispatcher.cpp?r=2223>
-}
{#fun btDispatcher_getNewManifold as btDispatcher_getNewManifold    `( BtDispatcherClass bc )' =>     { withBt* `bc'  -- ^ 
, withVoidPtr* `VoidPtr'  -- ^ body0
, withVoidPtr* `VoidPtr'  -- ^ body1
 } ->  `BtPersistentManifold'  mkBtPersistentManifold* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDispatcher.h?r=2223#91>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDispatcher.cpp?r=2223>
-}
{#fun btDispatcher_dispatchAllCollisionPairs as btDispatcher_dispatchAllCollisionPairs    `( BtDispatcherClass bc , BtOverlappingPairCacheClass p0 , BtDispatcherInfoClass p1 , BtDispatcherClass p2 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ pairCache
, withBt* `p1'  -- ^ dispatchInfo
, withBt* `p2'  -- ^ dispatcher
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDispatcher.h?r=2223#87>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDispatcher.cpp?r=2223>
-}
{#fun btDispatcher_needsCollision as btDispatcher_needsCollision    `( BtDispatcherClass bc , BtCollisionObjectClass p0 , BtCollisionObjectClass p1 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ body0
, withBt* `p1'  -- ^ body1
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDispatcher.h?r=2223#95>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDispatcher.cpp?r=2223>
-}
{#fun btDispatcher_getManifoldByIndexInternal as btDispatcher_getManifoldByIndexInternal    `( BtDispatcherClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ index
 } ->  `BtPersistentManifold'  mkBtPersistentManifold* #}
-- * btDispatcherInfo
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDispatcher.h?r=2223#38>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDispatcher.cpp?r=2223>
-}
{#fun btDispatcherInfo_new as btDispatcherInfo    {  } -> `BtDispatcherInfo' mkBtDispatcherInfo* #}
{#fun btDispatcherInfo_free    `( BtDispatcherInfoClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDispatcher.h?r=2223#64>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDispatcher.cpp?r=2223>
-}
{#fun btDispatcherInfo_m_allowedCcdPenetration_set    `( BtDispatcherInfoClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDispatcher.h?r=2223#64>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDispatcher.cpp?r=2223>
-}
{#fun btDispatcherInfo_m_allowedCcdPenetration_get    `( BtDispatcherInfoClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDispatcher.h?r=2223#66>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDispatcher.cpp?r=2223>
-}
{#fun btDispatcherInfo_m_convexConservativeDistanceThreshold_set    `( BtDispatcherInfoClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDispatcher.h?r=2223#66>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDispatcher.cpp?r=2223>
-}
{#fun btDispatcherInfo_m_convexConservativeDistanceThreshold_get    `( BtDispatcherInfoClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDispatcher.h?r=2223#60>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDispatcher.cpp?r=2223>
-}
{#fun btDispatcherInfo_m_debugDraw_set    `( BtDispatcherInfoClass bc , BtIDebugDrawClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDispatcher.h?r=2223#60>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDispatcher.cpp?r=2223>
-}
{#fun btDispatcherInfo_m_debugDraw_get    `( BtDispatcherInfoClass bc )' =>     { withBt* `bc'  } ->  `BtIDebugDraw'  mkBtIDebugDraw* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDispatcher.h?r=2223#57>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDispatcher.cpp?r=2223>
-}
{#fun btDispatcherInfo_m_dispatchFunc_set    `( BtDispatcherInfoClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDispatcher.h?r=2223#57>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDispatcher.cpp?r=2223>
-}
{#fun btDispatcherInfo_m_dispatchFunc_get    `( BtDispatcherInfoClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDispatcher.h?r=2223#62>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDispatcher.cpp?r=2223>
-}
{#fun btDispatcherInfo_m_enableSPU_set    `( BtDispatcherInfoClass bc )' =>     { withBt* `bc' ,  `Bool'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDispatcher.h?r=2223#62>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDispatcher.cpp?r=2223>
-}
{#fun btDispatcherInfo_m_enableSPU_get    `( BtDispatcherInfoClass bc )' =>     { withBt* `bc'  } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDispatcher.h?r=2223#61>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDispatcher.cpp?r=2223>
-}
{#fun btDispatcherInfo_m_enableSatConvex_set    `( BtDispatcherInfoClass bc )' =>     { withBt* `bc' ,  `Bool'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDispatcher.h?r=2223#61>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDispatcher.cpp?r=2223>
-}
{#fun btDispatcherInfo_m_enableSatConvex_get    `( BtDispatcherInfoClass bc )' =>     { withBt* `bc'  } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDispatcher.h?r=2223#67>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDispatcher.cpp?r=2223>
-}
{#fun btDispatcherInfo_m_stackAllocator_set    `( BtDispatcherInfoClass bc , BtStackAllocClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDispatcher.h?r=2223#67>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDispatcher.cpp?r=2223>
-}
{#fun btDispatcherInfo_m_stackAllocator_get    `( BtDispatcherInfoClass bc )' =>     { withBt* `bc'  } ->  `BtStackAlloc'  mkBtStackAlloc* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDispatcher.h?r=2223#56>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDispatcher.cpp?r=2223>
-}
{#fun btDispatcherInfo_m_stepCount_set    `( BtDispatcherInfoClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDispatcher.h?r=2223#56>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDispatcher.cpp?r=2223>
-}
{#fun btDispatcherInfo_m_stepCount_get    `( BtDispatcherInfoClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDispatcher.h?r=2223#58>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDispatcher.cpp?r=2223>
-}
{#fun btDispatcherInfo_m_timeOfImpact_set    `( BtDispatcherInfoClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDispatcher.h?r=2223#58>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDispatcher.cpp?r=2223>
-}
{#fun btDispatcherInfo_m_timeOfImpact_get    `( BtDispatcherInfoClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDispatcher.h?r=2223#55>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDispatcher.cpp?r=2223>
-}
{#fun btDispatcherInfo_m_timeStep_set    `( BtDispatcherInfoClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDispatcher.h?r=2223#55>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDispatcher.cpp?r=2223>
-}
{#fun btDispatcherInfo_m_timeStep_get    `( BtDispatcherInfoClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDispatcher.h?r=2223#59>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDispatcher.cpp?r=2223>
-}
{#fun btDispatcherInfo_m_useContinuous_set    `( BtDispatcherInfoClass bc )' =>     { withBt* `bc' ,  `Bool'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDispatcher.h?r=2223#59>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDispatcher.cpp?r=2223>
-}
{#fun btDispatcherInfo_m_useContinuous_get    `( BtDispatcherInfoClass bc )' =>     { withBt* `bc'  } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDispatcher.h?r=2223#65>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDispatcher.cpp?r=2223>
-}
{#fun btDispatcherInfo_m_useConvexConservativeDistanceUtil_set    `( BtDispatcherInfoClass bc )' =>     { withBt* `bc' ,  `Bool'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDispatcher.h?r=2223#65>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDispatcher.cpp?r=2223>
-}
{#fun btDispatcherInfo_m_useConvexConservativeDistanceUtil_get    `( BtDispatcherInfoClass bc )' =>     { withBt* `bc'  } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDispatcher.h?r=2223#63>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDispatcher.cpp?r=2223>
-}
{#fun btDispatcherInfo_m_useEpa_set    `( BtDispatcherInfoClass bc )' =>     { withBt* `bc' ,  `Bool'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDispatcher.h?r=2223#63>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDispatcher.cpp?r=2223>
-}
{#fun btDispatcherInfo_m_useEpa_get    `( BtDispatcherInfoClass bc )' =>     { withBt* `bc'  } ->  `Bool'   #}
-- * btHashedOverlappingPairCache
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.h?r=2223#101>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.cpp?r=2223>
-}
{#fun btHashedOverlappingPairCache_new as btHashedOverlappingPairCache    {  } -> `BtHashedOverlappingPairCache' mkBtHashedOverlappingPairCache* #}
{#fun btHashedOverlappingPairCache_free    `( BtHashedOverlappingPairCacheClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.h?r=2223#265>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.cpp?r=2223>
-}
{#fun btHashedOverlappingPairCache_sortOverlappingPairs as btHashedOverlappingPairCache_sortOverlappingPairs    `( BtHashedOverlappingPairCacheClass bc , BtDispatcherClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ dispatcher
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.h?r=2223#188>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.cpp?r=2223>
-}
{#fun btHashedOverlappingPairCache_equalsPair as btHashedOverlappingPairCache_equalsPair    `( BtHashedOverlappingPairCacheClass bc , BtBroadphasePairClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ pair
,  `Int'  -- ^ proxyId1
,  `Int'  -- ^ proxyId2
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.h?r=2223#229>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.cpp?r=2223>
-}
{#fun btHashedOverlappingPairCache_internalFindPair as btHashedOverlappingPairCache_internalFindPair    `( BtHashedOverlappingPairCacheClass bc , BtBroadphaseProxyClass p0 , BtBroadphaseProxyClass p1 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ proxy0
, withBt* `p1'  -- ^ proxy1
,  `Int'  -- ^ hash
 } ->  `BtBroadphasePair'  mkBtBroadphasePair* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.h?r=2223#149>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.cpp?r=2223>
-}
{#fun btHashedOverlappingPairCache_getOverlappingPairArray0 as btHashedOverlappingPairCache_getOverlappingPairArray    `( BtHashedOverlappingPairCacheClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtAlignedObjectArray_btBroadphasePair_'  mkBtAlignedObjectArray_btBroadphasePair_* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.h?r=2223#149>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.cpp?r=2223>
-}
{#fun btHashedOverlappingPairCache_getOverlappingPairArray0 as btHashedOverlappingPairCache_getOverlappingPairArray0    `( BtHashedOverlappingPairCacheClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtAlignedObjectArray_btBroadphasePair_'  mkBtAlignedObjectArray_btBroadphasePair_* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.h?r=2223#154>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.cpp?r=2223>
-}
{#fun btHashedOverlappingPairCache_getOverlappingPairArray1 as btHashedOverlappingPairCache_getOverlappingPairArray1    `( BtHashedOverlappingPairCacheClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtAlignedObjectArray_btBroadphasePair_'  mkBtAlignedObjectArray_btBroadphasePair_* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.h?r=2223#137>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.cpp?r=2223>
-}
{#fun btHashedOverlappingPairCache_processAllOverlappingPairs as btHashedOverlappingPairCache_processAllOverlappingPairs    `( BtHashedOverlappingPairCacheClass bc , BtOverlapCallbackClass p0 , BtDispatcherClass p1 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ arg0
, withBt* `p1'  -- ^ dispatcher
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.h?r=2223#255>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.cpp?r=2223>
-}
{#fun btHashedOverlappingPairCache_hasDeferredRemoval as btHashedOverlappingPairCache_hasDeferredRemoval    `( BtHashedOverlappingPairCacheClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.h?r=2223#134>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.cpp?r=2223>
-}
{#fun btHashedOverlappingPairCache_cleanProxyFromPairs as btHashedOverlappingPairCache_cleanProxyFromPairs    `( BtHashedOverlappingPairCacheClass bc , BtBroadphaseProxyClass p0 , BtDispatcherClass p1 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ proxy
, withBt* `p1'  -- ^ dispatcher
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.h?r=2223#178>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.cpp?r=2223>
-}
{#fun btHashedOverlappingPairCache_getNumOverlappingPairs as btHashedOverlappingPairCache_getNumOverlappingPairs    `( BtHashedOverlappingPairCacheClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.h?r=2223#159>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.cpp?r=2223>
-}
{#fun btHashedOverlappingPairCache_cleanOverlappingPair as btHashedOverlappingPairCache_cleanOverlappingPair    `( BtHashedOverlappingPairCacheClass bc , BtBroadphasePairClass p0 , BtDispatcherClass p1 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ pair
, withBt* `p1'  -- ^ dispatcher
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.h?r=2223#173>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.cpp?r=2223>
-}
{#fun btHashedOverlappingPairCache_setOverlapFilterCallback as btHashedOverlappingPairCache_setOverlapFilterCallback    `( BtHashedOverlappingPairCacheClass bc , BtOverlapFilterCallbackClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ callback
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.h?r=2223#260>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.cpp?r=2223>
-}
{#fun btHashedOverlappingPairCache_setInternalGhostPairCallback as btHashedOverlappingPairCache_setInternalGhostPairCallback    `( BtHashedOverlappingPairCacheClass bc , BtOverlappingPairCallbackClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ ghostPairCallback
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.h?r=2223#122>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.cpp?r=2223>
-}
{#fun btHashedOverlappingPairCache_addOverlappingPair as btHashedOverlappingPairCache_addOverlappingPair    `( BtHashedOverlappingPairCacheClass bc , BtBroadphaseProxyClass p0 , BtBroadphaseProxyClass p1 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ proxy0
, withBt* `p1'  -- ^ proxy1
 } ->  `BtBroadphasePair'  mkBtBroadphasePair* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.h?r=2223#109>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.cpp?r=2223>
-}
{#fun btHashedOverlappingPairCache_needsBroadphaseCollision as btHashedOverlappingPairCache_needsBroadphaseCollision    `( BtHashedOverlappingPairCacheClass bc , BtBroadphaseProxyClass p0 , BtBroadphaseProxyClass p1 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ proxy0
, withBt* `p1'  -- ^ proxy1
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.h?r=2223#163>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.cpp?r=2223>
-}
{#fun btHashedOverlappingPairCache_findPair as btHashedOverlappingPairCache_findPair    `( BtHashedOverlappingPairCacheClass bc , BtBroadphaseProxyClass p0 , BtBroadphaseProxyClass p1 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ proxy0
, withBt* `p1'  -- ^ proxy1
 } ->  `BtBroadphasePair'  mkBtBroadphasePair* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.h?r=2223#139>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.cpp?r=2223>
-}
{#fun btHashedOverlappingPairCache_getOverlappingPairArrayPtr0 as btHashedOverlappingPairCache_getOverlappingPairArrayPtr    `( BtHashedOverlappingPairCacheClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtBroadphasePair'  mkBtBroadphasePair* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.h?r=2223#139>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.cpp?r=2223>
-}
{#fun btHashedOverlappingPairCache_getOverlappingPairArrayPtr0 as btHashedOverlappingPairCache_getOverlappingPairArrayPtr0    `( BtHashedOverlappingPairCacheClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtBroadphasePair'  mkBtBroadphasePair* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.h?r=2223#144>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.cpp?r=2223>
-}
{#fun btHashedOverlappingPairCache_getOverlappingPairArrayPtr1 as btHashedOverlappingPairCache_getOverlappingPairArrayPtr1    `( BtHashedOverlappingPairCacheClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtBroadphasePair'  mkBtBroadphasePair* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.h?r=2223#168>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.cpp?r=2223>
-}
{#fun btHashedOverlappingPairCache_getOverlapFilterCallback as btHashedOverlappingPairCache_getOverlapFilterCallback    `( BtHashedOverlappingPairCacheClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtOverlapFilterCallback'  mkBtOverlapFilterCallback* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.h?r=2223#105>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.cpp?r=2223>
-}
{#fun btHashedOverlappingPairCache_removeOverlappingPairsContainingProxy as btHashedOverlappingPairCache_removeOverlappingPairsContainingProxy    `( BtHashedOverlappingPairCacheClass bc , BtBroadphaseProxyClass p0 , BtDispatcherClass p1 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ proxy
, withBt* `p1'  -- ^ dispatcher
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.h?r=2223#184>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.cpp?r=2223>
-}
{#fun btHashedOverlappingPairCache_internalAddPair as btHashedOverlappingPairCache_internalAddPair    `( BtHashedOverlappingPairCacheClass bc , BtBroadphaseProxyClass p0 , BtBroadphaseProxyClass p1 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ proxy0
, withBt* `p1'  -- ^ proxy1
 } ->  `BtBroadphasePair'  mkBtBroadphasePair* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.h?r=2223#186>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.cpp?r=2223>
-}
{#fun btHashedOverlappingPairCache_growTables as btHashedOverlappingPairCache_growTables    `( BtHashedOverlappingPairCacheClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.h?r=2223#107>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.cpp?r=2223>
-}
{#fun btHashedOverlappingPairCache_removeOverlappingPair as btHashedOverlappingPairCache_removeOverlappingPair    `( BtHashedOverlappingPairCacheClass bc , BtBroadphaseProxyClass p0 , BtBroadphaseProxyClass p1 , BtDispatcherClass p2 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ proxy0
, withBt* `p1'  -- ^ proxy1
, withBt* `p2'  -- ^ dispatcher
 } ->  `VoidPtr'  mkVoidPtr* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.h?r=2223#165>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.cpp?r=2223>
-}
{#fun btHashedOverlappingPairCache_GetCount as btHashedOverlappingPairCache_GetCount    `( BtHashedOverlappingPairCacheClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.h?r=2223#211>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.cpp?r=2223>
-}
{#fun btHashedOverlappingPairCache_getHash as btHashedOverlappingPairCache_getHash    `( BtHashedOverlappingPairCacheClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Word32'  -- ^ proxyId1
,  `Word32'  -- ^ proxyId2
 } ->  `Word32'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.h?r=2223#95>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.cpp?r=2223>
-}
{#fun btHashedOverlappingPairCache_m_overlappingPairArray_set    `( BtHashedOverlappingPairCacheClass bc , BtAlignedObjectArray_btBroadphasePair_Class a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.h?r=2223#95>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.cpp?r=2223>
-}
{#fun btHashedOverlappingPairCache_m_overlappingPairArray_get    `( BtHashedOverlappingPairCacheClass bc )' =>     { withBt* `bc'  } ->  `BtAlignedObjectArray_btBroadphasePair_'  mkBtAlignedObjectArray_btBroadphasePair_* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.h?r=2223#96>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.cpp?r=2223>
-}
{#fun btHashedOverlappingPairCache_m_overlapFilterCallback_set    `( BtHashedOverlappingPairCacheClass bc , BtOverlapFilterCallbackClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.h?r=2223#96>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.cpp?r=2223>
-}
{#fun btHashedOverlappingPairCache_m_overlapFilterCallback_get    `( BtHashedOverlappingPairCacheClass bc )' =>     { withBt* `bc'  } ->  `BtOverlapFilterCallback'  mkBtOverlapFilterCallback* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.h?r=2223#97>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.cpp?r=2223>
-}
{#fun btHashedOverlappingPairCache_m_blockedForChanges_set    `( BtHashedOverlappingPairCacheClass bc )' =>     { withBt* `bc' ,  `Bool'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.h?r=2223#97>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.cpp?r=2223>
-}
{#fun btHashedOverlappingPairCache_m_blockedForChanges_get    `( BtHashedOverlappingPairCacheClass bc )' =>     { withBt* `bc'  } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.h?r=2223#270>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.cpp?r=2223>
-}
{#fun btHashedOverlappingPairCache_m_hashTable_set    `( BtHashedOverlappingPairCacheClass bc , BtAlignedObjectArray_int_Class a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.h?r=2223#270>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.cpp?r=2223>
-}
{#fun btHashedOverlappingPairCache_m_hashTable_get    `( BtHashedOverlappingPairCacheClass bc )' =>     { withBt* `bc'  } ->  `BtAlignedObjectArray_int_'  mkBtAlignedObjectArray_int_* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.h?r=2223#271>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.cpp?r=2223>
-}
{#fun btHashedOverlappingPairCache_m_next_set    `( BtHashedOverlappingPairCacheClass bc , BtAlignedObjectArray_int_Class a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.h?r=2223#271>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.cpp?r=2223>
-}
{#fun btHashedOverlappingPairCache_m_next_get    `( BtHashedOverlappingPairCacheClass bc )' =>     { withBt* `bc'  } ->  `BtAlignedObjectArray_int_'  mkBtAlignedObjectArray_int_* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.h?r=2223#272>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.cpp?r=2223>
-}
{#fun btHashedOverlappingPairCache_m_ghostPairCallback_set    `( BtHashedOverlappingPairCacheClass bc , BtOverlappingPairCallbackClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.h?r=2223#272>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.cpp?r=2223>
-}
{#fun btHashedOverlappingPairCache_m_ghostPairCallback_get    `( BtHashedOverlappingPairCacheClass bc )' =>     { withBt* `bc'  } ->  `BtOverlappingPairCallback'  mkBtOverlappingPairCallback* #}
-- * btMultiSapBroadphase
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btMultiSapBroadphase.h?r=2223#116>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btMultiSapBroadphase.cpp?r=2223>
-}
{#fun btMultiSapBroadphase_addToChildBroadphase as btMultiSapBroadphase_addToChildBroadphase    `( BtMultiSapBroadphaseClass bc , BtMultiSapBroadphase_btMultiSapProxyClass p0 , BtBroadphaseProxyClass p1 , BtBroadphaseInterfaceClass p2 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ parentMultiSapProxy
, withBt* `p1'  -- ^ childProxy
, withBt* `p2'  -- ^ childBroadphase
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btMultiSapBroadphase.h?r=2223#114>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btMultiSapBroadphase.cpp?r=2223>
-}
{#fun btMultiSapBroadphase_rayTest as btMultiSapBroadphase_rayTest    `( BtMultiSapBroadphaseClass bc , BtBroadphaseRayCallbackClass p2 )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ rayFrom
, withVec3* `Vec3'  peekVec3* -- ^ rayTo
, withBt* `p2'  -- ^ rayCallback
, withVec3* `Vec3'  peekVec3* -- ^ aabbMin
, withVec3* `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btMultiSapBroadphase.h?r=2223#114>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btMultiSapBroadphase.cpp?r=2223>
-}
{#fun btMultiSapBroadphase_rayTest as btMultiSapBroadphase_rayTest'    `( BtMultiSapBroadphaseClass bc , BtBroadphaseRayCallbackClass p2 )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ rayFrom
, allocaVec3-  `Vec3'  peekVec3* -- ^ rayTo
, withBt* `p2'  -- ^ rayCallback
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMin
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btMultiSapBroadphase.h?r=2223#111>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btMultiSapBroadphase.cpp?r=2223>
-}
{#fun btMultiSapBroadphase_setAabb as btMultiSapBroadphase_setAabb    `( BtMultiSapBroadphaseClass bc , BtBroadphaseProxyClass p0 , BtDispatcherClass p3 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ proxy
, withVec3* `Vec3'  peekVec3* -- ^ aabbMin
, withVec3* `Vec3'  peekVec3* -- ^ aabbMax
, withBt* `p3'  -- ^ dispatcher
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btMultiSapBroadphase.h?r=2223#111>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btMultiSapBroadphase.cpp?r=2223>
-}
{#fun btMultiSapBroadphase_setAabb as btMultiSapBroadphase_setAabb'    `( BtMultiSapBroadphaseClass bc , BtBroadphaseProxyClass p0 , BtDispatcherClass p3 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ proxy
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMin
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMax
, withBt* `p3'  -- ^ dispatcher
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btMultiSapBroadphase.h?r=2223#123>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btMultiSapBroadphase.cpp?r=2223>
-}
{#fun btMultiSapBroadphase_getOverlappingPairCache0 as btMultiSapBroadphase_getOverlappingPairCache    `( BtMultiSapBroadphaseClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtOverlappingPairCache'  mkBtOverlappingPairCache* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btMultiSapBroadphase.h?r=2223#123>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btMultiSapBroadphase.cpp?r=2223>
-}
{#fun btMultiSapBroadphase_getOverlappingPairCache0 as btMultiSapBroadphase_getOverlappingPairCache0    `( BtMultiSapBroadphaseClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtOverlappingPairCache'  mkBtOverlappingPairCache* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btMultiSapBroadphase.h?r=2223#127>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btMultiSapBroadphase.cpp?r=2223>
-}
{#fun btMultiSapBroadphase_getOverlappingPairCache1 as btMultiSapBroadphase_getOverlappingPairCache1    `( BtMultiSapBroadphaseClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtOverlappingPairCache'  mkBtOverlappingPairCache* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btMultiSapBroadphase.h?r=2223#140>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btMultiSapBroadphase.cpp?r=2223>
-}
{#fun btMultiSapBroadphase_buildTree as btMultiSapBroadphase_buildTree    `( BtMultiSapBroadphaseClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ bvhAabbMin
, withVec3* `Vec3'  peekVec3* -- ^ bvhAabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btMultiSapBroadphase.h?r=2223#140>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btMultiSapBroadphase.cpp?r=2223>
-}
{#fun btMultiSapBroadphase_buildTree as btMultiSapBroadphase_buildTree'    `( BtMultiSapBroadphaseClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ bvhAabbMin
, allocaVec3-  `Vec3'  peekVec3* -- ^ bvhAabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btMultiSapBroadphase.h?r=2223#147>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btMultiSapBroadphase.cpp?r=2223>
-}
{#fun btMultiSapBroadphase_resetPool as btMultiSapBroadphase_resetPool    `( BtMultiSapBroadphaseClass bc , BtDispatcherClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ dispatcher
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btMultiSapBroadphase.h?r=2223#119>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btMultiSapBroadphase.cpp?r=2223>
-}
{#fun btMultiSapBroadphase_calculateOverlappingPairs as btMultiSapBroadphase_calculateOverlappingPairs    `( BtMultiSapBroadphaseClass bc , BtDispatcherClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ dispatcher
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btMultiSapBroadphase.h?r=2223#121>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btMultiSapBroadphase.cpp?r=2223>
-}
{#fun btMultiSapBroadphase_testAabbOverlap as btMultiSapBroadphase_testAabbOverlap    `( BtMultiSapBroadphaseClass bc , BtBroadphaseProxyClass p0 , BtBroadphaseProxyClass p1 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ proxy0
, withBt* `p1'  -- ^ proxy1
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btMultiSapBroadphase.h?r=2223#112>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btMultiSapBroadphase.cpp?r=2223>
-}
{#fun btMultiSapBroadphase_getAabb as btMultiSapBroadphase_getAabb    `( BtMultiSapBroadphaseClass bc , BtBroadphaseProxyClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ proxy
, withVec3* `Vec3'  peekVec3* -- ^ aabbMin
, withVec3* `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btMultiSapBroadphase.h?r=2223#112>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btMultiSapBroadphase.cpp?r=2223>
-}
{#fun btMultiSapBroadphase_getAabb as btMultiSapBroadphase_getAabb'    `( BtMultiSapBroadphaseClass bc , BtBroadphaseProxyClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ proxy
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMin
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btMultiSapBroadphase.h?r=2223#97>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btMultiSapBroadphase.cpp?r=2223>
-}
{#fun btMultiSapBroadphase_getBroadphaseArray0 as btMultiSapBroadphase_getBroadphaseArray    `( BtMultiSapBroadphaseClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtAlignedObjectArray_btBroadphaseInterface_ptr_'  mkBtAlignedObjectArray_btBroadphaseInterface_ptr_* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btMultiSapBroadphase.h?r=2223#97>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btMultiSapBroadphase.cpp?r=2223>
-}
{#fun btMultiSapBroadphase_getBroadphaseArray0 as btMultiSapBroadphase_getBroadphaseArray0    `( BtMultiSapBroadphaseClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtAlignedObjectArray_btBroadphaseInterface_ptr_'  mkBtAlignedObjectArray_btBroadphaseInterface_ptr_* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btMultiSapBroadphase.h?r=2223#102>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btMultiSapBroadphase.cpp?r=2223>
-}
{#fun btMultiSapBroadphase_getBroadphaseArray1 as btMultiSapBroadphase_getBroadphaseArray1    `( BtMultiSapBroadphaseClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtAlignedObjectArray_btBroadphaseInterface_ptr_'  mkBtAlignedObjectArray_btBroadphaseInterface_ptr_* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btMultiSapBroadphase.h?r=2223#109>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btMultiSapBroadphase.cpp?r=2223>
-}
{#fun btMultiSapBroadphase_createProxy as btMultiSapBroadphase_createProxy    `( BtMultiSapBroadphaseClass bc , BtDispatcherClass p6 )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ aabbMin
, withVec3* `Vec3'  peekVec3* -- ^ aabbMax
,  `Int'  -- ^ shapeType
, withVoidPtr* `VoidPtr'  -- ^ userPtr
,  `Int'  -- ^ collisionFilterGroup
,  `Int'  -- ^ collisionFilterMask
, withBt* `p6'  -- ^ dispatcher
, withVoidPtr* `VoidPtr'  -- ^ multiSapProxy
 } ->  `BtBroadphaseProxy'  mkBtBroadphaseProxy* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btMultiSapBroadphase.h?r=2223#109>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btMultiSapBroadphase.cpp?r=2223>
-}
{#fun btMultiSapBroadphase_createProxy as btMultiSapBroadphase_createProxy'    `( BtMultiSapBroadphaseClass bc , BtDispatcherClass p6 )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMin
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMax
,  `Int'  -- ^ shapeType
, withVoidPtr* `VoidPtr'  -- ^ userPtr
,  `Int'  -- ^ collisionFilterGroup
,  `Int'  -- ^ collisionFilterMask
, withBt* `p6'  -- ^ dispatcher
, withVoidPtr* `VoidPtr'  -- ^ multiSapProxy
 } ->  `BtBroadphaseProxy'  mkBtBroadphaseProxy* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btMultiSapBroadphase.h?r=2223#142>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btMultiSapBroadphase.cpp?r=2223>
-}
{#fun btMultiSapBroadphase_printStats as btMultiSapBroadphase_printStats    `( BtMultiSapBroadphaseClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btMultiSapBroadphase.h?r=2223#134>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btMultiSapBroadphase.cpp?r=2223>
-}
{#fun btMultiSapBroadphase_getBroadphaseAabb as btMultiSapBroadphase_getBroadphaseAabb    `( BtMultiSapBroadphaseClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ aabbMin
, withVec3* `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btMultiSapBroadphase.h?r=2223#134>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btMultiSapBroadphase.cpp?r=2223>
-}
{#fun btMultiSapBroadphase_getBroadphaseAabb as btMultiSapBroadphase_getBroadphaseAabb'    `( BtMultiSapBroadphaseClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMin
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btMultiSapBroadphase.h?r=2223#110>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btMultiSapBroadphase.cpp?r=2223>
-}
{#fun btMultiSapBroadphase_destroyProxy as btMultiSapBroadphase_destroyProxy    `( BtMultiSapBroadphaseClass bc , BtBroadphaseProxyClass p0 , BtDispatcherClass p1 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ proxy
, withBt* `p1'  -- ^ dispatcher
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btMultiSapBroadphase.h?r=2223#37>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btMultiSapBroadphase.cpp?r=2223>
-}
{#fun btMultiSapBroadphase_m_sapBroadphases_set    `( BtMultiSapBroadphaseClass bc , BtAlignedObjectArray_btBroadphaseInterface_ptr_Class a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btMultiSapBroadphase.h?r=2223#37>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btMultiSapBroadphase.cpp?r=2223>
-}
{#fun btMultiSapBroadphase_m_sapBroadphases_get    `( BtMultiSapBroadphaseClass bc )' =>     { withBt* `bc'  } ->  `BtAlignedObjectArray_btBroadphaseInterface_ptr_'  mkBtAlignedObjectArray_btBroadphaseInterface_ptr_* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btMultiSapBroadphase.h?r=2223#39>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btMultiSapBroadphase.cpp?r=2223>
-}
{#fun btMultiSapBroadphase_m_simpleBroadphase_set    `( BtMultiSapBroadphaseClass bc , BtSimpleBroadphaseClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btMultiSapBroadphase.h?r=2223#39>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btMultiSapBroadphase.cpp?r=2223>
-}
{#fun btMultiSapBroadphase_m_simpleBroadphase_get    `( BtMultiSapBroadphaseClass bc )' =>     { withBt* `bc'  } ->  `BtSimpleBroadphase'  mkBtSimpleBroadphase* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btMultiSapBroadphase.h?r=2223#41>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btMultiSapBroadphase.cpp?r=2223>
-}
{#fun btMultiSapBroadphase_m_overlappingPairs_set    `( BtMultiSapBroadphaseClass bc , BtOverlappingPairCacheClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btMultiSapBroadphase.h?r=2223#41>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btMultiSapBroadphase.cpp?r=2223>
-}
{#fun btMultiSapBroadphase_m_overlappingPairs_get    `( BtMultiSapBroadphaseClass bc )' =>     { withBt* `bc'  } ->  `BtOverlappingPairCache'  mkBtOverlappingPairCache* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btMultiSapBroadphase.h?r=2223#43>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btMultiSapBroadphase.cpp?r=2223>
-}
{#fun btMultiSapBroadphase_m_optimizedAabbTree_set    `( BtMultiSapBroadphaseClass bc , BtQuantizedBvhClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btMultiSapBroadphase.h?r=2223#43>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btMultiSapBroadphase.cpp?r=2223>
-}
{#fun btMultiSapBroadphase_m_optimizedAabbTree_get    `( BtMultiSapBroadphaseClass bc )' =>     { withBt* `bc'  } ->  `BtQuantizedBvh'  mkBtQuantizedBvh* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btMultiSapBroadphase.h?r=2223#46>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btMultiSapBroadphase.cpp?r=2223>
-}
{#fun btMultiSapBroadphase_m_ownsPairCache_set    `( BtMultiSapBroadphaseClass bc )' =>     { withBt* `bc' ,  `Bool'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btMultiSapBroadphase.h?r=2223#46>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btMultiSapBroadphase.cpp?r=2223>
-}
{#fun btMultiSapBroadphase_m_ownsPairCache_get    `( BtMultiSapBroadphaseClass bc )' =>     { withBt* `bc'  } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btMultiSapBroadphase.h?r=2223#48>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btMultiSapBroadphase.cpp?r=2223>
-}
{#fun btMultiSapBroadphase_m_filterCallback_set    `( BtMultiSapBroadphaseClass bc , BtOverlapFilterCallbackClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btMultiSapBroadphase.h?r=2223#48>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btMultiSapBroadphase.cpp?r=2223>
-}
{#fun btMultiSapBroadphase_m_filterCallback_get    `( BtMultiSapBroadphaseClass bc )' =>     { withBt* `bc'  } ->  `BtOverlapFilterCallback'  mkBtOverlapFilterCallback* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btMultiSapBroadphase.h?r=2223#50>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btMultiSapBroadphase.cpp?r=2223>
-}
{#fun btMultiSapBroadphase_m_invalidPair_set    `( BtMultiSapBroadphaseClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btMultiSapBroadphase.h?r=2223#50>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btMultiSapBroadphase.cpp?r=2223>
-}
{#fun btMultiSapBroadphase_m_invalidPair_get    `( BtMultiSapBroadphaseClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btMultiSapBroadphase.h?r=2223#90>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btMultiSapBroadphase.cpp?r=2223>
-}
{#fun btMultiSapBroadphase_m_multiSapProxies_set    `( BtMultiSapBroadphaseClass bc , BtAlignedObjectArray_btMultiSapBroadphase_btMultiSapProxy_ptr_Class a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btMultiSapBroadphase.h?r=2223#90>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btMultiSapBroadphase.cpp?r=2223>
-}
{#fun btMultiSapBroadphase_m_multiSapProxies_get    `( BtMultiSapBroadphaseClass bc )' =>     { withBt* `bc'  } ->  `BtAlignedObjectArray_btMultiSapBroadphase_btMultiSapProxy_ptr_'  mkBtAlignedObjectArray_btMultiSapBroadphase_btMultiSapProxy_ptr_* #}
-- * btMultiSapProxy
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btMultiSapBroadphase.h?r=2223#75>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btMultiSapBroadphase.cpp?r=2223>
-}
{#fun btMultiSapBroadphase_btMultiSapProxy_new as btMultiSapBroadphase_btMultiSapProxy    {  withVec3* `Vec3' , withVec3* `Vec3' ,  `Int' , withVoidPtr* `VoidPtr' ,  `Int' ,  `Int'  } -> `BtMultiSapBroadphase_btMultiSapProxy' mkBtMultiSapBroadphase_btMultiSapProxy* #}
{#fun btMultiSapBroadphase_btMultiSapProxy_free    `( BtMultiSapBroadphase_btMultiSapProxyClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btMultiSapBroadphase.h?r=2223#67>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btMultiSapBroadphase.cpp?r=2223>
-}
{#fun btMultiSapBroadphase_btMultiSapProxy_m_aabbMax_set    `( BtMultiSapBroadphase_btMultiSapProxyClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btMultiSapBroadphase.h?r=2223#67>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btMultiSapBroadphase.cpp?r=2223>
-}
{#fun btMultiSapBroadphase_btMultiSapProxy_m_aabbMax_get    `( BtMultiSapBroadphase_btMultiSapProxyClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btMultiSapBroadphase.h?r=2223#66>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btMultiSapBroadphase.cpp?r=2223>
-}
{#fun btMultiSapBroadphase_btMultiSapProxy_m_aabbMin_set    `( BtMultiSapBroadphase_btMultiSapProxyClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btMultiSapBroadphase.h?r=2223#66>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btMultiSapBroadphase.cpp?r=2223>
-}
{#fun btMultiSapBroadphase_btMultiSapProxy_m_aabbMin_get    `( BtMultiSapBroadphase_btMultiSapProxyClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btMultiSapBroadphase.h?r=2223#65>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btMultiSapBroadphase.cpp?r=2223>
-}
{#fun btMultiSapBroadphase_btMultiSapProxy_m_bridgeProxies_set    `( BtMultiSapBroadphase_btMultiSapProxyClass bc , BtAlignedObjectArray_btMultiSapBroadphase_btBridgeProxy_ptr_Class a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btMultiSapBroadphase.h?r=2223#65>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btMultiSapBroadphase.cpp?r=2223>
-}
{#fun btMultiSapBroadphase_btMultiSapProxy_m_bridgeProxies_get    `( BtMultiSapBroadphase_btMultiSapProxyClass bc )' =>     { withBt* `bc'  } ->  `BtAlignedObjectArray_btMultiSapBroadphase_btBridgeProxy_ptr_'  mkBtAlignedObjectArray_btMultiSapBroadphase_btBridgeProxy_ptr_* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btMultiSapBroadphase.h?r=2223#69>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btMultiSapBroadphase.cpp?r=2223>
-}
{#fun btMultiSapBroadphase_btMultiSapProxy_m_shapeType_set    `( BtMultiSapBroadphase_btMultiSapProxyClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btMultiSapBroadphase.h?r=2223#69>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btMultiSapBroadphase.cpp?r=2223>
-}
{#fun btMultiSapBroadphase_btMultiSapProxy_m_shapeType_get    `( BtMultiSapBroadphase_btMultiSapProxyClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
-- * btNodeOverlapCallback
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#155>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btNodeOverlapCallback_processNode as btNodeOverlapCallback_processNode    `( BtNodeOverlapCallbackClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ subPart
,  `Int'  -- ^ triangleIndex
 } ->  `()'   #}
-- * btNullPairCache
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.h?r=2223#387>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.cpp?r=2223>
-}
{#fun btNullPairCache_new as btNullPairCache    {  } -> `BtNullPairCache' mkBtNullPairCache* #}
{#fun btNullPairCache_free    `( BtNullPairCacheClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.h?r=2223#458>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.cpp?r=2223>
-}
{#fun btNullPairCache_sortOverlappingPairs as btNullPairCache_sortOverlappingPairs    `( BtNullPairCacheClass bc , BtDispatcherClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ dispatcher
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.h?r=2223#439>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.cpp?r=2223>
-}
{#fun btNullPairCache_setInternalGhostPairCallback as btNullPairCache_setInternalGhostPairCallback    `( BtNullPairCacheClass bc , BtOverlappingPairCallbackClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ arg0
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.h?r=2223#444>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.cpp?r=2223>
-}
{#fun btNullPairCache_addOverlappingPair as btNullPairCache_addOverlappingPair    `( BtNullPairCacheClass bc , BtBroadphaseProxyClass p0 , BtBroadphaseProxyClass p1 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ arg0
, withBt* `p1'  -- ^ arg1
 } ->  `BtBroadphasePair'  mkBtBroadphasePair* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.h?r=2223#454>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.cpp?r=2223>
-}
{#fun btNullPairCache_removeOverlappingPairsContainingProxy as btNullPairCache_removeOverlappingPairsContainingProxy    `( BtNullPairCacheClass bc , BtBroadphaseProxyClass p0 , BtDispatcherClass p1 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ arg0
, withBt* `p1'  -- ^ arg1
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.h?r=2223#434>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.cpp?r=2223>
-}
{#fun btNullPairCache_hasDeferredRemoval as btNullPairCache_hasDeferredRemoval    `( BtNullPairCacheClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.h?r=2223#401>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.cpp?r=2223>
-}
{#fun btNullPairCache_getOverlappingPairArray as btNullPairCache_getOverlappingPairArray    `( BtNullPairCacheClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtAlignedObjectArray_btBroadphasePair_'  mkBtAlignedObjectArray_btBroadphasePair_* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.h?r=2223#429>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.cpp?r=2223>
-}
{#fun btNullPairCache_findPair as btNullPairCache_findPair    `( BtNullPairCacheClass bc , BtBroadphaseProxyClass p0 , BtBroadphaseProxyClass p1 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ arg0
, withBt* `p1'  -- ^ arg1
 } ->  `BtBroadphasePair'  mkBtBroadphasePair* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.h?r=2223#416>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.cpp?r=2223>
-}
{#fun btNullPairCache_cleanProxyFromPairs as btNullPairCache_cleanProxyFromPairs    `( BtNullPairCacheClass bc , BtBroadphaseProxyClass p0 , BtDispatcherClass p1 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ arg0
, withBt* `p1'  -- ^ arg1
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.h?r=2223#406>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.cpp?r=2223>
-}
{#fun btNullPairCache_cleanOverlappingPair as btNullPairCache_cleanOverlappingPair    `( BtNullPairCacheClass bc , BtBroadphasePairClass p0 , BtDispatcherClass p1 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ arg0
, withBt* `p1'  -- ^ arg1
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.h?r=2223#411>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.cpp?r=2223>
-}
{#fun btNullPairCache_getNumOverlappingPairs as btNullPairCache_getNumOverlappingPairs    `( BtNullPairCacheClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.h?r=2223#449>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.cpp?r=2223>
-}
{#fun btNullPairCache_removeOverlappingPair as btNullPairCache_removeOverlappingPair    `( BtNullPairCacheClass bc , BtBroadphaseProxyClass p0 , BtBroadphaseProxyClass p1 , BtDispatcherClass p2 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ arg0
, withBt* `p1'  -- ^ arg1
, withBt* `p2'  -- ^ arg2
 } ->  `VoidPtr'  mkVoidPtr* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.h?r=2223#421>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.cpp?r=2223>
-}
{#fun btNullPairCache_setOverlapFilterCallback as btNullPairCache_setOverlapFilterCallback    `( BtNullPairCacheClass bc , BtOverlapFilterCallbackClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ arg0
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.h?r=2223#393>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.cpp?r=2223>
-}
{#fun btNullPairCache_getOverlappingPairArrayPtr0 as btNullPairCache_getOverlappingPairArrayPtr    `( BtNullPairCacheClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtBroadphasePair'  mkBtBroadphasePair* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.h?r=2223#393>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.cpp?r=2223>
-}
{#fun btNullPairCache_getOverlappingPairArrayPtr0 as btNullPairCache_getOverlappingPairArrayPtr0    `( BtNullPairCacheClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtBroadphasePair'  mkBtBroadphasePair* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.h?r=2223#397>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.cpp?r=2223>
-}
{#fun btNullPairCache_getOverlappingPairArrayPtr1 as btNullPairCache_getOverlappingPairArrayPtr1    `( BtNullPairCacheClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtBroadphasePair'  mkBtBroadphasePair* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.h?r=2223#425>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.cpp?r=2223>
-}
{#fun btNullPairCache_processAllOverlappingPairs as btNullPairCache_processAllOverlappingPairs    `( BtNullPairCacheClass bc , BtOverlapCallbackClass p0 , BtDispatcherClass p1 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ arg0
, withBt* `p1'  -- ^ arg1
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.h?r=2223#389>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.cpp?r=2223>
-}
{#fun btNullPairCache_m_overlappingPairArray_set    `( BtNullPairCacheClass bc , BtAlignedObjectArray_btBroadphasePair_Class a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.h?r=2223#389>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.cpp?r=2223>
-}
{#fun btNullPairCache_m_overlappingPairArray_get    `( BtNullPairCacheClass bc )' =>     { withBt* `bc'  } ->  `BtAlignedObjectArray_btBroadphasePair_'  mkBtAlignedObjectArray_btBroadphasePair_* #}
-- * btOptimizedBvhNode
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#96>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btOptimizedBvhNode_new as btOptimizedBvhNode    {  } -> `BtOptimizedBvhNode' mkBtOptimizedBvhNode* #}
{#fun btOptimizedBvhNode_free    `( BtOptimizedBvhNodeClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#101>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btOptimizedBvhNode_m_aabbMaxOrg_set    `( BtOptimizedBvhNodeClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#101>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btOptimizedBvhNode_m_aabbMaxOrg_get    `( BtOptimizedBvhNodeClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#100>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btOptimizedBvhNode_m_aabbMinOrg_set    `( BtOptimizedBvhNodeClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#100>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btOptimizedBvhNode_m_aabbMinOrg_get    `( BtOptimizedBvhNodeClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#104>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btOptimizedBvhNode_m_escapeIndex_set    `( BtOptimizedBvhNodeClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#104>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btOptimizedBvhNode_m_escapeIndex_get    `( BtOptimizedBvhNodeClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#108>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btOptimizedBvhNode_m_subPart_set    `( BtOptimizedBvhNodeClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#108>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btOptimizedBvhNode_m_subPart_get    `( BtOptimizedBvhNodeClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#109>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btOptimizedBvhNode_m_triangleIndex_set    `( BtOptimizedBvhNodeClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#109>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btOptimizedBvhNode_m_triangleIndex_get    `( BtOptimizedBvhNodeClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
-- * btOptimizedBvhNodeDoubleData
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#520>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btOptimizedBvhNodeDoubleData_new as btOptimizedBvhNodeDoubleData    {  } -> `BtOptimizedBvhNodeDoubleData' mkBtOptimizedBvhNodeDoubleData* #}
{#fun btOptimizedBvhNodeDoubleData_free    `( BtOptimizedBvhNodeDoubleDataClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#521>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btOptimizedBvhNodeDoubleData_m_aabbMinOrg_set    `( BtOptimizedBvhNodeDoubleDataClass bc , BtVector3DoubleDataClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#521>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btOptimizedBvhNodeDoubleData_m_aabbMinOrg_get    `( BtOptimizedBvhNodeDoubleDataClass bc )' =>     { withBt* `bc'  } ->  `BtVector3DoubleData'  mkBtVector3DoubleData* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#522>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btOptimizedBvhNodeDoubleData_m_aabbMaxOrg_set    `( BtOptimizedBvhNodeDoubleDataClass bc , BtVector3DoubleDataClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#522>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btOptimizedBvhNodeDoubleData_m_aabbMaxOrg_get    `( BtOptimizedBvhNodeDoubleDataClass bc )' =>     { withBt* `bc'  } ->  `BtVector3DoubleData'  mkBtVector3DoubleData* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#523>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btOptimizedBvhNodeDoubleData_m_escapeIndex_set    `( BtOptimizedBvhNodeDoubleDataClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#523>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btOptimizedBvhNodeDoubleData_m_escapeIndex_get    `( BtOptimizedBvhNodeDoubleDataClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#524>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btOptimizedBvhNodeDoubleData_m_subPart_set    `( BtOptimizedBvhNodeDoubleDataClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#524>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btOptimizedBvhNodeDoubleData_m_subPart_get    `( BtOptimizedBvhNodeDoubleDataClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#525>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btOptimizedBvhNodeDoubleData_m_triangleIndex_set    `( BtOptimizedBvhNodeDoubleDataClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#525>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btOptimizedBvhNodeDoubleData_m_triangleIndex_get    `( BtOptimizedBvhNodeDoubleDataClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
-- * btOptimizedBvhNodeFloatData
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#510>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btOptimizedBvhNodeFloatData_new as btOptimizedBvhNodeFloatData    {  } -> `BtOptimizedBvhNodeFloatData' mkBtOptimizedBvhNodeFloatData* #}
{#fun btOptimizedBvhNodeFloatData_free    `( BtOptimizedBvhNodeFloatDataClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#511>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btOptimizedBvhNodeFloatData_m_aabbMinOrg_set    `( BtOptimizedBvhNodeFloatDataClass bc , BtVector3FloatDataClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#511>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btOptimizedBvhNodeFloatData_m_aabbMinOrg_get    `( BtOptimizedBvhNodeFloatDataClass bc )' =>     { withBt* `bc'  } ->  `BtVector3FloatData'  mkBtVector3FloatData* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#512>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btOptimizedBvhNodeFloatData_m_aabbMaxOrg_set    `( BtOptimizedBvhNodeFloatDataClass bc , BtVector3FloatDataClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#512>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btOptimizedBvhNodeFloatData_m_aabbMaxOrg_get    `( BtOptimizedBvhNodeFloatDataClass bc )' =>     { withBt* `bc'  } ->  `BtVector3FloatData'  mkBtVector3FloatData* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#513>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btOptimizedBvhNodeFloatData_m_escapeIndex_set    `( BtOptimizedBvhNodeFloatDataClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#513>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btOptimizedBvhNodeFloatData_m_escapeIndex_get    `( BtOptimizedBvhNodeFloatDataClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#514>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btOptimizedBvhNodeFloatData_m_subPart_set    `( BtOptimizedBvhNodeFloatDataClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#514>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btOptimizedBvhNodeFloatData_m_subPart_get    `( BtOptimizedBvhNodeFloatDataClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#515>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btOptimizedBvhNodeFloatData_m_triangleIndex_set    `( BtOptimizedBvhNodeFloatDataClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#515>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btOptimizedBvhNodeFloatData_m_triangleIndex_get    `( BtOptimizedBvhNodeFloatDataClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
-- * btOverlapCallback
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.h?r=2223#34>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.cpp?r=2223>
-}
{#fun btOverlapCallback_processOverlap as btOverlapCallback_processOverlap    `( BtOverlapCallbackClass bc , BtBroadphasePairClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ pair
 } ->  `Bool'   #}
-- * btOverlapFilterCallback
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.h?r=2223#43>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.cpp?r=2223>
-}
{#fun btOverlapFilterCallback_needBroadphaseCollision as btOverlapFilterCallback_needBroadphaseCollision    `( BtOverlapFilterCallbackClass bc , BtBroadphaseProxyClass p0 , BtBroadphaseProxyClass p1 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ proxy0
, withBt* `p1'  -- ^ proxy1
 } ->  `Bool'   #}
-- * btOverlappingPairCache
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.h?r=2223#87>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.cpp?r=2223>
-}
{#fun btOverlappingPairCache_sortOverlappingPairs as btOverlappingPairCache_sortOverlappingPairs    `( BtOverlappingPairCacheClass bc , BtDispatcherClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ dispatcher
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.h?r=2223#85>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.cpp?r=2223>
-}
{#fun btOverlappingPairCache_setInternalGhostPairCallback as btOverlappingPairCache_setInternalGhostPairCallback    `( BtOverlappingPairCacheClass bc , BtOverlappingPairCallbackClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ ghostPairCallback
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.h?r=2223#77>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.cpp?r=2223>
-}
{#fun btOverlappingPairCache_setOverlapFilterCallback as btOverlappingPairCache_setOverlapFilterCallback    `( BtOverlappingPairCacheClass bc , BtOverlapFilterCallbackClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ callback
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.h?r=2223#69>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.cpp?r=2223>
-}
{#fun btOverlappingPairCache_getOverlappingPairArray as btOverlappingPairCache_getOverlappingPairArray    `( BtOverlappingPairCacheClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtAlignedObjectArray_btBroadphasePair_'  mkBtAlignedObjectArray_btBroadphasePair_* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.h?r=2223#81>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.cpp?r=2223>
-}
{#fun btOverlappingPairCache_findPair as btOverlappingPairCache_findPair    `( BtOverlappingPairCacheClass bc , BtBroadphaseProxyClass p0 , BtBroadphaseProxyClass p1 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ proxy0
, withBt* `p1'  -- ^ proxy1
 } ->  `BtBroadphasePair'  mkBtBroadphasePair* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.h?r=2223#75>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.cpp?r=2223>
-}
{#fun btOverlappingPairCache_cleanProxyFromPairs as btOverlappingPairCache_cleanProxyFromPairs    `( BtOverlappingPairCacheClass bc , BtBroadphaseProxyClass p0 , BtDispatcherClass p1 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ proxy
, withBt* `p1'  -- ^ dispatcher
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.h?r=2223#71>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.cpp?r=2223>
-}
{#fun btOverlappingPairCache_cleanOverlappingPair as btOverlappingPairCache_cleanOverlappingPair    `( BtOverlappingPairCacheClass bc , BtBroadphasePairClass p0 , BtDispatcherClass p1 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ pair
, withBt* `p1'  -- ^ dispatcher
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.h?r=2223#73>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.cpp?r=2223>
-}
{#fun btOverlappingPairCache_getNumOverlappingPairs as btOverlappingPairCache_getNumOverlappingPairs    `( BtOverlappingPairCacheClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.h?r=2223#79>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.cpp?r=2223>
-}
{#fun btOverlappingPairCache_processAllOverlappingPairs as btOverlappingPairCache_processAllOverlappingPairs    `( BtOverlappingPairCacheClass bc , BtOverlapCallbackClass p0 , BtDispatcherClass p1 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ arg0
, withBt* `p1'  -- ^ dispatcher
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.h?r=2223#65>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.cpp?r=2223>
-}
{#fun btOverlappingPairCache_getOverlappingPairArrayPtr0 as btOverlappingPairCache_getOverlappingPairArrayPtr    `( BtOverlappingPairCacheClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtBroadphasePair'  mkBtBroadphasePair* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.h?r=2223#65>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.cpp?r=2223>
-}
{#fun btOverlappingPairCache_getOverlappingPairArrayPtr0 as btOverlappingPairCache_getOverlappingPairArrayPtr0    `( BtOverlappingPairCacheClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtBroadphasePair'  mkBtBroadphasePair* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.h?r=2223#67>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.cpp?r=2223>
-}
{#fun btOverlappingPairCache_getOverlappingPairArrayPtr1 as btOverlappingPairCache_getOverlappingPairArrayPtr1    `( BtOverlappingPairCacheClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtBroadphasePair'  mkBtBroadphasePair* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.h?r=2223#83>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.cpp?r=2223>
-}
{#fun btOverlappingPairCache_hasDeferredRemoval as btOverlappingPairCache_hasDeferredRemoval    `( BtOverlappingPairCacheClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Bool'   #}
-- * btOverlappingPairCallback
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCallback.h?r=2223#32>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCallback.cpp?r=2223>
-}
{#fun btOverlappingPairCallback_addOverlappingPair as btOverlappingPairCallback_addOverlappingPair    `( BtOverlappingPairCallbackClass bc , BtBroadphaseProxyClass p0 , BtBroadphaseProxyClass p1 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ proxy0
, withBt* `p1'  -- ^ proxy1
 } ->  `BtBroadphasePair'  mkBtBroadphasePair* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCallback.h?r=2223#34>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCallback.cpp?r=2223>
-}
{#fun btOverlappingPairCallback_removeOverlappingPair as btOverlappingPairCallback_removeOverlappingPair    `( BtOverlappingPairCallbackClass bc , BtBroadphaseProxyClass p0 , BtBroadphaseProxyClass p1 , BtDispatcherClass p2 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ proxy0
, withBt* `p1'  -- ^ proxy1
, withBt* `p2'  -- ^ dispatcher
 } ->  `VoidPtr'  mkVoidPtr* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCallback.h?r=2223#36>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCallback.cpp?r=2223>
-}
{#fun btOverlappingPairCallback_removeOverlappingPairsContainingProxy as btOverlappingPairCallback_removeOverlappingPairsContainingProxy    `( BtOverlappingPairCallbackClass bc , BtBroadphaseProxyClass p0 , BtDispatcherClass p1 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ proxy0
, withBt* `p1'  -- ^ dispatcher
 } ->  `()'   #}
-- * btQuantizedBvh
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#334>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvh_new0 as btQuantizedBvh0    {  } -> `BtQuantizedBvh' mkBtQuantizedBvh* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#495>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvh_new1 as btQuantizedBvh1    `( BtQuantizedBvhClass p0 )' =>     {  withBt* `p0' ,  `Bool'  } -> `BtQuantizedBvh' mkBtQuantizedBvh* #}
{#fun btQuantizedBvh_free    `( BtQuantizedBvhClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#306>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvh_calcSplittingAxis as btQuantizedBvh_calcSplittingAxis    `( BtQuantizedBvhClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ startIndex
,  `Int'  -- ^ endIndex
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#343>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvh_buildInternal as btQuantizedBvh_buildInternal    `( BtQuantizedBvhClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#465>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvh_serialize0 as btQuantizedBvh_serialize    `( BtQuantizedBvhClass bc )' =>     { withBt* `bc'  -- ^ 
, withVoidPtr* `VoidPtr'  -- ^ o_alignedDataBuffer
,  `Word32'  -- ^ i_dataBufferSize
,  `Bool'  -- ^ i_swapEndian
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#465>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvh_serialize0 as btQuantizedBvh_serialize0    `( BtQuantizedBvhClass bc )' =>     { withBt* `bc'  -- ^ 
, withVoidPtr* `VoidPtr'  -- ^ o_alignedDataBuffer
,  `Word32'  -- ^ i_dataBufferSize
,  `Bool'  -- ^ i_swapEndian
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#477>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvh_serialize1 as btQuantizedBvh_serialize1    `( BtQuantizedBvhClass bc , BtSerializerClass p1 )' =>     { withBt* `bc'  -- ^ 
, withVoidPtr* `VoidPtr'  -- ^ dataBuffer
, withBt* `p1'  -- ^ serializer
 } ->  `String'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#481>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvh_deSerializeDouble as btQuantizedBvh_deSerializeDouble    `( BtQuantizedBvhClass bc , BtQuantizedBvhDoubleDataClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ quantizedBvhDoubleData
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#340>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvh_setQuantizationValues as btQuantizedBvh_setQuantizationValues    `( BtQuantizedBvhClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ bvhAabbMin
, withVec3* `Vec3'  peekVec3* -- ^ bvhAabbMax
,  `Float'  -- ^ quantizationMargin
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#340>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvh_setQuantizationValues as btQuantizedBvh_setQuantizationValues'    `( BtQuantizedBvhClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ bvhAabbMin
, allocaVec3-  `Vec3'  peekVec3* -- ^ bvhAabbMax
,  `Float'  -- ^ quantizationMargin
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#479>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvh_deSerializeFloat as btQuantizedBvh_deSerializeFloat    `( BtQuantizedBvhClass bc , BtQuantizedBvhFloatDataClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ quantizedBvhFloatData
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#214>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvh_setInternalNodeAabbMin as btQuantizedBvh_setInternalNodeAabbMin    `( BtQuantizedBvhClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ nodeIndex
, withVec3* `Vec3'  peekVec3* -- ^ aabbMin
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#214>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvh_setInternalNodeAabbMin as btQuantizedBvh_setInternalNodeAabbMin'    `( BtQuantizedBvhClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ nodeIndex
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMin
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#486>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvh_isQuantized as btQuantizedBvh_isQuantized    `( BtQuantizedBvhClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#470>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvh_getAlignmentSerializationPadding as btQuantizedBvh_getAlignmentSerializationPadding    `( )' =>     {  } ->  `Word32'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#462>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvh_calculateSerializeBufferSize as btQuantizedBvh_calculateSerializeBufferSize    `( BtQuantizedBvhClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Word32'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#308>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvh_sortAndCalcSplittingIndex as btQuantizedBvh_sortAndCalcSplittingIndex    `( BtQuantizedBvhClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ startIndex
,  `Int'  -- ^ endIndex
,  `Int'  -- ^ splitAxis
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#346>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvh_reportAabbOverlappingNodex as btQuantizedBvh_reportAabbOverlappingNodex    `( BtQuantizedBvhClass bc , BtNodeOverlapCallbackClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ nodeCallback
, withVec3* `Vec3'  peekVec3* -- ^ aabbMin
, withVec3* `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#346>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvh_reportAabbOverlappingNodex as btQuantizedBvh_reportAabbOverlappingNodex'    `( BtQuantizedBvhClass bc , BtNodeOverlapCallbackClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ nodeCallback
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMin
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#296>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvh_swapLeafNodes as btQuantizedBvh_swapLeafNodes    `( BtQuantizedBvhClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ firstIndex
,  `Int'  -- ^ secondIndex
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#448>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvh_getQuantizedNodeArray as btQuantizedBvh_getQuantizedNodeArray    `( BtQuantizedBvhClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtAlignedObjectArray_btQuantizedBvhNode_'  mkBtAlignedObjectArray_btQuantizedBvhNode_* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#304>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvh_buildTree as btQuantizedBvh_buildTree    `( BtQuantizedBvhClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ startIndex
,  `Int'  -- ^ endIndex
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#347>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvh_reportRayOverlappingNodex as btQuantizedBvh_reportRayOverlappingNodex    `( BtQuantizedBvhClass bc , BtNodeOverlapCallbackClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ nodeCallback
, withVec3* `Vec3'  peekVec3* -- ^ raySource
, withVec3* `Vec3'  peekVec3* -- ^ rayTarget
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#347>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvh_reportRayOverlappingNodex as btQuantizedBvh_reportRayOverlappingNodex'    `( BtQuantizedBvhClass bc , BtNodeOverlapCallbackClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ nodeCallback
, allocaVec3-  `Vec3'  peekVec3* -- ^ raySource
, allocaVec3-  `Vec3'  peekVec3* -- ^ rayTarget
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#310>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvh_walkStacklessTree as btQuantizedBvh_walkStacklessTree    `( BtQuantizedBvhClass bc , BtNodeOverlapCallbackClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ nodeCallback
, withVec3* `Vec3'  peekVec3* -- ^ aabbMin
, withVec3* `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#310>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvh_walkStacklessTree as btQuantizedBvh_walkStacklessTree'    `( BtQuantizedBvhClass bc , BtNodeOverlapCallbackClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ nodeCallback
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMin
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#312>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvh_walkStacklessQuantizedTreeAgainstRay as btQuantizedBvh_walkStacklessQuantizedTreeAgainstRay    `( BtQuantizedBvhClass bc , BtNodeOverlapCallbackClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ nodeCallback
, withVec3* `Vec3'  peekVec3* -- ^ raySource
, withVec3* `Vec3'  peekVec3* -- ^ rayTarget
, withVec3* `Vec3'  peekVec3* -- ^ aabbMin
, withVec3* `Vec3'  peekVec3* -- ^ aabbMax
,  `Int'  -- ^ startNodeIndex
,  `Int'  -- ^ endNodeIndex
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#312>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvh_walkStacklessQuantizedTreeAgainstRay as btQuantizedBvh_walkStacklessQuantizedTreeAgainstRay'    `( BtQuantizedBvhClass bc , BtNodeOverlapCallbackClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ nodeCallback
, allocaVec3-  `Vec3'  peekVec3* -- ^ raySource
, allocaVec3-  `Vec3'  peekVec3* -- ^ rayTarget
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMin
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMax
,  `Int'  -- ^ startNodeIndex
,  `Int'  -- ^ endNodeIndex
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#328>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvh_updateSubtreeHeaders as btQuantizedBvh_updateSubtreeHeaders    `( BtQuantizedBvhClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ leftChildNodexIndex
,  `Int'  -- ^ rightChildNodexIndex
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#468>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvh_deSerializeInPlace as btQuantizedBvh_deSerializeInPlace    `( )' =>     {  withVoidPtr* `VoidPtr'  -- ^ i_alignedDataBuffer
,  `Word32'  -- ^ i_dataBufferSize
,  `Bool'  -- ^ i_swapEndian
 } ->  `BtQuantizedBvh'  mkBtQuantizedBvh* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#271>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvh_mergeInternalNodeAabb as btQuantizedBvh_mergeInternalNodeAabb    `( BtQuantizedBvhClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ nodeIndex
, withVec3* `Vec3'  peekVec3* -- ^ newAabbMin
, withVec3* `Vec3'  peekVec3* -- ^ newAabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#271>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvh_mergeInternalNodeAabb as btQuantizedBvh_mergeInternalNodeAabb'    `( BtQuantizedBvhClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ nodeIndex
, allocaVec3-  `Vec3'  peekVec3* -- ^ newAabbMin
, allocaVec3-  `Vec3'  peekVec3* -- ^ newAabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#236>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvh_getAabbMin as btQuantizedBvh_getAabbMin    `( BtQuantizedBvhClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ nodeIndex
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#314>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvh_walkStacklessTreeAgainstRay as btQuantizedBvh_walkStacklessTreeAgainstRay    `( BtQuantizedBvhClass bc , BtNodeOverlapCallbackClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ nodeCallback
, withVec3* `Vec3'  peekVec3* -- ^ raySource
, withVec3* `Vec3'  peekVec3* -- ^ rayTarget
, withVec3* `Vec3'  peekVec3* -- ^ aabbMin
, withVec3* `Vec3'  peekVec3* -- ^ aabbMax
,  `Int'  -- ^ startNodeIndex
,  `Int'  -- ^ endNodeIndex
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#314>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvh_walkStacklessTreeAgainstRay as btQuantizedBvh_walkStacklessTreeAgainstRay'    `( BtQuantizedBvhClass bc , BtNodeOverlapCallbackClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ nodeCallback
, allocaVec3-  `Vec3'  peekVec3* -- ^ raySource
, allocaVec3-  `Vec3'  peekVec3* -- ^ rayTarget
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMin
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMax
,  `Int'  -- ^ startNodeIndex
,  `Int'  -- ^ endNodeIndex
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#341>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvh_getLeafNodeArray as btQuantizedBvh_getLeafNodeArray    `( BtQuantizedBvhClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtAlignedObjectArray_btQuantizedBvhNode_'  mkBtAlignedObjectArray_btQuantizedBvhNode_* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#572>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvh_calculateSerializeBufferSizeNew as btQuantizedBvh_calculateSerializeBufferSizeNew    `( BtQuantizedBvhClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#258>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvh_setInternalNodeEscapeIndex as btQuantizedBvh_setInternalNodeEscapeIndex    `( BtQuantizedBvhClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ nodeIndex
,  `Int'  -- ^ escapeIndex
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#246>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvh_getAabbMax as btQuantizedBvh_getAabbMax    `( BtQuantizedBvhClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ nodeIndex
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#454>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvh_getSubtreeInfoArray as btQuantizedBvh_getSubtreeInfoArray    `( BtQuantizedBvhClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtAlignedObjectArray_btBvhSubtreeInfo_'  mkBtAlignedObjectArray_btBvhSubtreeInfo_* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#225>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvh_setInternalNodeAabbMax as btQuantizedBvh_setInternalNodeAabbMax    `( BtQuantizedBvhClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ nodeIndex
, withVec3* `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#225>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvh_setInternalNodeAabbMax as btQuantizedBvh_setInternalNodeAabbMax'    `( BtQuantizedBvhClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ nodeIndex
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#348>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvh_reportBoxCastOverlappingNodex as btQuantizedBvh_reportBoxCastOverlappingNodex    `( BtQuantizedBvhClass bc , BtNodeOverlapCallbackClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ nodeCallback
, withVec3* `Vec3'  peekVec3* -- ^ raySource
, withVec3* `Vec3'  peekVec3* -- ^ rayTarget
, withVec3* `Vec3'  peekVec3* -- ^ aabbMin
, withVec3* `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#348>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvh_reportBoxCastOverlappingNodex as btQuantizedBvh_reportBoxCastOverlappingNodex'    `( BtQuantizedBvhClass bc , BtNodeOverlapCallbackClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ nodeCallback
, allocaVec3-  `Vec3'  peekVec3* -- ^ raySource
, allocaVec3-  `Vec3'  peekVec3* -- ^ rayTarget
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMin
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#298>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvh_assignInternalNodeFromLeafNode as btQuantizedBvh_assignInternalNodeFromLeafNode    `( BtQuantizedBvhClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ internalNode
,  `Int'  -- ^ leafNodeIndex
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#203>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvh_m_SubtreeHeaders_set    `( BtQuantizedBvhClass bc , BtAlignedObjectArray_btBvhSubtreeInfo_Class a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#203>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvh_m_SubtreeHeaders_get    `( BtQuantizedBvhClass bc )' =>     { withBt* `bc'  } ->  `BtAlignedObjectArray_btBvhSubtreeInfo_'  mkBtAlignedObjectArray_btBvhSubtreeInfo_* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#189>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvh_m_bulletVersion_set    `( BtQuantizedBvhClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#189>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvh_m_bulletVersion_get    `( BtQuantizedBvhClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#186>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvh_m_bvhAabbMax_set    `( BtQuantizedBvhClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#186>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvh_m_bvhAabbMax_get    `( BtQuantizedBvhClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#185>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvh_m_bvhAabbMin_set    `( BtQuantizedBvhClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#185>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvh_m_bvhAabbMin_get    `( BtQuantizedBvhClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#187>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvh_m_bvhQuantization_set    `( BtQuantizedBvhClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#187>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvh_m_bvhQuantization_get    `( BtQuantizedBvhClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#198>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvh_m_contiguousNodes_set    `( BtQuantizedBvhClass bc , BtAlignedObjectArray_btOptimizedBvhNode_Class a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#198>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvh_m_contiguousNodes_get    `( BtQuantizedBvhClass bc )' =>     { withBt* `bc'  } ->  `BtAlignedObjectArray_btOptimizedBvhNode_'  mkBtAlignedObjectArray_btOptimizedBvhNode_* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#191>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvh_m_curNodeIndex_set    `( BtQuantizedBvhClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#191>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvh_m_curNodeIndex_get    `( BtQuantizedBvhClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#197>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvh_m_leafNodes_set    `( BtQuantizedBvhClass bc , BtAlignedObjectArray_btOptimizedBvhNode_Class a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#197>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvh_m_leafNodes_get    `( BtQuantizedBvhClass bc )' =>     { withBt* `bc'  } ->  `BtAlignedObjectArray_btOptimizedBvhNode_'  mkBtAlignedObjectArray_btOptimizedBvhNode_* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#200>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvh_m_quantizedContiguousNodes_set    `( BtQuantizedBvhClass bc , BtAlignedObjectArray_btQuantizedBvhNode_Class a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#200>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvh_m_quantizedContiguousNodes_get    `( BtQuantizedBvhClass bc )' =>     { withBt* `bc'  } ->  `BtAlignedObjectArray_btQuantizedBvhNode_'  mkBtAlignedObjectArray_btQuantizedBvhNode_* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#199>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvh_m_quantizedLeafNodes_set    `( BtQuantizedBvhClass bc , BtAlignedObjectArray_btQuantizedBvhNode_Class a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#199>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvh_m_quantizedLeafNodes_get    `( BtQuantizedBvhClass bc )' =>     { withBt* `bc'  } ->  `BtAlignedObjectArray_btQuantizedBvhNode_'  mkBtAlignedObjectArray_btQuantizedBvhNode_* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#206>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvh_m_subtreeHeaderCount_set    `( BtQuantizedBvhClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#206>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvh_m_subtreeHeaderCount_get    `( BtQuantizedBvhClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#193>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvh_m_useQuantization_set    `( BtQuantizedBvhClass bc )' =>     { withBt* `bc' ,  `Bool'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#193>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvh_m_useQuantization_get    `( BtQuantizedBvhClass bc )' =>     { withBt* `bc'  } ->  `Bool'   #}
-- * btQuantizedBvhDoubleData
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#555>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvhDoubleData_new as btQuantizedBvhDoubleData    {  } -> `BtQuantizedBvhDoubleData' mkBtQuantizedBvhDoubleData* #}
{#fun btQuantizedBvhDoubleData_free    `( BtQuantizedBvhDoubleDataClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#557>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvhDoubleData_m_bvhAabbMax_set    `( BtQuantizedBvhDoubleDataClass bc , BtVector3DoubleDataClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#557>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvhDoubleData_m_bvhAabbMax_get    `( BtQuantizedBvhDoubleDataClass bc )' =>     { withBt* `bc'  } ->  `BtVector3DoubleData'  mkBtVector3DoubleData* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#556>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvhDoubleData_m_bvhAabbMin_set    `( BtQuantizedBvhDoubleDataClass bc , BtVector3DoubleDataClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#556>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvhDoubleData_m_bvhAabbMin_get    `( BtQuantizedBvhDoubleDataClass bc )' =>     { withBt* `bc'  } ->  `BtVector3DoubleData'  mkBtVector3DoubleData* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#558>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvhDoubleData_m_bvhQuantization_set    `( BtQuantizedBvhDoubleDataClass bc , BtVector3DoubleDataClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#558>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvhDoubleData_m_bvhQuantization_get    `( BtQuantizedBvhDoubleDataClass bc )' =>     { withBt* `bc'  } ->  `BtVector3DoubleData'  mkBtVector3DoubleData* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#563>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvhDoubleData_m_contiguousNodesPtr_set    `( BtQuantizedBvhDoubleDataClass bc , BtOptimizedBvhNodeDoubleDataClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#563>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvhDoubleData_m_contiguousNodesPtr_get    `( BtQuantizedBvhDoubleDataClass bc )' =>     { withBt* `bc'  } ->  `BtOptimizedBvhNodeDoubleData'  mkBtOptimizedBvhNodeDoubleData* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#559>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvhDoubleData_m_curNodeIndex_set    `( BtQuantizedBvhDoubleDataClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#559>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvhDoubleData_m_curNodeIndex_get    `( BtQuantizedBvhDoubleDataClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#561>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvhDoubleData_m_numContiguousLeafNodes_set    `( BtQuantizedBvhDoubleDataClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#561>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvhDoubleData_m_numContiguousLeafNodes_get    `( BtQuantizedBvhDoubleDataClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#562>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvhDoubleData_m_numQuantizedContiguousNodes_set    `( BtQuantizedBvhDoubleDataClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#562>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvhDoubleData_m_numQuantizedContiguousNodes_get    `( BtQuantizedBvhDoubleDataClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#567>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvhDoubleData_m_numSubtreeHeaders_set    `( BtQuantizedBvhDoubleDataClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#567>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvhDoubleData_m_numSubtreeHeaders_get    `( BtQuantizedBvhDoubleDataClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#564>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvhDoubleData_m_quantizedContiguousNodesPtr_set    `( BtQuantizedBvhDoubleDataClass bc , BtQuantizedBvhNodeDataClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#564>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvhDoubleData_m_quantizedContiguousNodesPtr_get    `( BtQuantizedBvhDoubleDataClass bc )' =>     { withBt* `bc'  } ->  `BtQuantizedBvhNodeData'  mkBtQuantizedBvhNodeData* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#568>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvhDoubleData_m_subTreeInfoPtr_set    `( BtQuantizedBvhDoubleDataClass bc , BtBvhSubtreeInfoDataClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#568>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvhDoubleData_m_subTreeInfoPtr_get    `( BtQuantizedBvhDoubleDataClass bc )' =>     { withBt* `bc'  } ->  `BtBvhSubtreeInfoData'  mkBtBvhSubtreeInfoData* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#566>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvhDoubleData_m_traversalMode_set    `( BtQuantizedBvhDoubleDataClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#566>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvhDoubleData_m_traversalMode_get    `( BtQuantizedBvhDoubleDataClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#560>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvhDoubleData_m_useQuantization_set    `( BtQuantizedBvhDoubleDataClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#560>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvhDoubleData_m_useQuantization_get    `( BtQuantizedBvhDoubleDataClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
-- * btQuantizedBvhFloatData
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#538>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvhFloatData_new as btQuantizedBvhFloatData    {  } -> `BtQuantizedBvhFloatData' mkBtQuantizedBvhFloatData* #}
{#fun btQuantizedBvhFloatData_free    `( BtQuantizedBvhFloatDataClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#540>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvhFloatData_m_bvhAabbMax_set    `( BtQuantizedBvhFloatDataClass bc , BtVector3FloatDataClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#540>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvhFloatData_m_bvhAabbMax_get    `( BtQuantizedBvhFloatDataClass bc )' =>     { withBt* `bc'  } ->  `BtVector3FloatData'  mkBtVector3FloatData* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#539>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvhFloatData_m_bvhAabbMin_set    `( BtQuantizedBvhFloatDataClass bc , BtVector3FloatDataClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#539>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvhFloatData_m_bvhAabbMin_get    `( BtQuantizedBvhFloatDataClass bc )' =>     { withBt* `bc'  } ->  `BtVector3FloatData'  mkBtVector3FloatData* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#541>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvhFloatData_m_bvhQuantization_set    `( BtQuantizedBvhFloatDataClass bc , BtVector3FloatDataClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#541>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvhFloatData_m_bvhQuantization_get    `( BtQuantizedBvhFloatDataClass bc )' =>     { withBt* `bc'  } ->  `BtVector3FloatData'  mkBtVector3FloatData* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#546>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvhFloatData_m_contiguousNodesPtr_set    `( BtQuantizedBvhFloatDataClass bc , BtOptimizedBvhNodeFloatDataClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#546>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvhFloatData_m_contiguousNodesPtr_get    `( BtQuantizedBvhFloatDataClass bc )' =>     { withBt* `bc'  } ->  `BtOptimizedBvhNodeFloatData'  mkBtOptimizedBvhNodeFloatData* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#542>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvhFloatData_m_curNodeIndex_set    `( BtQuantizedBvhFloatDataClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#542>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvhFloatData_m_curNodeIndex_get    `( BtQuantizedBvhFloatDataClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#544>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvhFloatData_m_numContiguousLeafNodes_set    `( BtQuantizedBvhFloatDataClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#544>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvhFloatData_m_numContiguousLeafNodes_get    `( BtQuantizedBvhFloatDataClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#545>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvhFloatData_m_numQuantizedContiguousNodes_set    `( BtQuantizedBvhFloatDataClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#545>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvhFloatData_m_numQuantizedContiguousNodes_get    `( BtQuantizedBvhFloatDataClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#550>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvhFloatData_m_numSubtreeHeaders_set    `( BtQuantizedBvhFloatDataClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#550>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvhFloatData_m_numSubtreeHeaders_get    `( BtQuantizedBvhFloatDataClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#547>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvhFloatData_m_quantizedContiguousNodesPtr_set    `( BtQuantizedBvhFloatDataClass bc , BtQuantizedBvhNodeDataClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#547>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvhFloatData_m_quantizedContiguousNodesPtr_get    `( BtQuantizedBvhFloatDataClass bc )' =>     { withBt* `bc'  } ->  `BtQuantizedBvhNodeData'  mkBtQuantizedBvhNodeData* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#548>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvhFloatData_m_subTreeInfoPtr_set    `( BtQuantizedBvhFloatDataClass bc , BtBvhSubtreeInfoDataClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#548>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvhFloatData_m_subTreeInfoPtr_get    `( BtQuantizedBvhFloatDataClass bc )' =>     { withBt* `bc'  } ->  `BtBvhSubtreeInfoData'  mkBtBvhSubtreeInfoData* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#549>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvhFloatData_m_traversalMode_set    `( BtQuantizedBvhFloatDataClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#549>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvhFloatData_m_traversalMode_get    `( BtQuantizedBvhFloatDataClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#543>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvhFloatData_m_useQuantization_set    `( BtQuantizedBvhFloatDataClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#543>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvhFloatData_m_useQuantization_get    `( BtQuantizedBvhFloatDataClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
-- * btQuantizedBvhNode
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#59>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvhNode_new as btQuantizedBvhNode    {  } -> `BtQuantizedBvhNode' mkBtQuantizedBvhNode* #}
{#fun btQuantizedBvhNode_free    `( BtQuantizedBvhNodeClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#73>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvhNode_getEscapeIndex as btQuantizedBvhNode_getEscapeIndex    `( BtQuantizedBvhNodeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#78>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvhNode_getTriangleIndex as btQuantizedBvhNode_getTriangleIndex    `( BtQuantizedBvhNodeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#84>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvhNode_getPartId as btQuantizedBvhNode_getPartId    `( BtQuantizedBvhNodeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#68>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvhNode_isLeafNode as btQuantizedBvhNode_isLeafNode    `( BtQuantizedBvhNodeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#66>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvhNode_m_escapeIndexOrTriangleIndex_set    `( BtQuantizedBvhNodeClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#66>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvhNode_m_escapeIndexOrTriangleIndex_get    `( BtQuantizedBvhNodeClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
-- * btQuantizedBvhNodeData
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#531>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvhNodeData_new as btQuantizedBvhNodeData    {  } -> `BtQuantizedBvhNodeData' mkBtQuantizedBvhNodeData* #}
{#fun btQuantizedBvhNodeData_free    `( BtQuantizedBvhNodeDataClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#534>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvhNodeData_m_escapeIndexOrTriangleIndex_set    `( BtQuantizedBvhNodeDataClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.h?r=2223#534>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvhNodeData_m_escapeIndexOrTriangleIndex_get    `( BtQuantizedBvhNodeDataClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
-- * btSimpleBroadphase
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btSimpleBroadphase.h?r=2223#123>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btSimpleBroadphase.cpp?r=2223>
-}
{#fun btSimpleBroadphase_new as btSimpleBroadphase    `( BtOverlappingPairCacheClass p1 )' =>     {   `Int' , withBt* `p1'  } -> `BtSimpleBroadphase' mkBtSimpleBroadphase* #}
{#fun btSimpleBroadphase_free    `( BtSimpleBroadphaseClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btSimpleBroadphase.h?r=2223#141>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btSimpleBroadphase.cpp?r=2223>
-}
{#fun btSimpleBroadphase_getOverlappingPairCache0 as btSimpleBroadphase_getOverlappingPairCache    `( BtSimpleBroadphaseClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtOverlappingPairCache'  mkBtOverlappingPairCache* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btSimpleBroadphase.h?r=2223#141>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btSimpleBroadphase.cpp?r=2223>
-}
{#fun btSimpleBroadphase_getOverlappingPairCache0 as btSimpleBroadphase_getOverlappingPairCache0    `( BtSimpleBroadphaseClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtOverlappingPairCache'  mkBtOverlappingPairCache* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btSimpleBroadphase.h?r=2223#145>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btSimpleBroadphase.cpp?r=2223>
-}
{#fun btSimpleBroadphase_getOverlappingPairCache1 as btSimpleBroadphase_getOverlappingPairCache1    `( BtSimpleBroadphaseClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtOverlappingPairCache'  mkBtOverlappingPairCache* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btSimpleBroadphase.h?r=2223#138>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btSimpleBroadphase.cpp?r=2223>
-}
{#fun btSimpleBroadphase_rayTest as btSimpleBroadphase_rayTest    `( BtSimpleBroadphaseClass bc , BtBroadphaseRayCallbackClass p2 )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ rayFrom
, withVec3* `Vec3'  peekVec3* -- ^ rayTo
, withBt* `p2'  -- ^ rayCallback
, withVec3* `Vec3'  peekVec3* -- ^ aabbMin
, withVec3* `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btSimpleBroadphase.h?r=2223#138>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btSimpleBroadphase.cpp?r=2223>
-}
{#fun btSimpleBroadphase_rayTest as btSimpleBroadphase_rayTest'    `( BtSimpleBroadphaseClass bc , BtBroadphaseRayCallbackClass p2 )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ rayFrom
, allocaVec3-  `Vec3'  peekVec3* -- ^ rayTo
, withBt* `p2'  -- ^ rayCallback
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMin
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btSimpleBroadphase.h?r=2223#135>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btSimpleBroadphase.cpp?r=2223>
-}
{#fun btSimpleBroadphase_setAabb as btSimpleBroadphase_setAabb    `( BtSimpleBroadphaseClass bc , BtBroadphaseProxyClass p0 , BtDispatcherClass p3 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ proxy
, withVec3* `Vec3'  peekVec3* -- ^ aabbMin
, withVec3* `Vec3'  peekVec3* -- ^ aabbMax
, withBt* `p3'  -- ^ dispatcher
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btSimpleBroadphase.h?r=2223#135>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btSimpleBroadphase.cpp?r=2223>
-}
{#fun btSimpleBroadphase_setAabb as btSimpleBroadphase_setAabb'    `( BtSimpleBroadphaseClass bc , BtBroadphaseProxyClass p0 , BtDispatcherClass p3 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ proxy
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMin
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMax
, withBt* `p3'  -- ^ dispatcher
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btSimpleBroadphase.h?r=2223#63>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btSimpleBroadphase.cpp?r=2223>
-}
{#fun btSimpleBroadphase_allocHandle as btSimpleBroadphase_allocHandle    `( BtSimpleBroadphaseClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btSimpleBroadphase.h?r=2223#112>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btSimpleBroadphase.cpp?r=2223>
-}
{#fun btSimpleBroadphase_resetPool as btSimpleBroadphase_resetPool    `( BtSimpleBroadphaseClass bc , BtDispatcherClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ dispatcher
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btSimpleBroadphase.h?r=2223#150>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btSimpleBroadphase.cpp?r=2223>
-}
{#fun btSimpleBroadphase_testAabbOverlap as btSimpleBroadphase_testAabbOverlap    `( BtSimpleBroadphaseClass bc , BtBroadphaseProxyClass p0 , BtBroadphaseProxyClass p1 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ proxy0
, withBt* `p1'  -- ^ proxy1
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btSimpleBroadphase.h?r=2223#132>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btSimpleBroadphase.cpp?r=2223>
-}
{#fun btSimpleBroadphase_calculateOverlappingPairs as btSimpleBroadphase_calculateOverlappingPairs    `( BtSimpleBroadphaseClass bc , BtDispatcherClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ dispatcher
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btSimpleBroadphase.h?r=2223#76>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btSimpleBroadphase.cpp?r=2223>
-}
{#fun btSimpleBroadphase_freeHandle as btSimpleBroadphase_freeHandle    `( BtSimpleBroadphaseClass bc , BtSimpleBroadphaseProxyClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ proxy
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btSimpleBroadphase.h?r=2223#161>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btSimpleBroadphase.cpp?r=2223>
-}
{#fun btSimpleBroadphase_printStats as btSimpleBroadphase_printStats    `( BtSimpleBroadphaseClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btSimpleBroadphase.h?r=2223#136>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btSimpleBroadphase.cpp?r=2223>
-}
{#fun btSimpleBroadphase_getAabb as btSimpleBroadphase_getAabb    `( BtSimpleBroadphaseClass bc , BtBroadphaseProxyClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ proxy
, withVec3* `Vec3'  peekVec3* -- ^ aabbMin
, withVec3* `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btSimpleBroadphase.h?r=2223#136>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btSimpleBroadphase.cpp?r=2223>
-}
{#fun btSimpleBroadphase_getAabb as btSimpleBroadphase_getAabb'    `( BtSimpleBroadphaseClass bc , BtBroadphaseProxyClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ proxy
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMin
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btSimpleBroadphase.h?r=2223#139>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btSimpleBroadphase.cpp?r=2223>
-}
{#fun btSimpleBroadphase_aabbTest as btSimpleBroadphase_aabbTest    `( BtSimpleBroadphaseClass bc , BtBroadphaseAabbCallbackClass p2 )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ aabbMin
, withVec3* `Vec3'  peekVec3* -- ^ aabbMax
, withBt* `p2'  -- ^ callback
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btSimpleBroadphase.h?r=2223#139>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btSimpleBroadphase.cpp?r=2223>
-}
{#fun btSimpleBroadphase_aabbTest as btSimpleBroadphase_aabbTest'    `( BtSimpleBroadphaseClass bc , BtBroadphaseAabbCallbackClass p2 )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMin
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMax
, withBt* `p2'  -- ^ callback
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btSimpleBroadphase.h?r=2223#130>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btSimpleBroadphase.cpp?r=2223>
-}
{#fun btSimpleBroadphase_createProxy as btSimpleBroadphase_createProxy    `( BtSimpleBroadphaseClass bc , BtDispatcherClass p6 )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ aabbMin
, withVec3* `Vec3'  peekVec3* -- ^ aabbMax
,  `Int'  -- ^ shapeType
, withVoidPtr* `VoidPtr'  -- ^ userPtr
,  `Int'  -- ^ collisionFilterGroup
,  `Int'  -- ^ collisionFilterMask
, withBt* `p6'  -- ^ dispatcher
, withVoidPtr* `VoidPtr'  -- ^ multiSapProxy
 } ->  `BtBroadphaseProxy'  mkBtBroadphaseProxy* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btSimpleBroadphase.h?r=2223#130>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btSimpleBroadphase.cpp?r=2223>
-}
{#fun btSimpleBroadphase_createProxy as btSimpleBroadphase_createProxy'    `( BtSimpleBroadphaseClass bc , BtDispatcherClass p6 )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMin
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMax
,  `Int'  -- ^ shapeType
, withVoidPtr* `VoidPtr'  -- ^ userPtr
,  `Int'  -- ^ collisionFilterGroup
,  `Int'  -- ^ collisionFilterMask
, withBt* `p6'  -- ^ dispatcher
, withVoidPtr* `VoidPtr'  -- ^ multiSapProxy
 } ->  `BtBroadphaseProxy'  mkBtBroadphaseProxy* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btSimpleBroadphase.h?r=2223#99>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btSimpleBroadphase.cpp?r=2223>
-}
{#fun btSimpleBroadphase_getSimpleProxyFromProxy0 as btSimpleBroadphase_getSimpleProxyFromProxy    `( BtSimpleBroadphaseClass bc , BtBroadphaseProxyClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ proxy
 } ->  `BtSimpleBroadphaseProxy'  mkBtSimpleBroadphaseProxy* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btSimpleBroadphase.h?r=2223#99>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btSimpleBroadphase.cpp?r=2223>
-}
{#fun btSimpleBroadphase_getSimpleProxyFromProxy0 as btSimpleBroadphase_getSimpleProxyFromProxy0    `( BtSimpleBroadphaseClass bc , BtBroadphaseProxyClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ proxy
 } ->  `BtSimpleBroadphaseProxy'  mkBtSimpleBroadphaseProxy* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btSimpleBroadphase.h?r=2223#105>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btSimpleBroadphase.cpp?r=2223>
-}
{#fun btSimpleBroadphase_getSimpleProxyFromProxy1 as btSimpleBroadphase_getSimpleProxyFromProxy1    `( BtSimpleBroadphaseClass bc , BtBroadphaseProxyClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ proxy
 } ->  `BtSimpleBroadphaseProxy'  mkBtSimpleBroadphaseProxy* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btSimpleBroadphase.h?r=2223#115>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btSimpleBroadphase.cpp?r=2223>
-}
{#fun btSimpleBroadphase_validate as btSimpleBroadphase_validate    `( BtSimpleBroadphaseClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btSimpleBroadphase.h?r=2223#127>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btSimpleBroadphase.cpp?r=2223>
-}
{#fun btSimpleBroadphase_aabbOverlap as btSimpleBroadphase_aabbOverlap    `(  BtSimpleBroadphaseProxyClass p0 , BtSimpleBroadphaseProxyClass p1 )' =>     {  withBt* `p0'  -- ^ proxy0
, withBt* `p1'  -- ^ proxy1
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btSimpleBroadphase.h?r=2223#155>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btSimpleBroadphase.cpp?r=2223>
-}
{#fun btSimpleBroadphase_getBroadphaseAabb as btSimpleBroadphase_getBroadphaseAabb    `( BtSimpleBroadphaseClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ aabbMin
, withVec3* `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btSimpleBroadphase.h?r=2223#155>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btSimpleBroadphase.cpp?r=2223>
-}
{#fun btSimpleBroadphase_getBroadphaseAabb as btSimpleBroadphase_getBroadphaseAabb'    `( BtSimpleBroadphaseClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMin
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btSimpleBroadphase.h?r=2223#134>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btSimpleBroadphase.cpp?r=2223>
-}
{#fun btSimpleBroadphase_destroyProxy as btSimpleBroadphase_destroyProxy    `( BtSimpleBroadphaseClass bc , BtBroadphaseProxyClass p0 , BtDispatcherClass p1 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ proxy
, withBt* `p1'  -- ^ dispatcher
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btSimpleBroadphase.h?r=2223#56>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btSimpleBroadphase.cpp?r=2223>
-}
{#fun btSimpleBroadphase_m_LastHandleIndex_set    `( BtSimpleBroadphaseClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btSimpleBroadphase.h?r=2223#56>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btSimpleBroadphase.cpp?r=2223>
-}
{#fun btSimpleBroadphase_m_LastHandleIndex_get    `( BtSimpleBroadphaseClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btSimpleBroadphase.h?r=2223#61>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btSimpleBroadphase.cpp?r=2223>
-}
{#fun btSimpleBroadphase_m_firstFreeHandle_set    `( BtSimpleBroadphaseClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btSimpleBroadphase.h?r=2223#61>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btSimpleBroadphase.cpp?r=2223>
-}
{#fun btSimpleBroadphase_m_firstFreeHandle_get    `( BtSimpleBroadphaseClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btSimpleBroadphase.h?r=2223#95>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btSimpleBroadphase.cpp?r=2223>
-}
{#fun btSimpleBroadphase_m_invalidPair_set    `( BtSimpleBroadphaseClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btSimpleBroadphase.h?r=2223#95>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btSimpleBroadphase.cpp?r=2223>
-}
{#fun btSimpleBroadphase_m_invalidPair_get    `( BtSimpleBroadphaseClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btSimpleBroadphase.h?r=2223#55>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btSimpleBroadphase.cpp?r=2223>
-}
{#fun btSimpleBroadphase_m_maxHandles_set    `( BtSimpleBroadphaseClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btSimpleBroadphase.h?r=2223#55>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btSimpleBroadphase.cpp?r=2223>
-}
{#fun btSimpleBroadphase_m_maxHandles_get    `( BtSimpleBroadphaseClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btSimpleBroadphase.h?r=2223#54>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btSimpleBroadphase.cpp?r=2223>
-}
{#fun btSimpleBroadphase_m_numHandles_set    `( BtSimpleBroadphaseClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btSimpleBroadphase.h?r=2223#54>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btSimpleBroadphase.cpp?r=2223>
-}
{#fun btSimpleBroadphase_m_numHandles_get    `( BtSimpleBroadphaseClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btSimpleBroadphase.h?r=2223#93>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btSimpleBroadphase.cpp?r=2223>
-}
{#fun btSimpleBroadphase_m_ownsPairCache_set    `( BtSimpleBroadphaseClass bc )' =>     { withBt* `bc' ,  `Bool'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btSimpleBroadphase.h?r=2223#93>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btSimpleBroadphase.cpp?r=2223>
-}
{#fun btSimpleBroadphase_m_ownsPairCache_get    `( BtSimpleBroadphaseClass bc )' =>     { withBt* `bc'  } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btSimpleBroadphase.h?r=2223#58>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btSimpleBroadphase.cpp?r=2223>
-}
{#fun btSimpleBroadphase_m_pHandles_set    `( BtSimpleBroadphaseClass bc , BtSimpleBroadphaseProxyClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btSimpleBroadphase.h?r=2223#58>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btSimpleBroadphase.cpp?r=2223>
-}
{#fun btSimpleBroadphase_m_pHandles_get    `( BtSimpleBroadphaseClass bc )' =>     { withBt* `bc'  } ->  `BtSimpleBroadphaseProxy'  mkBtSimpleBroadphaseProxy* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btSimpleBroadphase.h?r=2223#60>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btSimpleBroadphase.cpp?r=2223>
-}
{#fun btSimpleBroadphase_m_pHandlesRawPtr_set    `( BtSimpleBroadphaseClass bc )' =>     { withBt* `bc' , withVoidPtr* `VoidPtr'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btSimpleBroadphase.h?r=2223#60>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btSimpleBroadphase.cpp?r=2223>
-}
{#fun btSimpleBroadphase_m_pHandlesRawPtr_get    `( BtSimpleBroadphaseClass bc )' =>     { withBt* `bc'  } ->  `VoidPtr'  mkVoidPtr* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btSimpleBroadphase.h?r=2223#92>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btSimpleBroadphase.cpp?r=2223>
-}
{#fun btSimpleBroadphase_m_pairCache_set    `( BtSimpleBroadphaseClass bc , BtOverlappingPairCacheClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btSimpleBroadphase.h?r=2223#92>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btSimpleBroadphase.cpp?r=2223>
-}
{#fun btSimpleBroadphase_m_pairCache_get    `( BtSimpleBroadphaseClass bc )' =>     { withBt* `bc'  } ->  `BtOverlappingPairCache'  mkBtOverlappingPairCache* #}
-- * btSimpleBroadphaseProxy
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btSimpleBroadphase.h?r=2223#30>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btSimpleBroadphase.cpp?r=2223>
-}
{#fun btSimpleBroadphaseProxy_new0 as btSimpleBroadphaseProxy0    {  } -> `BtSimpleBroadphaseProxy' mkBtSimpleBroadphaseProxy* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btSimpleBroadphase.h?r=2223#32>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btSimpleBroadphase.cpp?r=2223>
-}
{#fun btSimpleBroadphaseProxy_new1 as btSimpleBroadphaseProxy1    {  withVec3* `Vec3' , withVec3* `Vec3' ,  `Int' , withVoidPtr* `VoidPtr' ,  `Int' ,  `Int' , withVoidPtr* `VoidPtr'  } -> `BtSimpleBroadphaseProxy' mkBtSimpleBroadphaseProxy* #}
{#fun btSimpleBroadphaseProxy_free    `( BtSimpleBroadphaseProxyClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btSimpleBroadphase.h?r=2223#40>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btSimpleBroadphase.cpp?r=2223>
-}
{#fun btSimpleBroadphaseProxy_GetNextFree as btSimpleBroadphaseProxy_GetNextFree    `( BtSimpleBroadphaseProxyClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btSimpleBroadphase.h?r=2223#39>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btSimpleBroadphase.cpp?r=2223>
-}
{#fun btSimpleBroadphaseProxy_SetNextFree as btSimpleBroadphaseProxy_SetNextFree    `( BtSimpleBroadphaseProxyClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ next
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btSimpleBroadphase.h?r=2223#25>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btSimpleBroadphase.cpp?r=2223>
-}
{#fun btSimpleBroadphaseProxy_m_nextFree_set    `( BtSimpleBroadphaseProxyClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btSimpleBroadphase.h?r=2223#25>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btSimpleBroadphase.cpp?r=2223>
-}
{#fun btSimpleBroadphaseProxy_m_nextFree_get    `( BtSimpleBroadphaseProxyClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
-- * btSortedOverlappingPairCache
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.h?r=2223#300>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.cpp?r=2223>
-}
{#fun btSortedOverlappingPairCache_new as btSortedOverlappingPairCache    {  } -> `BtSortedOverlappingPairCache' mkBtSortedOverlappingPairCache* #}
{#fun btSortedOverlappingPairCache_free    `( BtSortedOverlappingPairCacheClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.h?r=2223#378>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.cpp?r=2223>
-}
{#fun btSortedOverlappingPairCache_sortOverlappingPairs as btSortedOverlappingPairCache_sortOverlappingPairs    `( BtSortedOverlappingPairCacheClass bc , BtDispatcherClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ dispatcher
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.h?r=2223#373>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.cpp?r=2223>
-}
{#fun btSortedOverlappingPairCache_setInternalGhostPairCallback as btSortedOverlappingPairCache_setInternalGhostPairCallback    `( BtSortedOverlappingPairCacheClass bc , BtOverlappingPairCallbackClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ ghostPairCallback
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.h?r=2223#358>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.cpp?r=2223>
-}
{#fun btSortedOverlappingPairCache_getOverlapFilterCallback as btSortedOverlappingPairCache_getOverlapFilterCallback    `( BtSortedOverlappingPairCacheClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtOverlapFilterCallback'  mkBtOverlapFilterCallback* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.h?r=2223#309>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.cpp?r=2223>
-}
{#fun btSortedOverlappingPairCache_addOverlappingPair as btSortedOverlappingPairCache_addOverlappingPair    `( BtSortedOverlappingPairCacheClass bc , BtBroadphaseProxyClass p0 , BtBroadphaseProxyClass p1 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ proxy0
, withBt* `p1'  -- ^ proxy1
 } ->  `BtBroadphasePair'  mkBtBroadphasePair* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.h?r=2223#316>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.cpp?r=2223>
-}
{#fun btSortedOverlappingPairCache_removeOverlappingPairsContainingProxy as btSortedOverlappingPairCache_removeOverlappingPairsContainingProxy    `( BtSortedOverlappingPairCacheClass bc , BtBroadphaseProxyClass p0 , BtDispatcherClass p1 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ proxy
, withBt* `p1'  -- ^ dispatcher
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.h?r=2223#319>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.cpp?r=2223>
-}
{#fun btSortedOverlappingPairCache_needsBroadphaseCollision as btSortedOverlappingPairCache_needsBroadphaseCollision    `( BtSortedOverlappingPairCacheClass bc , BtBroadphaseProxyClass p0 , BtBroadphaseProxyClass p1 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ proxy0
, withBt* `p1'  -- ^ proxy1
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.h?r=2223#368>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.cpp?r=2223>
-}
{#fun btSortedOverlappingPairCache_hasDeferredRemoval as btSortedOverlappingPairCache_hasDeferredRemoval    `( BtSortedOverlappingPairCacheClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.h?r=2223#330>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.cpp?r=2223>
-}
{#fun btSortedOverlappingPairCache_getOverlappingPairArray0 as btSortedOverlappingPairCache_getOverlappingPairArray    `( BtSortedOverlappingPairCacheClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtAlignedObjectArray_btBroadphasePair_'  mkBtAlignedObjectArray_btBroadphasePair_* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.h?r=2223#330>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.cpp?r=2223>
-}
{#fun btSortedOverlappingPairCache_getOverlappingPairArray0 as btSortedOverlappingPairCache_getOverlappingPairArray0    `( BtSortedOverlappingPairCacheClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtAlignedObjectArray_btBroadphasePair_'  mkBtAlignedObjectArray_btBroadphasePair_* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.h?r=2223#335>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.cpp?r=2223>
-}
{#fun btSortedOverlappingPairCache_getOverlappingPairArray1 as btSortedOverlappingPairCache_getOverlappingPairArray1    `( BtSortedOverlappingPairCacheClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtAlignedObjectArray_btBroadphasePair_'  mkBtAlignedObjectArray_btBroadphasePair_* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.h?r=2223#311>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.cpp?r=2223>
-}
{#fun btSortedOverlappingPairCache_findPair as btSortedOverlappingPairCache_findPair    `( BtSortedOverlappingPairCacheClass bc , BtBroadphaseProxyClass p0 , BtBroadphaseProxyClass p1 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ proxy0
, withBt* `p1'  -- ^ proxy1
 } ->  `BtBroadphasePair'  mkBtBroadphasePair* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.h?r=2223#314>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.cpp?r=2223>
-}
{#fun btSortedOverlappingPairCache_cleanProxyFromPairs as btSortedOverlappingPairCache_cleanProxyFromPairs    `( BtSortedOverlappingPairCacheClass bc , BtBroadphaseProxyClass p0 , BtDispatcherClass p1 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ proxy
, withBt* `p1'  -- ^ dispatcher
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.h?r=2223#307>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.cpp?r=2223>
-}
{#fun btSortedOverlappingPairCache_cleanOverlappingPair as btSortedOverlappingPairCache_cleanOverlappingPair    `( BtSortedOverlappingPairCacheClass bc , BtBroadphasePairClass p0 , BtDispatcherClass p1 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ pair
, withBt* `p1'  -- ^ dispatcher
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.h?r=2223#353>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.cpp?r=2223>
-}
{#fun btSortedOverlappingPairCache_getNumOverlappingPairs as btSortedOverlappingPairCache_getNumOverlappingPairs    `( BtSortedOverlappingPairCacheClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.h?r=2223#305>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.cpp?r=2223>
-}
{#fun btSortedOverlappingPairCache_removeOverlappingPair as btSortedOverlappingPairCache_removeOverlappingPair    `( BtSortedOverlappingPairCacheClass bc , BtBroadphaseProxyClass p0 , BtBroadphaseProxyClass p1 , BtDispatcherClass p2 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ proxy0
, withBt* `p1'  -- ^ proxy1
, withBt* `p2'  -- ^ dispatcher
 } ->  `VoidPtr'  mkVoidPtr* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.h?r=2223#303>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.cpp?r=2223>
-}
{#fun btSortedOverlappingPairCache_processAllOverlappingPairs as btSortedOverlappingPairCache_processAllOverlappingPairs    `( BtSortedOverlappingPairCacheClass bc , BtOverlapCallbackClass p0 , BtDispatcherClass p1 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ arg0
, withBt* `p1'  -- ^ dispatcher
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.h?r=2223#343>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.cpp?r=2223>
-}
{#fun btSortedOverlappingPairCache_getOverlappingPairArrayPtr0 as btSortedOverlappingPairCache_getOverlappingPairArrayPtr    `( BtSortedOverlappingPairCacheClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtBroadphasePair'  mkBtBroadphasePair* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.h?r=2223#343>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.cpp?r=2223>
-}
{#fun btSortedOverlappingPairCache_getOverlappingPairArrayPtr0 as btSortedOverlappingPairCache_getOverlappingPairArrayPtr0    `( BtSortedOverlappingPairCacheClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtBroadphasePair'  mkBtBroadphasePair* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.h?r=2223#348>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.cpp?r=2223>
-}
{#fun btSortedOverlappingPairCache_getOverlappingPairArrayPtr1 as btSortedOverlappingPairCache_getOverlappingPairArrayPtr1    `( BtSortedOverlappingPairCacheClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtBroadphasePair'  mkBtBroadphasePair* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.h?r=2223#363>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.cpp?r=2223>
-}
{#fun btSortedOverlappingPairCache_setOverlapFilterCallback as btSortedOverlappingPairCache_setOverlapFilterCallback    `( BtSortedOverlappingPairCacheClass bc , BtOverlapFilterCallbackClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ callback
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.h?r=2223#285>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.cpp?r=2223>
-}
{#fun btSortedOverlappingPairCache_m_overlappingPairArray_set    `( BtSortedOverlappingPairCacheClass bc , BtAlignedObjectArray_btBroadphasePair_Class a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.h?r=2223#285>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.cpp?r=2223>
-}
{#fun btSortedOverlappingPairCache_m_overlappingPairArray_get    `( BtSortedOverlappingPairCacheClass bc )' =>     { withBt* `bc'  } ->  `BtAlignedObjectArray_btBroadphasePair_'  mkBtAlignedObjectArray_btBroadphasePair_* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.h?r=2223#288>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.cpp?r=2223>
-}
{#fun btSortedOverlappingPairCache_m_blockedForChanges_set    `( BtSortedOverlappingPairCacheClass bc )' =>     { withBt* `bc' ,  `Bool'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.h?r=2223#288>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.cpp?r=2223>
-}
{#fun btSortedOverlappingPairCache_m_blockedForChanges_get    `( BtSortedOverlappingPairCacheClass bc )' =>     { withBt* `bc'  } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.h?r=2223#291>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.cpp?r=2223>
-}
{#fun btSortedOverlappingPairCache_m_hasDeferredRemoval_set    `( BtSortedOverlappingPairCacheClass bc )' =>     { withBt* `bc' ,  `Bool'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.h?r=2223#291>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.cpp?r=2223>
-}
{#fun btSortedOverlappingPairCache_m_hasDeferredRemoval_get    `( BtSortedOverlappingPairCacheClass bc )' =>     { withBt* `bc'  } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.h?r=2223#294>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.cpp?r=2223>
-}
{#fun btSortedOverlappingPairCache_m_overlapFilterCallback_set    `( BtSortedOverlappingPairCacheClass bc , BtOverlapFilterCallbackClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.h?r=2223#294>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.cpp?r=2223>
-}
{#fun btSortedOverlappingPairCache_m_overlapFilterCallback_get    `( BtSortedOverlappingPairCacheClass bc )' =>     { withBt* `bc'  } ->  `BtOverlapFilterCallback'  mkBtOverlapFilterCallback* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.h?r=2223#296>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.cpp?r=2223>
-}
{#fun btSortedOverlappingPairCache_m_ghostPairCallback_set    `( BtSortedOverlappingPairCacheClass bc , BtOverlappingPairCallbackClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.h?r=2223#296>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btOverlappingPairCache.cpp?r=2223>
-}
{#fun btSortedOverlappingPairCache_m_ghostPairCallback_get    `( BtSortedOverlappingPairCacheClass bc )' =>     { withBt* `bc'  } ->  `BtOverlappingPairCallback'  mkBtOverlappingPairCallback* #}
-- * sStkCLN
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.h?r=2223#218>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.cpp?r=2223>
-}
{#fun btDbvt_sStkCLN_new as btDbvt_sStkCLN    `( BtDbvtNodeClass p0 , BtDbvtNodeClass p1 )' =>     {  withBt* `p0' , withBt* `p1'  } -> `BtDbvt_sStkCLN' mkBtDbvt_sStkCLN* #}
{#fun btDbvt_sStkCLN_free    `( BtDbvt_sStkCLNClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.h?r=2223#216>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.cpp?r=2223>
-}
{#fun btDbvt_sStkCLN_node_set    `( BtDbvt_sStkCLNClass bc , BtDbvtNodeClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.h?r=2223#216>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.cpp?r=2223>
-}
{#fun btDbvt_sStkCLN_node_get    `( BtDbvt_sStkCLNClass bc )' =>     { withBt* `bc'  } ->  `BtDbvtNode'  mkBtDbvtNode* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.h?r=2223#217>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.cpp?r=2223>
-}
{#fun btDbvt_sStkCLN_parent_set    `( BtDbvt_sStkCLNClass bc , BtDbvtNodeClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.h?r=2223#217>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.cpp?r=2223>
-}
{#fun btDbvt_sStkCLN_parent_get    `( BtDbvt_sStkCLNClass bc )' =>     { withBt* `bc'  } ->  `BtDbvtNode'  mkBtDbvtNode* #}
-- * sStkNN
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.h?r=2223#197>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.cpp?r=2223>
-}
{#fun btDbvt_sStkNN_new0 as btDbvt_sStkNN0    {  } -> `BtDbvt_sStkNN' mkBtDbvt_sStkNN* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.h?r=2223#198>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.cpp?r=2223>
-}
{#fun btDbvt_sStkNN_new1 as btDbvt_sStkNN1    `( BtDbvtNodeClass p0 , BtDbvtNodeClass p1 )' =>     {  withBt* `p0' , withBt* `p1'  } -> `BtDbvt_sStkNN' mkBtDbvt_sStkNN* #}
{#fun btDbvt_sStkNN_free    `( BtDbvt_sStkNNClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.h?r=2223#195>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.cpp?r=2223>
-}
{#fun btDbvt_sStkNN_a_set    `( BtDbvt_sStkNNClass bc , BtDbvtNodeClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.h?r=2223#195>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.cpp?r=2223>
-}
{#fun btDbvt_sStkNN_a_get    `( BtDbvt_sStkNNClass bc )' =>     { withBt* `bc'  } ->  `BtDbvtNode'  mkBtDbvtNode* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.h?r=2223#196>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.cpp?r=2223>
-}
{#fun btDbvt_sStkNN_b_set    `( BtDbvt_sStkNNClass bc , BtDbvtNodeClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.h?r=2223#196>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.cpp?r=2223>
-}
{#fun btDbvt_sStkNN_b_get    `( BtDbvt_sStkNNClass bc )' =>     { withBt* `bc'  } ->  `BtDbvtNode'  mkBtDbvtNode* #}
-- * sStkNP
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.h?r=2223#204>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.cpp?r=2223>
-}
{#fun btDbvt_sStkNP_new as btDbvt_sStkNP    `( BtDbvtNodeClass p0 )' =>     {  withBt* `p0' ,  `Word32'  } -> `BtDbvt_sStkNP' mkBtDbvt_sStkNP* #}
{#fun btDbvt_sStkNP_free    `( BtDbvt_sStkNPClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.h?r=2223#203>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.cpp?r=2223>
-}
{#fun btDbvt_sStkNP_mask_set    `( BtDbvt_sStkNPClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.h?r=2223#203>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.cpp?r=2223>
-}
{#fun btDbvt_sStkNP_mask_get    `( BtDbvt_sStkNPClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.h?r=2223#202>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.cpp?r=2223>
-}
{#fun btDbvt_sStkNP_node_set    `( BtDbvt_sStkNPClass bc , BtDbvtNodeClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.h?r=2223#202>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.cpp?r=2223>
-}
{#fun btDbvt_sStkNP_node_get    `( BtDbvt_sStkNPClass bc )' =>     { withBt* `bc'  } ->  `BtDbvtNode'  mkBtDbvtNode* #}
-- * sStkNPS
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.h?r=2223#211>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.cpp?r=2223>
-}
{#fun btDbvt_sStkNPS_new0 as btDbvt_sStkNPS0    {  } -> `BtDbvt_sStkNPS' mkBtDbvt_sStkNPS* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.h?r=2223#212>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.cpp?r=2223>
-}
{#fun btDbvt_sStkNPS_new1 as btDbvt_sStkNPS1    `( BtDbvtNodeClass p0 )' =>     {  withBt* `p0' ,  `Word32' ,  `Float'  } -> `BtDbvt_sStkNPS' mkBtDbvt_sStkNPS* #}
{#fun btDbvt_sStkNPS_free    `( BtDbvt_sStkNPSClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.h?r=2223#209>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.cpp?r=2223>
-}
{#fun btDbvt_sStkNPS_mask_set    `( BtDbvt_sStkNPSClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.h?r=2223#209>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.cpp?r=2223>
-}
{#fun btDbvt_sStkNPS_mask_get    `( BtDbvt_sStkNPSClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.h?r=2223#208>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.cpp?r=2223>
-}
{#fun btDbvt_sStkNPS_node_set    `( BtDbvt_sStkNPSClass bc , BtDbvtNodeClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.h?r=2223#208>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.cpp?r=2223>
-}
{#fun btDbvt_sStkNPS_node_get    `( BtDbvt_sStkNPSClass bc )' =>     { withBt* `bc'  } ->  `BtDbvtNode'  mkBtDbvtNode* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.h?r=2223#210>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.cpp?r=2223>
-}
{#fun btDbvt_sStkNPS_value_set    `( BtDbvt_sStkNPSClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.h?r=2223#210>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/BroadphaseCollision/btDbvt.cpp?r=2223>
-}
{#fun btDbvt_sStkNPS_value_get    `( BtDbvt_sStkNPSClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
