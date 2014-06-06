{-#LANGUAGE ForeignFunctionInterface#-}
#include "Bullet.h"
module Physics.Bullet.Raw.BulletCollision.CollisionShapes (
module Physics.Bullet.Raw.BulletCollision.CollisionShapes
) where
import Control.Monad
import Foreign.Marshal.Alloc
import Foreign.ForeignPtr.Unsafe
import Foreign.Ptr
import Physics.Bullet.Raw.C2HS
import Physics.Bullet.Raw.Types
import Physics.Bullet.Raw.Class
-- * btBU_Simplex1to4
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTetrahedronShape.h?r=2223#33>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTetrahedronShape.cpp?r=2223>
-}
{#fun btBU_Simplex1to4_new0 as btBU_Simplex1to40    {  } -> `BtBU_Simplex1to4' mkBtBU_Simplex1to4* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTetrahedronShape.h?r=2223#35>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTetrahedronShape.cpp?r=2223>
-}
{#fun btBU_Simplex1to4_new1 as btBU_Simplex1to41    {  withVec3* `Vec3'  } -> `BtBU_Simplex1to4' mkBtBU_Simplex1to4* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTetrahedronShape.h?r=2223#36>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTetrahedronShape.cpp?r=2223>
-}
{#fun btBU_Simplex1to4_new2 as btBU_Simplex1to42    {  withVec3* `Vec3' , withVec3* `Vec3'  } -> `BtBU_Simplex1to4' mkBtBU_Simplex1to4* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTetrahedronShape.h?r=2223#37>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTetrahedronShape.cpp?r=2223>
-}
{#fun btBU_Simplex1to4_new3 as btBU_Simplex1to43    {  withVec3* `Vec3' , withVec3* `Vec3' , withVec3* `Vec3'  } -> `BtBU_Simplex1to4' mkBtBU_Simplex1to4* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTetrahedronShape.h?r=2223#38>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTetrahedronShape.cpp?r=2223>
-}
{#fun btBU_Simplex1to4_new4 as btBU_Simplex1to44    {  withVec3* `Vec3' , withVec3* `Vec3' , withVec3* `Vec3' , withVec3* `Vec3'  } -> `BtBU_Simplex1to4' mkBtBU_Simplex1to4* #}
{#fun btBU_Simplex1to4_free    `( BtBU_Simplex1to4Class bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTetrahedronShape.h?r=2223#41>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTetrahedronShape.cpp?r=2223>
-}
{#fun btBU_Simplex1to4_reset as btBU_Simplex1to4_reset    `( BtBU_Simplex1to4Class bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTetrahedronShape.h?r=2223#60>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTetrahedronShape.cpp?r=2223>
-}
{#fun btBU_Simplex1to4_getNumPlanes as btBU_Simplex1to4_getNumPlanes    `( BtBU_Simplex1to4Class bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTetrahedronShape.h?r=2223#64>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTetrahedronShape.cpp?r=2223>
-}
{#fun btBU_Simplex1to4_getIndex as btBU_Simplex1to4_getIndex    `( BtBU_Simplex1to4Class bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ i
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTetrahedronShape.h?r=2223#54>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTetrahedronShape.cpp?r=2223>
-}
{#fun btBU_Simplex1to4_getNumEdges as btBU_Simplex1to4_getNumEdges    `( BtBU_Simplex1to4Class bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTetrahedronShape.h?r=2223#70>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTetrahedronShape.cpp?r=2223>
-}
{#fun btBU_Simplex1to4_getName as btBU_Simplex1to4_getName    `( BtBU_Simplex1to4Class bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `String'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTetrahedronShape.h?r=2223#58>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTetrahedronShape.cpp?r=2223>
-}
{#fun btBU_Simplex1to4_getVertex as btBU_Simplex1to4_getVertex    `( BtBU_Simplex1to4Class bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ i
, withVec3* `Vec3'  peekVec3* -- ^ vtx
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTetrahedronShape.h?r=2223#58>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTetrahedronShape.cpp?r=2223>
-}
{#fun btBU_Simplex1to4_getVertex as btBU_Simplex1to4_getVertex'    `( BtBU_Simplex1to4Class bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ i
, allocaVec3-  `Vec3'  peekVec3* -- ^ vtx
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTetrahedronShape.h?r=2223#56>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTetrahedronShape.cpp?r=2223>
-}
{#fun btBU_Simplex1to4_getEdge as btBU_Simplex1to4_getEdge    `( BtBU_Simplex1to4Class bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ i
, withVec3* `Vec3'  peekVec3* -- ^ pa
, withVec3* `Vec3'  peekVec3* -- ^ pb
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTetrahedronShape.h?r=2223#56>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTetrahedronShape.cpp?r=2223>
-}
{#fun btBU_Simplex1to4_getEdge as btBU_Simplex1to4_getEdge'    `( BtBU_Simplex1to4Class bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ i
, allocaVec3-  `Vec3'  peekVec3* -- ^ pa
, allocaVec3-  `Vec3'  peekVec3* -- ^ pb
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTetrahedronShape.h?r=2223#48>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTetrahedronShape.cpp?r=2223>
-}
{#fun btBU_Simplex1to4_addVertex as btBU_Simplex1to4_addVertex    `( BtBU_Simplex1to4Class bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ pt
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTetrahedronShape.h?r=2223#48>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTetrahedronShape.cpp?r=2223>
-}
{#fun btBU_Simplex1to4_addVertex as btBU_Simplex1to4_addVertex'    `( BtBU_Simplex1to4Class bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ pt
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTetrahedronShape.h?r=2223#66>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTetrahedronShape.cpp?r=2223>
-}
{#fun btBU_Simplex1to4_isInside as btBU_Simplex1to4_isInside    `( BtBU_Simplex1to4Class bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ pt
,  `Float'  -- ^ tolerance
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTetrahedronShape.h?r=2223#66>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTetrahedronShape.cpp?r=2223>
-}
{#fun btBU_Simplex1to4_isInside as btBU_Simplex1to4_isInside'    `( BtBU_Simplex1to4Class bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ pt
,  `Float'  -- ^ tolerance
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTetrahedronShape.h?r=2223#62>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTetrahedronShape.cpp?r=2223>
-}
{#fun btBU_Simplex1to4_getPlane as btBU_Simplex1to4_getPlane    `( BtBU_Simplex1to4Class bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ planeNormal
, withVec3* `Vec3'  peekVec3* -- ^ planeSupport
,  `Int'  -- ^ i
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTetrahedronShape.h?r=2223#62>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTetrahedronShape.cpp?r=2223>
-}
{#fun btBU_Simplex1to4_getPlane as btBU_Simplex1to4_getPlane'    `( BtBU_Simplex1to4Class bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ planeNormal
, allocaVec3-  `Vec3'  peekVec3* -- ^ planeSupport
,  `Int'  -- ^ i
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTetrahedronShape.h?r=2223#46>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTetrahedronShape.cpp?r=2223>
-}
{#fun btBU_Simplex1to4_getAabb as btBU_Simplex1to4_getAabb    `( BtBU_Simplex1to4Class bc )' =>     { withBt* `bc'  -- ^ 
, withTransform* `Transform'  peekTransform* -- ^ t
, withVec3* `Vec3'  peekVec3* -- ^ aabbMin
, withVec3* `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTetrahedronShape.h?r=2223#46>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTetrahedronShape.cpp?r=2223>
-}
{#fun btBU_Simplex1to4_getAabb as btBU_Simplex1to4_getAabb'    `( BtBU_Simplex1to4Class bc )' =>     { withBt* `bc'  -- ^ 
, allocaTransform-  `Transform'  peekTransform* -- ^ t
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMin
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTetrahedronShape.h?r=2223#52>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTetrahedronShape.cpp?r=2223>
-}
{#fun btBU_Simplex1to4_getNumVertices as btBU_Simplex1to4_getNumVertices    `( BtBU_Simplex1to4Class bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTetrahedronShape.h?r=2223#29>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTetrahedronShape.cpp?r=2223>
-}
{#fun btBU_Simplex1to4_m_numVertices_set    `( BtBU_Simplex1to4Class bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTetrahedronShape.h?r=2223#29>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTetrahedronShape.cpp?r=2223>
-}
{#fun btBU_Simplex1to4_m_numVertices_get    `( BtBU_Simplex1to4Class bc )' =>     { withBt* `bc'  } ->  `Int'   #}
-- * btBoxShape
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBoxShape.h?r=2223#83>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBoxShape.cpp?r=2223>
-}
{#fun btBoxShape_new as btBoxShape    {  withVec3* `Vec3'  } -> `BtBoxShape' mkBtBoxShape* #}
{#fun btBoxShape_free    `( BtBoxShapeClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBoxShape.h?r=2223#112>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBoxShape.cpp?r=2223>
-}
{#fun btBoxShape_calculateLocalInertia as btBoxShape_calculateLocalInertia    `( BtBoxShapeClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ mass
, withVec3* `Vec3'  peekVec3* -- ^ inertia
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBoxShape.h?r=2223#112>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBoxShape.cpp?r=2223>
-}
{#fun btBoxShape_calculateLocalInertia as btBoxShape_calculateLocalInertia'    `( BtBoxShapeClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ mass
, allocaVec3-  `Vec3'  peekVec3* -- ^ inertia
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBoxShape.h?r=2223#124>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBoxShape.cpp?r=2223>
-}
{#fun btBoxShape_getNumPlanes as btBoxShape_getNumPlanes    `( BtBoxShapeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBoxShape.h?r=2223#48>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBoxShape.cpp?r=2223>
-}
{#fun btBoxShape_localGetSupportingVertex as btBoxShape_localGetSupportingVertex    `( BtBoxShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ vec
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBoxShape.h?r=2223#48>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBoxShape.cpp?r=2223>
-}
{#fun btBoxShape_localGetSupportingVertex as btBoxShape_localGetSupportingVertex'    `( BtBoxShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ vec
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBoxShape.h?r=2223#96>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBoxShape.cpp?r=2223>
-}
{#fun btBoxShape_setLocalScaling as btBoxShape_setLocalScaling    `( BtBoxShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ scaling
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBoxShape.h?r=2223#96>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBoxShape.cpp?r=2223>
-}
{#fun btBoxShape_setLocalScaling as btBoxShape_setLocalScaling'    `( BtBoxShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ scaling
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBoxShape.h?r=2223#151>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBoxShape.cpp?r=2223>
-}
{#fun btBoxShape_getPlaneEquation as btBoxShape_getPlaneEquation    `( BtBoxShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec4* `Vec4'  peekVec4* -- ^ plane
,  `Int'  -- ^ i
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBoxShape.h?r=2223#151>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBoxShape.cpp?r=2223>
-}
{#fun btBoxShape_getPlaneEquation as btBoxShape_getPlaneEquation'    `( BtBoxShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec4-  `Vec4'  peekVec4* -- ^ plane
,  `Int'  -- ^ i
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBoxShape.h?r=2223#280>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBoxShape.cpp?r=2223>
-}
{#fun btBoxShape_getPreferredPenetrationDirection as btBoxShape_getPreferredPenetrationDirection    `( BtBoxShapeClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ index
, withVec3* `Vec3'  peekVec3* -- ^ penetrationVector
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBoxShape.h?r=2223#280>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBoxShape.cpp?r=2223>
-}
{#fun btBoxShape_getPreferredPenetrationDirection as btBoxShape_getPreferredPenetrationDirection'    `( BtBoxShapeClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ index
, allocaVec3-  `Vec3'  peekVec3* -- ^ penetrationVector
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBoxShape.h?r=2223#134>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBoxShape.cpp?r=2223>
-}
{#fun btBoxShape_getNumEdges as btBoxShape_getNumEdges    `( BtBoxShapeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBoxShape.h?r=2223#270>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBoxShape.cpp?r=2223>
-}
{#fun btBoxShape_getName as btBoxShape_getName    `( BtBoxShapeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `String'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBoxShape.h?r=2223#140>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBoxShape.cpp?r=2223>
-}
{#fun btBoxShape_getVertex as btBoxShape_getVertex    `( BtBoxShapeClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ i
, withVec3* `Vec3'  peekVec3* -- ^ vtx
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBoxShape.h?r=2223#140>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBoxShape.cpp?r=2223>
-}
{#fun btBoxShape_getVertex as btBoxShape_getVertex'    `( BtBoxShapeClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ i
, allocaVec3-  `Vec3'  peekVec3* -- ^ vtx
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBoxShape.h?r=2223#181>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBoxShape.cpp?r=2223>
-}
{#fun btBoxShape_getEdge as btBoxShape_getEdge    `( BtBoxShapeClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ i
, withVec3* `Vec3'  peekVec3* -- ^ pa
, withVec3* `Vec3'  peekVec3* -- ^ pb
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBoxShape.h?r=2223#181>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBoxShape.cpp?r=2223>
-}
{#fun btBoxShape_getEdge as btBoxShape_getEdge'    `( BtBoxShapeClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ i
, allocaVec3-  `Vec3'  peekVec3* -- ^ pa
, allocaVec3-  `Vec3'  peekVec3* -- ^ pb
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBoxShape.h?r=2223#252>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBoxShape.cpp?r=2223>
-}
{#fun btBoxShape_isInside as btBoxShape_isInside    `( BtBoxShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ pt
,  `Float'  -- ^ tolerance
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBoxShape.h?r=2223#252>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBoxShape.cpp?r=2223>
-}
{#fun btBoxShape_isInside as btBoxShape_isInside'    `( BtBoxShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ pt
,  `Float'  -- ^ tolerance
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBoxShape.h?r=2223#114>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBoxShape.cpp?r=2223>
-}
{#fun btBoxShape_getPlane as btBoxShape_getPlane    `( BtBoxShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ planeNormal
, withVec3* `Vec3'  peekVec3* -- ^ planeSupport
,  `Int'  -- ^ i
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBoxShape.h?r=2223#114>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBoxShape.cpp?r=2223>
-}
{#fun btBoxShape_getPlane as btBoxShape_getPlane'    `( BtBoxShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ planeNormal
, allocaVec3-  `Vec3'  peekVec3* -- ^ planeSupport
,  `Int'  -- ^ i
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBoxShape.h?r=2223#42>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBoxShape.cpp?r=2223>
-}
{#fun btBoxShape_getHalfExtentsWithoutMargin as btBoxShape_getHalfExtentsWithoutMargin    `( BtBoxShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBoxShape.h?r=2223#275>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBoxShape.cpp?r=2223>
-}
{#fun btBoxShape_getNumPreferredPenetrationDirections as btBoxShape_getNumPreferredPenetrationDirections    `( BtBoxShapeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBoxShape.h?r=2223#108>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBoxShape.cpp?r=2223>
-}
{#fun btBoxShape_getAabb as btBoxShape_getAabb    `( BtBoxShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, withTransform* `Transform'  peekTransform* -- ^ t
, withVec3* `Vec3'  peekVec3* -- ^ aabbMin
, withVec3* `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBoxShape.h?r=2223#108>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBoxShape.cpp?r=2223>
-}
{#fun btBoxShape_getAabb as btBoxShape_getAabb'    `( BtBoxShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaTransform-  `Transform'  peekTransform* -- ^ t
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMin
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBoxShape.h?r=2223#85>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBoxShape.cpp?r=2223>
-}
{#fun btBoxShape_setMargin as btBoxShape_setMargin    `( BtBoxShapeClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ collisionMargin
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBoxShape.h?r=2223#129>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBoxShape.cpp?r=2223>
-}
{#fun btBoxShape_getNumVertices as btBoxShape_getNumVertices    `( BtBoxShapeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBoxShape.h?r=2223#34>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBoxShape.cpp?r=2223>
-}
{#fun btBoxShape_getHalfExtentsWithMargin as btBoxShape_getHalfExtentsWithMargin    `( BtBoxShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBoxShape.h?r=2223#59>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBoxShape.cpp?r=2223>
-}
{#fun btBoxShape_localGetSupportingVertexWithoutMargin as btBoxShape_localGetSupportingVertexWithoutMargin    `( BtBoxShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ vec
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBoxShape.h?r=2223#59>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBoxShape.cpp?r=2223>
-}
{#fun btBoxShape_localGetSupportingVertexWithoutMargin as btBoxShape_localGetSupportingVertexWithoutMargin'    `( BtBoxShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ vec
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
-- * btBvhTriangleMeshShape
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBvhTriangleMeshShape.h?r=2223#43>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBvhTriangleMeshShape.cpp?r=2223>
-}
{#fun btBvhTriangleMeshShape_new0 as btBvhTriangleMeshShape0    `( BtStridingMeshInterfaceClass p0 )' =>     {  withBt* `p0' ,  `Bool' ,  `Bool'  } -> `BtBvhTriangleMeshShape' mkBtBvhTriangleMeshShape* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBvhTriangleMeshShape.h?r=2223#46>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBvhTriangleMeshShape.cpp?r=2223>
-}
{#fun btBvhTriangleMeshShape_new1 as btBvhTriangleMeshShape1    `( BtStridingMeshInterfaceClass p0 )' =>     {  withBt* `p0' ,  `Bool' , withVec3* `Vec3' , withVec3* `Vec3' ,  `Bool'  } -> `BtBvhTriangleMeshShape' mkBtBvhTriangleMeshShape* #}
{#fun btBvhTriangleMeshShape_free    `( BtBvhTriangleMeshShapeClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBvhTriangleMeshShape.h?r=2223#132>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBvhTriangleMeshShape.cpp?r=2223>
-}
{#fun btBvhTriangleMeshShape_calculateSerializeBufferSize as btBvhTriangleMeshShape_calculateSerializeBufferSize    `( BtBvhTriangleMeshShapeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBvhTriangleMeshShape.h?r=2223#80>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBvhTriangleMeshShape.cpp?r=2223>
-}
{#fun btBvhTriangleMeshShape_buildOptimizedBvh as btBvhTriangleMeshShape_buildOptimizedBvh    `( BtBvhTriangleMeshShapeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBvhTriangleMeshShape.h?r=2223#71>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBvhTriangleMeshShape.cpp?r=2223>
-}
{#fun btBvhTriangleMeshShape_setLocalScaling as btBvhTriangleMeshShape_setLocalScaling    `( BtBvhTriangleMeshShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ scaling
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBvhTriangleMeshShape.h?r=2223#71>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBvhTriangleMeshShape.cpp?r=2223>
-}
{#fun btBvhTriangleMeshShape_setLocalScaling as btBvhTriangleMeshShape_setLocalScaling'    `( BtBvhTriangleMeshShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ scaling
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBvhTriangleMeshShape.h?r=2223#57>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBvhTriangleMeshShape.cpp?r=2223>
-}
{#fun btBvhTriangleMeshShape_performRaycast as btBvhTriangleMeshShape_performRaycast    `( BtBvhTriangleMeshShapeClass bc , BtTriangleCallbackClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ callback
, withVec3* `Vec3'  peekVec3* -- ^ raySource
, withVec3* `Vec3'  peekVec3* -- ^ rayTarget
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBvhTriangleMeshShape.h?r=2223#57>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBvhTriangleMeshShape.cpp?r=2223>
-}
{#fun btBvhTriangleMeshShape_performRaycast as btBvhTriangleMeshShape_performRaycast'    `( BtBvhTriangleMeshShapeClass bc , BtTriangleCallbackClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ callback
, allocaVec3-  `Vec3'  peekVec3* -- ^ raySource
, allocaVec3-  `Vec3'  peekVec3* -- ^ rayTarget
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBvhTriangleMeshShape.h?r=2223#87>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBvhTriangleMeshShape.cpp?r=2223>
-}
{#fun btBvhTriangleMeshShape_setTriangleInfoMap as btBvhTriangleMeshShape_setTriangleInfoMap    `( BtBvhTriangleMeshShapeClass bc , BtTriangleInfoMapClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ triangleInfoMap
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBvhTriangleMeshShape.h?r=2223#82>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBvhTriangleMeshShape.cpp?r=2223>
-}
{#fun btBvhTriangleMeshShape_usesQuantizedAabbCompression as btBvhTriangleMeshShape_usesQuantizedAabbCompression    `( BtBvhTriangleMeshShapeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBvhTriangleMeshShape.h?r=2223#68>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBvhTriangleMeshShape.cpp?r=2223>
-}
{#fun btBvhTriangleMeshShape_getName as btBvhTriangleMeshShape_getName    `( BtBvhTriangleMeshShapeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `String'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBvhTriangleMeshShape.h?r=2223#105>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBvhTriangleMeshShape.cpp?r=2223>
-}
{#fun btBvhTriangleMeshShape_serialize as btBvhTriangleMeshShape_serialize    `( BtBvhTriangleMeshShapeClass bc , BtSerializerClass p1 )' =>     { withBt* `bc'  -- ^ 
, withVoidPtr* `VoidPtr'  -- ^ dataBuffer
, withBt* `p1'  -- ^ serializer
 } ->  `String'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBvhTriangleMeshShape.h?r=2223#92>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBvhTriangleMeshShape.cpp?r=2223>
-}
{#fun btBvhTriangleMeshShape_getTriangleInfoMap0 as btBvhTriangleMeshShape_getTriangleInfoMap    `( BtBvhTriangleMeshShapeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtTriangleInfoMap'  mkBtTriangleInfoMap* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBvhTriangleMeshShape.h?r=2223#92>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBvhTriangleMeshShape.cpp?r=2223>
-}
{#fun btBvhTriangleMeshShape_getTriangleInfoMap0 as btBvhTriangleMeshShape_getTriangleInfoMap0    `( BtBvhTriangleMeshShapeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtTriangleInfoMap'  mkBtTriangleInfoMap* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBvhTriangleMeshShape.h?r=2223#97>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBvhTriangleMeshShape.cpp?r=2223>
-}
{#fun btBvhTriangleMeshShape_getTriangleInfoMap1 as btBvhTriangleMeshShape_getTriangleInfoMap1    `( BtBvhTriangleMeshShapeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtTriangleInfoMap'  mkBtTriangleInfoMap* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBvhTriangleMeshShape.h?r=2223#109>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBvhTriangleMeshShape.cpp?r=2223>
-}
{#fun btBvhTriangleMeshShape_serializeSingleTriangleInfoMap as btBvhTriangleMeshShape_serializeSingleTriangleInfoMap    `( BtBvhTriangleMeshShapeClass bc , BtSerializerClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ serializer
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBvhTriangleMeshShape.h?r=2223#50>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBvhTriangleMeshShape.cpp?r=2223>
-}
{#fun btBvhTriangleMeshShape_getOwnsBvh as btBvhTriangleMeshShape_getOwnsBvh    `( BtBvhTriangleMeshShapeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBvhTriangleMeshShape.h?r=2223#65>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBvhTriangleMeshShape.cpp?r=2223>
-}
{#fun btBvhTriangleMeshShape_partialRefitTree as btBvhTriangleMeshShape_partialRefitTree    `( BtBvhTriangleMeshShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ aabbMin
, withVec3* `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBvhTriangleMeshShape.h?r=2223#65>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBvhTriangleMeshShape.cpp?r=2223>
-}
{#fun btBvhTriangleMeshShape_partialRefitTree as btBvhTriangleMeshShape_partialRefitTree'    `( BtBvhTriangleMeshShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMin
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBvhTriangleMeshShape.h?r=2223#73>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBvhTriangleMeshShape.cpp?r=2223>
-}
{#fun btBvhTriangleMeshShape_getOptimizedBvh as btBvhTriangleMeshShape_getOptimizedBvh    `( BtBvhTriangleMeshShapeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtOptimizedBvh'  mkBtOptimizedBvh* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBvhTriangleMeshShape.h?r=2223#60>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBvhTriangleMeshShape.cpp?r=2223>
-}
{#fun btBvhTriangleMeshShape_processAllTriangles as btBvhTriangleMeshShape_processAllTriangles    `( BtBvhTriangleMeshShapeClass bc , BtTriangleCallbackClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ callback
, withVec3* `Vec3'  peekVec3* -- ^ aabbMin
, withVec3* `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBvhTriangleMeshShape.h?r=2223#60>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBvhTriangleMeshShape.cpp?r=2223>
-}
{#fun btBvhTriangleMeshShape_processAllTriangles as btBvhTriangleMeshShape_processAllTriangles'    `( BtBvhTriangleMeshShapeClass bc , BtTriangleCallbackClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ callback
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMin
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBvhTriangleMeshShape.h?r=2223#62>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBvhTriangleMeshShape.cpp?r=2223>
-}
{#fun btBvhTriangleMeshShape_refitTree as btBvhTriangleMeshShape_refitTree    `( BtBvhTriangleMeshShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ aabbMin
, withVec3* `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBvhTriangleMeshShape.h?r=2223#62>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBvhTriangleMeshShape.cpp?r=2223>
-}
{#fun btBvhTriangleMeshShape_refitTree as btBvhTriangleMeshShape_refitTree'    `( BtBvhTriangleMeshShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMin
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBvhTriangleMeshShape.h?r=2223#58>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBvhTriangleMeshShape.cpp?r=2223>
-}
{#fun btBvhTriangleMeshShape_performConvexcast as btBvhTriangleMeshShape_performConvexcast    `( BtBvhTriangleMeshShapeClass bc , BtTriangleCallbackClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ callback
, withVec3* `Vec3'  peekVec3* -- ^ boxSource
, withVec3* `Vec3'  peekVec3* -- ^ boxTarget
, withVec3* `Vec3'  peekVec3* -- ^ boxMin
, withVec3* `Vec3'  peekVec3* -- ^ boxMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBvhTriangleMeshShape.h?r=2223#58>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBvhTriangleMeshShape.cpp?r=2223>
-}
{#fun btBvhTriangleMeshShape_performConvexcast as btBvhTriangleMeshShape_performConvexcast'    `( BtBvhTriangleMeshShapeClass bc , BtTriangleCallbackClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ callback
, allocaVec3-  `Vec3'  peekVec3* -- ^ boxSource
, allocaVec3-  `Vec3'  peekVec3* -- ^ boxTarget
, allocaVec3-  `Vec3'  peekVec3* -- ^ boxMin
, allocaVec3-  `Vec3'  peekVec3* -- ^ boxMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBvhTriangleMeshShape.h?r=2223#107>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBvhTriangleMeshShape.cpp?r=2223>
-}
{#fun btBvhTriangleMeshShape_serializeSingleBvh as btBvhTriangleMeshShape_serializeSingleBvh    `( BtBvhTriangleMeshShapeClass bc , BtSerializerClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ serializer
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBvhTriangleMeshShape.h?r=2223#78>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBvhTriangleMeshShape.cpp?r=2223>
-}
{#fun btBvhTriangleMeshShape_setOptimizedBvh as btBvhTriangleMeshShape_setOptimizedBvh    `( BtBvhTriangleMeshShapeClass bc , BtOptimizedBvhClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ bvh
, withVec3* `Vec3'  peekVec3* -- ^ localScaling
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBvhTriangleMeshShape.h?r=2223#78>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBvhTriangleMeshShape.cpp?r=2223>
-}
{#fun btBvhTriangleMeshShape_setOptimizedBvh as btBvhTriangleMeshShape_setOptimizedBvh'    `( BtBvhTriangleMeshShapeClass bc , BtOptimizedBvhClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ bvh
, allocaVec3-  `Vec3'  peekVec3* -- ^ localScaling
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBvhTriangleMeshShape.h?r=2223#31>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBvhTriangleMeshShape.cpp?r=2223>
-}
{#fun btBvhTriangleMeshShape_m_bvh_set    `( BtBvhTriangleMeshShapeClass bc , BtOptimizedBvhClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBvhTriangleMeshShape.h?r=2223#31>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBvhTriangleMeshShape.cpp?r=2223>
-}
{#fun btBvhTriangleMeshShape_m_bvh_get    `( BtBvhTriangleMeshShapeClass bc )' =>     { withBt* `bc'  } ->  `BtOptimizedBvh'  mkBtOptimizedBvh* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBvhTriangleMeshShape.h?r=2223#32>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBvhTriangleMeshShape.cpp?r=2223>
-}
{#fun btBvhTriangleMeshShape_m_triangleInfoMap_set    `( BtBvhTriangleMeshShapeClass bc , BtTriangleInfoMapClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBvhTriangleMeshShape.h?r=2223#32>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBvhTriangleMeshShape.cpp?r=2223>
-}
{#fun btBvhTriangleMeshShape_m_triangleInfoMap_get    `( BtBvhTriangleMeshShapeClass bc )' =>     { withBt* `bc'  } ->  `BtTriangleInfoMap'  mkBtTriangleInfoMap* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBvhTriangleMeshShape.h?r=2223#34>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBvhTriangleMeshShape.cpp?r=2223>
-}
{#fun btBvhTriangleMeshShape_m_useQuantizedAabbCompression_set    `( BtBvhTriangleMeshShapeClass bc )' =>     { withBt* `bc' ,  `Bool'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBvhTriangleMeshShape.h?r=2223#34>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBvhTriangleMeshShape.cpp?r=2223>
-}
{#fun btBvhTriangleMeshShape_m_useQuantizedAabbCompression_get    `( BtBvhTriangleMeshShapeClass bc )' =>     { withBt* `bc'  } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBvhTriangleMeshShape.h?r=2223#35>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBvhTriangleMeshShape.cpp?r=2223>
-}
{#fun btBvhTriangleMeshShape_m_ownsBvh_set    `( BtBvhTriangleMeshShapeClass bc )' =>     { withBt* `bc' ,  `Bool'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBvhTriangleMeshShape.h?r=2223#35>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBvhTriangleMeshShape.cpp?r=2223>
-}
{#fun btBvhTriangleMeshShape_m_ownsBvh_get    `( BtBvhTriangleMeshShapeClass bc )' =>     { withBt* `bc'  } ->  `Bool'   #}
-- * btCapsuleShape
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCapsuleShape.h?r=2223#33>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCapsuleShape.cpp?r=2223>
-}
{#fun btCapsuleShape_new0 as btCapsuleShape0    {  } -> `BtCapsuleShape' mkBtCapsuleShape* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCapsuleShape.h?r=2223#36>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCapsuleShape.cpp?r=2223>
-}
{#fun btCapsuleShape_new1 as btCapsuleShape1    {   `Float' ,  `Float'  } -> `BtCapsuleShape' mkBtCapsuleShape* #}
{#fun btCapsuleShape_free    `( BtCapsuleShapeClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCapsuleShape.h?r=2223#39>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCapsuleShape.cpp?r=2223>
-}
{#fun btCapsuleShape_calculateLocalInertia as btCapsuleShape_calculateLocalInertia    `( BtCapsuleShapeClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ mass
, withVec3* `Vec3'  peekVec3* -- ^ inertia
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCapsuleShape.h?r=2223#39>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCapsuleShape.cpp?r=2223>
-}
{#fun btCapsuleShape_calculateLocalInertia as btCapsuleShape_calculateLocalInertia'    `( BtCapsuleShapeClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ mass
, allocaVec3-  `Vec3'  peekVec3* -- ^ inertia
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCapsuleShape.h?r=2223#156>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCapsuleShape.cpp?r=2223>
-}
{#fun btCapsuleShape_calculateSerializeBufferSize as btCapsuleShape_calculateSerializeBufferSize    `( BtCapsuleShapeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCapsuleShape.h?r=2223#92>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCapsuleShape.cpp?r=2223>
-}
{#fun btCapsuleShape_setLocalScaling as btCapsuleShape_setLocalScaling    `( BtCapsuleShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ scaling
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCapsuleShape.h?r=2223#92>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCapsuleShape.cpp?r=2223>
-}
{#fun btCapsuleShape_setLocalScaling as btCapsuleShape_setLocalScaling'    `( BtCapsuleShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ scaling
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCapsuleShape.h?r=2223#76>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCapsuleShape.cpp?r=2223>
-}
{#fun btCapsuleShape_getUpAxis as btCapsuleShape_getUpAxis    `( BtCapsuleShapeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCapsuleShape.h?r=2223#71>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCapsuleShape.cpp?r=2223>
-}
{#fun btCapsuleShape_getName as btCapsuleShape_getName    `( BtCapsuleShapeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `String'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCapsuleShape.h?r=2223#87>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCapsuleShape.cpp?r=2223>
-}
{#fun btCapsuleShape_getHalfHeight as btCapsuleShape_getHalfHeight    `( BtCapsuleShapeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCapsuleShape.h?r=2223#46>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCapsuleShape.cpp?r=2223>
-}
{#fun btCapsuleShape_setMargin as btCapsuleShape_setMargin    `( BtCapsuleShapeClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ collisionMargin
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCapsuleShape.h?r=2223#58>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCapsuleShape.cpp?r=2223>
-}
{#fun btCapsuleShape_getAabb as btCapsuleShape_getAabb    `( BtCapsuleShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, withTransform* `Transform'  peekTransform* -- ^ t
, withVec3* `Vec3'  peekVec3* -- ^ aabbMin
, withVec3* `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCapsuleShape.h?r=2223#58>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCapsuleShape.cpp?r=2223>
-}
{#fun btCapsuleShape_getAabb as btCapsuleShape_getAabb'    `( BtCapsuleShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaTransform-  `Transform'  peekTransform* -- ^ t
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMin
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCapsuleShape.h?r=2223#162>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCapsuleShape.cpp?r=2223>
-}
{#fun btCapsuleShape_serialize as btCapsuleShape_serialize    `( BtCapsuleShapeClass bc , BtSerializerClass p1 )' =>     { withBt* `bc'  -- ^ 
, withVoidPtr* `VoidPtr'  -- ^ dataBuffer
, withBt* `p1'  -- ^ serializer
 } ->  `String'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCapsuleShape.h?r=2223#42>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCapsuleShape.cpp?r=2223>
-}
{#fun btCapsuleShape_localGetSupportingVertexWithoutMargin as btCapsuleShape_localGetSupportingVertexWithoutMargin    `( BtCapsuleShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ vec
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCapsuleShape.h?r=2223#42>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCapsuleShape.cpp?r=2223>
-}
{#fun btCapsuleShape_localGetSupportingVertexWithoutMargin as btCapsuleShape_localGetSupportingVertexWithoutMargin'    `( BtCapsuleShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ vec
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCapsuleShape.h?r=2223#81>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCapsuleShape.cpp?r=2223>
-}
{#fun btCapsuleShape_getRadius as btCapsuleShape_getRadius    `( BtCapsuleShapeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCapsuleShape.h?r=2223#29>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCapsuleShape.cpp?r=2223>
-}
{#fun btCapsuleShape_m_upAxis_set    `( BtCapsuleShapeClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCapsuleShape.h?r=2223#29>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCapsuleShape.cpp?r=2223>
-}
{#fun btCapsuleShape_m_upAxis_get    `( BtCapsuleShapeClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
-- * btCapsuleShapeData
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCapsuleShape.h?r=2223#148>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCapsuleShape.cpp?r=2223>
-}
{#fun btCapsuleShapeData_new as btCapsuleShapeData    {  } -> `BtCapsuleShapeData' mkBtCapsuleShapeData* #}
{#fun btCapsuleShapeData_free    `( BtCapsuleShapeDataClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCapsuleShape.h?r=2223#149>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCapsuleShape.cpp?r=2223>
-}
{#fun btCapsuleShapeData_m_convexInternalShapeData_set    `( BtCapsuleShapeDataClass bc , BtConvexInternalShapeDataClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCapsuleShape.h?r=2223#149>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCapsuleShape.cpp?r=2223>
-}
{#fun btCapsuleShapeData_m_convexInternalShapeData_get    `( BtCapsuleShapeDataClass bc )' =>     { withBt* `bc'  } ->  `BtConvexInternalShapeData'  mkBtConvexInternalShapeData* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCapsuleShape.h?r=2223#151>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCapsuleShape.cpp?r=2223>
-}
{#fun btCapsuleShapeData_m_upAxis_set    `( BtCapsuleShapeDataClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCapsuleShape.h?r=2223#151>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCapsuleShape.cpp?r=2223>
-}
{#fun btCapsuleShapeData_m_upAxis_get    `( BtCapsuleShapeDataClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
-- * btCapsuleShapeX
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCapsuleShape.h?r=2223#118>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCapsuleShape.cpp?r=2223>
-}
{#fun btCapsuleShapeX_new as btCapsuleShapeX    {   `Float' ,  `Float'  } -> `BtCapsuleShapeX' mkBtCapsuleShapeX* #}
{#fun btCapsuleShapeX_free    `( BtCapsuleShapeXClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCapsuleShape.h?r=2223#121>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCapsuleShape.cpp?r=2223>
-}
{#fun btCapsuleShapeX_getName as btCapsuleShapeX_getName    `( BtCapsuleShapeXClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `String'   #}
-- * btCapsuleShapeZ
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCapsuleShape.h?r=2223#135>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCapsuleShape.cpp?r=2223>
-}
{#fun btCapsuleShapeZ_new as btCapsuleShapeZ    {   `Float' ,  `Float'  } -> `BtCapsuleShapeZ' mkBtCapsuleShapeZ* #}
{#fun btCapsuleShapeZ_free    `( BtCapsuleShapeZClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCapsuleShape.h?r=2223#138>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCapsuleShape.cpp?r=2223>
-}
{#fun btCapsuleShapeZ_getName as btCapsuleShapeZ_getName    `( BtCapsuleShapeZClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `String'   #}
-- * btCharIndexTripletData
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStridingMeshInterface.h?r=2223#120>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStridingMeshInterface.cpp?r=2223>
-}
{#fun btCharIndexTripletData_new as btCharIndexTripletData    {  } -> `BtCharIndexTripletData' mkBtCharIndexTripletData* #}
{#fun btCharIndexTripletData_free    `( BtCharIndexTripletDataClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStridingMeshInterface.h?r=2223#122>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStridingMeshInterface.cpp?r=2223>
-}
{#fun btCharIndexTripletData_m_pad_set    `( BtCharIndexTripletDataClass bc )' =>     { withBt* `bc' , castCharToCChar `Char'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStridingMeshInterface.h?r=2223#122>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStridingMeshInterface.cpp?r=2223>
-}
{#fun btCharIndexTripletData_m_pad_get    `( BtCharIndexTripletDataClass bc )' =>     { withBt* `bc'  } ->  `Char'  castCCharToChar #}
-- * btCollisionShape
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCollisionShape.h?r=2223#101>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCollisionShape.cpp?r=2223>
-}
{#fun btCollisionShape_calculateLocalInertia as btCollisionShape_calculateLocalInertia    `( BtCollisionShapeClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ mass
, withVec3* `Vec3'  peekVec3* -- ^ inertia
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCollisionShape.h?r=2223#101>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCollisionShape.cpp?r=2223>
-}
{#fun btCollisionShape_calculateLocalInertia as btCollisionShape_calculateLocalInertia'    `( BtCollisionShapeClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ mass
, allocaVec3-  `Vec3'  peekVec3* -- ^ inertia
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCollisionShape.h?r=2223#115>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCollisionShape.cpp?r=2223>
-}
{#fun btCollisionShape_setUserPointer as btCollisionShape_setUserPointer    `( BtCollisionShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, withVoidPtr* `VoidPtr'  -- ^ userPtr
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCollisionShape.h?r=2223#128>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCollisionShape.cpp?r=2223>
-}
{#fun btCollisionShape_serialize as btCollisionShape_serialize    `( BtCollisionShapeClass bc , BtSerializerClass p1 )' =>     { withBt* `bc'  -- ^ 
, withVoidPtr* `VoidPtr'  -- ^ dataBuffer
, withBt* `p1'  -- ^ serializer
 } ->  `String'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCollisionShape.h?r=2223#100>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCollisionShape.cpp?r=2223>
-}
{#fun btCollisionShape_getLocalScaling as btCollisionShape_getLocalScaling    `( BtCollisionShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCollisionShape.h?r=2223#142>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCollisionShape.cpp?r=2223>
-}
{#fun btCollisionShape_calculateSerializeBufferSize as btCollisionShape_calculateSerializeBufferSize    `( BtCollisionShapeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCollisionShape.h?r=2223#105>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCollisionShape.cpp?r=2223>
-}
{#fun btCollisionShape_getName as btCollisionShape_getName    `( BtCollisionShapeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `String'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCollisionShape.h?r=2223#82>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCollisionShape.cpp?r=2223>
-}
{#fun btCollisionShape_isCompound as btCollisionShape_isCompound    `( BtCollisionShapeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCollisionShape.h?r=2223#60>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCollisionShape.cpp?r=2223>
-}
{#fun btCollisionShape_isPolyhedral as btCollisionShape_isPolyhedral    `( BtCollisionShapeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCollisionShape.h?r=2223#99>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCollisionShape.cpp?r=2223>
-}
{#fun btCollisionShape_setLocalScaling as btCollisionShape_setLocalScaling    `( BtCollisionShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ scaling
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCollisionShape.h?r=2223#99>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCollisionShape.cpp?r=2223>
-}
{#fun btCollisionShape_setLocalScaling as btCollisionShape_setLocalScaling'    `( BtCollisionShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ scaling
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCollisionShape.h?r=2223#44>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCollisionShape.cpp?r=2223>
-}
{#fun btCollisionShape_getAabb as btCollisionShape_getAabb    `( BtCollisionShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, withTransform* `Transform'  peekTransform* -- ^ t
, withVec3* `Vec3'  peekVec3* -- ^ aabbMin
, withVec3* `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCollisionShape.h?r=2223#44>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCollisionShape.cpp?r=2223>
-}
{#fun btCollisionShape_getAabb as btCollisionShape_getAabb'    `( BtCollisionShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaTransform-  `Transform'  peekTransform* -- ^ t
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMin
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCollisionShape.h?r=2223#51>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCollisionShape.cpp?r=2223>
-}
{#fun btCollisionShape_getContactBreakingThreshold as btCollisionShape_getContactBreakingThreshold    `( BtCollisionShapeClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ defaultContactThresholdFactor
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCollisionShape.h?r=2223#70>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCollisionShape.cpp?r=2223>
-}
{#fun btCollisionShape_isConvex as btCollisionShape_isConvex    `( BtCollisionShapeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCollisionShape.h?r=2223#93>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCollisionShape.cpp?r=2223>
-}
{#fun btCollisionShape_isInfinite as btCollisionShape_isInfinite    `( BtCollisionShapeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCollisionShape.h?r=2223#120>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCollisionShape.cpp?r=2223>
-}
{#fun btCollisionShape_getUserPointer as btCollisionShape_getUserPointer    `( BtCollisionShapeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `VoidPtr'  mkVoidPtr* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCollisionShape.h?r=2223#74>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCollisionShape.cpp?r=2223>
-}
{#fun btCollisionShape_isNonMoving as btCollisionShape_isNonMoving    `( BtCollisionShapeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCollisionShape.h?r=2223#111>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCollisionShape.cpp?r=2223>
-}
{#fun btCollisionShape_getMargin as btCollisionShape_getMargin    `( BtCollisionShapeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCollisionShape.h?r=2223#110>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCollisionShape.cpp?r=2223>
-}
{#fun btCollisionShape_setMargin as btCollisionShape_setMargin    `( BtCollisionShapeClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ margin
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCollisionShape.h?r=2223#65>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCollisionShape.cpp?r=2223>
-}
{#fun btCollisionShape_isConvex2d as btCollisionShape_isConvex2d    `( BtCollisionShapeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCollisionShape.h?r=2223#87>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCollisionShape.cpp?r=2223>
-}
{#fun btCollisionShape_isSoftBody as btCollisionShape_isSoftBody    `( BtCollisionShapeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCollisionShape.h?r=2223#56>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCollisionShape.cpp?r=2223>
-}
{#fun btCollisionShape_calculateTemporalAabb as btCollisionShape_calculateTemporalAabb    `( BtCollisionShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, withTransform* `Transform'  peekTransform* -- ^ curTrans
, withVec3* `Vec3'  peekVec3* -- ^ linvel
, withVec3* `Vec3'  peekVec3* -- ^ angvel
,  `Float'  -- ^ timeStep
, withVec3* `Vec3'  peekVec3* -- ^ temporalAabbMin
, withVec3* `Vec3'  peekVec3* -- ^ temporalAabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCollisionShape.h?r=2223#56>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCollisionShape.cpp?r=2223>
-}
{#fun btCollisionShape_calculateTemporalAabb as btCollisionShape_calculateTemporalAabb'    `( BtCollisionShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaTransform-  `Transform'  peekTransform* -- ^ curTrans
, allocaVec3-  `Vec3'  peekVec3* -- ^ linvel
, allocaVec3-  `Vec3'  peekVec3* -- ^ angvel
,  `Float'  -- ^ timeStep
, allocaVec3-  `Vec3'  peekVec3* -- ^ temporalAabbMin
, allocaVec3-  `Vec3'  peekVec3* -- ^ temporalAabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCollisionShape.h?r=2223#78>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCollisionShape.cpp?r=2223>
-}
{#fun btCollisionShape_isConcave as btCollisionShape_isConcave    `( BtCollisionShapeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCollisionShape.h?r=2223#49>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCollisionShape.cpp?r=2223>
-}
{#fun btCollisionShape_getAngularMotionDisc as btCollisionShape_getAngularMotionDisc    `( BtCollisionShapeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCollisionShape.h?r=2223#130>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCollisionShape.cpp?r=2223>
-}
{#fun btCollisionShape_serializeSingleShape as btCollisionShape_serializeSingleShape    `( BtCollisionShapeClass bc , BtSerializerClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ serializer
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCollisionShape.h?r=2223#109>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCollisionShape.cpp?r=2223>
-}
{#fun btCollisionShape_getShapeType as btCollisionShape_getShapeType    `( BtCollisionShapeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCollisionShape.h?r=2223#30>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCollisionShape.cpp?r=2223>
-}
{#fun btCollisionShape_m_shapeType_set    `( BtCollisionShapeClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCollisionShape.h?r=2223#30>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCollisionShape.cpp?r=2223>
-}
{#fun btCollisionShape_m_shapeType_get    `( BtCollisionShapeClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCollisionShape.h?r=2223#31>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCollisionShape.cpp?r=2223>
-}
{#fun btCollisionShape_m_userPointer_set    `( BtCollisionShapeClass bc )' =>     { withBt* `bc' , withVoidPtr* `VoidPtr'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCollisionShape.h?r=2223#31>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCollisionShape.cpp?r=2223>
-}
{#fun btCollisionShape_m_userPointer_get    `( BtCollisionShapeClass bc )' =>     { withBt* `bc'  } ->  `VoidPtr'  mkVoidPtr* #}
-- * btCollisionShapeData
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCollisionShape.h?r=2223#136>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCollisionShape.cpp?r=2223>
-}
{#fun btCollisionShapeData_new as btCollisionShapeData    {  } -> `BtCollisionShapeData' mkBtCollisionShapeData* #}
{#fun btCollisionShapeData_free    `( BtCollisionShapeDataClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCollisionShape.h?r=2223#137>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCollisionShape.cpp?r=2223>
-}
{#fun btCollisionShapeData_m_name_set    `( BtCollisionShapeDataClass bc )' =>     { withBt* `bc' ,  `String'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCollisionShape.h?r=2223#137>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCollisionShape.cpp?r=2223>
-}
{#fun btCollisionShapeData_m_name_get    `( BtCollisionShapeDataClass bc )' =>     { withBt* `bc'  } ->  `String'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCollisionShape.h?r=2223#138>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCollisionShape.cpp?r=2223>
-}
{#fun btCollisionShapeData_m_shapeType_set    `( BtCollisionShapeDataClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCollisionShape.h?r=2223#138>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCollisionShape.cpp?r=2223>
-}
{#fun btCollisionShapeData_m_shapeType_get    `( BtCollisionShapeDataClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
-- * btCompoundShape
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.h?r=2223#73>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.cpp?r=2223>
-}
{#fun btCompoundShape_new as btCompoundShape    {   `Bool'  } -> `BtCompoundShape' mkBtCompoundShape* #}
{#fun btCompoundShape_free    `( BtCompoundShapeClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.h?r=2223#131>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.cpp?r=2223>
-}
{#fun btCompoundShape_calculateLocalInertia as btCompoundShape_calculateLocalInertia    `( BtCompoundShapeClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ mass
, withVec3* `Vec3'  peekVec3* -- ^ inertia
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.h?r=2223#131>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.cpp?r=2223>
-}
{#fun btCompoundShape_calculateLocalInertia as btCompoundShape_calculateLocalInertia'    `( BtCompoundShapeClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ mass
, allocaVec3-  `Vec3'  peekVec3* -- ^ inertia
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.h?r=2223#146>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.cpp?r=2223>
-}
{#fun btCompoundShape_getDynamicAabbTree0 as btCompoundShape_getDynamicAabbTree    `( BtCompoundShapeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtDbvt'  mkBtDbvt* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.h?r=2223#146>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.cpp?r=2223>
-}
{#fun btCompoundShape_getDynamicAabbTree0 as btCompoundShape_getDynamicAabbTree0    `( BtCompoundShapeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtDbvt'  mkBtDbvt* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.h?r=2223#151>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.cpp?r=2223>
-}
{#fun btCompoundShape_getDynamicAabbTree1 as btCompoundShape_getDynamicAabbTree1    `( BtCompoundShapeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtDbvt'  mkBtDbvt* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.h?r=2223#165>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.cpp?r=2223>
-}
{#fun btCompoundShape_getUpdateRevision as btCompoundShape_getUpdateRevision    `( BtCompoundShapeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.h?r=2223#173>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.cpp?r=2223>
-}
{#fun btCompoundShape_serialize as btCompoundShape_serialize    `( BtCompoundShapeClass bc , BtSerializerClass p1 )' =>     { withBt* `bc'  -- ^ 
, withVoidPtr* `VoidPtr'  -- ^ dataBuffer
, withBt* `p1'  -- ^ serializer
 } ->  `String'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.h?r=2223#126>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.cpp?r=2223>
-}
{#fun btCompoundShape_getLocalScaling as btCompoundShape_getLocalScaling    `( BtCompoundShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.h?r=2223#156>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.cpp?r=2223>
-}
{#fun btCompoundShape_createAabbTreeFromChildren as btCompoundShape_createAabbTreeFromChildren    `( BtCompoundShapeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.h?r=2223#201>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.cpp?r=2223>
-}
{#fun btCompoundShape_calculateSerializeBufferSize as btCompoundShape_calculateSerializeBufferSize    `( BtCompoundShapeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.h?r=2223#141>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.cpp?r=2223>
-}
{#fun btCompoundShape_getName as btCompoundShape_getName    `( BtCompoundShapeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `String'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.h?r=2223#124>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.cpp?r=2223>
-}
{#fun btCompoundShape_setLocalScaling as btCompoundShape_setLocalScaling    `( BtCompoundShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ scaling
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.h?r=2223#124>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.cpp?r=2223>
-}
{#fun btCompoundShape_setLocalScaling as btCompoundShape_setLocalScaling'    `( BtCompoundShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ scaling
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.h?r=2223#118>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.cpp?r=2223>
-}
{#fun btCompoundShape_getAabb as btCompoundShape_getAabb    `( BtCompoundShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, withTransform* `Transform'  peekTransform* -- ^ t
, withVec3* `Vec3'  peekVec3* -- ^ aabbMin
, withVec3* `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.h?r=2223#118>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.cpp?r=2223>
-}
{#fun btCompoundShape_getAabb as btCompoundShape_getAabb'    `( BtCompoundShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaTransform-  `Transform'  peekTransform* -- ^ t
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMin
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.h?r=2223#90>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.cpp?r=2223>
-}
{#fun btCompoundShape_getChildShape0 as btCompoundShape_getChildShape    `( BtCompoundShapeClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ index
 } ->  `BtCollisionShape'  mkBtCollisionShape* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.h?r=2223#90>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.cpp?r=2223>
-}
{#fun btCompoundShape_getChildShape0 as btCompoundShape_getChildShape0    `( BtCompoundShapeClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ index
 } ->  `BtCollisionShape'  mkBtCollisionShape* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.h?r=2223#94>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.cpp?r=2223>
-}
{#fun btCompoundShape_getChildShape1 as btCompoundShape_getChildShape1    `( BtCompoundShapeClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ index
 } ->  `BtCollisionShape'  mkBtCollisionShape* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.h?r=2223#77>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.cpp?r=2223>
-}
{#fun btCompoundShape_addChildShape as btCompoundShape_addChildShape    `( BtCompoundShapeClass bc , BtCollisionShapeClass p1 )' =>     { withBt* `bc'  -- ^ 
, withTransform* `Transform'  peekTransform* -- ^ localTransform
, withBt* `p1'  -- ^ shape
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.h?r=2223#77>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.cpp?r=2223>
-}
{#fun btCompoundShape_addChildShape as btCompoundShape_addChildShape'    `( BtCompoundShapeClass bc , BtCollisionShapeClass p1 )' =>     { withBt* `bc'  -- ^ 
, allocaTransform-  `Transform'  peekTransform* -- ^ localTransform
, withBt* `p1'  -- ^ shape
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.h?r=2223#99>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.cpp?r=2223>
-}
{#fun btCompoundShape_getChildTransform0 as btCompoundShape_getChildTransform    `( BtCompoundShapeClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ index
, allocaTransform-  `Transform'  peekTransform* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.h?r=2223#99>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.cpp?r=2223>
-}
{#fun btCompoundShape_getChildTransform0 as btCompoundShape_getChildTransform0    `( BtCompoundShapeClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ index
, allocaTransform-  `Transform'  peekTransform* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.h?r=2223#103>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.cpp?r=2223>
-}
{#fun btCompoundShape_getChildTransform1 as btCompoundShape_getChildTransform1    `( BtCompoundShapeClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ index
, allocaTransform-  `Transform'  peekTransform* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.h?r=2223#112>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.cpp?r=2223>
-}
{#fun btCompoundShape_getChildList as btCompoundShape_getChildList    `( BtCompoundShapeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtCompoundShapeChild'  mkBtCompoundShapeChild* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.h?r=2223#137>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.cpp?r=2223>
-}
{#fun btCompoundShape_getMargin as btCompoundShape_getMargin    `( BtCompoundShapeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.h?r=2223#133>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.cpp?r=2223>
-}
{#fun btCompoundShape_setMargin as btCompoundShape_setMargin    `( BtCompoundShapeClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ margin
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.h?r=2223#85>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.cpp?r=2223>
-}
{#fun btCompoundShape_getNumChildShapes as btCompoundShape_getNumChildShapes    `( BtCompoundShapeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.h?r=2223#82>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.cpp?r=2223>
-}
{#fun btCompoundShape_removeChildShapeByIndex as btCompoundShape_removeChildShapeByIndex    `( BtCompoundShapeClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ childShapeindex
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.h?r=2223#122>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.cpp?r=2223>
-}
{#fun btCompoundShape_recalculateLocalAabb as btCompoundShape_recalculateLocalAabb    `( BtCompoundShapeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.h?r=2223#109>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.cpp?r=2223>
-}
{#fun btCompoundShape_updateChildTransform as btCompoundShape_updateChildTransform    `( BtCompoundShapeClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ childIndex
, withTransform* `Transform'  peekTransform* -- ^ newChildTransform
,  `Bool'  -- ^ shouldRecalculateLocalAabb
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.h?r=2223#109>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.cpp?r=2223>
-}
{#fun btCompoundShape_updateChildTransform as btCompoundShape_updateChildTransform'    `( BtCompoundShapeClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ childIndex
, allocaTransform-  `Transform'  peekTransform* -- ^ newChildTransform
,  `Bool'  -- ^ shouldRecalculateLocalAabb
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.h?r=2223#80>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.cpp?r=2223>
-}
{#fun btCompoundShape_removeChildShape as btCompoundShape_removeChildShape    `( BtCompoundShapeClass bc , BtCollisionShapeClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ shape
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.h?r=2223#56>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.cpp?r=2223>
-}
{#fun btCompoundShape_m_children_set    `( BtCompoundShapeClass bc , BtAlignedObjectArray_btCompoundShapeChild_Class a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.h?r=2223#56>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.cpp?r=2223>
-}
{#fun btCompoundShape_m_children_get    `( BtCompoundShapeClass bc )' =>     { withBt* `bc'  } ->  `BtAlignedObjectArray_btCompoundShapeChild_'  mkBtAlignedObjectArray_btCompoundShapeChild_* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.h?r=2223#57>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.cpp?r=2223>
-}
{#fun btCompoundShape_m_localAabbMin_set    `( BtCompoundShapeClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.h?r=2223#57>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.cpp?r=2223>
-}
{#fun btCompoundShape_m_localAabbMin_get    `( BtCompoundShapeClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.h?r=2223#58>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.cpp?r=2223>
-}
{#fun btCompoundShape_m_localAabbMax_set    `( BtCompoundShapeClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.h?r=2223#58>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.cpp?r=2223>
-}
{#fun btCompoundShape_m_localAabbMax_get    `( BtCompoundShapeClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.h?r=2223#60>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.cpp?r=2223>
-}
{#fun btCompoundShape_m_dynamicAabbTree_set    `( BtCompoundShapeClass bc , BtDbvtClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.h?r=2223#60>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.cpp?r=2223>
-}
{#fun btCompoundShape_m_dynamicAabbTree_get    `( BtCompoundShapeClass bc )' =>     { withBt* `bc'  } ->  `BtDbvt'  mkBtDbvt* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.h?r=2223#63>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.cpp?r=2223>
-}
{#fun btCompoundShape_m_updateRevision_set    `( BtCompoundShapeClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.h?r=2223#63>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.cpp?r=2223>
-}
{#fun btCompoundShape_m_updateRevision_get    `( BtCompoundShapeClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.h?r=2223#65>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.cpp?r=2223>
-}
{#fun btCompoundShape_m_collisionMargin_set    `( BtCompoundShapeClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.h?r=2223#65>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.cpp?r=2223>
-}
{#fun btCompoundShape_m_collisionMargin_get    `( BtCompoundShapeClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.h?r=2223#68>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.cpp?r=2223>
-}
{#fun btCompoundShape_m_localScaling_set    `( BtCompoundShapeClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.h?r=2223#68>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.cpp?r=2223>
-}
{#fun btCompoundShape_m_localScaling_get    `( BtCompoundShapeClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
-- * btCompoundShapeChild
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.h?r=2223#31>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.cpp?r=2223>
-}
{#fun btCompoundShapeChild_new as btCompoundShapeChild    {  } -> `BtCompoundShapeChild' mkBtCompoundShapeChild* #}
{#fun btCompoundShapeChild_free    `( BtCompoundShapeChildClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.h?r=2223#37>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.cpp?r=2223>
-}
{#fun btCompoundShapeChild_m_childMargin_set    `( BtCompoundShapeChildClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.h?r=2223#37>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.cpp?r=2223>
-}
{#fun btCompoundShapeChild_m_childMargin_get    `( BtCompoundShapeChildClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.h?r=2223#35>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.cpp?r=2223>
-}
{#fun btCompoundShapeChild_m_childShape_set    `( BtCompoundShapeChildClass bc , BtCollisionShapeClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.h?r=2223#35>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.cpp?r=2223>
-}
{#fun btCompoundShapeChild_m_childShape_get    `( BtCompoundShapeChildClass bc )' =>     { withBt* `bc'  } ->  `BtCollisionShape'  mkBtCollisionShape* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.h?r=2223#36>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.cpp?r=2223>
-}
{#fun btCompoundShapeChild_m_childShapeType_set    `( BtCompoundShapeChildClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.h?r=2223#36>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.cpp?r=2223>
-}
{#fun btCompoundShapeChild_m_childShapeType_get    `( BtCompoundShapeChildClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.h?r=2223#38>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.cpp?r=2223>
-}
{#fun btCompoundShapeChild_m_node_set    `( BtCompoundShapeChildClass bc , BtDbvtNodeClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.h?r=2223#38>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.cpp?r=2223>
-}
{#fun btCompoundShapeChild_m_node_get    `( BtCompoundShapeChildClass bc )' =>     { withBt* `bc'  } ->  `BtDbvtNode'  mkBtDbvtNode* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.h?r=2223#34>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.cpp?r=2223>
-}
{#fun btCompoundShapeChild_m_transform_set    `( BtCompoundShapeChildClass bc )' =>     { withBt* `bc' , withTransform* `Transform'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.h?r=2223#34>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.cpp?r=2223>
-}
{#fun btCompoundShapeChild_m_transform_get    `( BtCompoundShapeChildClass bc )' =>     { withBt* `bc' , allocaTransform-  `Transform'  peekTransform* } -> `()' #}
-- * btCompoundShapeChildData
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.h?r=2223#180>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.cpp?r=2223>
-}
{#fun btCompoundShapeChildData_new as btCompoundShapeChildData    {  } -> `BtCompoundShapeChildData' mkBtCompoundShapeChildData* #}
{#fun btCompoundShapeChildData_free    `( BtCompoundShapeChildDataClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.h?r=2223#181>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.cpp?r=2223>
-}
{#fun btCompoundShapeChildData_m_transform_set    `( BtCompoundShapeChildDataClass bc , BtTransformFloatDataClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.h?r=2223#181>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.cpp?r=2223>
-}
{#fun btCompoundShapeChildData_m_transform_get    `( BtCompoundShapeChildDataClass bc )' =>     { withBt* `bc'  } ->  `BtTransformFloatData'  mkBtTransformFloatData* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.h?r=2223#182>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.cpp?r=2223>
-}
{#fun btCompoundShapeChildData_m_childShape_set    `( BtCompoundShapeChildDataClass bc , BtCollisionShapeDataClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.h?r=2223#182>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.cpp?r=2223>
-}
{#fun btCompoundShapeChildData_m_childShape_get    `( BtCompoundShapeChildDataClass bc )' =>     { withBt* `bc'  } ->  `BtCollisionShapeData'  mkBtCollisionShapeData* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.h?r=2223#183>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.cpp?r=2223>
-}
{#fun btCompoundShapeChildData_m_childShapeType_set    `( BtCompoundShapeChildDataClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.h?r=2223#183>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.cpp?r=2223>
-}
{#fun btCompoundShapeChildData_m_childShapeType_get    `( BtCompoundShapeChildDataClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.h?r=2223#184>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.cpp?r=2223>
-}
{#fun btCompoundShapeChildData_m_childMargin_set    `( BtCompoundShapeChildDataClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.h?r=2223#184>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.cpp?r=2223>
-}
{#fun btCompoundShapeChildData_m_childMargin_get    `( BtCompoundShapeChildDataClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
-- * btCompoundShapeData
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.h?r=2223#189>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.cpp?r=2223>
-}
{#fun btCompoundShapeData_new as btCompoundShapeData    {  } -> `BtCompoundShapeData' mkBtCompoundShapeData* #}
{#fun btCompoundShapeData_free    `( BtCompoundShapeDataClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.h?r=2223#190>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.cpp?r=2223>
-}
{#fun btCompoundShapeData_m_collisionShapeData_set    `( BtCompoundShapeDataClass bc , BtCollisionShapeDataClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.h?r=2223#190>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.cpp?r=2223>
-}
{#fun btCompoundShapeData_m_collisionShapeData_get    `( BtCompoundShapeDataClass bc )' =>     { withBt* `bc'  } ->  `BtCollisionShapeData'  mkBtCollisionShapeData* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.h?r=2223#192>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.cpp?r=2223>
-}
{#fun btCompoundShapeData_m_childShapePtr_set    `( BtCompoundShapeDataClass bc , BtCompoundShapeChildDataClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.h?r=2223#192>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.cpp?r=2223>
-}
{#fun btCompoundShapeData_m_childShapePtr_get    `( BtCompoundShapeDataClass bc )' =>     { withBt* `bc'  } ->  `BtCompoundShapeChildData'  mkBtCompoundShapeChildData* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.h?r=2223#194>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.cpp?r=2223>
-}
{#fun btCompoundShapeData_m_numChildShapes_set    `( BtCompoundShapeDataClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.h?r=2223#194>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.cpp?r=2223>
-}
{#fun btCompoundShapeData_m_numChildShapes_get    `( BtCompoundShapeDataClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.h?r=2223#196>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.cpp?r=2223>
-}
{#fun btCompoundShapeData_m_collisionMargin_set    `( BtCompoundShapeDataClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.h?r=2223#196>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCompoundShape.cpp?r=2223>
-}
{#fun btCompoundShapeData_m_collisionMargin_get    `( BtCompoundShapeDataClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
-- * btConcaveShape
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConcaveShape.h?r=2223#46>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConcaveShape.cpp?r=2223>
-}
{#fun btConcaveShape_processAllTriangles as btConcaveShape_processAllTriangles    `( BtConcaveShapeClass bc , BtTriangleCallbackClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ callback
, withVec3* `Vec3'  peekVec3* -- ^ aabbMin
, withVec3* `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConcaveShape.h?r=2223#46>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConcaveShape.cpp?r=2223>
-}
{#fun btConcaveShape_processAllTriangles as btConcaveShape_processAllTriangles'    `( BtConcaveShapeClass bc , BtTriangleCallbackClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ callback
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMin
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConcaveShape.h?r=2223#51>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConcaveShape.cpp?r=2223>
-}
{#fun btConcaveShape_setMargin as btConcaveShape_setMargin    `( BtConcaveShapeClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ collisionMargin
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConcaveShape.h?r=2223#48>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConcaveShape.cpp?r=2223>
-}
{#fun btConcaveShape_getMargin as btConcaveShape_getMargin    `( BtConcaveShapeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConcaveShape.h?r=2223#39>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConcaveShape.cpp?r=2223>
-}
{#fun btConcaveShape_m_collisionMargin_set    `( BtConcaveShapeClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConcaveShape.h?r=2223#39>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConcaveShape.cpp?r=2223>
-}
{#fun btConcaveShape_m_collisionMargin_get    `( BtConcaveShapeClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
-- * btConeShape
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConeShape.h?r=2223#35>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConeShape.cpp?r=2223>
-}
{#fun btConeShape_new as btConeShape    {   `Float' ,  `Float'  } -> `BtConeShape' mkBtConeShape* #}
{#fun btConeShape_free    `( BtConeShapeClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConeShape.h?r=2223#45>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConeShape.cpp?r=2223>
-}
{#fun btConeShape_calculateLocalInertia as btConeShape_calculateLocalInertia    `( BtConeShapeClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ mass
, withVec3* `Vec3'  peekVec3* -- ^ inertia
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConeShape.h?r=2223#45>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConeShape.cpp?r=2223>
-}
{#fun btConeShape_calculateLocalInertia as btConeShape_calculateLocalInertia'    `( BtConeShapeClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ mass
, allocaVec3-  `Vec3'  peekVec3* -- ^ inertia
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConeShape.h?r=2223#37>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConeShape.cpp?r=2223>
-}
{#fun btConeShape_localGetSupportingVertex as btConeShape_localGetSupportingVertex    `( BtConeShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ vec
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConeShape.h?r=2223#37>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConeShape.cpp?r=2223>
-}
{#fun btConeShape_localGetSupportingVertex as btConeShape_localGetSupportingVertex'    `( BtConeShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ vec
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConeShape.h?r=2223#80>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConeShape.cpp?r=2223>
-}
{#fun btConeShape_getConeUpIndex as btConeShape_getConeUpIndex    `( BtConeShapeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConeShape.h?r=2223#72>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConeShape.cpp?r=2223>
-}
{#fun btConeShape_getName as btConeShape_getName    `( BtConeShapeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `String'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConeShape.h?r=2223#42>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConeShape.cpp?r=2223>
-}
{#fun btConeShape_getHeight as btConeShape_getHeight    `( BtConeShapeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConeShape.h?r=2223#78>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConeShape.cpp?r=2223>
-}
{#fun btConeShape_setConeUpIndex as btConeShape_setConeUpIndex    `( BtConeShapeClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ upIndex
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConeShape.h?r=2223#85>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConeShape.cpp?r=2223>
-}
{#fun btConeShape_setLocalScaling as btConeShape_setLocalScaling    `( BtConeShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ scaling
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConeShape.h?r=2223#85>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConeShape.cpp?r=2223>
-}
{#fun btConeShape_setLocalScaling as btConeShape_setLocalScaling'    `( BtConeShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ scaling
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConeShape.h?r=2223#38>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConeShape.cpp?r=2223>
-}
{#fun btConeShape_localGetSupportingVertexWithoutMargin as btConeShape_localGetSupportingVertexWithoutMargin    `( BtConeShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ vec
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConeShape.h?r=2223#38>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConeShape.cpp?r=2223>
-}
{#fun btConeShape_localGetSupportingVertexWithoutMargin as btConeShape_localGetSupportingVertexWithoutMargin'    `( BtConeShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ vec
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConeShape.h?r=2223#41>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConeShape.cpp?r=2223>
-}
{#fun btConeShape_getRadius as btConeShape_getRadius    `( BtConeShapeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Float'   #}
-- * btConeShapeX
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConeShape.h?r=2223#93>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConeShape.cpp?r=2223>
-}
{#fun btConeShapeX_new as btConeShapeX    {   `Float' ,  `Float'  } -> `BtConeShapeX' mkBtConeShapeX* #}
{#fun btConeShapeX_free    `( BtConeShapeXClass bc )' =>     { withBt* `bc'  } -> `()' #}
-- * btConeShapeZ
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConeShape.h?r=2223#100>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConeShape.cpp?r=2223>
-}
{#fun btConeShapeZ_new as btConeShapeZ    {   `Float' ,  `Float'  } -> `BtConeShapeZ' mkBtConeShapeZ* #}
{#fun btConeShapeZ_free    `( BtConeShapeZClass bc )' =>     { withBt* `bc'  } -> `()' #}
-- * btConvexHullShape
{#fun btConvexHullShape_free    `( BtConvexHullShapeClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexHullShape.h?r=2223#39>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexHullShape.cpp?r=2223>
-}
{#fun btConvexHullShape_addPoint as btConvexHullShape_addPoint    `( BtConvexHullShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ point
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexHullShape.h?r=2223#39>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexHullShape.cpp?r=2223>
-}
{#fun btConvexHullShape_addPoint as btConvexHullShape_addPoint'    `( BtConvexHullShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ point
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexHullShape.h?r=2223#71>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexHullShape.cpp?r=2223>
-}
{#fun btConvexHullShape_localGetSupportingVertex as btConvexHullShape_localGetSupportingVertex    `( BtConvexHullShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ vec
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexHullShape.h?r=2223#71>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexHullShape.cpp?r=2223>
-}
{#fun btConvexHullShape_localGetSupportingVertex as btConvexHullShape_localGetSupportingVertex'    `( BtConvexHullShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ vec
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexHullShape.h?r=2223#115>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexHullShape.cpp?r=2223>
-}
{#fun btConvexHullShape_calculateSerializeBufferSize as btConvexHullShape_calculateSerializeBufferSize    `( BtConvexHullShapeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexHullShape.h?r=2223#61>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexHullShape.cpp?r=2223>
-}
{#fun btConvexHullShape_getScaledPoint as btConvexHullShape_getScaledPoint    `( BtConvexHullShapeClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ i
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexHullShape.h?r=2223#87>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexHullShape.cpp?r=2223>
-}
{#fun btConvexHullShape_getNumPlanes as btConvexHullShape_getNumPlanes    `( BtConvexHullShapeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexHullShape.h?r=2223#84>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexHullShape.cpp?r=2223>
-}
{#fun btConvexHullShape_getNumEdges as btConvexHullShape_getNumEdges    `( BtConvexHullShapeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexHullShape.h?r=2223#80>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexHullShape.cpp?r=2223>
-}
{#fun btConvexHullShape_getName as btConvexHullShape_getName    `( BtConvexHullShapeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `String'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexHullShape.h?r=2223#86>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexHullShape.cpp?r=2223>
-}
{#fun btConvexHullShape_getVertex as btConvexHullShape_getVertex    `( BtConvexHullShapeClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ i
, withVec3* `Vec3'  peekVec3* -- ^ vtx
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexHullShape.h?r=2223#86>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexHullShape.cpp?r=2223>
-}
{#fun btConvexHullShape_getVertex as btConvexHullShape_getVertex'    `( BtConvexHullShapeClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ i
, allocaVec3-  `Vec3'  peekVec3* -- ^ vtx
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexHullShape.h?r=2223#85>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexHullShape.cpp?r=2223>
-}
{#fun btConvexHullShape_getEdge as btConvexHullShape_getEdge    `( BtConvexHullShapeClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ i
, withVec3* `Vec3'  peekVec3* -- ^ pa
, withVec3* `Vec3'  peekVec3* -- ^ pb
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexHullShape.h?r=2223#85>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexHullShape.cpp?r=2223>
-}
{#fun btConvexHullShape_getEdge as btConvexHullShape_getEdge'    `( BtConvexHullShapeClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ i
, allocaVec3-  `Vec3'  peekVec3* -- ^ pa
, allocaVec3-  `Vec3'  peekVec3* -- ^ pb
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexHullShape.h?r=2223#72>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexHullShape.cpp?r=2223>
-}
{#fun btConvexHullShape_localGetSupportingVertexWithoutMargin as btConvexHullShape_localGetSupportingVertexWithoutMargin    `( BtConvexHullShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ vec
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexHullShape.h?r=2223#72>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexHullShape.cpp?r=2223>
-}
{#fun btConvexHullShape_localGetSupportingVertexWithoutMargin as btConvexHullShape_localGetSupportingVertexWithoutMargin'    `( BtConvexHullShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ vec
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexHullShape.h?r=2223#89>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexHullShape.cpp?r=2223>
-}
{#fun btConvexHullShape_isInside as btConvexHullShape_isInside    `( BtConvexHullShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ pt
,  `Float'  -- ^ tolerance
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexHullShape.h?r=2223#89>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexHullShape.cpp?r=2223>
-}
{#fun btConvexHullShape_isInside as btConvexHullShape_isInside'    `( BtConvexHullShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ pt
,  `Float'  -- ^ tolerance
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexHullShape.h?r=2223#88>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexHullShape.cpp?r=2223>
-}
{#fun btConvexHullShape_getPlane as btConvexHullShape_getPlane    `( BtConvexHullShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ planeNormal
, withVec3* `Vec3'  peekVec3* -- ^ planeSupport
,  `Int'  -- ^ i
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexHullShape.h?r=2223#88>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexHullShape.cpp?r=2223>
-}
{#fun btConvexHullShape_getPlane as btConvexHullShape_getPlane'    `( BtConvexHullShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ planeNormal
, allocaVec3-  `Vec3'  peekVec3* -- ^ planeSupport
,  `Int'  -- ^ i
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexHullShape.h?r=2223#92>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexHullShape.cpp?r=2223>
-}
{#fun btConvexHullShape_setLocalScaling as btConvexHullShape_setLocalScaling    `( BtConvexHullShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ scaling
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexHullShape.h?r=2223#92>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexHullShape.cpp?r=2223>
-}
{#fun btConvexHullShape_setLocalScaling as btConvexHullShape_setLocalScaling'    `( BtConvexHullShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ scaling
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexHullShape.h?r=2223#83>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexHullShape.cpp?r=2223>
-}
{#fun btConvexHullShape_getNumVertices as btConvexHullShape_getNumVertices    `( BtConvexHullShapeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexHullShape.h?r=2223#97>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexHullShape.cpp?r=2223>
-}
{#fun btConvexHullShape_serialize as btConvexHullShape_serialize    `( BtConvexHullShapeClass bc , BtSerializerClass p1 )' =>     { withBt* `bc'  -- ^ 
, withVoidPtr* `VoidPtr'  -- ^ dataBuffer
, withBt* `p1'  -- ^ serializer
 } ->  `String'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexHullShape.h?r=2223#66>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexHullShape.cpp?r=2223>
-}
{#fun btConvexHullShape_getNumPoints as btConvexHullShape_getNumPoints    `( BtConvexHullShapeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexHullShape.h?r=2223#28>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexHullShape.cpp?r=2223>
-}
{#fun btConvexHullShape_m_unscaledPoints_set    `( BtConvexHullShapeClass bc , BtAlignedObjectArray_btVector3_Class a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexHullShape.h?r=2223#28>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexHullShape.cpp?r=2223>
-}
{#fun btConvexHullShape_m_unscaledPoints_get    `( BtConvexHullShapeClass bc )' =>     { withBt* `bc'  } ->  `BtAlignedObjectArray_btVector3_'  mkBtAlignedObjectArray_btVector3_* #}
-- * btConvexHullShapeData
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexHullShape.h?r=2223#103>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexHullShape.cpp?r=2223>
-}
{#fun btConvexHullShapeData_new as btConvexHullShapeData    {  } -> `BtConvexHullShapeData' mkBtConvexHullShapeData* #}
{#fun btConvexHullShapeData_free    `( BtConvexHullShapeDataClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexHullShape.h?r=2223#104>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexHullShape.cpp?r=2223>
-}
{#fun btConvexHullShapeData_m_convexInternalShapeData_set    `( BtConvexHullShapeDataClass bc , BtConvexInternalShapeDataClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexHullShape.h?r=2223#104>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexHullShape.cpp?r=2223>
-}
{#fun btConvexHullShapeData_m_convexInternalShapeData_get    `( BtConvexHullShapeDataClass bc )' =>     { withBt* `bc'  } ->  `BtConvexInternalShapeData'  mkBtConvexInternalShapeData* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexHullShape.h?r=2223#106>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexHullShape.cpp?r=2223>
-}
{#fun btConvexHullShapeData_m_unscaledPointsFloatPtr_set    `( BtConvexHullShapeDataClass bc , BtVector3FloatDataClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexHullShape.h?r=2223#106>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexHullShape.cpp?r=2223>
-}
{#fun btConvexHullShapeData_m_unscaledPointsFloatPtr_get    `( BtConvexHullShapeDataClass bc )' =>     { withBt* `bc'  } ->  `BtVector3FloatData'  mkBtVector3FloatData* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexHullShape.h?r=2223#107>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexHullShape.cpp?r=2223>
-}
{#fun btConvexHullShapeData_m_unscaledPointsDoublePtr_set    `( BtConvexHullShapeDataClass bc , BtVector3DoubleDataClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexHullShape.h?r=2223#107>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexHullShape.cpp?r=2223>
-}
{#fun btConvexHullShapeData_m_unscaledPointsDoublePtr_get    `( BtConvexHullShapeDataClass bc )' =>     { withBt* `bc'  } ->  `BtVector3DoubleData'  mkBtVector3DoubleData* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexHullShape.h?r=2223#109>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexHullShape.cpp?r=2223>
-}
{#fun btConvexHullShapeData_m_numUnscaledPoints_set    `( BtConvexHullShapeDataClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexHullShape.h?r=2223#109>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexHullShape.cpp?r=2223>
-}
{#fun btConvexHullShapeData_m_numUnscaledPoints_get    `( BtConvexHullShapeDataClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
-- * btConvexInternalAabbCachingShape
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexInternalShape.h?r=2223#192>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexInternalShape.cpp?r=2223>
-}
{#fun btConvexInternalAabbCachingShape_setCachedLocalAabb as btConvexInternalAabbCachingShape_setCachedLocalAabb    `( BtConvexInternalAabbCachingShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ aabbMin
, withVec3* `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexInternalShape.h?r=2223#192>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexInternalShape.cpp?r=2223>
-}
{#fun btConvexInternalAabbCachingShape_setCachedLocalAabb as btConvexInternalAabbCachingShape_setCachedLocalAabb'    `( BtConvexInternalAabbCachingShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMin
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexInternalShape.h?r=2223#220>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexInternalShape.cpp?r=2223>
-}
{#fun btConvexInternalAabbCachingShape_recalcLocalAabb as btConvexInternalAabbCachingShape_recalcLocalAabb    `( BtConvexInternalAabbCachingShapeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexInternalShape.h?r=2223#216>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexInternalShape.cpp?r=2223>
-}
{#fun btConvexInternalAabbCachingShape_setLocalScaling as btConvexInternalAabbCachingShape_setLocalScaling    `( BtConvexInternalAabbCachingShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ scaling
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexInternalShape.h?r=2223#216>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexInternalShape.cpp?r=2223>
-}
{#fun btConvexInternalAabbCachingShape_setLocalScaling as btConvexInternalAabbCachingShape_setLocalScaling'    `( BtConvexInternalAabbCachingShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ scaling
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexInternalShape.h?r=2223#206>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexInternalShape.cpp?r=2223>
-}
{#fun btConvexInternalAabbCachingShape_getNonvirtualAabb as btConvexInternalAabbCachingShape_getNonvirtualAabb    `( BtConvexInternalAabbCachingShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, withTransform* `Transform'  peekTransform* -- ^ trans
, withVec3* `Vec3'  peekVec3* -- ^ aabbMin
, withVec3* `Vec3'  peekVec3* -- ^ aabbMax
,  `Float'  -- ^ margin
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexInternalShape.h?r=2223#206>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexInternalShape.cpp?r=2223>
-}
{#fun btConvexInternalAabbCachingShape_getNonvirtualAabb as btConvexInternalAabbCachingShape_getNonvirtualAabb'    `( BtConvexInternalAabbCachingShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaTransform-  `Transform'  peekTransform* -- ^ trans
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMin
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMax
,  `Float'  -- ^ margin
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexInternalShape.h?r=2223#199>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexInternalShape.cpp?r=2223>
-}
{#fun btConvexInternalAabbCachingShape_getCachedLocalAabb as btConvexInternalAabbCachingShape_getCachedLocalAabb    `( BtConvexInternalAabbCachingShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ aabbMin
, withVec3* `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexInternalShape.h?r=2223#199>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexInternalShape.cpp?r=2223>
-}
{#fun btConvexInternalAabbCachingShape_getCachedLocalAabb as btConvexInternalAabbCachingShape_getCachedLocalAabb'    `( BtConvexInternalAabbCachingShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMin
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexInternalShape.h?r=2223#218>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexInternalShape.cpp?r=2223>
-}
{#fun btConvexInternalAabbCachingShape_getAabb as btConvexInternalAabbCachingShape_getAabb    `( BtConvexInternalAabbCachingShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, withTransform* `Transform'  peekTransform* -- ^ t
, withVec3* `Vec3'  peekVec3* -- ^ aabbMin
, withVec3* `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexInternalShape.h?r=2223#218>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexInternalShape.cpp?r=2223>
-}
{#fun btConvexInternalAabbCachingShape_getAabb as btConvexInternalAabbCachingShape_getAabb'    `( BtConvexInternalAabbCachingShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaTransform-  `Transform'  peekTransform* -- ^ t
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMin
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexInternalShape.h?r=2223#184>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexInternalShape.cpp?r=2223>
-}
{#fun btConvexInternalAabbCachingShape_m_localAabbMin_set    `( BtConvexInternalAabbCachingShapeClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexInternalShape.h?r=2223#184>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexInternalShape.cpp?r=2223>
-}
{#fun btConvexInternalAabbCachingShape_m_localAabbMin_get    `( BtConvexInternalAabbCachingShapeClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexInternalShape.h?r=2223#185>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexInternalShape.cpp?r=2223>
-}
{#fun btConvexInternalAabbCachingShape_m_localAabbMax_set    `( BtConvexInternalAabbCachingShapeClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexInternalShape.h?r=2223#185>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexInternalShape.cpp?r=2223>
-}
{#fun btConvexInternalAabbCachingShape_m_localAabbMax_get    `( BtConvexInternalAabbCachingShapeClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexInternalShape.h?r=2223#186>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexInternalShape.cpp?r=2223>
-}
{#fun btConvexInternalAabbCachingShape_m_isLocalAabbValid_set    `( BtConvexInternalAabbCachingShapeClass bc )' =>     { withBt* `bc' ,  `Bool'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexInternalShape.h?r=2223#186>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexInternalShape.cpp?r=2223>
-}
{#fun btConvexInternalAabbCachingShape_m_isLocalAabbValid_get    `( BtConvexInternalAabbCachingShapeClass bc )' =>     { withBt* `bc'  } ->  `Bool'   #}
-- * btConvexInternalShape
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexInternalShape.h?r=2223#54>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexInternalShape.cpp?r=2223>
-}
{#fun btConvexInternalShape_localGetSupportingVertex as btConvexInternalShape_localGetSupportingVertex    `( BtConvexInternalShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ vec
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexInternalShape.h?r=2223#54>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexInternalShape.cpp?r=2223>
-}
{#fun btConvexInternalShape_localGetSupportingVertex as btConvexInternalShape_localGetSupportingVertex'    `( BtConvexInternalShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ vec
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexInternalShape.h?r=2223#160>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexInternalShape.cpp?r=2223>
-}
{#fun btConvexInternalShape_calculateSerializeBufferSize as btConvexInternalShape_calculateSerializeBufferSize    `( BtConvexInternalShapeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexInternalShape.h?r=2223#56>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexInternalShape.cpp?r=2223>
-}
{#fun btConvexInternalShape_getImplicitShapeDimensions as btConvexInternalShape_getImplicitShapeDimensions    `( BtConvexInternalShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexInternalShape.h?r=2223#166>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexInternalShape.cpp?r=2223>
-}
{#fun btConvexInternalShape_serialize as btConvexInternalShape_serialize    `( BtConvexInternalShapeClass bc , BtSerializerClass p1 )' =>     { withBt* `bc'  -- ^ 
, withVoidPtr* `VoidPtr'  -- ^ dataBuffer
, withBt* `p1'  -- ^ serializer
 } ->  `String'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexInternalShape.h?r=2223#104>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexInternalShape.cpp?r=2223>
-}
{#fun btConvexInternalShape_getLocalScalingNV as btConvexInternalShape_getLocalScalingNV    `( BtConvexInternalShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexInternalShape.h?r=2223#95>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexInternalShape.cpp?r=2223>
-}
{#fun btConvexInternalShape_getAabbSlow as btConvexInternalShape_getAabbSlow    `( BtConvexInternalShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, withTransform* `Transform'  peekTransform* -- ^ t
, withVec3* `Vec3'  peekVec3* -- ^ aabbMin
, withVec3* `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexInternalShape.h?r=2223#95>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexInternalShape.cpp?r=2223>
-}
{#fun btConvexInternalShape_getAabbSlow as btConvexInternalShape_getAabbSlow'    `( BtConvexInternalShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaTransform-  `Transform'  peekTransform* -- ^ t
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMin
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexInternalShape.h?r=2223#99>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexInternalShape.cpp?r=2223>
-}
{#fun btConvexInternalShape_getLocalScaling as btConvexInternalShape_getLocalScaling    `( BtConvexInternalShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexInternalShape.h?r=2223#128>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexInternalShape.cpp?r=2223>
-}
{#fun btConvexInternalShape_getPreferredPenetrationDirection as btConvexInternalShape_getPreferredPenetrationDirection    `( BtConvexInternalShapeClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ index
, withVec3* `Vec3'  peekVec3* -- ^ penetrationVector
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexInternalShape.h?r=2223#128>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexInternalShape.cpp?r=2223>
-}
{#fun btConvexInternalShape_getPreferredPenetrationDirection as btConvexInternalShape_getPreferredPenetrationDirection'    `( BtConvexInternalShapeClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ index
, allocaVec3-  `Vec3'  peekVec3* -- ^ penetrationVector
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexInternalShape.h?r=2223#98>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexInternalShape.cpp?r=2223>
-}
{#fun btConvexInternalShape_setLocalScaling as btConvexInternalShape_setLocalScaling    `( BtConvexInternalShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ scaling
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexInternalShape.h?r=2223#98>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexInternalShape.cpp?r=2223>
-}
{#fun btConvexInternalShape_setLocalScaling as btConvexInternalShape_setLocalScaling'    `( BtConvexInternalShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ scaling
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexInternalShape.h?r=2223#123>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexInternalShape.cpp?r=2223>
-}
{#fun btConvexInternalShape_getNumPreferredPenetrationDirections as btConvexInternalShape_getNumPreferredPenetrationDirections    `( BtConvexInternalShapeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexInternalShape.h?r=2223#88>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexInternalShape.cpp?r=2223>
-}
{#fun btConvexInternalShape_getAabb as btConvexInternalShape_getAabb    `( BtConvexInternalShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, withTransform* `Transform'  peekTransform* -- ^ t
, withVec3* `Vec3'  peekVec3* -- ^ aabbMin
, withVec3* `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexInternalShape.h?r=2223#88>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexInternalShape.cpp?r=2223>
-}
{#fun btConvexInternalShape_getAabb as btConvexInternalShape_getAabb'    `( BtConvexInternalShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaTransform-  `Transform'  peekTransform* -- ^ t
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMin
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexInternalShape.h?r=2223#109>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexInternalShape.cpp?r=2223>
-}
{#fun btConvexInternalShape_setMargin as btConvexInternalShape_setMargin    `( BtConvexInternalShapeClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ margin
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexInternalShape.h?r=2223#118>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexInternalShape.cpp?r=2223>
-}
{#fun btConvexInternalShape_getMarginNV as btConvexInternalShape_getMarginNV    `( BtConvexInternalShapeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexInternalShape.h?r=2223#113>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexInternalShape.cpp?r=2223>
-}
{#fun btConvexInternalShape_getMargin as btConvexInternalShape_getMargin    `( BtConvexInternalShapeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexInternalShape.h?r=2223#70>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexInternalShape.cpp?r=2223>
-}
{#fun btConvexInternalShape_setSafeMargin0 as btConvexInternalShape_setSafeMargin    `( BtConvexInternalShapeClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ minDimension
,  `Float'  -- ^ defaultMarginMultiplier
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexInternalShape.h?r=2223#70>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexInternalShape.cpp?r=2223>
-}
{#fun btConvexInternalShape_setSafeMargin0 as btConvexInternalShape_setSafeMargin0    `( BtConvexInternalShapeClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ minDimension
,  `Float'  -- ^ defaultMarginMultiplier
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexInternalShape.h?r=2223#78>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexInternalShape.cpp?r=2223>
-}
{#fun btConvexInternalShape_setSafeMargin1 as btConvexInternalShape_setSafeMargin1    `( BtConvexInternalShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ halfExtents
,  `Float'  -- ^ defaultMarginMultiplier
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexInternalShape.h?r=2223#78>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexInternalShape.cpp?r=2223>
-}
{#fun btConvexInternalShape_setSafeMargin1 as btConvexInternalShape_setSafeMargin1'    `( BtConvexInternalShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ halfExtents
,  `Float'  -- ^ defaultMarginMultiplier
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexInternalShape.h?r=2223#65>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexInternalShape.cpp?r=2223>
-}
{#fun btConvexInternalShape_setImplicitShapeDimensions as btConvexInternalShape_setImplicitShapeDimensions    `( BtConvexInternalShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ dimensions
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexInternalShape.h?r=2223#65>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexInternalShape.cpp?r=2223>
-}
{#fun btConvexInternalShape_setImplicitShapeDimensions as btConvexInternalShape_setImplicitShapeDimensions'    `( BtConvexInternalShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ dimensions
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexInternalShape.h?r=2223#35>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexInternalShape.cpp?r=2223>
-}
{#fun btConvexInternalShape_m_localScaling_set    `( BtConvexInternalShapeClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexInternalShape.h?r=2223#35>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexInternalShape.cpp?r=2223>
-}
{#fun btConvexInternalShape_m_localScaling_get    `( BtConvexInternalShapeClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexInternalShape.h?r=2223#37>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexInternalShape.cpp?r=2223>
-}
{#fun btConvexInternalShape_m_implicitShapeDimensions_set    `( BtConvexInternalShapeClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexInternalShape.h?r=2223#37>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexInternalShape.cpp?r=2223>
-}
{#fun btConvexInternalShape_m_implicitShapeDimensions_get    `( BtConvexInternalShapeClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexInternalShape.h?r=2223#39>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexInternalShape.cpp?r=2223>
-}
{#fun btConvexInternalShape_m_collisionMargin_set    `( BtConvexInternalShapeClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexInternalShape.h?r=2223#39>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexInternalShape.cpp?r=2223>
-}
{#fun btConvexInternalShape_m_collisionMargin_get    `( BtConvexInternalShapeClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexInternalShape.h?r=2223#41>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexInternalShape.cpp?r=2223>
-}
{#fun btConvexInternalShape_m_padding_set    `( BtConvexInternalShapeClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexInternalShape.h?r=2223#41>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexInternalShape.cpp?r=2223>
-}
{#fun btConvexInternalShape_m_padding_get    `( BtConvexInternalShapeClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
-- * btConvexInternalShapeData
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexInternalShape.h?r=2223#145>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexInternalShape.cpp?r=2223>
-}
{#fun btConvexInternalShapeData_new as btConvexInternalShapeData    {  } -> `BtConvexInternalShapeData' mkBtConvexInternalShapeData* #}
{#fun btConvexInternalShapeData_free    `( BtConvexInternalShapeDataClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexInternalShape.h?r=2223#152>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexInternalShape.cpp?r=2223>
-}
{#fun btConvexInternalShapeData_m_collisionMargin_set    `( BtConvexInternalShapeDataClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexInternalShape.h?r=2223#152>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexInternalShape.cpp?r=2223>
-}
{#fun btConvexInternalShapeData_m_collisionMargin_get    `( BtConvexInternalShapeDataClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexInternalShape.h?r=2223#146>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexInternalShape.cpp?r=2223>
-}
{#fun btConvexInternalShapeData_m_collisionShapeData_set    `( BtConvexInternalShapeDataClass bc , BtCollisionShapeDataClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexInternalShape.h?r=2223#146>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexInternalShape.cpp?r=2223>
-}
{#fun btConvexInternalShapeData_m_collisionShapeData_get    `( BtConvexInternalShapeDataClass bc )' =>     { withBt* `bc'  } ->  `BtCollisionShapeData'  mkBtCollisionShapeData* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexInternalShape.h?r=2223#150>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexInternalShape.cpp?r=2223>
-}
{#fun btConvexInternalShapeData_m_implicitShapeDimensions_set    `( BtConvexInternalShapeDataClass bc , BtVector3FloatDataClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexInternalShape.h?r=2223#150>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexInternalShape.cpp?r=2223>
-}
{#fun btConvexInternalShapeData_m_implicitShapeDimensions_get    `( BtConvexInternalShapeDataClass bc )' =>     { withBt* `bc'  } ->  `BtVector3FloatData'  mkBtVector3FloatData* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexInternalShape.h?r=2223#148>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexInternalShape.cpp?r=2223>
-}
{#fun btConvexInternalShapeData_m_localScaling_set    `( BtConvexInternalShapeDataClass bc , BtVector3FloatDataClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexInternalShape.h?r=2223#148>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexInternalShape.cpp?r=2223>
-}
{#fun btConvexInternalShapeData_m_localScaling_get    `( BtConvexInternalShapeDataClass bc )' =>     { withBt* `bc'  } ->  `BtVector3FloatData'  mkBtVector3FloatData* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexInternalShape.h?r=2223#154>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexInternalShape.cpp?r=2223>
-}
{#fun btConvexInternalShapeData_m_padding_set    `( BtConvexInternalShapeDataClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexInternalShape.h?r=2223#154>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexInternalShape.cpp?r=2223>
-}
{#fun btConvexInternalShapeData_m_padding_get    `( BtConvexInternalShapeDataClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
-- * btConvexShape
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexShape.h?r=2223#53>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexShape.cpp?r=2223>
-}
{#fun btConvexShape_getAabbNonVirtual as btConvexShape_getAabbNonVirtual    `( BtConvexShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, withTransform* `Transform'  peekTransform* -- ^ t
, withVec3* `Vec3'  peekVec3* -- ^ aabbMin
, withVec3* `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexShape.h?r=2223#53>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexShape.cpp?r=2223>
-}
{#fun btConvexShape_getAabbNonVirtual as btConvexShape_getAabbNonVirtual'    `( BtConvexShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaTransform-  `Transform'  peekTransform* -- ^ t
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMin
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexShape.h?r=2223#43>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexShape.cpp?r=2223>
-}
{#fun btConvexShape_localGetSupportingVertex as btConvexShape_localGetSupportingVertex    `( BtConvexShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ vec
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexShape.h?r=2223#43>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexShape.cpp?r=2223>
-}
{#fun btConvexShape_localGetSupportingVertex as btConvexShape_localGetSupportingVertex'    `( BtConvexShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ vec
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexShape.h?r=2223#71>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexShape.cpp?r=2223>
-}
{#fun btConvexShape_getMargin as btConvexShape_getMargin    `( BtConvexShapeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexShape.h?r=2223#50>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexShape.cpp?r=2223>
-}
{#fun btConvexShape_localGetSupportVertexWithoutMarginNonVirtual as btConvexShape_localGetSupportVertexWithoutMarginNonVirtual    `( BtConvexShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ vec
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexShape.h?r=2223#50>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexShape.cpp?r=2223>
-}
{#fun btConvexShape_localGetSupportVertexWithoutMarginNonVirtual as btConvexShape_localGetSupportVertexWithoutMarginNonVirtual'    `( BtConvexShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ vec
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexShape.h?r=2223#67>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexShape.cpp?r=2223>
-}
{#fun btConvexShape_getLocalScaling as btConvexShape_getLocalScaling    `( BtConvexShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexShape.h?r=2223#75>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexShape.cpp?r=2223>
-}
{#fun btConvexShape_getPreferredPenetrationDirection as btConvexShape_getPreferredPenetrationDirection    `( BtConvexShapeClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ index
, withVec3* `Vec3'  peekVec3* -- ^ penetrationVector
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexShape.h?r=2223#75>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexShape.cpp?r=2223>
-}
{#fun btConvexShape_getPreferredPenetrationDirection as btConvexShape_getPreferredPenetrationDirection'    `( BtConvexShapeClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ index
, allocaVec3-  `Vec3'  peekVec3* -- ^ penetrationVector
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexShape.h?r=2223#66>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexShape.cpp?r=2223>
-}
{#fun btConvexShape_setLocalScaling as btConvexShape_setLocalScaling    `( BtConvexShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ scaling
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexShape.h?r=2223#66>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexShape.cpp?r=2223>
-}
{#fun btConvexShape_setLocalScaling as btConvexShape_setLocalScaling'    `( BtConvexShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ scaling
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexShape.h?r=2223#64>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexShape.cpp?r=2223>
-}
{#fun btConvexShape_getAabbSlow as btConvexShape_getAabbSlow    `( BtConvexShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, withTransform* `Transform'  peekTransform* -- ^ t
, withVec3* `Vec3'  peekVec3* -- ^ aabbMin
, withVec3* `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexShape.h?r=2223#64>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexShape.cpp?r=2223>
-}
{#fun btConvexShape_getAabbSlow as btConvexShape_getAabbSlow'    `( BtConvexShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaTransform-  `Transform'  peekTransform* -- ^ t
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMin
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexShape.h?r=2223#62>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexShape.cpp?r=2223>
-}
{#fun btConvexShape_getAabb as btConvexShape_getAabb    `( BtConvexShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, withTransform* `Transform'  peekTransform* -- ^ t
, withVec3* `Vec3'  peekVec3* -- ^ aabbMin
, withVec3* `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexShape.h?r=2223#62>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexShape.cpp?r=2223>
-}
{#fun btConvexShape_getAabb as btConvexShape_getAabb'    `( BtConvexShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaTransform-  `Transform'  peekTransform* -- ^ t
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMin
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexShape.h?r=2223#69>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexShape.cpp?r=2223>
-}
{#fun btConvexShape_setMargin as btConvexShape_setMargin    `( BtConvexShapeClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ margin
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexShape.h?r=2223#73>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexShape.cpp?r=2223>
-}
{#fun btConvexShape_getNumPreferredPenetrationDirections as btConvexShape_getNumPreferredPenetrationDirections    `( BtConvexShapeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexShape.h?r=2223#51>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexShape.cpp?r=2223>
-}
{#fun btConvexShape_localGetSupportVertexNonVirtual as btConvexShape_localGetSupportVertexNonVirtual    `( BtConvexShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ vec
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexShape.h?r=2223#51>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexShape.cpp?r=2223>
-}
{#fun btConvexShape_localGetSupportVertexNonVirtual as btConvexShape_localGetSupportVertexNonVirtual'    `( BtConvexShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ vec
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexShape.h?r=2223#47>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexShape.cpp?r=2223>
-}
{#fun btConvexShape_localGetSupportingVertexWithoutMargin as btConvexShape_localGetSupportingVertexWithoutMargin    `( BtConvexShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ vec
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexShape.h?r=2223#47>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexShape.cpp?r=2223>
-}
{#fun btConvexShape_localGetSupportingVertexWithoutMargin as btConvexShape_localGetSupportingVertexWithoutMargin'    `( BtConvexShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ vec
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexShape.h?r=2223#52>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexShape.cpp?r=2223>
-}
{#fun btConvexShape_getMarginNonVirtual as btConvexShape_getMarginNonVirtual    `( BtConvexShapeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Float'   #}
-- * btConvexTriangleMeshShape
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexTriangleMeshShape.h?r=2223#31>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexTriangleMeshShape.cpp?r=2223>
-}
{#fun btConvexTriangleMeshShape_new as btConvexTriangleMeshShape    `( BtStridingMeshInterfaceClass p0 )' =>     {  withBt* `p0' ,  `Bool'  } -> `BtConvexTriangleMeshShape' mkBtConvexTriangleMeshShape* #}
{#fun btConvexTriangleMeshShape_free    `( BtConvexTriangleMeshShapeClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexTriangleMeshShape.h?r=2223#53>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexTriangleMeshShape.cpp?r=2223>
-}
{#fun btConvexTriangleMeshShape_getNumPlanes as btConvexTriangleMeshShape_getNumPlanes    `( BtConvexTriangleMeshShapeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexTriangleMeshShape.h?r=2223#42>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexTriangleMeshShape.cpp?r=2223>
-}
{#fun btConvexTriangleMeshShape_localGetSupportingVertex as btConvexTriangleMeshShape_localGetSupportingVertex    `( BtConvexTriangleMeshShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ vec
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexTriangleMeshShape.h?r=2223#42>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexTriangleMeshShape.cpp?r=2223>
-}
{#fun btConvexTriangleMeshShape_localGetSupportingVertex as btConvexTriangleMeshShape_localGetSupportingVertex'    `( BtConvexTriangleMeshShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ vec
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexTriangleMeshShape.h?r=2223#50>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexTriangleMeshShape.cpp?r=2223>
-}
{#fun btConvexTriangleMeshShape_getNumEdges as btConvexTriangleMeshShape_getNumEdges    `( BtConvexTriangleMeshShapeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexTriangleMeshShape.h?r=2223#47>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexTriangleMeshShape.cpp?r=2223>
-}
{#fun btConvexTriangleMeshShape_getName as btConvexTriangleMeshShape_getName    `( BtConvexTriangleMeshShapeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `String'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexTriangleMeshShape.h?r=2223#52>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexTriangleMeshShape.cpp?r=2223>
-}
{#fun btConvexTriangleMeshShape_getVertex as btConvexTriangleMeshShape_getVertex    `( BtConvexTriangleMeshShapeClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ i
, withVec3* `Vec3'  peekVec3* -- ^ vtx
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexTriangleMeshShape.h?r=2223#52>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexTriangleMeshShape.cpp?r=2223>
-}
{#fun btConvexTriangleMeshShape_getVertex as btConvexTriangleMeshShape_getVertex'    `( BtConvexTriangleMeshShapeClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ i
, allocaVec3-  `Vec3'  peekVec3* -- ^ vtx
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexTriangleMeshShape.h?r=2223#51>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexTriangleMeshShape.cpp?r=2223>
-}
{#fun btConvexTriangleMeshShape_getEdge as btConvexTriangleMeshShape_getEdge    `( BtConvexTriangleMeshShapeClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ i
, withVec3* `Vec3'  peekVec3* -- ^ pa
, withVec3* `Vec3'  peekVec3* -- ^ pb
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexTriangleMeshShape.h?r=2223#51>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexTriangleMeshShape.cpp?r=2223>
-}
{#fun btConvexTriangleMeshShape_getEdge as btConvexTriangleMeshShape_getEdge'    `( BtConvexTriangleMeshShapeClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ i
, allocaVec3-  `Vec3'  peekVec3* -- ^ pa
, allocaVec3-  `Vec3'  peekVec3* -- ^ pb
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexTriangleMeshShape.h?r=2223#59>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexTriangleMeshShape.cpp?r=2223>
-}
{#fun btConvexTriangleMeshShape_getLocalScaling as btConvexTriangleMeshShape_getLocalScaling    `( BtConvexTriangleMeshShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexTriangleMeshShape.h?r=2223#55>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexTriangleMeshShape.cpp?r=2223>
-}
{#fun btConvexTriangleMeshShape_isInside as btConvexTriangleMeshShape_isInside    `( BtConvexTriangleMeshShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ pt
,  `Float'  -- ^ tolerance
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexTriangleMeshShape.h?r=2223#55>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexTriangleMeshShape.cpp?r=2223>
-}
{#fun btConvexTriangleMeshShape_isInside as btConvexTriangleMeshShape_isInside'    `( BtConvexTriangleMeshShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ pt
,  `Float'  -- ^ tolerance
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexTriangleMeshShape.h?r=2223#54>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexTriangleMeshShape.cpp?r=2223>
-}
{#fun btConvexTriangleMeshShape_getPlane as btConvexTriangleMeshShape_getPlane    `( BtConvexTriangleMeshShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ planeNormal
, withVec3* `Vec3'  peekVec3* -- ^ planeSupport
,  `Int'  -- ^ i
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexTriangleMeshShape.h?r=2223#54>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexTriangleMeshShape.cpp?r=2223>
-}
{#fun btConvexTriangleMeshShape_getPlane as btConvexTriangleMeshShape_getPlane'    `( BtConvexTriangleMeshShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ planeNormal
, allocaVec3-  `Vec3'  peekVec3* -- ^ planeSupport
,  `Int'  -- ^ i
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexTriangleMeshShape.h?r=2223#58>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexTriangleMeshShape.cpp?r=2223>
-}
{#fun btConvexTriangleMeshShape_setLocalScaling as btConvexTriangleMeshShape_setLocalScaling    `( BtConvexTriangleMeshShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ scaling
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexTriangleMeshShape.h?r=2223#58>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexTriangleMeshShape.cpp?r=2223>
-}
{#fun btConvexTriangleMeshShape_setLocalScaling as btConvexTriangleMeshShape_setLocalScaling'    `( BtConvexTriangleMeshShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ scaling
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexTriangleMeshShape.h?r=2223#33>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexTriangleMeshShape.cpp?r=2223>
-}
{#fun btConvexTriangleMeshShape_getMeshInterface0 as btConvexTriangleMeshShape_getMeshInterface    `( BtConvexTriangleMeshShapeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtStridingMeshInterface'  mkBtStridingMeshInterface* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexTriangleMeshShape.h?r=2223#33>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexTriangleMeshShape.cpp?r=2223>
-}
{#fun btConvexTriangleMeshShape_getMeshInterface0 as btConvexTriangleMeshShape_getMeshInterface0    `( BtConvexTriangleMeshShapeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtStridingMeshInterface'  mkBtStridingMeshInterface* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexTriangleMeshShape.h?r=2223#37>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexTriangleMeshShape.cpp?r=2223>
-}
{#fun btConvexTriangleMeshShape_getMeshInterface1 as btConvexTriangleMeshShape_getMeshInterface1    `( BtConvexTriangleMeshShapeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtStridingMeshInterface'  mkBtStridingMeshInterface* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexTriangleMeshShape.h?r=2223#49>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexTriangleMeshShape.cpp?r=2223>
-}
{#fun btConvexTriangleMeshShape_getNumVertices as btConvexTriangleMeshShape_getNumVertices    `( BtConvexTriangleMeshShapeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexTriangleMeshShape.h?r=2223#43>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexTriangleMeshShape.cpp?r=2223>
-}
{#fun btConvexTriangleMeshShape_localGetSupportingVertexWithoutMargin as btConvexTriangleMeshShape_localGetSupportingVertexWithoutMargin    `( BtConvexTriangleMeshShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ vec
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexTriangleMeshShape.h?r=2223#43>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexTriangleMeshShape.cpp?r=2223>
-}
{#fun btConvexTriangleMeshShape_localGetSupportingVertexWithoutMargin as btConvexTriangleMeshShape_localGetSupportingVertexWithoutMargin'    `( BtConvexTriangleMeshShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ vec
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexTriangleMeshShape.h?r=2223#28>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexTriangleMeshShape.cpp?r=2223>
-}
{#fun btConvexTriangleMeshShape_m_stridingMesh_set    `( BtConvexTriangleMeshShapeClass bc , BtStridingMeshInterfaceClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexTriangleMeshShape.h?r=2223#28>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btConvexTriangleMeshShape.cpp?r=2223>
-}
{#fun btConvexTriangleMeshShape_m_stridingMesh_get    `( BtConvexTriangleMeshShapeClass bc )' =>     { withBt* `bc'  } ->  `BtStridingMeshInterface'  mkBtStridingMeshInterface* #}
-- * btCylinderShape
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCylinderShape.h?r=2223#47>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCylinderShape.cpp?r=2223>
-}
{#fun btCylinderShape_new as btCylinderShape    {  withVec3* `Vec3'  } -> `BtCylinderShape' mkBtCylinderShape* #}
{#fun btCylinderShape_free    `( BtCylinderShapeClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCylinderShape.h?r=2223#51>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCylinderShape.cpp?r=2223>
-}
{#fun btCylinderShape_calculateLocalInertia as btCylinderShape_calculateLocalInertia    `( BtCylinderShapeClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ mass
, withVec3* `Vec3'  peekVec3* -- ^ inertia
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCylinderShape.h?r=2223#51>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCylinderShape.cpp?r=2223>
-}
{#fun btCylinderShape_calculateLocalInertia as btCylinderShape_calculateLocalInertia'    `( BtCylinderShapeClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ mass
, allocaVec3-  `Vec3'  peekVec3* -- ^ inertia
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCylinderShape.h?r=2223#69>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCylinderShape.cpp?r=2223>
-}
{#fun btCylinderShape_localGetSupportingVertex as btCylinderShape_localGetSupportingVertex    `( BtCylinderShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ vec
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCylinderShape.h?r=2223#69>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCylinderShape.cpp?r=2223>
-}
{#fun btCylinderShape_localGetSupportingVertex as btCylinderShape_localGetSupportingVertex'    `( BtCylinderShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ vec
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCylinderShape.h?r=2223#180>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCylinderShape.cpp?r=2223>
-}
{#fun btCylinderShape_calculateSerializeBufferSize as btCylinderShape_calculateSerializeBufferSize    `( BtCylinderShapeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCylinderShape.h?r=2223#103>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCylinderShape.cpp?r=2223>
-}
{#fun btCylinderShape_setLocalScaling as btCylinderShape_setLocalScaling    `( BtCylinderShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ scaling
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCylinderShape.h?r=2223#103>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCylinderShape.cpp?r=2223>
-}
{#fun btCylinderShape_setLocalScaling as btCylinderShape_setLocalScaling'    `( BtCylinderShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ scaling
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCylinderShape.h?r=2223#93>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCylinderShape.cpp?r=2223>
-}
{#fun btCylinderShape_getUpAxis as btCylinderShape_getUpAxis    `( BtCylinderShapeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCylinderShape.h?r=2223#116>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCylinderShape.cpp?r=2223>
-}
{#fun btCylinderShape_getName as btCylinderShape_getName    `( BtCylinderShapeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `String'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCylinderShape.h?r=2223#186>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCylinderShape.cpp?r=2223>
-}
{#fun btCylinderShape_serialize as btCylinderShape_serialize    `( BtCylinderShapeClass bc , BtSerializerClass p1 )' =>     { withBt* `bc'  -- ^ 
, withVoidPtr* `VoidPtr'  -- ^ dataBuffer
, withBt* `p1'  -- ^ serializer
 } ->  `String'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCylinderShape.h?r=2223#42>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCylinderShape.cpp?r=2223>
-}
{#fun btCylinderShape_getHalfExtentsWithoutMargin as btCylinderShape_getHalfExtentsWithoutMargin    `( BtCylinderShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCylinderShape.h?r=2223#49>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCylinderShape.cpp?r=2223>
-}
{#fun btCylinderShape_getAabb as btCylinderShape_getAabb    `( BtCylinderShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, withTransform* `Transform'  peekTransform* -- ^ t
, withVec3* `Vec3'  peekVec3* -- ^ aabbMin
, withVec3* `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCylinderShape.h?r=2223#49>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCylinderShape.cpp?r=2223>
-}
{#fun btCylinderShape_getAabb as btCylinderShape_getAabb'    `( BtCylinderShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaTransform-  `Transform'  peekTransform* -- ^ t
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMin
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCylinderShape.h?r=2223#57>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCylinderShape.cpp?r=2223>
-}
{#fun btCylinderShape_setMargin as btCylinderShape_setMargin    `( BtCylinderShapeClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ collisionMargin
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCylinderShape.h?r=2223#34>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCylinderShape.cpp?r=2223>
-}
{#fun btCylinderShape_getHalfExtentsWithMargin as btCylinderShape_getHalfExtentsWithMargin    `( BtCylinderShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCylinderShape.h?r=2223#53>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCylinderShape.cpp?r=2223>
-}
{#fun btCylinderShape_localGetSupportingVertexWithoutMargin as btCylinderShape_localGetSupportingVertexWithoutMargin    `( BtCylinderShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ vec
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCylinderShape.h?r=2223#53>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCylinderShape.cpp?r=2223>
-}
{#fun btCylinderShape_localGetSupportingVertexWithoutMargin as btCylinderShape_localGetSupportingVertexWithoutMargin'    `( BtCylinderShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ vec
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCylinderShape.h?r=2223#98>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCylinderShape.cpp?r=2223>
-}
{#fun btCylinderShape_getRadius as btCylinderShape_getRadius    `( BtCylinderShapeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCylinderShape.h?r=2223#30>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCylinderShape.cpp?r=2223>
-}
{#fun btCylinderShape_m_upAxis_set    `( BtCylinderShapeClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCylinderShape.h?r=2223#30>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCylinderShape.cpp?r=2223>
-}
{#fun btCylinderShape_m_upAxis_get    `( BtCylinderShapeClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
-- * btCylinderShapeData
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCylinderShape.h?r=2223#172>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCylinderShape.cpp?r=2223>
-}
{#fun btCylinderShapeData_new as btCylinderShapeData    {  } -> `BtCylinderShapeData' mkBtCylinderShapeData* #}
{#fun btCylinderShapeData_free    `( BtCylinderShapeDataClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCylinderShape.h?r=2223#173>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCylinderShape.cpp?r=2223>
-}
{#fun btCylinderShapeData_m_convexInternalShapeData_set    `( BtCylinderShapeDataClass bc , BtConvexInternalShapeDataClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCylinderShape.h?r=2223#173>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCylinderShape.cpp?r=2223>
-}
{#fun btCylinderShapeData_m_convexInternalShapeData_get    `( BtCylinderShapeDataClass bc )' =>     { withBt* `bc'  } ->  `BtConvexInternalShapeData'  mkBtConvexInternalShapeData* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCylinderShape.h?r=2223#175>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCylinderShape.cpp?r=2223>
-}
{#fun btCylinderShapeData_m_upAxis_set    `( BtCylinderShapeDataClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCylinderShape.h?r=2223#175>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCylinderShape.cpp?r=2223>
-}
{#fun btCylinderShapeData_m_upAxis_get    `( BtCylinderShapeDataClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
-- * btCylinderShapeX
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCylinderShape.h?r=2223#131>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCylinderShape.cpp?r=2223>
-}
{#fun btCylinderShapeX_new as btCylinderShapeX    {  withVec3* `Vec3'  } -> `BtCylinderShapeX' mkBtCylinderShapeX* #}
{#fun btCylinderShapeX_free    `( BtCylinderShapeXClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCylinderShape.h?r=2223#137>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCylinderShape.cpp?r=2223>
-}
{#fun btCylinderShapeX_getName as btCylinderShapeX_getName    `( BtCylinderShapeXClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `String'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCylinderShape.h?r=2223#133>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCylinderShape.cpp?r=2223>
-}
{#fun btCylinderShapeX_localGetSupportingVertexWithoutMargin as btCylinderShapeX_localGetSupportingVertexWithoutMargin    `( BtCylinderShapeXClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ vec
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCylinderShape.h?r=2223#133>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCylinderShape.cpp?r=2223>
-}
{#fun btCylinderShapeX_localGetSupportingVertexWithoutMargin as btCylinderShapeX_localGetSupportingVertexWithoutMargin'    `( BtCylinderShapeXClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ vec
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCylinderShape.h?r=2223#142>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCylinderShape.cpp?r=2223>
-}
{#fun btCylinderShapeX_getRadius as btCylinderShapeX_getRadius    `( BtCylinderShapeXClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Float'   #}
-- * btCylinderShapeZ
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCylinderShape.h?r=2223#152>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCylinderShape.cpp?r=2223>
-}
{#fun btCylinderShapeZ_new as btCylinderShapeZ    {  withVec3* `Vec3'  } -> `BtCylinderShapeZ' mkBtCylinderShapeZ* #}
{#fun btCylinderShapeZ_free    `( BtCylinderShapeZClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCylinderShape.h?r=2223#158>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCylinderShape.cpp?r=2223>
-}
{#fun btCylinderShapeZ_getName as btCylinderShapeZ_getName    `( BtCylinderShapeZClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `String'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCylinderShape.h?r=2223#154>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCylinderShape.cpp?r=2223>
-}
{#fun btCylinderShapeZ_localGetSupportingVertexWithoutMargin as btCylinderShapeZ_localGetSupportingVertexWithoutMargin    `( BtCylinderShapeZClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ vec
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCylinderShape.h?r=2223#154>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCylinderShape.cpp?r=2223>
-}
{#fun btCylinderShapeZ_localGetSupportingVertexWithoutMargin as btCylinderShapeZ_localGetSupportingVertexWithoutMargin'    `( BtCylinderShapeZClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ vec
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCylinderShape.h?r=2223#163>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btCylinderShape.cpp?r=2223>
-}
{#fun btCylinderShapeZ_getRadius as btCylinderShapeZ_getRadius    `( BtCylinderShapeZClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Float'   #}
-- * btEmptyShape
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btEmptyShape.h?r=2223#34>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btEmptyShape.cpp?r=2223>
-}
{#fun btEmptyShape_new as btEmptyShape    {  } -> `BtEmptyShape' mkBtEmptyShape* #}
{#fun btEmptyShape_free    `( BtEmptyShapeClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btEmptyShape.h?r=2223#52>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btEmptyShape.cpp?r=2223>
-}
{#fun btEmptyShape_calculateLocalInertia as btEmptyShape_calculateLocalInertia    `( BtEmptyShapeClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ mass
, withVec3* `Vec3'  peekVec3* -- ^ inertia
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btEmptyShape.h?r=2223#52>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btEmptyShape.cpp?r=2223>
-}
{#fun btEmptyShape_calculateLocalInertia as btEmptyShape_calculateLocalInertia'    `( BtEmptyShapeClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ mass
, allocaVec3-  `Vec3'  peekVec3* -- ^ inertia
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btEmptyShape.h?r=2223#54>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btEmptyShape.cpp?r=2223>
-}
{#fun btEmptyShape_getName as btEmptyShape_getName    `( BtEmptyShapeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `String'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btEmptyShape.h?r=2223#47>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btEmptyShape.cpp?r=2223>
-}
{#fun btEmptyShape_getLocalScaling as btEmptyShape_getLocalScaling    `( BtEmptyShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btEmptyShape.h?r=2223#43>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btEmptyShape.cpp?r=2223>
-}
{#fun btEmptyShape_setLocalScaling as btEmptyShape_setLocalScaling    `( BtEmptyShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ scaling
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btEmptyShape.h?r=2223#43>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btEmptyShape.cpp?r=2223>
-}
{#fun btEmptyShape_setLocalScaling as btEmptyShape_setLocalScaling'    `( BtEmptyShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ scaling
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btEmptyShape.h?r=2223#40>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btEmptyShape.cpp?r=2223>
-}
{#fun btEmptyShape_getAabb as btEmptyShape_getAabb    `( BtEmptyShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, withTransform* `Transform'  peekTransform* -- ^ t
, withVec3* `Vec3'  peekVec3* -- ^ aabbMin
, withVec3* `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btEmptyShape.h?r=2223#40>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btEmptyShape.cpp?r=2223>
-}
{#fun btEmptyShape_getAabb as btEmptyShape_getAabb'    `( BtEmptyShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaTransform-  `Transform'  peekTransform* -- ^ t
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMin
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btEmptyShape.h?r=2223#59>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btEmptyShape.cpp?r=2223>
-}
{#fun btEmptyShape_processAllTriangles as btEmptyShape_processAllTriangles    `( BtEmptyShapeClass bc , BtTriangleCallbackClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ arg0
, withVec3* `Vec3'  peekVec3* -- ^ arg1
, withVec3* `Vec3'  peekVec3* -- ^ arg2
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btEmptyShape.h?r=2223#59>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btEmptyShape.cpp?r=2223>
-}
{#fun btEmptyShape_processAllTriangles as btEmptyShape_processAllTriangles'    `( BtEmptyShapeClass bc , BtTriangleCallbackClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ arg0
, allocaVec3-  `Vec3'  peekVec3* -- ^ arg1
, allocaVec3-  `Vec3'  peekVec3* -- ^ arg2
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btEmptyShape.h?r=2223#64>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btEmptyShape.cpp?r=2223>
-}
{#fun btEmptyShape_m_localScaling_set    `( BtEmptyShapeClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btEmptyShape.h?r=2223#64>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btEmptyShape.cpp?r=2223>
-}
{#fun btEmptyShape_m_localScaling_get    `( BtEmptyShapeClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
-- * btIndexedMesh
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleIndexVertexArray.h?r=2223#47>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleIndexVertexArray.cpp?r=2223>
-}
{#fun btIndexedMesh_new as btIndexedMesh    {  } -> `BtIndexedMesh' mkBtIndexedMesh* #}
{#fun btIndexedMesh_free    `( BtIndexedMeshClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleIndexVertexArray.h?r=2223#30>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleIndexVertexArray.cpp?r=2223>
-}
{#fun btIndexedMesh_m_numTriangles_set    `( BtIndexedMeshClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleIndexVertexArray.h?r=2223#30>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleIndexVertexArray.cpp?r=2223>
-}
{#fun btIndexedMesh_m_numTriangles_get    `( BtIndexedMeshClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleIndexVertexArray.h?r=2223#33>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleIndexVertexArray.cpp?r=2223>
-}
{#fun btIndexedMesh_m_numVertices_set    `( BtIndexedMeshClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleIndexVertexArray.h?r=2223#33>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleIndexVertexArray.cpp?r=2223>
-}
{#fun btIndexedMesh_m_numVertices_get    `( BtIndexedMeshClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleIndexVertexArray.h?r=2223#32>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleIndexVertexArray.cpp?r=2223>
-}
{#fun btIndexedMesh_m_triangleIndexStride_set    `( BtIndexedMeshClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleIndexVertexArray.h?r=2223#32>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleIndexVertexArray.cpp?r=2223>
-}
{#fun btIndexedMesh_m_triangleIndexStride_get    `( BtIndexedMeshClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleIndexVertexArray.h?r=2223#35>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleIndexVertexArray.cpp?r=2223>
-}
{#fun btIndexedMesh_m_vertexStride_set    `( BtIndexedMeshClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleIndexVertexArray.h?r=2223#35>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleIndexVertexArray.cpp?r=2223>
-}
{#fun btIndexedMesh_m_vertexStride_get    `( BtIndexedMeshClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
-- * btIntIndexData
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStridingMeshInterface.h?r=2223#103>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStridingMeshInterface.cpp?r=2223>
-}
{#fun btIntIndexData_new as btIntIndexData    {  } -> `BtIntIndexData' mkBtIntIndexData* #}
{#fun btIntIndexData_free    `( BtIntIndexDataClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStridingMeshInterface.h?r=2223#104>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStridingMeshInterface.cpp?r=2223>
-}
{#fun btIntIndexData_m_value_set    `( BtIntIndexDataClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStridingMeshInterface.h?r=2223#104>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStridingMeshInterface.cpp?r=2223>
-}
{#fun btIntIndexData_m_value_get    `( BtIntIndexDataClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
-- * btInternalTriangleIndexCallback
-- * btMeshPartData
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStridingMeshInterface.h?r=2223#128>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStridingMeshInterface.cpp?r=2223>
-}
{#fun btMeshPartData_new as btMeshPartData    {  } -> `BtMeshPartData' mkBtMeshPartData* #}
{#fun btMeshPartData_free    `( BtMeshPartDataClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStridingMeshInterface.h?r=2223#129>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStridingMeshInterface.cpp?r=2223>
-}
{#fun btMeshPartData_m_vertices3f_set    `( BtMeshPartDataClass bc , BtVector3FloatDataClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStridingMeshInterface.h?r=2223#129>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStridingMeshInterface.cpp?r=2223>
-}
{#fun btMeshPartData_m_vertices3f_get    `( BtMeshPartDataClass bc )' =>     { withBt* `bc'  } ->  `BtVector3FloatData'  mkBtVector3FloatData* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStridingMeshInterface.h?r=2223#130>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStridingMeshInterface.cpp?r=2223>
-}
{#fun btMeshPartData_m_vertices3d_set    `( BtMeshPartDataClass bc , BtVector3DoubleDataClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStridingMeshInterface.h?r=2223#130>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStridingMeshInterface.cpp?r=2223>
-}
{#fun btMeshPartData_m_vertices3d_get    `( BtMeshPartDataClass bc )' =>     { withBt* `bc'  } ->  `BtVector3DoubleData'  mkBtVector3DoubleData* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStridingMeshInterface.h?r=2223#132>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStridingMeshInterface.cpp?r=2223>
-}
{#fun btMeshPartData_m_indices32_set    `( BtMeshPartDataClass bc , BtIntIndexDataClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStridingMeshInterface.h?r=2223#132>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStridingMeshInterface.cpp?r=2223>
-}
{#fun btMeshPartData_m_indices32_get    `( BtMeshPartDataClass bc )' =>     { withBt* `bc'  } ->  `BtIntIndexData'  mkBtIntIndexData* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStridingMeshInterface.h?r=2223#133>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStridingMeshInterface.cpp?r=2223>
-}
{#fun btMeshPartData_m_3indices16_set    `( BtMeshPartDataClass bc , BtShortIntIndexTripletDataClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStridingMeshInterface.h?r=2223#133>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStridingMeshInterface.cpp?r=2223>
-}
{#fun btMeshPartData_m_3indices16_get    `( BtMeshPartDataClass bc )' =>     { withBt* `bc'  } ->  `BtShortIntIndexTripletData'  mkBtShortIntIndexTripletData* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStridingMeshInterface.h?r=2223#134>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStridingMeshInterface.cpp?r=2223>
-}
{#fun btMeshPartData_m_3indices8_set    `( BtMeshPartDataClass bc , BtCharIndexTripletDataClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStridingMeshInterface.h?r=2223#134>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStridingMeshInterface.cpp?r=2223>
-}
{#fun btMeshPartData_m_3indices8_get    `( BtMeshPartDataClass bc )' =>     { withBt* `bc'  } ->  `BtCharIndexTripletData'  mkBtCharIndexTripletData* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStridingMeshInterface.h?r=2223#136>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStridingMeshInterface.cpp?r=2223>
-}
{#fun btMeshPartData_m_indices16_set    `( BtMeshPartDataClass bc , BtShortIntIndexDataClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStridingMeshInterface.h?r=2223#136>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStridingMeshInterface.cpp?r=2223>
-}
{#fun btMeshPartData_m_indices16_get    `( BtMeshPartDataClass bc )' =>     { withBt* `bc'  } ->  `BtShortIntIndexData'  mkBtShortIntIndexData* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStridingMeshInterface.h?r=2223#138>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStridingMeshInterface.cpp?r=2223>
-}
{#fun btMeshPartData_m_numTriangles_set    `( BtMeshPartDataClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStridingMeshInterface.h?r=2223#138>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStridingMeshInterface.cpp?r=2223>
-}
{#fun btMeshPartData_m_numTriangles_get    `( BtMeshPartDataClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStridingMeshInterface.h?r=2223#139>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStridingMeshInterface.cpp?r=2223>
-}
{#fun btMeshPartData_m_numVertices_set    `( BtMeshPartDataClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStridingMeshInterface.h?r=2223#139>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStridingMeshInterface.cpp?r=2223>
-}
{#fun btMeshPartData_m_numVertices_get    `( BtMeshPartDataClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
-- * btMultiSphereShape
{#fun btMultiSphereShape_free    `( BtMultiSphereShapeClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btMultiSphereShape.h?r=2223#38>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btMultiSphereShape.cpp?r=2223>
-}
{#fun btMultiSphereShape_calculateLocalInertia as btMultiSphereShape_calculateLocalInertia    `( BtMultiSphereShapeClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ mass
, withVec3* `Vec3'  peekVec3* -- ^ inertia
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btMultiSphereShape.h?r=2223#38>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btMultiSphereShape.cpp?r=2223>
-}
{#fun btMultiSphereShape_calculateLocalInertia as btMultiSphereShape_calculateLocalInertia'    `( BtMultiSphereShapeClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ mass
, allocaVec3-  `Vec3'  peekVec3* -- ^ inertia
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btMultiSphereShape.h?r=2223#92>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btMultiSphereShape.cpp?r=2223>
-}
{#fun btMultiSphereShape_calculateSerializeBufferSize as btMultiSphereShape_calculateSerializeBufferSize    `( BtMultiSphereShapeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btMultiSphereShape.h?r=2223#45>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btMultiSphereShape.cpp?r=2223>
-}
{#fun btMultiSphereShape_getSphereCount as btMultiSphereShape_getSphereCount    `( BtMultiSphereShapeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btMultiSphereShape.h?r=2223#61>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btMultiSphereShape.cpp?r=2223>
-}
{#fun btMultiSphereShape_getName as btMultiSphereShape_getName    `( BtMultiSphereShapeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `String'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btMultiSphereShape.h?r=2223#69>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btMultiSphereShape.cpp?r=2223>
-}
{#fun btMultiSphereShape_serialize as btMultiSphereShape_serialize    `( BtMultiSphereShapeClass bc , BtSerializerClass p1 )' =>     { withBt* `bc'  -- ^ 
, withVoidPtr* `VoidPtr'  -- ^ dataBuffer
, withBt* `p1'  -- ^ serializer
 } ->  `String'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btMultiSphereShape.h?r=2223#50>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btMultiSphereShape.cpp?r=2223>
-}
{#fun btMultiSphereShape_getSpherePosition as btMultiSphereShape_getSpherePosition    `( BtMultiSphereShapeClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ index
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btMultiSphereShape.h?r=2223#55>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btMultiSphereShape.cpp?r=2223>
-}
{#fun btMultiSphereShape_getSphereRadius as btMultiSphereShape_getSphereRadius    `( BtMultiSphereShapeClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ index
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btMultiSphereShape.h?r=2223#41>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btMultiSphereShape.cpp?r=2223>
-}
{#fun btMultiSphereShape_localGetSupportingVertexWithoutMargin as btMultiSphereShape_localGetSupportingVertexWithoutMargin    `( BtMultiSphereShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ vec
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btMultiSphereShape.h?r=2223#41>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btMultiSphereShape.cpp?r=2223>
-}
{#fun btMultiSphereShape_localGetSupportingVertexWithoutMargin as btMultiSphereShape_localGetSupportingVertexWithoutMargin'    `( BtMultiSphereShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ vec
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btMultiSphereShape.h?r=2223#31>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btMultiSphereShape.cpp?r=2223>
-}
{#fun btMultiSphereShape_m_localPositionArray_set    `( BtMultiSphereShapeClass bc , BtAlignedObjectArray_btVector3_Class a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btMultiSphereShape.h?r=2223#31>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btMultiSphereShape.cpp?r=2223>
-}
{#fun btMultiSphereShape_m_localPositionArray_get    `( BtMultiSphereShapeClass bc )' =>     { withBt* `bc'  } ->  `BtAlignedObjectArray_btVector3_'  mkBtAlignedObjectArray_btVector3_* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btMultiSphereShape.h?r=2223#32>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btMultiSphereShape.cpp?r=2223>
-}
{#fun btMultiSphereShape_m_radiArray_set    `( BtMultiSphereShapeClass bc , BtAlignedObjectArray_float_Class a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btMultiSphereShape.h?r=2223#32>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btMultiSphereShape.cpp?r=2223>
-}
{#fun btMultiSphereShape_m_radiArray_get    `( BtMultiSphereShapeClass bc )' =>     { withBt* `bc'  } ->  `BtAlignedObjectArray_float_'  mkBtAlignedObjectArray_float_* #}
-- * btMultiSphereShapeData
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btMultiSphereShape.h?r=2223#82>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btMultiSphereShape.cpp?r=2223>
-}
{#fun btMultiSphereShapeData_new as btMultiSphereShapeData    {  } -> `BtMultiSphereShapeData' mkBtMultiSphereShapeData* #}
{#fun btMultiSphereShapeData_free    `( BtMultiSphereShapeDataClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btMultiSphereShape.h?r=2223#83>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btMultiSphereShape.cpp?r=2223>
-}
{#fun btMultiSphereShapeData_m_convexInternalShapeData_set    `( BtMultiSphereShapeDataClass bc , BtConvexInternalShapeDataClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btMultiSphereShape.h?r=2223#83>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btMultiSphereShape.cpp?r=2223>
-}
{#fun btMultiSphereShapeData_m_convexInternalShapeData_get    `( BtMultiSphereShapeDataClass bc )' =>     { withBt* `bc'  } ->  `BtConvexInternalShapeData'  mkBtConvexInternalShapeData* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btMultiSphereShape.h?r=2223#85>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btMultiSphereShape.cpp?r=2223>
-}
{#fun btMultiSphereShapeData_m_localPositionArrayPtr_set    `( BtMultiSphereShapeDataClass bc , BtPositionAndRadiusClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btMultiSphereShape.h?r=2223#85>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btMultiSphereShape.cpp?r=2223>
-}
{#fun btMultiSphereShapeData_m_localPositionArrayPtr_get    `( BtMultiSphereShapeDataClass bc )' =>     { withBt* `bc'  } ->  `BtPositionAndRadius'  mkBtPositionAndRadius* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btMultiSphereShape.h?r=2223#86>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btMultiSphereShape.cpp?r=2223>
-}
{#fun btMultiSphereShapeData_m_localPositionArraySize_set    `( BtMultiSphereShapeDataClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btMultiSphereShape.h?r=2223#86>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btMultiSphereShape.cpp?r=2223>
-}
{#fun btMultiSphereShapeData_m_localPositionArraySize_get    `( BtMultiSphereShapeDataClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
-- * btOptimizedBvh
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btOptimizedBvh.h?r=2223#37>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btOptimizedBvh.cpp?r=2223>
-}
{#fun btOptimizedBvh_new as btOptimizedBvh    {  } -> `BtOptimizedBvh' mkBtOptimizedBvh* #}
{#fun btOptimizedBvh_free    `( BtOptimizedBvhClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btOptimizedBvh.h?r=2223#47>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btOptimizedBvh.cpp?r=2223>
-}
{#fun btOptimizedBvh_updateBvhNodes as btOptimizedBvh_updateBvhNodes    `( BtOptimizedBvhClass bc , BtStridingMeshInterfaceClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ meshInterface
,  `Int'  -- ^ firstNode
,  `Int'  -- ^ endNode
,  `Int'  -- ^ index
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btOptimizedBvh.h?r=2223#50>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btOptimizedBvh.cpp?r=2223>
-}
{#fun btOptimizedBvh_serializeInPlace as btOptimizedBvh_serializeInPlace    `( BtOptimizedBvhClass bc )' =>     { withBt* `bc'  -- ^ 
, withVoidPtr* `VoidPtr'  -- ^ o_alignedDataBuffer
,  `Word32'  -- ^ i_dataBufferSize
,  `Bool'  -- ^ i_swapEndian
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btOptimizedBvh.h?r=2223#43>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btOptimizedBvh.cpp?r=2223>
-}
{#fun btOptimizedBvh_refit as btOptimizedBvh_refit    `( BtOptimizedBvhClass bc , BtStridingMeshInterfaceClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ triangles
, withVec3* `Vec3'  peekVec3* -- ^ aabbMin
, withVec3* `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btOptimizedBvh.h?r=2223#43>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btOptimizedBvh.cpp?r=2223>
-}
{#fun btOptimizedBvh_refit as btOptimizedBvh_refit'    `( BtOptimizedBvhClass bc , BtStridingMeshInterfaceClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ triangles
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMin
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btOptimizedBvh.h?r=2223#41>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btOptimizedBvh.cpp?r=2223>
-}
{#fun btOptimizedBvh_build as btOptimizedBvh_build    `( BtOptimizedBvhClass bc , BtStridingMeshInterfaceClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ triangles
,  `Bool'  -- ^ useQuantizedAabbCompression
, withVec3* `Vec3'  peekVec3* -- ^ bvhAabbMin
, withVec3* `Vec3'  peekVec3* -- ^ bvhAabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btOptimizedBvh.h?r=2223#41>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btOptimizedBvh.cpp?r=2223>
-}
{#fun btOptimizedBvh_build as btOptimizedBvh_build'    `( BtOptimizedBvhClass bc , BtStridingMeshInterfaceClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ triangles
,  `Bool'  -- ^ useQuantizedAabbCompression
, allocaVec3-  `Vec3'  peekVec3* -- ^ bvhAabbMin
, allocaVec3-  `Vec3'  peekVec3* -- ^ bvhAabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btOptimizedBvh.h?r=2223#45>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btOptimizedBvh.cpp?r=2223>
-}
{#fun btOptimizedBvh_refitPartial as btOptimizedBvh_refitPartial    `( BtOptimizedBvhClass bc , BtStridingMeshInterfaceClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ triangles
, withVec3* `Vec3'  peekVec3* -- ^ aabbMin
, withVec3* `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btOptimizedBvh.h?r=2223#45>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btOptimizedBvh.cpp?r=2223>
-}
{#fun btOptimizedBvh_refitPartial as btOptimizedBvh_refitPartial'    `( BtOptimizedBvhClass bc , BtStridingMeshInterfaceClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ triangles
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMin
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btOptimizedBvh.h?r=2223#57>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btOptimizedBvh.cpp?r=2223>
-}
{#fun btOptimizedBvh_deSerializeInPlace as btOptimizedBvh_deSerializeInPlace    `( )' =>     {  withVoidPtr* `VoidPtr'  -- ^ i_alignedDataBuffer
,  `Word32'  -- ^ i_dataBufferSize
,  `Bool'  -- ^ i_swapEndian
 } ->  `BtOptimizedBvh'  mkBtOptimizedBvh* #}
-- * btPolyhedralConvexAabbCachingShape
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btPolyhedralConvexShape.h?r=2223#78>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btPolyhedralConvexShape.cpp?r=2223>
-}
{#fun btPolyhedralConvexAabbCachingShape_setCachedLocalAabb as btPolyhedralConvexAabbCachingShape_setCachedLocalAabb    `( BtPolyhedralConvexAabbCachingShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ aabbMin
, withVec3* `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btPolyhedralConvexShape.h?r=2223#78>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btPolyhedralConvexShape.cpp?r=2223>
-}
{#fun btPolyhedralConvexAabbCachingShape_setCachedLocalAabb as btPolyhedralConvexAabbCachingShape_setCachedLocalAabb'    `( BtPolyhedralConvexAabbCachingShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMin
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btPolyhedralConvexShape.h?r=2223#108>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btPolyhedralConvexShape.cpp?r=2223>
-}
{#fun btPolyhedralConvexAabbCachingShape_recalcLocalAabb as btPolyhedralConvexAabbCachingShape_recalcLocalAabb    `( BtPolyhedralConvexAabbCachingShapeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btPolyhedralConvexShape.h?r=2223#104>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btPolyhedralConvexShape.cpp?r=2223>
-}
{#fun btPolyhedralConvexAabbCachingShape_setLocalScaling as btPolyhedralConvexAabbCachingShape_setLocalScaling    `( BtPolyhedralConvexAabbCachingShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ scaling
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btPolyhedralConvexShape.h?r=2223#104>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btPolyhedralConvexShape.cpp?r=2223>
-}
{#fun btPolyhedralConvexAabbCachingShape_setLocalScaling as btPolyhedralConvexAabbCachingShape_setLocalScaling'    `( BtPolyhedralConvexAabbCachingShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ scaling
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btPolyhedralConvexShape.h?r=2223#96>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btPolyhedralConvexShape.cpp?r=2223>
-}
{#fun btPolyhedralConvexAabbCachingShape_getNonvirtualAabb as btPolyhedralConvexAabbCachingShape_getNonvirtualAabb    `( BtPolyhedralConvexAabbCachingShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, withTransform* `Transform'  peekTransform* -- ^ trans
, withVec3* `Vec3'  peekVec3* -- ^ aabbMin
, withVec3* `Vec3'  peekVec3* -- ^ aabbMax
,  `Float'  -- ^ margin
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btPolyhedralConvexShape.h?r=2223#96>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btPolyhedralConvexShape.cpp?r=2223>
-}
{#fun btPolyhedralConvexAabbCachingShape_getNonvirtualAabb as btPolyhedralConvexAabbCachingShape_getNonvirtualAabb'    `( BtPolyhedralConvexAabbCachingShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaTransform-  `Transform'  peekTransform* -- ^ trans
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMin
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMax
,  `Float'  -- ^ margin
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btPolyhedralConvexShape.h?r=2223#85>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btPolyhedralConvexShape.cpp?r=2223>
-}
{#fun btPolyhedralConvexAabbCachingShape_getCachedLocalAabb as btPolyhedralConvexAabbCachingShape_getCachedLocalAabb    `( BtPolyhedralConvexAabbCachingShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ aabbMin
, withVec3* `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btPolyhedralConvexShape.h?r=2223#85>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btPolyhedralConvexShape.cpp?r=2223>
-}
{#fun btPolyhedralConvexAabbCachingShape_getCachedLocalAabb as btPolyhedralConvexAabbCachingShape_getCachedLocalAabb'    `( BtPolyhedralConvexAabbCachingShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMin
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btPolyhedralConvexShape.h?r=2223#106>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btPolyhedralConvexShape.cpp?r=2223>
-}
{#fun btPolyhedralConvexAabbCachingShape_getAabb as btPolyhedralConvexAabbCachingShape_getAabb    `( BtPolyhedralConvexAabbCachingShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, withTransform* `Transform'  peekTransform* -- ^ t
, withVec3* `Vec3'  peekVec3* -- ^ aabbMin
, withVec3* `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btPolyhedralConvexShape.h?r=2223#106>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btPolyhedralConvexShape.cpp?r=2223>
-}
{#fun btPolyhedralConvexAabbCachingShape_getAabb as btPolyhedralConvexAabbCachingShape_getAabb'    `( BtPolyhedralConvexAabbCachingShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaTransform-  `Transform'  peekTransform* -- ^ t
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMin
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btPolyhedralConvexShape.h?r=2223#72>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btPolyhedralConvexShape.cpp?r=2223>
-}
{#fun btPolyhedralConvexAabbCachingShape_m_localAabbMin_set    `( BtPolyhedralConvexAabbCachingShapeClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btPolyhedralConvexShape.h?r=2223#72>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btPolyhedralConvexShape.cpp?r=2223>
-}
{#fun btPolyhedralConvexAabbCachingShape_m_localAabbMin_get    `( BtPolyhedralConvexAabbCachingShapeClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btPolyhedralConvexShape.h?r=2223#73>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btPolyhedralConvexShape.cpp?r=2223>
-}
{#fun btPolyhedralConvexAabbCachingShape_m_localAabbMax_set    `( BtPolyhedralConvexAabbCachingShapeClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btPolyhedralConvexShape.h?r=2223#73>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btPolyhedralConvexShape.cpp?r=2223>
-}
{#fun btPolyhedralConvexAabbCachingShape_m_localAabbMax_get    `( BtPolyhedralConvexAabbCachingShapeClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btPolyhedralConvexShape.h?r=2223#74>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btPolyhedralConvexShape.cpp?r=2223>
-}
{#fun btPolyhedralConvexAabbCachingShape_m_isLocalAabbValid_set    `( BtPolyhedralConvexAabbCachingShapeClass bc )' =>     { withBt* `bc' ,  `Bool'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btPolyhedralConvexShape.h?r=2223#74>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btPolyhedralConvexShape.cpp?r=2223>
-}
{#fun btPolyhedralConvexAabbCachingShape_m_isLocalAabbValid_get    `( BtPolyhedralConvexAabbCachingShapeClass bc )' =>     { withBt* `bc'  } ->  `Bool'   #}
-- * btPolyhedralConvexShape
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btPolyhedralConvexShape.h?r=2223#52>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btPolyhedralConvexShape.cpp?r=2223>
-}
{#fun btPolyhedralConvexShape_calculateLocalInertia as btPolyhedralConvexShape_calculateLocalInertia    `( BtPolyhedralConvexShapeClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ mass
, withVec3* `Vec3'  peekVec3* -- ^ inertia
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btPolyhedralConvexShape.h?r=2223#52>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btPolyhedralConvexShape.cpp?r=2223>
-}
{#fun btPolyhedralConvexShape_calculateLocalInertia as btPolyhedralConvexShape_calculateLocalInertia'    `( BtPolyhedralConvexShapeClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ mass
, allocaVec3-  `Vec3'  peekVec3* -- ^ inertia
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btPolyhedralConvexShape.h?r=2223#59>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btPolyhedralConvexShape.cpp?r=2223>
-}
{#fun btPolyhedralConvexShape_getNumPlanes as btPolyhedralConvexShape_getNumPlanes    `( BtPolyhedralConvexShapeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btPolyhedralConvexShape.h?r=2223#56>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btPolyhedralConvexShape.cpp?r=2223>
-}
{#fun btPolyhedralConvexShape_getNumEdges as btPolyhedralConvexShape_getNumEdges    `( BtPolyhedralConvexShapeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btPolyhedralConvexShape.h?r=2223#58>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btPolyhedralConvexShape.cpp?r=2223>
-}
{#fun btPolyhedralConvexShape_getVertex as btPolyhedralConvexShape_getVertex    `( BtPolyhedralConvexShapeClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ i
, withVec3* `Vec3'  peekVec3* -- ^ vtx
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btPolyhedralConvexShape.h?r=2223#58>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btPolyhedralConvexShape.cpp?r=2223>
-}
{#fun btPolyhedralConvexShape_getVertex as btPolyhedralConvexShape_getVertex'    `( BtPolyhedralConvexShapeClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ i
, allocaVec3-  `Vec3'  peekVec3* -- ^ vtx
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btPolyhedralConvexShape.h?r=2223#57>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btPolyhedralConvexShape.cpp?r=2223>
-}
{#fun btPolyhedralConvexShape_getEdge as btPolyhedralConvexShape_getEdge    `( BtPolyhedralConvexShapeClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ i
, withVec3* `Vec3'  peekVec3* -- ^ pa
, withVec3* `Vec3'  peekVec3* -- ^ pb
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btPolyhedralConvexShape.h?r=2223#57>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btPolyhedralConvexShape.cpp?r=2223>
-}
{#fun btPolyhedralConvexShape_getEdge as btPolyhedralConvexShape_getEdge'    `( BtPolyhedralConvexShapeClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ i
, allocaVec3-  `Vec3'  peekVec3* -- ^ pa
, allocaVec3-  `Vec3'  peekVec3* -- ^ pb
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btPolyhedralConvexShape.h?r=2223#63>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btPolyhedralConvexShape.cpp?r=2223>
-}
{#fun btPolyhedralConvexShape_isInside as btPolyhedralConvexShape_isInside    `( BtPolyhedralConvexShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ pt
,  `Float'  -- ^ tolerance
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btPolyhedralConvexShape.h?r=2223#63>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btPolyhedralConvexShape.cpp?r=2223>
-}
{#fun btPolyhedralConvexShape_isInside as btPolyhedralConvexShape_isInside'    `( BtPolyhedralConvexShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ pt
,  `Float'  -- ^ tolerance
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btPolyhedralConvexShape.h?r=2223#60>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btPolyhedralConvexShape.cpp?r=2223>
-}
{#fun btPolyhedralConvexShape_getPlane as btPolyhedralConvexShape_getPlane    `( BtPolyhedralConvexShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ planeNormal
, withVec3* `Vec3'  peekVec3* -- ^ planeSupport
,  `Int'  -- ^ i
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btPolyhedralConvexShape.h?r=2223#60>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btPolyhedralConvexShape.cpp?r=2223>
-}
{#fun btPolyhedralConvexShape_getPlane as btPolyhedralConvexShape_getPlane'    `( BtPolyhedralConvexShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ planeNormal
, allocaVec3-  `Vec3'  peekVec3* -- ^ planeSupport
,  `Int'  -- ^ i
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btPolyhedralConvexShape.h?r=2223#40>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btPolyhedralConvexShape.cpp?r=2223>
-}
{#fun btPolyhedralConvexShape_initializePolyhedralFeatures as btPolyhedralConvexShape_initializePolyhedralFeatures    `( BtPolyhedralConvexShapeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btPolyhedralConvexShape.h?r=2223#55>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btPolyhedralConvexShape.cpp?r=2223>
-}
{#fun btPolyhedralConvexShape_getNumVertices as btPolyhedralConvexShape_getNumVertices    `( BtPolyhedralConvexShapeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btPolyhedralConvexShape.h?r=2223#49>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btPolyhedralConvexShape.cpp?r=2223>
-}
{#fun btPolyhedralConvexShape_localGetSupportingVertexWithoutMargin as btPolyhedralConvexShape_localGetSupportingVertexWithoutMargin    `( BtPolyhedralConvexShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ vec
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btPolyhedralConvexShape.h?r=2223#49>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btPolyhedralConvexShape.cpp?r=2223>
-}
{#fun btPolyhedralConvexShape_localGetSupportingVertexWithoutMargin as btPolyhedralConvexShape_localGetSupportingVertexWithoutMargin'    `( BtPolyhedralConvexShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ vec
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
-- * btPositionAndRadius
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btMultiSphereShape.h?r=2223#76>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btMultiSphereShape.cpp?r=2223>
-}
{#fun btPositionAndRadius_new as btPositionAndRadius    {  } -> `BtPositionAndRadius' mkBtPositionAndRadius* #}
{#fun btPositionAndRadius_free    `( BtPositionAndRadiusClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btMultiSphereShape.h?r=2223#77>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btMultiSphereShape.cpp?r=2223>
-}
{#fun btPositionAndRadius_m_pos_set    `( BtPositionAndRadiusClass bc , BtVector3FloatDataClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btMultiSphereShape.h?r=2223#77>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btMultiSphereShape.cpp?r=2223>
-}
{#fun btPositionAndRadius_m_pos_get    `( BtPositionAndRadiusClass bc )' =>     { withBt* `bc'  } ->  `BtVector3FloatData'  mkBtVector3FloatData* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btMultiSphereShape.h?r=2223#78>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btMultiSphereShape.cpp?r=2223>
-}
{#fun btPositionAndRadius_m_radius_set    `( BtPositionAndRadiusClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btMultiSphereShape.h?r=2223#78>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btMultiSphereShape.cpp?r=2223>
-}
{#fun btPositionAndRadius_m_radius_get    `( BtPositionAndRadiusClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
-- * btScaledBvhTriangleMeshShape
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btScaledBvhTriangleMeshShape.h?r=2223#35>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btScaledBvhTriangleMeshShape.cpp?r=2223>
-}
{#fun btScaledBvhTriangleMeshShape_new as btScaledBvhTriangleMeshShape    `( BtBvhTriangleMeshShapeClass p0 )' =>     {  withBt* `p0' , withVec3* `Vec3'  } -> `BtScaledBvhTriangleMeshShape' mkBtScaledBvhTriangleMeshShape* #}
{#fun btScaledBvhTriangleMeshShape_free    `( BtScaledBvhTriangleMeshShapeClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btScaledBvhTriangleMeshShape.h?r=2223#43>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btScaledBvhTriangleMeshShape.cpp?r=2223>
-}
{#fun btScaledBvhTriangleMeshShape_calculateLocalInertia as btScaledBvhTriangleMeshShape_calculateLocalInertia    `( BtScaledBvhTriangleMeshShapeClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ mass
, withVec3* `Vec3'  peekVec3* -- ^ inertia
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btScaledBvhTriangleMeshShape.h?r=2223#43>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btScaledBvhTriangleMeshShape.cpp?r=2223>
-}
{#fun btScaledBvhTriangleMeshShape_calculateLocalInertia as btScaledBvhTriangleMeshShape_calculateLocalInertia'    `( BtScaledBvhTriangleMeshShapeClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ mass
, allocaVec3-  `Vec3'  peekVec3* -- ^ inertia
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btScaledBvhTriangleMeshShape.h?r=2223#47>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btScaledBvhTriangleMeshShape.cpp?r=2223>
-}
{#fun btScaledBvhTriangleMeshShape_getChildShape0 as btScaledBvhTriangleMeshShape_getChildShape    `( BtScaledBvhTriangleMeshShapeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtBvhTriangleMeshShape'  mkBtBvhTriangleMeshShape* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btScaledBvhTriangleMeshShape.h?r=2223#47>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btScaledBvhTriangleMeshShape.cpp?r=2223>
-}
{#fun btScaledBvhTriangleMeshShape_getChildShape0 as btScaledBvhTriangleMeshShape_getChildShape0    `( BtScaledBvhTriangleMeshShapeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtBvhTriangleMeshShape'  mkBtBvhTriangleMeshShape* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btScaledBvhTriangleMeshShape.h?r=2223#52>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btScaledBvhTriangleMeshShape.cpp?r=2223>
-}
{#fun btScaledBvhTriangleMeshShape_getChildShape1 as btScaledBvhTriangleMeshShape_getChildShape1    `( BtScaledBvhTriangleMeshShapeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtBvhTriangleMeshShape'  mkBtBvhTriangleMeshShape* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btScaledBvhTriangleMeshShape.h?r=2223#76>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btScaledBvhTriangleMeshShape.cpp?r=2223>
-}
{#fun btScaledBvhTriangleMeshShape_calculateSerializeBufferSize as btScaledBvhTriangleMeshShape_calculateSerializeBufferSize    `( BtScaledBvhTriangleMeshShapeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btScaledBvhTriangleMeshShape.h?r=2223#58>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btScaledBvhTriangleMeshShape.cpp?r=2223>
-}
{#fun btScaledBvhTriangleMeshShape_getName as btScaledBvhTriangleMeshShape_getName    `( BtScaledBvhTriangleMeshShapeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `String'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btScaledBvhTriangleMeshShape.h?r=2223#83>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btScaledBvhTriangleMeshShape.cpp?r=2223>
-}
{#fun btScaledBvhTriangleMeshShape_serialize as btScaledBvhTriangleMeshShape_serialize    `( BtScaledBvhTriangleMeshShapeClass bc , BtSerializerClass p1 )' =>     { withBt* `bc'  -- ^ 
, withVoidPtr* `VoidPtr'  -- ^ dataBuffer
, withBt* `p1'  -- ^ serializer
 } ->  `String'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btScaledBvhTriangleMeshShape.h?r=2223#42>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btScaledBvhTriangleMeshShape.cpp?r=2223>
-}
{#fun btScaledBvhTriangleMeshShape_getLocalScaling as btScaledBvhTriangleMeshShape_getLocalScaling    `( BtScaledBvhTriangleMeshShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btScaledBvhTriangleMeshShape.h?r=2223#41>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btScaledBvhTriangleMeshShape.cpp?r=2223>
-}
{#fun btScaledBvhTriangleMeshShape_setLocalScaling as btScaledBvhTriangleMeshShape_setLocalScaling    `( BtScaledBvhTriangleMeshShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ scaling
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btScaledBvhTriangleMeshShape.h?r=2223#41>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btScaledBvhTriangleMeshShape.cpp?r=2223>
-}
{#fun btScaledBvhTriangleMeshShape_setLocalScaling as btScaledBvhTriangleMeshShape_setLocalScaling'    `( BtScaledBvhTriangleMeshShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ scaling
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btScaledBvhTriangleMeshShape.h?r=2223#40>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btScaledBvhTriangleMeshShape.cpp?r=2223>
-}
{#fun btScaledBvhTriangleMeshShape_getAabb as btScaledBvhTriangleMeshShape_getAabb    `( BtScaledBvhTriangleMeshShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, withTransform* `Transform'  peekTransform* -- ^ t
, withVec3* `Vec3'  peekVec3* -- ^ aabbMin
, withVec3* `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btScaledBvhTriangleMeshShape.h?r=2223#40>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btScaledBvhTriangleMeshShape.cpp?r=2223>
-}
{#fun btScaledBvhTriangleMeshShape_getAabb as btScaledBvhTriangleMeshShape_getAabb'    `( BtScaledBvhTriangleMeshShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaTransform-  `Transform'  peekTransform* -- ^ t
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMin
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btScaledBvhTriangleMeshShape.h?r=2223#45>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btScaledBvhTriangleMeshShape.cpp?r=2223>
-}
{#fun btScaledBvhTriangleMeshShape_processAllTriangles as btScaledBvhTriangleMeshShape_processAllTriangles    `( BtScaledBvhTriangleMeshShapeClass bc , BtTriangleCallbackClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ callback
, withVec3* `Vec3'  peekVec3* -- ^ aabbMin
, withVec3* `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btScaledBvhTriangleMeshShape.h?r=2223#45>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btScaledBvhTriangleMeshShape.cpp?r=2223>
-}
{#fun btScaledBvhTriangleMeshShape_processAllTriangles as btScaledBvhTriangleMeshShape_processAllTriangles'    `( BtScaledBvhTriangleMeshShapeClass bc , BtTriangleCallbackClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ callback
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMin
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btScaledBvhTriangleMeshShape.h?r=2223#28>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btScaledBvhTriangleMeshShape.cpp?r=2223>
-}
{#fun btScaledBvhTriangleMeshShape_m_localScaling_set    `( BtScaledBvhTriangleMeshShapeClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btScaledBvhTriangleMeshShape.h?r=2223#28>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btScaledBvhTriangleMeshShape.cpp?r=2223>
-}
{#fun btScaledBvhTriangleMeshShape_m_localScaling_get    `( BtScaledBvhTriangleMeshShapeClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btScaledBvhTriangleMeshShape.h?r=2223#30>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btScaledBvhTriangleMeshShape.cpp?r=2223>
-}
{#fun btScaledBvhTriangleMeshShape_m_bvhTriMeshShape_set    `( BtScaledBvhTriangleMeshShapeClass bc , BtBvhTriangleMeshShapeClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btScaledBvhTriangleMeshShape.h?r=2223#30>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btScaledBvhTriangleMeshShape.cpp?r=2223>
-}
{#fun btScaledBvhTriangleMeshShape_m_bvhTriMeshShape_get    `( BtScaledBvhTriangleMeshShapeClass bc )' =>     { withBt* `bc'  } ->  `BtBvhTriangleMeshShape'  mkBtBvhTriangleMeshShape* #}
-- * btScaledTriangleMeshShapeData
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btScaledBvhTriangleMeshShape.h?r=2223#69>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btScaledBvhTriangleMeshShape.cpp?r=2223>
-}
{#fun btScaledTriangleMeshShapeData_new as btScaledTriangleMeshShapeData    {  } -> `BtScaledTriangleMeshShapeData' mkBtScaledTriangleMeshShapeData* #}
{#fun btScaledTriangleMeshShapeData_free    `( BtScaledTriangleMeshShapeDataClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btScaledBvhTriangleMeshShape.h?r=2223#70>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btScaledBvhTriangleMeshShape.cpp?r=2223>
-}
{#fun btScaledTriangleMeshShapeData_m_trimeshShapeData_set    `( BtScaledTriangleMeshShapeDataClass bc , BtTriangleMeshShapeDataClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btScaledBvhTriangleMeshShape.h?r=2223#70>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btScaledBvhTriangleMeshShape.cpp?r=2223>
-}
{#fun btScaledTriangleMeshShapeData_m_trimeshShapeData_get    `( BtScaledTriangleMeshShapeDataClass bc )' =>     { withBt* `bc'  } ->  `BtTriangleMeshShapeData'  mkBtTriangleMeshShapeData* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btScaledBvhTriangleMeshShape.h?r=2223#72>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btScaledBvhTriangleMeshShape.cpp?r=2223>
-}
{#fun btScaledTriangleMeshShapeData_m_localScaling_set    `( BtScaledTriangleMeshShapeDataClass bc , BtVector3FloatDataClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btScaledBvhTriangleMeshShape.h?r=2223#72>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btScaledBvhTriangleMeshShape.cpp?r=2223>
-}
{#fun btScaledTriangleMeshShapeData_m_localScaling_get    `( BtScaledTriangleMeshShapeDataClass bc )' =>     { withBt* `bc'  } ->  `BtVector3FloatData'  mkBtVector3FloatData* #}
-- * btShortIntIndexData
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStridingMeshInterface.h?r=2223#108>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStridingMeshInterface.cpp?r=2223>
-}
{#fun btShortIntIndexData_new as btShortIntIndexData    {  } -> `BtShortIntIndexData' mkBtShortIntIndexData* #}
{#fun btShortIntIndexData_free    `( BtShortIntIndexDataClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStridingMeshInterface.h?r=2223#109>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStridingMeshInterface.cpp?r=2223>
-}
{#fun btShortIntIndexData_m_value_set    `( BtShortIntIndexDataClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStridingMeshInterface.h?r=2223#109>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStridingMeshInterface.cpp?r=2223>
-}
{#fun btShortIntIndexData_m_value_get    `( BtShortIntIndexDataClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
-- * btShortIntIndexTripletData
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStridingMeshInterface.h?r=2223#114>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStridingMeshInterface.cpp?r=2223>
-}
{#fun btShortIntIndexTripletData_new as btShortIntIndexTripletData    {  } -> `BtShortIntIndexTripletData' mkBtShortIntIndexTripletData* #}
{#fun btShortIntIndexTripletData_free    `( BtShortIntIndexTripletDataClass bc )' =>     { withBt* `bc'  } -> `()' #}
-- * btSphereShape
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btSphereShape.h?r=2223#29>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btSphereShape.cpp?r=2223>
-}
{#fun btSphereShape_new as btSphereShape    {   `Float'  } -> `BtSphereShape' mkBtSphereShape* #}
{#fun btSphereShape_free    `( BtSphereShapeClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btSphereShape.h?r=2223#42>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btSphereShape.cpp?r=2223>
-}
{#fun btSphereShape_calculateLocalInertia as btSphereShape_calculateLocalInertia    `( BtSphereShapeClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ mass
, withVec3* `Vec3'  peekVec3* -- ^ inertia
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btSphereShape.h?r=2223#42>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btSphereShape.cpp?r=2223>
-}
{#fun btSphereShape_calculateLocalInertia as btSphereShape_calculateLocalInertia'    `( BtSphereShapeClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ mass
, allocaVec3-  `Vec3'  peekVec3* -- ^ inertia
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btSphereShape.h?r=2223#36>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btSphereShape.cpp?r=2223>
-}
{#fun btSphereShape_localGetSupportingVertex as btSphereShape_localGetSupportingVertex    `( BtSphereShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ vec
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btSphereShape.h?r=2223#36>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btSphereShape.cpp?r=2223>
-}
{#fun btSphereShape_localGetSupportingVertex as btSphereShape_localGetSupportingVertex'    `( BtSphereShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ vec
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btSphereShape.h?r=2223#56>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btSphereShape.cpp?r=2223>
-}
{#fun btSphereShape_getName as btSphereShape_getName    `( BtSphereShapeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `String'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btSphereShape.h?r=2223#62>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btSphereShape.cpp?r=2223>
-}
{#fun btSphereShape_getMargin as btSphereShape_getMargin    `( BtSphereShapeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btSphereShape.h?r=2223#58>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btSphereShape.cpp?r=2223>
-}
{#fun btSphereShape_setMargin as btSphereShape_setMargin    `( BtSphereShapeClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ margin
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btSphereShape.h?r=2223#44>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btSphereShape.cpp?r=2223>
-}
{#fun btSphereShape_getAabb as btSphereShape_getAabb    `( BtSphereShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, withTransform* `Transform'  peekTransform* -- ^ t
, withVec3* `Vec3'  peekVec3* -- ^ aabbMin
, withVec3* `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btSphereShape.h?r=2223#44>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btSphereShape.cpp?r=2223>
-}
{#fun btSphereShape_getAabb as btSphereShape_getAabb'    `( BtSphereShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaTransform-  `Transform'  peekTransform* -- ^ t
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMin
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btSphereShape.h?r=2223#49>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btSphereShape.cpp?r=2223>
-}
{#fun btSphereShape_setUnscaledRadius as btSphereShape_setUnscaledRadius    `( BtSphereShapeClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ radius
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btSphereShape.h?r=2223#37>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btSphereShape.cpp?r=2223>
-}
{#fun btSphereShape_localGetSupportingVertexWithoutMargin as btSphereShape_localGetSupportingVertexWithoutMargin    `( BtSphereShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ vec
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btSphereShape.h?r=2223#37>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btSphereShape.cpp?r=2223>
-}
{#fun btSphereShape_localGetSupportingVertexWithoutMargin as btSphereShape_localGetSupportingVertexWithoutMargin'    `( BtSphereShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ vec
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btSphereShape.h?r=2223#47>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btSphereShape.cpp?r=2223>
-}
{#fun btSphereShape_getRadius as btSphereShape_getRadius    `( BtSphereShapeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Float'   #}
-- * btStaticPlaneShape
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStaticPlaneShape.h?r=2223#34>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStaticPlaneShape.cpp?r=2223>
-}
{#fun btStaticPlaneShape_new as btStaticPlaneShape    {  withVec3* `Vec3' ,  `Float'  } -> `BtStaticPlaneShape' mkBtStaticPlaneShape* #}
{#fun btStaticPlaneShape_free    `( BtStaticPlaneShapeClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStaticPlaneShape.h?r=2223#43>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStaticPlaneShape.cpp?r=2223>
-}
{#fun btStaticPlaneShape_calculateLocalInertia as btStaticPlaneShape_calculateLocalInertia    `( BtStaticPlaneShapeClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ mass
, withVec3* `Vec3'  peekVec3* -- ^ inertia
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStaticPlaneShape.h?r=2223#43>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStaticPlaneShape.cpp?r=2223>
-}
{#fun btStaticPlaneShape_calculateLocalInertia as btStaticPlaneShape_calculateLocalInertia'    `( BtStaticPlaneShapeClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ mass
, allocaVec3-  `Vec3'  peekVec3* -- ^ inertia
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStaticPlaneShape.h?r=2223#81>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStaticPlaneShape.cpp?r=2223>
-}
{#fun btStaticPlaneShape_calculateSerializeBufferSize as btStaticPlaneShape_calculateSerializeBufferSize    `( BtStaticPlaneShapeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStaticPlaneShape.h?r=2223#59>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStaticPlaneShape.cpp?r=2223>
-}
{#fun btStaticPlaneShape_getName as btStaticPlaneShape_getName    `( BtStaticPlaneShapeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `String'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStaticPlaneShape.h?r=2223#87>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStaticPlaneShape.cpp?r=2223>
-}
{#fun btStaticPlaneShape_serialize as btStaticPlaneShape_serialize    `( BtStaticPlaneShapeClass bc , BtSerializerClass p1 )' =>     { withBt* `bc'  -- ^ 
, withVoidPtr* `VoidPtr'  -- ^ dataBuffer
, withBt* `p1'  -- ^ serializer
 } ->  `String'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStaticPlaneShape.h?r=2223#46>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStaticPlaneShape.cpp?r=2223>
-}
{#fun btStaticPlaneShape_getLocalScaling as btStaticPlaneShape_getLocalScaling    `( BtStaticPlaneShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStaticPlaneShape.h?r=2223#48>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStaticPlaneShape.cpp?r=2223>
-}
{#fun btStaticPlaneShape_getPlaneNormal as btStaticPlaneShape_getPlaneNormal    `( BtStaticPlaneShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStaticPlaneShape.h?r=2223#53>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStaticPlaneShape.cpp?r=2223>
-}
{#fun btStaticPlaneShape_getPlaneConstant as btStaticPlaneShape_getPlaneConstant    `( BtStaticPlaneShapeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStaticPlaneShape.h?r=2223#45>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStaticPlaneShape.cpp?r=2223>
-}
{#fun btStaticPlaneShape_setLocalScaling as btStaticPlaneShape_setLocalScaling    `( BtStaticPlaneShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ scaling
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStaticPlaneShape.h?r=2223#45>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStaticPlaneShape.cpp?r=2223>
-}
{#fun btStaticPlaneShape_setLocalScaling as btStaticPlaneShape_setLocalScaling'    `( BtStaticPlaneShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ scaling
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStaticPlaneShape.h?r=2223#39>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStaticPlaneShape.cpp?r=2223>
-}
{#fun btStaticPlaneShape_getAabb as btStaticPlaneShape_getAabb    `( BtStaticPlaneShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, withTransform* `Transform'  peekTransform* -- ^ t
, withVec3* `Vec3'  peekVec3* -- ^ aabbMin
, withVec3* `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStaticPlaneShape.h?r=2223#39>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStaticPlaneShape.cpp?r=2223>
-}
{#fun btStaticPlaneShape_getAabb as btStaticPlaneShape_getAabb'    `( BtStaticPlaneShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaTransform-  `Transform'  peekTransform* -- ^ t
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMin
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStaticPlaneShape.h?r=2223#41>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStaticPlaneShape.cpp?r=2223>
-}
{#fun btStaticPlaneShape_processAllTriangles as btStaticPlaneShape_processAllTriangles    `( BtStaticPlaneShapeClass bc , BtTriangleCallbackClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ callback
, withVec3* `Vec3'  peekVec3* -- ^ aabbMin
, withVec3* `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStaticPlaneShape.h?r=2223#41>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStaticPlaneShape.cpp?r=2223>
-}
{#fun btStaticPlaneShape_processAllTriangles as btStaticPlaneShape_processAllTriangles'    `( BtStaticPlaneShapeClass bc , BtTriangleCallbackClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ callback
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMin
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStaticPlaneShape.h?r=2223#26>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStaticPlaneShape.cpp?r=2223>
-}
{#fun btStaticPlaneShape_m_localAabbMin_set    `( BtStaticPlaneShapeClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStaticPlaneShape.h?r=2223#26>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStaticPlaneShape.cpp?r=2223>
-}
{#fun btStaticPlaneShape_m_localAabbMin_get    `( BtStaticPlaneShapeClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStaticPlaneShape.h?r=2223#27>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStaticPlaneShape.cpp?r=2223>
-}
{#fun btStaticPlaneShape_m_localAabbMax_set    `( BtStaticPlaneShapeClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStaticPlaneShape.h?r=2223#27>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStaticPlaneShape.cpp?r=2223>
-}
{#fun btStaticPlaneShape_m_localAabbMax_get    `( BtStaticPlaneShapeClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStaticPlaneShape.h?r=2223#29>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStaticPlaneShape.cpp?r=2223>
-}
{#fun btStaticPlaneShape_m_planeNormal_set    `( BtStaticPlaneShapeClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStaticPlaneShape.h?r=2223#29>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStaticPlaneShape.cpp?r=2223>
-}
{#fun btStaticPlaneShape_m_planeNormal_get    `( BtStaticPlaneShapeClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStaticPlaneShape.h?r=2223#30>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStaticPlaneShape.cpp?r=2223>
-}
{#fun btStaticPlaneShape_m_planeConstant_set    `( BtStaticPlaneShapeClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStaticPlaneShape.h?r=2223#30>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStaticPlaneShape.cpp?r=2223>
-}
{#fun btStaticPlaneShape_m_planeConstant_get    `( BtStaticPlaneShapeClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStaticPlaneShape.h?r=2223#31>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStaticPlaneShape.cpp?r=2223>
-}
{#fun btStaticPlaneShape_m_localScaling_set    `( BtStaticPlaneShapeClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStaticPlaneShape.h?r=2223#31>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStaticPlaneShape.cpp?r=2223>
-}
{#fun btStaticPlaneShape_m_localScaling_get    `( BtStaticPlaneShapeClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
-- * btStaticPlaneShapeData
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStaticPlaneShape.h?r=2223#71>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStaticPlaneShape.cpp?r=2223>
-}
{#fun btStaticPlaneShapeData_new as btStaticPlaneShapeData    {  } -> `BtStaticPlaneShapeData' mkBtStaticPlaneShapeData* #}
{#fun btStaticPlaneShapeData_free    `( BtStaticPlaneShapeDataClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStaticPlaneShape.h?r=2223#72>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStaticPlaneShape.cpp?r=2223>
-}
{#fun btStaticPlaneShapeData_m_collisionShapeData_set    `( BtStaticPlaneShapeDataClass bc , BtCollisionShapeDataClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStaticPlaneShape.h?r=2223#72>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStaticPlaneShape.cpp?r=2223>
-}
{#fun btStaticPlaneShapeData_m_collisionShapeData_get    `( BtStaticPlaneShapeDataClass bc )' =>     { withBt* `bc'  } ->  `BtCollisionShapeData'  mkBtCollisionShapeData* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStaticPlaneShape.h?r=2223#74>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStaticPlaneShape.cpp?r=2223>
-}
{#fun btStaticPlaneShapeData_m_localScaling_set    `( BtStaticPlaneShapeDataClass bc , BtVector3FloatDataClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStaticPlaneShape.h?r=2223#74>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStaticPlaneShape.cpp?r=2223>
-}
{#fun btStaticPlaneShapeData_m_localScaling_get    `( BtStaticPlaneShapeDataClass bc )' =>     { withBt* `bc'  } ->  `BtVector3FloatData'  mkBtVector3FloatData* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStaticPlaneShape.h?r=2223#75>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStaticPlaneShape.cpp?r=2223>
-}
{#fun btStaticPlaneShapeData_m_planeNormal_set    `( BtStaticPlaneShapeDataClass bc , BtVector3FloatDataClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStaticPlaneShape.h?r=2223#75>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStaticPlaneShape.cpp?r=2223>
-}
{#fun btStaticPlaneShapeData_m_planeNormal_get    `( BtStaticPlaneShapeDataClass bc )' =>     { withBt* `bc'  } ->  `BtVector3FloatData'  mkBtVector3FloatData* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStaticPlaneShape.h?r=2223#76>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStaticPlaneShape.cpp?r=2223>
-}
{#fun btStaticPlaneShapeData_m_planeConstant_set    `( BtStaticPlaneShapeDataClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStaticPlaneShape.h?r=2223#76>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStaticPlaneShape.cpp?r=2223>
-}
{#fun btStaticPlaneShapeData_m_planeConstant_get    `( BtStaticPlaneShapeDataClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
-- * btStridingMeshInterface
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStridingMeshInterface.h?r=2223#155>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStridingMeshInterface.cpp?r=2223>
-}
{#fun btStridingMeshInterface_calculateSerializeBufferSize as btStridingMeshInterface_calculateSerializeBufferSize    `( BtStridingMeshInterfaceClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStridingMeshInterface.h?r=2223#49>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStridingMeshInterface.cpp?r=2223>
-}
{#fun btStridingMeshInterface_calculateAabbBruteForce as btStridingMeshInterface_calculateAabbBruteForce    `( BtStridingMeshInterfaceClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ aabbMin
, withVec3* `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStridingMeshInterface.h?r=2223#49>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStridingMeshInterface.cpp?r=2223>
-}
{#fun btStridingMeshInterface_calculateAabbBruteForce as btStridingMeshInterface_calculateAabbBruteForce'    `( BtStridingMeshInterfaceClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMin
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStridingMeshInterface.h?r=2223#97>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStridingMeshInterface.cpp?r=2223>
-}
{#fun btStridingMeshInterface_serialize as btStridingMeshInterface_serialize    `( BtStridingMeshInterfaceClass bc , BtSerializerClass p1 )' =>     { withBt* `bc'  -- ^ 
, withVoidPtr* `VoidPtr'  -- ^ dataBuffer
, withBt* `p1'  -- ^ serializer
 } ->  `String'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStridingMeshInterface.h?r=2223#71>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStridingMeshInterface.cpp?r=2223>
-}
{#fun btStridingMeshInterface_preallocateVertices as btStridingMeshInterface_preallocateVertices    `( BtStridingMeshInterfaceClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ numverts
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStridingMeshInterface.h?r=2223#62>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStridingMeshInterface.cpp?r=2223>
-}
{#fun btStridingMeshInterface_unLockVertexBase as btStridingMeshInterface_unLockVertexBase    `( BtStridingMeshInterfaceClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ subpart
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStridingMeshInterface.h?r=2223#86>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStridingMeshInterface.cpp?r=2223>
-}
{#fun btStridingMeshInterface_getScaling as btStridingMeshInterface_getScaling    `( BtStridingMeshInterfaceClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStridingMeshInterface.h?r=2223#72>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStridingMeshInterface.cpp?r=2223>
-}
{#fun btStridingMeshInterface_preallocateIndices as btStridingMeshInterface_preallocateIndices    `( BtStridingMeshInterfaceClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ numindices
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStridingMeshInterface.h?r=2223#75>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStridingMeshInterface.cpp?r=2223>
-}
{#fun btStridingMeshInterface_setPremadeAabb as btStridingMeshInterface_setPremadeAabb    `( BtStridingMeshInterfaceClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ aabbMin
, withVec3* `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStridingMeshInterface.h?r=2223#75>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStridingMeshInterface.cpp?r=2223>
-}
{#fun btStridingMeshInterface_setPremadeAabb as btStridingMeshInterface_setPremadeAabb'    `( BtStridingMeshInterfaceClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMin
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStridingMeshInterface.h?r=2223#46>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStridingMeshInterface.cpp?r=2223>
-}
{#fun btStridingMeshInterface_InternalProcessAllTriangles as btStridingMeshInterface_InternalProcessAllTriangles    `( BtStridingMeshInterfaceClass bc , BtInternalTriangleIndexCallbackClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ callback
, withVec3* `Vec3'  peekVec3* -- ^ aabbMin
, withVec3* `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStridingMeshInterface.h?r=2223#46>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStridingMeshInterface.cpp?r=2223>
-}
{#fun btStridingMeshInterface_InternalProcessAllTriangles as btStridingMeshInterface_InternalProcessAllTriangles'    `( BtStridingMeshInterfaceClass bc , BtInternalTriangleIndexCallbackClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ callback
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMin
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStridingMeshInterface.h?r=2223#69>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStridingMeshInterface.cpp?r=2223>
-}
{#fun btStridingMeshInterface_getNumSubParts as btStridingMeshInterface_getNumSubParts    `( BtStridingMeshInterfaceClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStridingMeshInterface.h?r=2223#74>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStridingMeshInterface.cpp?r=2223>
-}
{#fun btStridingMeshInterface_hasPremadeAabb as btStridingMeshInterface_hasPremadeAabb    `( BtStridingMeshInterfaceClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStridingMeshInterface.h?r=2223#89>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStridingMeshInterface.cpp?r=2223>
-}
{#fun btStridingMeshInterface_setScaling as btStridingMeshInterface_setScaling    `( BtStridingMeshInterfaceClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ scaling
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStridingMeshInterface.h?r=2223#89>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStridingMeshInterface.cpp?r=2223>
-}
{#fun btStridingMeshInterface_setScaling as btStridingMeshInterface_setScaling'    `( BtStridingMeshInterfaceClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ scaling
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStridingMeshInterface.h?r=2223#64>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStridingMeshInterface.cpp?r=2223>
-}
{#fun btStridingMeshInterface_unLockReadOnlyVertexBase as btStridingMeshInterface_unLockReadOnlyVertexBase    `( BtStridingMeshInterfaceClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ subpart
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStridingMeshInterface.h?r=2223#34>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStridingMeshInterface.cpp?r=2223>
-}
{#fun btStridingMeshInterface_m_scaling_set    `( BtStridingMeshInterfaceClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStridingMeshInterface.h?r=2223#34>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStridingMeshInterface.cpp?r=2223>
-}
{#fun btStridingMeshInterface_m_scaling_get    `( BtStridingMeshInterfaceClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
-- * btStridingMeshInterfaceData
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStridingMeshInterface.h?r=2223#145>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStridingMeshInterface.cpp?r=2223>
-}
{#fun btStridingMeshInterfaceData_new as btStridingMeshInterfaceData    {  } -> `BtStridingMeshInterfaceData' mkBtStridingMeshInterfaceData* #}
{#fun btStridingMeshInterfaceData_free    `( BtStridingMeshInterfaceDataClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStridingMeshInterface.h?r=2223#146>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStridingMeshInterface.cpp?r=2223>
-}
{#fun btStridingMeshInterfaceData_m_meshPartsPtr_set    `( BtStridingMeshInterfaceDataClass bc , BtMeshPartDataClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStridingMeshInterface.h?r=2223#146>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStridingMeshInterface.cpp?r=2223>
-}
{#fun btStridingMeshInterfaceData_m_meshPartsPtr_get    `( BtStridingMeshInterfaceDataClass bc )' =>     { withBt* `bc'  } ->  `BtMeshPartData'  mkBtMeshPartData* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStridingMeshInterface.h?r=2223#147>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStridingMeshInterface.cpp?r=2223>
-}
{#fun btStridingMeshInterfaceData_m_scaling_set    `( BtStridingMeshInterfaceDataClass bc , BtVector3FloatDataClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStridingMeshInterface.h?r=2223#147>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStridingMeshInterface.cpp?r=2223>
-}
{#fun btStridingMeshInterfaceData_m_scaling_get    `( BtStridingMeshInterfaceDataClass bc )' =>     { withBt* `bc'  } ->  `BtVector3FloatData'  mkBtVector3FloatData* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStridingMeshInterface.h?r=2223#148>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStridingMeshInterface.cpp?r=2223>
-}
{#fun btStridingMeshInterfaceData_m_numMeshParts_set    `( BtStridingMeshInterfaceDataClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStridingMeshInterface.h?r=2223#148>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btStridingMeshInterface.cpp?r=2223>
-}
{#fun btStridingMeshInterfaceData_m_numMeshParts_get    `( BtStridingMeshInterfaceDataClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
-- * btTriangleCallback
-- * btTriangleIndexVertexArray
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleIndexVertexArray.h?r=2223#79>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleIndexVertexArray.cpp?r=2223>
-}
{#fun btTriangleIndexVertexArray_new0 as btTriangleIndexVertexArray0    {  } -> `BtTriangleIndexVertexArray' mkBtTriangleIndexVertexArray* #}
{#fun btTriangleIndexVertexArray_free    `( BtTriangleIndexVertexArrayClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleIndexVertexArray.h?r=2223#122>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleIndexVertexArray.cpp?r=2223>
-}
{#fun btTriangleIndexVertexArray_preallocateIndices as btTriangleIndexVertexArray_preallocateIndices    `( BtTriangleIndexVertexArrayClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ numindices
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleIndexVertexArray.h?r=2223#121>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleIndexVertexArray.cpp?r=2223>
-}
{#fun btTriangleIndexVertexArray_preallocateVertices as btTriangleIndexVertexArray_preallocateVertices    `( BtTriangleIndexVertexArrayClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ numverts
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleIndexVertexArray.h?r=2223#111>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleIndexVertexArray.cpp?r=2223>
-}
{#fun btTriangleIndexVertexArray_getIndexedMeshArray0 as btTriangleIndexVertexArray_getIndexedMeshArray    `( BtTriangleIndexVertexArrayClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtAlignedObjectArray_btIndexedMesh_'  mkBtAlignedObjectArray_btIndexedMesh_* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleIndexVertexArray.h?r=2223#111>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleIndexVertexArray.cpp?r=2223>
-}
{#fun btTriangleIndexVertexArray_getIndexedMeshArray0 as btTriangleIndexVertexArray_getIndexedMeshArray0    `( BtTriangleIndexVertexArrayClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtAlignedObjectArray_btIndexedMesh_'  mkBtAlignedObjectArray_btIndexedMesh_* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleIndexVertexArray.h?r=2223#116>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleIndexVertexArray.cpp?r=2223>
-}
{#fun btTriangleIndexVertexArray_getIndexedMeshArray1 as btTriangleIndexVertexArray_getIndexedMeshArray1    `( BtTriangleIndexVertexArrayClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtAlignedObjectArray_btIndexedMesh_'  mkBtAlignedObjectArray_btIndexedMesh_* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleIndexVertexArray.h?r=2223#125>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleIndexVertexArray.cpp?r=2223>
-}
{#fun btTriangleIndexVertexArray_setPremadeAabb as btTriangleIndexVertexArray_setPremadeAabb    `( BtTriangleIndexVertexArrayClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ aabbMin
, withVec3* `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleIndexVertexArray.h?r=2223#125>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleIndexVertexArray.cpp?r=2223>
-}
{#fun btTriangleIndexVertexArray_setPremadeAabb as btTriangleIndexVertexArray_setPremadeAabb'    `( BtTriangleIndexVertexArrayClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMin
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleIndexVertexArray.h?r=2223#107>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleIndexVertexArray.cpp?r=2223>
-}
{#fun btTriangleIndexVertexArray_getNumSubParts as btTriangleIndexVertexArray_getNumSubParts    `( BtTriangleIndexVertexArrayClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleIndexVertexArray.h?r=2223#124>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleIndexVertexArray.cpp?r=2223>
-}
{#fun btTriangleIndexVertexArray_hasPremadeAabb as btTriangleIndexVertexArray_hasPremadeAabb    `( BtTriangleIndexVertexArrayClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleIndexVertexArray.h?r=2223#101>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleIndexVertexArray.cpp?r=2223>
-}
{#fun btTriangleIndexVertexArray_unLockVertexBase as btTriangleIndexVertexArray_unLockVertexBase    `( BtTriangleIndexVertexArrayClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ subpart
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleIndexVertexArray.h?r=2223#103>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleIndexVertexArray.cpp?r=2223>
-}
{#fun btTriangleIndexVertexArray_unLockReadOnlyVertexBase as btTriangleIndexVertexArray_unLockReadOnlyVertexBase    `( BtTriangleIndexVertexArrayClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ subpart
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleIndexVertexArray.h?r=2223#69>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleIndexVertexArray.cpp?r=2223>
-}
{#fun btTriangleIndexVertexArray_m_indexedMeshes_set    `( BtTriangleIndexVertexArrayClass bc , BtAlignedObjectArray_btIndexedMesh_Class a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleIndexVertexArray.h?r=2223#69>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleIndexVertexArray.cpp?r=2223>
-}
{#fun btTriangleIndexVertexArray_m_indexedMeshes_get    `( BtTriangleIndexVertexArrayClass bc )' =>     { withBt* `bc'  } ->  `BtAlignedObjectArray_btIndexedMesh_'  mkBtAlignedObjectArray_btIndexedMesh_* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleIndexVertexArray.h?r=2223#71>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleIndexVertexArray.cpp?r=2223>
-}
{#fun btTriangleIndexVertexArray_m_hasAabb_set    `( BtTriangleIndexVertexArrayClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleIndexVertexArray.h?r=2223#71>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleIndexVertexArray.cpp?r=2223>
-}
{#fun btTriangleIndexVertexArray_m_hasAabb_get    `( BtTriangleIndexVertexArrayClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleIndexVertexArray.h?r=2223#72>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleIndexVertexArray.cpp?r=2223>
-}
{#fun btTriangleIndexVertexArray_m_aabbMin_set    `( BtTriangleIndexVertexArrayClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleIndexVertexArray.h?r=2223#72>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleIndexVertexArray.cpp?r=2223>
-}
{#fun btTriangleIndexVertexArray_m_aabbMin_get    `( BtTriangleIndexVertexArrayClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleIndexVertexArray.h?r=2223#73>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleIndexVertexArray.cpp?r=2223>
-}
{#fun btTriangleIndexVertexArray_m_aabbMax_set    `( BtTriangleIndexVertexArrayClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleIndexVertexArray.h?r=2223#73>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleIndexVertexArray.cpp?r=2223>
-}
{#fun btTriangleIndexVertexArray_m_aabbMax_get    `( BtTriangleIndexVertexArrayClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
-- * btTriangleInfo
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleInfoMap.h?r=2223#38>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleInfoMap.cpp?r=2223>
-}
{#fun btTriangleInfo_new as btTriangleInfo    {  } -> `BtTriangleInfo' mkBtTriangleInfo* #}
{#fun btTriangleInfo_free    `( BtTriangleInfoClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleInfoMap.h?r=2223#48>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleInfoMap.cpp?r=2223>
-}
{#fun btTriangleInfo_m_edgeV0V1Angle_set    `( BtTriangleInfoClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleInfoMap.h?r=2223#48>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleInfoMap.cpp?r=2223>
-}
{#fun btTriangleInfo_m_edgeV0V1Angle_get    `( BtTriangleInfoClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleInfoMap.h?r=2223#49>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleInfoMap.cpp?r=2223>
-}
{#fun btTriangleInfo_m_edgeV1V2Angle_set    `( BtTriangleInfoClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleInfoMap.h?r=2223#49>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleInfoMap.cpp?r=2223>
-}
{#fun btTriangleInfo_m_edgeV1V2Angle_get    `( BtTriangleInfoClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleInfoMap.h?r=2223#50>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleInfoMap.cpp?r=2223>
-}
{#fun btTriangleInfo_m_edgeV2V0Angle_set    `( BtTriangleInfoClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleInfoMap.h?r=2223#50>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleInfoMap.cpp?r=2223>
-}
{#fun btTriangleInfo_m_edgeV2V0Angle_get    `( BtTriangleInfoClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleInfoMap.h?r=2223#46>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleInfoMap.cpp?r=2223>
-}
{#fun btTriangleInfo_m_flags_set    `( BtTriangleInfoClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleInfoMap.h?r=2223#46>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleInfoMap.cpp?r=2223>
-}
{#fun btTriangleInfo_m_flags_get    `( BtTriangleInfoClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
-- * btTriangleInfoData
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleInfoMap.h?r=2223#89>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleInfoMap.cpp?r=2223>
-}
{#fun btTriangleInfoData_new as btTriangleInfoData    {  } -> `BtTriangleInfoData' mkBtTriangleInfoData* #}
{#fun btTriangleInfoData_free    `( BtTriangleInfoDataClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleInfoMap.h?r=2223#90>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleInfoMap.cpp?r=2223>
-}
{#fun btTriangleInfoData_m_flags_set    `( BtTriangleInfoDataClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleInfoMap.h?r=2223#90>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleInfoMap.cpp?r=2223>
-}
{#fun btTriangleInfoData_m_flags_get    `( BtTriangleInfoDataClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleInfoMap.h?r=2223#91>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleInfoMap.cpp?r=2223>
-}
{#fun btTriangleInfoData_m_edgeV0V1Angle_set    `( BtTriangleInfoDataClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleInfoMap.h?r=2223#91>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleInfoMap.cpp?r=2223>
-}
{#fun btTriangleInfoData_m_edgeV0V1Angle_get    `( BtTriangleInfoDataClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleInfoMap.h?r=2223#92>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleInfoMap.cpp?r=2223>
-}
{#fun btTriangleInfoData_m_edgeV1V2Angle_set    `( BtTriangleInfoDataClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleInfoMap.h?r=2223#92>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleInfoMap.cpp?r=2223>
-}
{#fun btTriangleInfoData_m_edgeV1V2Angle_get    `( BtTriangleInfoDataClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleInfoMap.h?r=2223#93>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleInfoMap.cpp?r=2223>
-}
{#fun btTriangleInfoData_m_edgeV2V0Angle_set    `( BtTriangleInfoDataClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleInfoMap.h?r=2223#93>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleInfoMap.cpp?r=2223>
-}
{#fun btTriangleInfoData_m_edgeV2V0Angle_get    `( BtTriangleInfoDataClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
-- * btTriangleInfoMap
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleInfoMap.h?r=2223#68>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleInfoMap.cpp?r=2223>
-}
{#fun btTriangleInfoMap_new as btTriangleInfoMap    {  } -> `BtTriangleInfoMap' mkBtTriangleInfoMap* #}
{#fun btTriangleInfoMap_free    `( BtTriangleInfoMapClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleInfoMap.h?r=2223#122>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleInfoMap.cpp?r=2223>
-}
{#fun btTriangleInfoMap_serialize as btTriangleInfoMap_serialize    `( BtTriangleInfoMapClass bc , BtSerializerClass p1 )' =>     { withBt* `bc'  -- ^ 
, withVoidPtr* `VoidPtr'  -- ^ dataBuffer
, withBt* `p1'  -- ^ serializer
 } ->  `String'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleInfoMap.h?r=2223#116>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleInfoMap.cpp?r=2223>
-}
{#fun btTriangleInfoMap_calculateSerializeBufferSize as btTriangleInfoMap_calculateSerializeBufferSize    `( BtTriangleInfoMapClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleInfoMap.h?r=2223#203>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleInfoMap.cpp?r=2223>
-}
{#fun btTriangleInfoMap_deSerialize as btTriangleInfoMap_deSerialize    `( BtTriangleInfoMapClass bc , BtTriangleInfoMapDataClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ tmapData
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleInfoMap.h?r=2223#60>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleInfoMap.cpp?r=2223>
-}
{#fun btTriangleInfoMap_m_convexEpsilon_set    `( BtTriangleInfoMapClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleInfoMap.h?r=2223#60>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleInfoMap.cpp?r=2223>
-}
{#fun btTriangleInfoMap_m_convexEpsilon_get    `( BtTriangleInfoMapClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleInfoMap.h?r=2223#63>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleInfoMap.cpp?r=2223>
-}
{#fun btTriangleInfoMap_m_edgeDistanceThreshold_set    `( BtTriangleInfoMapClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleInfoMap.h?r=2223#63>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleInfoMap.cpp?r=2223>
-}
{#fun btTriangleInfoMap_m_edgeDistanceThreshold_get    `( BtTriangleInfoMapClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleInfoMap.h?r=2223#62>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleInfoMap.cpp?r=2223>
-}
{#fun btTriangleInfoMap_m_equalVertexThreshold_set    `( BtTriangleInfoMapClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleInfoMap.h?r=2223#62>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleInfoMap.cpp?r=2223>
-}
{#fun btTriangleInfoMap_m_equalVertexThreshold_get    `( BtTriangleInfoMapClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleInfoMap.h?r=2223#64>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleInfoMap.cpp?r=2223>
-}
{#fun btTriangleInfoMap_m_maxEdgeAngleThreshold_set    `( BtTriangleInfoMapClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleInfoMap.h?r=2223#64>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleInfoMap.cpp?r=2223>
-}
{#fun btTriangleInfoMap_m_maxEdgeAngleThreshold_get    `( BtTriangleInfoMapClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleInfoMap.h?r=2223#61>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleInfoMap.cpp?r=2223>
-}
{#fun btTriangleInfoMap_m_planarEpsilon_set    `( BtTriangleInfoMapClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleInfoMap.h?r=2223#61>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleInfoMap.cpp?r=2223>
-}
{#fun btTriangleInfoMap_m_planarEpsilon_get    `( BtTriangleInfoMapClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleInfoMap.h?r=2223#65>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleInfoMap.cpp?r=2223>
-}
{#fun btTriangleInfoMap_m_zeroAreaThreshold_set    `( BtTriangleInfoMapClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleInfoMap.h?r=2223#65>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleInfoMap.cpp?r=2223>
-}
{#fun btTriangleInfoMap_m_zeroAreaThreshold_get    `( BtTriangleInfoMapClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
-- * btTriangleInfoMapData
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleInfoMap.h?r=2223#97>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleInfoMap.cpp?r=2223>
-}
{#fun btTriangleInfoMapData_new as btTriangleInfoMapData    {  } -> `BtTriangleInfoMapData' mkBtTriangleInfoMapData* #}
{#fun btTriangleInfoMapData_free    `( BtTriangleInfoMapDataClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleInfoMap.h?r=2223#103>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleInfoMap.cpp?r=2223>
-}
{#fun btTriangleInfoMapData_m_convexEpsilon_set    `( BtTriangleInfoMapDataClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleInfoMap.h?r=2223#103>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleInfoMap.cpp?r=2223>
-}
{#fun btTriangleInfoMapData_m_convexEpsilon_get    `( BtTriangleInfoMapDataClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleInfoMap.h?r=2223#106>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleInfoMap.cpp?r=2223>
-}
{#fun btTriangleInfoMapData_m_edgeDistanceThreshold_set    `( BtTriangleInfoMapDataClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleInfoMap.h?r=2223#106>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleInfoMap.cpp?r=2223>
-}
{#fun btTriangleInfoMapData_m_edgeDistanceThreshold_get    `( BtTriangleInfoMapDataClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleInfoMap.h?r=2223#105>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleInfoMap.cpp?r=2223>
-}
{#fun btTriangleInfoMapData_m_equalVertexThreshold_set    `( BtTriangleInfoMapDataClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleInfoMap.h?r=2223#105>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleInfoMap.cpp?r=2223>
-}
{#fun btTriangleInfoMapData_m_equalVertexThreshold_get    `( BtTriangleInfoMapDataClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleInfoMap.h?r=2223#110>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleInfoMap.cpp?r=2223>
-}
{#fun btTriangleInfoMapData_m_hashTableSize_set    `( BtTriangleInfoMapDataClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleInfoMap.h?r=2223#110>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleInfoMap.cpp?r=2223>
-}
{#fun btTriangleInfoMapData_m_hashTableSize_get    `( BtTriangleInfoMapDataClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleInfoMap.h?r=2223#109>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleInfoMap.cpp?r=2223>
-}
{#fun btTriangleInfoMapData_m_nextSize_set    `( BtTriangleInfoMapDataClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleInfoMap.h?r=2223#109>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleInfoMap.cpp?r=2223>
-}
{#fun btTriangleInfoMapData_m_nextSize_get    `( BtTriangleInfoMapDataClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleInfoMap.h?r=2223#112>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleInfoMap.cpp?r=2223>
-}
{#fun btTriangleInfoMapData_m_numKeys_set    `( BtTriangleInfoMapDataClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleInfoMap.h?r=2223#112>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleInfoMap.cpp?r=2223>
-}
{#fun btTriangleInfoMapData_m_numKeys_get    `( BtTriangleInfoMapDataClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleInfoMap.h?r=2223#111>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleInfoMap.cpp?r=2223>
-}
{#fun btTriangleInfoMapData_m_numValues_set    `( BtTriangleInfoMapDataClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleInfoMap.h?r=2223#111>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleInfoMap.cpp?r=2223>
-}
{#fun btTriangleInfoMapData_m_numValues_get    `( BtTriangleInfoMapDataClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleInfoMap.h?r=2223#104>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleInfoMap.cpp?r=2223>
-}
{#fun btTriangleInfoMapData_m_planarEpsilon_set    `( BtTriangleInfoMapDataClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleInfoMap.h?r=2223#104>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleInfoMap.cpp?r=2223>
-}
{#fun btTriangleInfoMapData_m_planarEpsilon_get    `( BtTriangleInfoMapDataClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleInfoMap.h?r=2223#100>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleInfoMap.cpp?r=2223>
-}
{#fun btTriangleInfoMapData_m_valueArrayPtr_set    `( BtTriangleInfoMapDataClass bc , BtTriangleInfoDataClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleInfoMap.h?r=2223#100>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleInfoMap.cpp?r=2223>
-}
{#fun btTriangleInfoMapData_m_valueArrayPtr_get    `( BtTriangleInfoMapDataClass bc )' =>     { withBt* `bc'  } ->  `BtTriangleInfoData'  mkBtTriangleInfoData* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleInfoMap.h?r=2223#107>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleInfoMap.cpp?r=2223>
-}
{#fun btTriangleInfoMapData_m_zeroAreaThreshold_set    `( BtTriangleInfoMapDataClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleInfoMap.h?r=2223#107>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleInfoMap.cpp?r=2223>
-}
{#fun btTriangleInfoMapData_m_zeroAreaThreshold_get    `( BtTriangleInfoMapDataClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
-- * btTriangleMesh
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleMesh.h?r=2223#41>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleMesh.cpp?r=2223>
-}
{#fun btTriangleMesh_new as btTriangleMesh    {   `Bool' ,  `Bool'  } -> `BtTriangleMesh' mkBtTriangleMesh* #}
{#fun btTriangleMesh_free    `( BtTriangleMeshClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleMesh.h?r=2223#59>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleMesh.cpp?r=2223>
-}
{#fun btTriangleMesh_preallocateIndices as btTriangleMesh_preallocateIndices    `( BtTriangleMeshClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ numindices
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleMesh.h?r=2223#56>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleMesh.cpp?r=2223>
-}
{#fun btTriangleMesh_getNumTriangles as btTriangleMesh_getNumTriangles    `( BtTriangleMeshClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleMesh.h?r=2223#43>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleMesh.cpp?r=2223>
-}
{#fun btTriangleMesh_getUse32bitIndices as btTriangleMesh_getUse32bitIndices    `( BtTriangleMeshClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleMesh.h?r=2223#64>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleMesh.cpp?r=2223>
-}
{#fun btTriangleMesh_addIndex as btTriangleMesh_addIndex    `( BtTriangleMeshClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ index
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleMesh.h?r=2223#58>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleMesh.cpp?r=2223>
-}
{#fun btTriangleMesh_preallocateVertices as btTriangleMesh_preallocateVertices    `( BtTriangleMeshClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ numverts
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleMesh.h?r=2223#62>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleMesh.cpp?r=2223>
-}
{#fun btTriangleMesh_findOrAddVertex as btTriangleMesh_findOrAddVertex    `( BtTriangleMeshClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ vertex
,  `Bool'  -- ^ removeDuplicateVertices
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleMesh.h?r=2223#62>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleMesh.cpp?r=2223>
-}
{#fun btTriangleMesh_findOrAddVertex as btTriangleMesh_findOrAddVertex'    `( BtTriangleMeshClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ vertex
,  `Bool'  -- ^ removeDuplicateVertices
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleMesh.h?r=2223#48>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleMesh.cpp?r=2223>
-}
{#fun btTriangleMesh_getUse4componentVertices as btTriangleMesh_getUse4componentVertices    `( BtTriangleMeshClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleMesh.h?r=2223#54>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleMesh.cpp?r=2223>
-}
{#fun btTriangleMesh_addTriangle as btTriangleMesh_addTriangle    `( BtTriangleMeshClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ vertex0
, withVec3* `Vec3'  peekVec3* -- ^ vertex1
, withVec3* `Vec3'  peekVec3* -- ^ vertex2
,  `Bool'  -- ^ removeDuplicateVertices
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleMesh.h?r=2223#54>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleMesh.cpp?r=2223>
-}
{#fun btTriangleMesh_addTriangle as btTriangleMesh_addTriangle'    `( BtTriangleMeshClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ vertex0
, allocaVec3-  `Vec3'  peekVec3* -- ^ vertex1
, allocaVec3-  `Vec3'  peekVec3* -- ^ vertex2
,  `Bool'  -- ^ removeDuplicateVertices
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleMesh.h?r=2223#29>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleMesh.cpp?r=2223>
-}
{#fun btTriangleMesh_m_4componentVertices_set    `( BtTriangleMeshClass bc , BtAlignedObjectArray_btVector3_Class a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleMesh.h?r=2223#29>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleMesh.cpp?r=2223>
-}
{#fun btTriangleMesh_m_4componentVertices_get    `( BtTriangleMeshClass bc )' =>     { withBt* `bc'  } ->  `BtAlignedObjectArray_btVector3_'  mkBtAlignedObjectArray_btVector3_* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleMesh.h?r=2223#30>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleMesh.cpp?r=2223>
-}
{#fun btTriangleMesh_m_3componentVertices_set    `( BtTriangleMeshClass bc , BtAlignedObjectArray_float_Class a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleMesh.h?r=2223#30>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleMesh.cpp?r=2223>
-}
{#fun btTriangleMesh_m_3componentVertices_get    `( BtTriangleMeshClass bc )' =>     { withBt* `bc'  } ->  `BtAlignedObjectArray_float_'  mkBtAlignedObjectArray_float_* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleMesh.h?r=2223#32>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleMesh.cpp?r=2223>
-}
{#fun btTriangleMesh_m_32bitIndices_set    `( BtTriangleMeshClass bc , BtAlignedObjectArray_unsignedint_Class a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleMesh.h?r=2223#32>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleMesh.cpp?r=2223>
-}
{#fun btTriangleMesh_m_32bitIndices_get    `( BtTriangleMeshClass bc )' =>     { withBt* `bc'  } ->  `BtAlignedObjectArray_unsignedint_'  mkBtAlignedObjectArray_unsignedint_* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleMesh.h?r=2223#33>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleMesh.cpp?r=2223>
-}
{#fun btTriangleMesh_m_16bitIndices_set    `( BtTriangleMeshClass bc , BtAlignedObjectArray_unsignedshort_Class a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleMesh.h?r=2223#33>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleMesh.cpp?r=2223>
-}
{#fun btTriangleMesh_m_16bitIndices_get    `( BtTriangleMeshClass bc )' =>     { withBt* `bc'  } ->  `BtAlignedObjectArray_unsignedshort_'  mkBtAlignedObjectArray_unsignedshort_* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleMesh.h?r=2223#34>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleMesh.cpp?r=2223>
-}
{#fun btTriangleMesh_m_use32bitIndices_set    `( BtTriangleMeshClass bc )' =>     { withBt* `bc' ,  `Bool'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleMesh.h?r=2223#34>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleMesh.cpp?r=2223>
-}
{#fun btTriangleMesh_m_use32bitIndices_get    `( BtTriangleMeshClass bc )' =>     { withBt* `bc'  } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleMesh.h?r=2223#35>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleMesh.cpp?r=2223>
-}
{#fun btTriangleMesh_m_use4componentVertices_set    `( BtTriangleMeshClass bc )' =>     { withBt* `bc' ,  `Bool'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleMesh.h?r=2223#35>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleMesh.cpp?r=2223>
-}
{#fun btTriangleMesh_m_use4componentVertices_get    `( BtTriangleMeshClass bc )' =>     { withBt* `bc'  } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleMesh.h?r=2223#39>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleMesh.cpp?r=2223>
-}
{#fun btTriangleMesh_m_weldingThreshold_set    `( BtTriangleMeshClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleMesh.h?r=2223#39>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleMesh.cpp?r=2223>
-}
{#fun btTriangleMesh_m_weldingThreshold_get    `( BtTriangleMeshClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
-- * btTriangleMeshShape
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleMeshShape.h?r=2223#33>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleMeshShape.cpp?r=2223>
-}
{#fun btTriangleMeshShape_new as btTriangleMeshShape    `( BtStridingMeshInterfaceClass p0 )' =>     {  withBt* `p0'  } -> `BtTriangleMeshShape' mkBtTriangleMeshShape* #}
{#fun btTriangleMeshShape_free    `( BtTriangleMeshShapeClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleMeshShape.h?r=2223#53>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleMeshShape.cpp?r=2223>
-}
{#fun btTriangleMeshShape_calculateLocalInertia as btTriangleMeshShape_calculateLocalInertia    `( BtTriangleMeshShapeClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ mass
, withVec3* `Vec3'  peekVec3* -- ^ inertia
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleMeshShape.h?r=2223#53>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleMeshShape.cpp?r=2223>
-}
{#fun btTriangleMeshShape_calculateLocalInertia as btTriangleMeshShape_calculateLocalInertia'    `( BtTriangleMeshShapeClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ mass
, allocaVec3-  `Vec3'  peekVec3* -- ^ inertia
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleMeshShape.h?r=2223#72>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleMeshShape.cpp?r=2223>
-}
{#fun btTriangleMeshShape_getLocalAabbMax as btTriangleMeshShape_getLocalAabbMax    `( BtTriangleMeshShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleMeshShape.h?r=2223#39>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleMeshShape.cpp?r=2223>
-}
{#fun btTriangleMeshShape_localGetSupportingVertex as btTriangleMeshShape_localGetSupportingVertex    `( BtTriangleMeshShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ vec
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleMeshShape.h?r=2223#39>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleMeshShape.cpp?r=2223>
-}
{#fun btTriangleMeshShape_localGetSupportingVertex as btTriangleMeshShape_localGetSupportingVertex'    `( BtTriangleMeshShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ vec
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleMeshShape.h?r=2223#80>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleMeshShape.cpp?r=2223>
-}
{#fun btTriangleMeshShape_getName as btTriangleMeshShape_getName    `( BtTriangleMeshShapeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `String'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleMeshShape.h?r=2223#56>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleMeshShape.cpp?r=2223>
-}
{#fun btTriangleMeshShape_getLocalScaling as btTriangleMeshShape_getLocalScaling    `( BtTriangleMeshShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleMeshShape.h?r=2223#47>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleMeshShape.cpp?r=2223>
-}
{#fun btTriangleMeshShape_recalcLocalAabb as btTriangleMeshShape_recalcLocalAabb    `( BtTriangleMeshShapeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleMeshShape.h?r=2223#55>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleMeshShape.cpp?r=2223>
-}
{#fun btTriangleMeshShape_setLocalScaling as btTriangleMeshShape_setLocalScaling    `( BtTriangleMeshShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ scaling
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleMeshShape.h?r=2223#55>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleMeshShape.cpp?r=2223>
-}
{#fun btTriangleMeshShape_setLocalScaling as btTriangleMeshShape_setLocalScaling'    `( BtTriangleMeshShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ scaling
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleMeshShape.h?r=2223#58>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleMeshShape.cpp?r=2223>
-}
{#fun btTriangleMeshShape_getMeshInterface0 as btTriangleMeshShape_getMeshInterface    `( BtTriangleMeshShapeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtStridingMeshInterface'  mkBtStridingMeshInterface* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleMeshShape.h?r=2223#58>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleMeshShape.cpp?r=2223>
-}
{#fun btTriangleMeshShape_getMeshInterface0 as btTriangleMeshShape_getMeshInterface0    `( BtTriangleMeshShapeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtStridingMeshInterface'  mkBtStridingMeshInterface* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleMeshShape.h?r=2223#63>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleMeshShape.cpp?r=2223>
-}
{#fun btTriangleMeshShape_getMeshInterface1 as btTriangleMeshShape_getMeshInterface1    `( BtTriangleMeshShapeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtStridingMeshInterface'  mkBtStridingMeshInterface* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleMeshShape.h?r=2223#49>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleMeshShape.cpp?r=2223>
-}
{#fun btTriangleMeshShape_getAabb as btTriangleMeshShape_getAabb    `( BtTriangleMeshShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, withTransform* `Transform'  peekTransform* -- ^ t
, withVec3* `Vec3'  peekVec3* -- ^ aabbMin
, withVec3* `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleMeshShape.h?r=2223#49>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleMeshShape.cpp?r=2223>
-}
{#fun btTriangleMeshShape_getAabb as btTriangleMeshShape_getAabb'    `( BtTriangleMeshShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaTransform-  `Transform'  peekTransform* -- ^ t
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMin
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleMeshShape.h?r=2223#51>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleMeshShape.cpp?r=2223>
-}
{#fun btTriangleMeshShape_processAllTriangles as btTriangleMeshShape_processAllTriangles    `( BtTriangleMeshShapeClass bc , BtTriangleCallbackClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ callback
, withVec3* `Vec3'  peekVec3* -- ^ aabbMin
, withVec3* `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleMeshShape.h?r=2223#51>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleMeshShape.cpp?r=2223>
-}
{#fun btTriangleMeshShape_processAllTriangles as btTriangleMeshShape_processAllTriangles'    `( BtTriangleMeshShapeClass bc , BtTriangleCallbackClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ callback
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMin
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleMeshShape.h?r=2223#41>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleMeshShape.cpp?r=2223>
-}
{#fun btTriangleMeshShape_localGetSupportingVertexWithoutMargin as btTriangleMeshShape_localGetSupportingVertexWithoutMargin    `( BtTriangleMeshShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ vec
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleMeshShape.h?r=2223#41>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleMeshShape.cpp?r=2223>
-}
{#fun btTriangleMeshShape_localGetSupportingVertexWithoutMargin as btTriangleMeshShape_localGetSupportingVertexWithoutMargin'    `( BtTriangleMeshShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ vec
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleMeshShape.h?r=2223#68>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleMeshShape.cpp?r=2223>
-}
{#fun btTriangleMeshShape_getLocalAabbMin as btTriangleMeshShape_getLocalAabbMin    `( BtTriangleMeshShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleMeshShape.h?r=2223#27>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleMeshShape.cpp?r=2223>
-}
{#fun btTriangleMeshShape_m_localAabbMin_set    `( BtTriangleMeshShapeClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleMeshShape.h?r=2223#27>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleMeshShape.cpp?r=2223>
-}
{#fun btTriangleMeshShape_m_localAabbMin_get    `( BtTriangleMeshShapeClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleMeshShape.h?r=2223#28>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleMeshShape.cpp?r=2223>
-}
{#fun btTriangleMeshShape_m_localAabbMax_set    `( BtTriangleMeshShapeClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleMeshShape.h?r=2223#28>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleMeshShape.cpp?r=2223>
-}
{#fun btTriangleMeshShape_m_localAabbMax_get    `( BtTriangleMeshShapeClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleMeshShape.h?r=2223#29>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleMeshShape.cpp?r=2223>
-}
{#fun btTriangleMeshShape_m_meshInterface_set    `( BtTriangleMeshShapeClass bc , BtStridingMeshInterfaceClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleMeshShape.h?r=2223#29>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleMeshShape.cpp?r=2223>
-}
{#fun btTriangleMeshShape_m_meshInterface_get    `( BtTriangleMeshShapeClass bc )' =>     { withBt* `bc'  } ->  `BtStridingMeshInterface'  mkBtStridingMeshInterface* #}
-- * btTriangleMeshShapeData
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBvhTriangleMeshShape.h?r=2223#115>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBvhTriangleMeshShape.cpp?r=2223>
-}
{#fun btTriangleMeshShapeData_new as btTriangleMeshShapeData    {  } -> `BtTriangleMeshShapeData' mkBtTriangleMeshShapeData* #}
{#fun btTriangleMeshShapeData_free    `( BtTriangleMeshShapeDataClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBvhTriangleMeshShape.h?r=2223#125>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBvhTriangleMeshShape.cpp?r=2223>
-}
{#fun btTriangleMeshShapeData_m_collisionMargin_set    `( BtTriangleMeshShapeDataClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBvhTriangleMeshShape.h?r=2223#125>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBvhTriangleMeshShape.cpp?r=2223>
-}
{#fun btTriangleMeshShapeData_m_collisionMargin_get    `( BtTriangleMeshShapeDataClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBvhTriangleMeshShape.h?r=2223#116>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBvhTriangleMeshShape.cpp?r=2223>
-}
{#fun btTriangleMeshShapeData_m_collisionShapeData_set    `( BtTriangleMeshShapeDataClass bc , BtCollisionShapeDataClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBvhTriangleMeshShape.h?r=2223#116>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBvhTriangleMeshShape.cpp?r=2223>
-}
{#fun btTriangleMeshShapeData_m_collisionShapeData_get    `( BtTriangleMeshShapeDataClass bc )' =>     { withBt* `bc'  } ->  `BtCollisionShapeData'  mkBtCollisionShapeData* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBvhTriangleMeshShape.h?r=2223#118>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBvhTriangleMeshShape.cpp?r=2223>
-}
{#fun btTriangleMeshShapeData_m_meshInterface_set    `( BtTriangleMeshShapeDataClass bc , BtStridingMeshInterfaceDataClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBvhTriangleMeshShape.h?r=2223#118>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBvhTriangleMeshShape.cpp?r=2223>
-}
{#fun btTriangleMeshShapeData_m_meshInterface_get    `( BtTriangleMeshShapeDataClass bc )' =>     { withBt* `bc'  } ->  `BtStridingMeshInterfaceData'  mkBtStridingMeshInterfaceData* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBvhTriangleMeshShape.h?r=2223#121>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBvhTriangleMeshShape.cpp?r=2223>
-}
{#fun btTriangleMeshShapeData_m_quantizedDoubleBvh_set    `( BtTriangleMeshShapeDataClass bc , BtQuantizedBvhDoubleDataClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBvhTriangleMeshShape.h?r=2223#121>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBvhTriangleMeshShape.cpp?r=2223>
-}
{#fun btTriangleMeshShapeData_m_quantizedDoubleBvh_get    `( BtTriangleMeshShapeDataClass bc )' =>     { withBt* `bc'  } ->  `BtQuantizedBvhDoubleData'  mkBtQuantizedBvhDoubleData* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBvhTriangleMeshShape.h?r=2223#120>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBvhTriangleMeshShape.cpp?r=2223>
-}
{#fun btTriangleMeshShapeData_m_quantizedFloatBvh_set    `( BtTriangleMeshShapeDataClass bc , BtQuantizedBvhFloatDataClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBvhTriangleMeshShape.h?r=2223#120>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBvhTriangleMeshShape.cpp?r=2223>
-}
{#fun btTriangleMeshShapeData_m_quantizedFloatBvh_get    `( BtTriangleMeshShapeDataClass bc )' =>     { withBt* `bc'  } ->  `BtQuantizedBvhFloatData'  mkBtQuantizedBvhFloatData* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBvhTriangleMeshShape.h?r=2223#123>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBvhTriangleMeshShape.cpp?r=2223>
-}
{#fun btTriangleMeshShapeData_m_triangleInfoMap_set    `( BtTriangleMeshShapeDataClass bc , BtTriangleInfoMapDataClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBvhTriangleMeshShape.h?r=2223#123>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btBvhTriangleMeshShape.cpp?r=2223>
-}
{#fun btTriangleMeshShapeData_m_triangleInfoMap_get    `( BtTriangleMeshShapeDataClass bc )' =>     { withBt* `bc'  } ->  `BtTriangleInfoMapData'  mkBtTriangleInfoMapData* #}
-- * btTriangleShape
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleShape.h?r=2223#85>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleShape.cpp?r=2223>
-}
{#fun btTriangleShape_new0 as btTriangleShape0    {  } -> `BtTriangleShape' mkBtTriangleShape* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleShape.h?r=2223#90>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleShape.cpp?r=2223>
-}
{#fun btTriangleShape_new1 as btTriangleShape1    {  withVec3* `Vec3' , withVec3* `Vec3' , withVec3* `Vec3'  } -> `BtTriangleShape' mkBtTriangleShape* #}
{#fun btTriangleShape_free    `( BtTriangleShapeClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleShape.h?r=2223#35>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleShape.cpp?r=2223>
-}
{#fun btTriangleShape_getVertexPtr0 as btTriangleShape_getVertexPtr    `( BtTriangleShapeClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ index
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleShape.h?r=2223#35>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleShape.cpp?r=2223>
-}
{#fun btTriangleShape_getVertexPtr0 as btTriangleShape_getVertexPtr0    `( BtTriangleShapeClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ index
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleShape.h?r=2223#40>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleShape.cpp?r=2223>
-}
{#fun btTriangleShape_getVertexPtr1 as btTriangleShape_getVertexPtr1    `( BtTriangleShapeClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ index
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleShape.h?r=2223#104>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleShape.cpp?r=2223>
-}
{#fun btTriangleShape_getNumPlanes as btTriangleShape_getNumPlanes    `( BtTriangleShapeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleShape.h?r=2223#171>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleShape.cpp?r=2223>
-}
{#fun btTriangleShape_getPreferredPenetrationDirection as btTriangleShape_getPreferredPenetrationDirection    `( BtTriangleShapeClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ index
, withVec3* `Vec3'  peekVec3* -- ^ penetrationVector
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleShape.h?r=2223#171>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleShape.cpp?r=2223>
-}
{#fun btTriangleShape_getPreferredPenetrationDirection as btTriangleShape_getPreferredPenetrationDirection'    `( BtTriangleShapeClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ index
, allocaVec3-  `Vec3'  peekVec3* -- ^ penetrationVector
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleShape.h?r=2223#49>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleShape.cpp?r=2223>
-}
{#fun btTriangleShape_getNumEdges as btTriangleShape_getNumEdges    `( BtTriangleShapeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleShape.h?r=2223#161>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleShape.cpp?r=2223>
-}
{#fun btTriangleShape_getName as btTriangleShape_getName    `( BtTriangleShapeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `String'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleShape.h?r=2223#30>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleShape.cpp?r=2223>
-}
{#fun btTriangleShape_getNumVertices as btTriangleShape_getNumVertices    `( BtTriangleShapeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleShape.h?r=2223#54>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleShape.cpp?r=2223>
-}
{#fun btTriangleShape_getEdge as btTriangleShape_getEdge    `( BtTriangleShapeClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ i
, withVec3* `Vec3'  peekVec3* -- ^ pa
, withVec3* `Vec3'  peekVec3* -- ^ pb
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleShape.h?r=2223#54>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleShape.cpp?r=2223>
-}
{#fun btTriangleShape_getEdge as btTriangleShape_getEdge'    `( BtTriangleShapeClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ i
, allocaVec3-  `Vec3'  peekVec3* -- ^ pa
, allocaVec3-  `Vec3'  peekVec3* -- ^ pb
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleShape.h?r=2223#129>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleShape.cpp?r=2223>
-}
{#fun btTriangleShape_isInside as btTriangleShape_isInside    `( BtTriangleShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ pt
,  `Float'  -- ^ tolerance
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleShape.h?r=2223#129>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleShape.cpp?r=2223>
-}
{#fun btTriangleShape_isInside as btTriangleShape_isInside'    `( BtTriangleShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ pt
,  `Float'  -- ^ tolerance
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleShape.h?r=2223#99>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleShape.cpp?r=2223>
-}
{#fun btTriangleShape_getPlane as btTriangleShape_getPlane    `( BtTriangleShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ planeNormal
, withVec3* `Vec3'  peekVec3* -- ^ planeSupport
,  `Int'  -- ^ i
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleShape.h?r=2223#99>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleShape.cpp?r=2223>
-}
{#fun btTriangleShape_getPlane as btTriangleShape_getPlane'    `( BtTriangleShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ planeNormal
, allocaVec3-  `Vec3'  peekVec3* -- ^ planeSupport
,  `Int'  -- ^ i
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleShape.h?r=2223#166>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleShape.cpp?r=2223>
-}
{#fun btTriangleShape_getNumPreferredPenetrationDirections as btTriangleShape_getNumPreferredPenetrationDirections    `( BtTriangleShapeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleShape.h?r=2223#61>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleShape.cpp?r=2223>
-}
{#fun btTriangleShape_getAabb as btTriangleShape_getAabb    `( BtTriangleShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, withTransform* `Transform'  peekTransform* -- ^ t
, withVec3* `Vec3'  peekVec3* -- ^ aabbMin
, withVec3* `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleShape.h?r=2223#61>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleShape.cpp?r=2223>
-}
{#fun btTriangleShape_getAabb as btTriangleShape_getAabb'    `( BtTriangleShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaTransform-  `Transform'  peekTransform* -- ^ t
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMin
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleShape.h?r=2223#44>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleShape.cpp?r=2223>
-}
{#fun btTriangleShape_getVertex as btTriangleShape_getVertex    `( BtTriangleShapeClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ index
, withVec3* `Vec3'  peekVec3* -- ^ vert
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleShape.h?r=2223#44>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleShape.cpp?r=2223>
-}
{#fun btTriangleShape_getVertex as btTriangleShape_getVertex'    `( BtTriangleShapeClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ index
, allocaVec3-  `Vec3'  peekVec3* -- ^ vert
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleShape.h?r=2223#109>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleShape.cpp?r=2223>
-}
{#fun btTriangleShape_calcNormal as btTriangleShape_calcNormal    `( BtTriangleShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ normal
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleShape.h?r=2223#109>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleShape.cpp?r=2223>
-}
{#fun btTriangleShape_calcNormal as btTriangleShape_calcNormal'    `( BtTriangleShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ normal
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleShape.h?r=2223#122>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleShape.cpp?r=2223>
-}
{#fun btTriangleShape_calculateLocalInertia as btTriangleShape_calculateLocalInertia    `( BtTriangleShapeClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ mass
, withVec3* `Vec3'  peekVec3* -- ^ inertia
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleShape.h?r=2223#122>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleShape.cpp?r=2223>
-}
{#fun btTriangleShape_calculateLocalInertia as btTriangleShape_calculateLocalInertia'    `( BtTriangleShapeClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ mass
, allocaVec3-  `Vec3'  peekVec3* -- ^ inertia
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleShape.h?r=2223#115>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleShape.cpp?r=2223>
-}
{#fun btTriangleShape_getPlaneEquation as btTriangleShape_getPlaneEquation    `( BtTriangleShapeClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ i
, withVec3* `Vec3'  peekVec3* -- ^ planeNormal
, withVec3* `Vec3'  peekVec3* -- ^ planeSupport
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleShape.h?r=2223#115>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleShape.cpp?r=2223>
-}
{#fun btTriangleShape_getPlaneEquation as btTriangleShape_getPlaneEquation'    `( BtTriangleShapeClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ i
, allocaVec3-  `Vec3'  peekVec3* -- ^ planeNormal
, allocaVec3-  `Vec3'  peekVec3* -- ^ planeSupport
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleShape.h?r=2223#67>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleShape.cpp?r=2223>
-}
{#fun btTriangleShape_localGetSupportingVertexWithoutMargin as btTriangleShape_localGetSupportingVertexWithoutMargin    `( BtTriangleShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ dir
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleShape.h?r=2223#67>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btTriangleShape.cpp?r=2223>
-}
{#fun btTriangleShape_localGetSupportingVertexWithoutMargin as btTriangleShape_localGetSupportingVertexWithoutMargin'    `( BtTriangleShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ dir
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
-- * btUniformScalingShape
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btUniformScalingShape.h?r=2223#32>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btUniformScalingShape.cpp?r=2223>
-}
{#fun btUniformScalingShape_new as btUniformScalingShape    `( BtConvexShapeClass p0 )' =>     {  withBt* `p0' ,  `Float'  } -> `BtUniformScalingShape' mkBtUniformScalingShape* #}
{#fun btUniformScalingShape_free    `( BtUniformScalingShapeClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btUniformScalingShape.h?r=2223#42>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btUniformScalingShape.cpp?r=2223>
-}
{#fun btUniformScalingShape_calculateLocalInertia as btUniformScalingShape_calculateLocalInertia    `( BtUniformScalingShapeClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ mass
, withVec3* `Vec3'  peekVec3* -- ^ inertia
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btUniformScalingShape.h?r=2223#42>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btUniformScalingShape.cpp?r=2223>
-}
{#fun btUniformScalingShape_calculateLocalInertia as btUniformScalingShape_calculateLocalInertia'    `( BtUniformScalingShapeClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ mass
, allocaVec3-  `Vec3'  peekVec3* -- ^ inertia
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btUniformScalingShape.h?r=2223#44>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btUniformScalingShape.cpp?r=2223>
-}
{#fun btUniformScalingShape_getUniformScalingFactor as btUniformScalingShape_getUniformScalingFactor    `( BtUniformScalingShapeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btUniformScalingShape.h?r=2223#38>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btUniformScalingShape.cpp?r=2223>
-}
{#fun btUniformScalingShape_localGetSupportingVertex as btUniformScalingShape_localGetSupportingVertex    `( BtUniformScalingShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ vec
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btUniformScalingShape.h?r=2223#38>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btUniformScalingShape.cpp?r=2223>
-}
{#fun btUniformScalingShape_localGetSupportingVertex as btUniformScalingShape_localGetSupportingVertex'    `( BtUniformScalingShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ vec
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btUniformScalingShape.h?r=2223#59>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btUniformScalingShape.cpp?r=2223>
-}
{#fun btUniformScalingShape_getName as btUniformScalingShape_getName    `( BtUniformScalingShapeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `String'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btUniformScalingShape.h?r=2223#72>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btUniformScalingShape.cpp?r=2223>
-}
{#fun btUniformScalingShape_getAabbSlow as btUniformScalingShape_getAabbSlow    `( BtUniformScalingShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, withTransform* `Transform'  peekTransform* -- ^ t
, withVec3* `Vec3'  peekVec3* -- ^ aabbMin
, withVec3* `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btUniformScalingShape.h?r=2223#72>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btUniformScalingShape.cpp?r=2223>
-}
{#fun btUniformScalingShape_getAabbSlow as btUniformScalingShape_getAabbSlow'    `( BtUniformScalingShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaTransform-  `Transform'  peekTransform* -- ^ t
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMin
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btUniformScalingShape.h?r=2223#75>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btUniformScalingShape.cpp?r=2223>
-}
{#fun btUniformScalingShape_getLocalScaling as btUniformScalingShape_getLocalScaling    `( BtUniformScalingShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btUniformScalingShape.h?r=2223#49>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btUniformScalingShape.cpp?r=2223>
-}
{#fun btUniformScalingShape_getChildShape0 as btUniformScalingShape_getChildShape    `( BtUniformScalingShapeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtConvexShape'  mkBtConvexShape* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btUniformScalingShape.h?r=2223#49>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btUniformScalingShape.cpp?r=2223>
-}
{#fun btUniformScalingShape_getChildShape0 as btUniformScalingShape_getChildShape0    `( BtUniformScalingShapeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtConvexShape'  mkBtConvexShape* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btUniformScalingShape.h?r=2223#54>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btUniformScalingShape.cpp?r=2223>
-}
{#fun btUniformScalingShape_getChildShape1 as btUniformScalingShape_getChildShape1    `( BtUniformScalingShapeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtConvexShape'  mkBtConvexShape* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btUniformScalingShape.h?r=2223#82>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btUniformScalingShape.cpp?r=2223>
-}
{#fun btUniformScalingShape_getPreferredPenetrationDirection as btUniformScalingShape_getPreferredPenetrationDirection    `( BtUniformScalingShapeClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ index
, withVec3* `Vec3'  peekVec3* -- ^ penetrationVector
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btUniformScalingShape.h?r=2223#82>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btUniformScalingShape.cpp?r=2223>
-}
{#fun btUniformScalingShape_getPreferredPenetrationDirection as btUniformScalingShape_getPreferredPenetrationDirection'    `( BtUniformScalingShapeClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ index
, allocaVec3-  `Vec3'  peekVec3* -- ^ penetrationVector
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btUniformScalingShape.h?r=2223#74>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btUniformScalingShape.cpp?r=2223>
-}
{#fun btUniformScalingShape_setLocalScaling as btUniformScalingShape_setLocalScaling    `( BtUniformScalingShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ scaling
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btUniformScalingShape.h?r=2223#74>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btUniformScalingShape.cpp?r=2223>
-}
{#fun btUniformScalingShape_setLocalScaling as btUniformScalingShape_setLocalScaling'    `( BtUniformScalingShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ scaling
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btUniformScalingShape.h?r=2223#80>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btUniformScalingShape.cpp?r=2223>
-}
{#fun btUniformScalingShape_getNumPreferredPenetrationDirections as btUniformScalingShape_getNumPreferredPenetrationDirections    `( BtUniformScalingShapeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btUniformScalingShape.h?r=2223#70>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btUniformScalingShape.cpp?r=2223>
-}
{#fun btUniformScalingShape_getAabb as btUniformScalingShape_getAabb    `( BtUniformScalingShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, withTransform* `Transform'  peekTransform* -- ^ t
, withVec3* `Vec3'  peekVec3* -- ^ aabbMin
, withVec3* `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btUniformScalingShape.h?r=2223#70>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btUniformScalingShape.cpp?r=2223>
-}
{#fun btUniformScalingShape_getAabb as btUniformScalingShape_getAabb'    `( BtUniformScalingShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaTransform-  `Transform'  peekTransform* -- ^ t
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMin
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btUniformScalingShape.h?r=2223#77>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btUniformScalingShape.cpp?r=2223>
-}
{#fun btUniformScalingShape_setMargin as btUniformScalingShape_setMargin    `( BtUniformScalingShapeClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ margin
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btUniformScalingShape.h?r=2223#78>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btUniformScalingShape.cpp?r=2223>
-}
{#fun btUniformScalingShape_getMargin as btUniformScalingShape_getMargin    `( BtUniformScalingShapeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btUniformScalingShape.h?r=2223#36>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btUniformScalingShape.cpp?r=2223>
-}
{#fun btUniformScalingShape_localGetSupportingVertexWithoutMargin as btUniformScalingShape_localGetSupportingVertexWithoutMargin    `( BtUniformScalingShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ vec
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btUniformScalingShape.h?r=2223#36>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btUniformScalingShape.cpp?r=2223>
-}
{#fun btUniformScalingShape_localGetSupportingVertexWithoutMargin as btUniformScalingShape_localGetSupportingVertexWithoutMargin'    `( BtUniformScalingShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ vec
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btUniformScalingShape.h?r=2223#26>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btUniformScalingShape.cpp?r=2223>
-}
{#fun btUniformScalingShape_m_childConvexShape_set    `( BtUniformScalingShapeClass bc , BtConvexShapeClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btUniformScalingShape.h?r=2223#26>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btUniformScalingShape.cpp?r=2223>
-}
{#fun btUniformScalingShape_m_childConvexShape_get    `( BtUniformScalingShapeClass bc )' =>     { withBt* `bc'  } ->  `BtConvexShape'  mkBtConvexShape* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btUniformScalingShape.h?r=2223#28>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btUniformScalingShape.cpp?r=2223>
-}
{#fun btUniformScalingShape_m_uniformScalingFactor_set    `( BtUniformScalingShapeClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btUniformScalingShape.h?r=2223#28>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionShapes/btUniformScalingShape.cpp?r=2223>
-}
{#fun btUniformScalingShape_m_uniformScalingFactor_get    `( BtUniformScalingShapeClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
