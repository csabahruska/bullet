{-#LANGUAGE ForeignFunctionInterface#-}
#include "Bullet.h"
module Physics.Bullet.Raw (
module Physics.Bullet.Raw.BulletSoftBody,
module Physics.Bullet.Raw.LinearMath,
module Physics.Bullet.Raw.BulletDynamics,
module Physics.Bullet.Raw.BulletCollision,
module Physics.Bullet.Raw
) where
import Control.Monad
import Foreign.Marshal.Alloc
import Foreign.ForeignPtr
import Foreign.Ptr
import Physics.Bullet.Raw.C2HS
import Physics.Bullet.Raw.Types
import Physics.Bullet.Raw.Class
import Physics.Bullet.Raw.BulletSoftBody
import Physics.Bullet.Raw.LinearMath
import Physics.Bullet.Raw.BulletDynamics
import Physics.Bullet.Raw.BulletCollision
-- * btGLDebugDrawer
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/GLDebugDrawer.h?r=2223#14>
     <http://code.google.com/p/bullet/source/browse/trunk/src/GLDebugDrawer.cpp?r=2223>
-}
{#fun btGLDebugDrawer_new as btGLDebugDrawer    {  } -> `BtGLDebugDrawer' mkBtGLDebugDrawer* #}
{#fun btGLDebugDrawer_free    `( BtGLDebugDrawerClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/GLDebugDrawer.h?r=2223#29>
     <http://code.google.com/p/bullet/source/browse/trunk/src/GLDebugDrawer.cpp?r=2223>
-}
{#fun btGLDebugDrawer_draw3dText as btGLDebugDrawer_draw3dText    `( BtGLDebugDrawerClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ location
,  `String'  -- ^ textString
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/GLDebugDrawer.h?r=2223#29>
     <http://code.google.com/p/bullet/source/browse/trunk/src/GLDebugDrawer.cpp?r=2223>
-}
{#fun btGLDebugDrawer_draw3dText as btGLDebugDrawer_draw3dText'    `( BtGLDebugDrawerClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ location
,  `String'  -- ^ textString
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/GLDebugDrawer.h?r=2223#23>
     <http://code.google.com/p/bullet/source/browse/trunk/src/GLDebugDrawer.cpp?r=2223>
-}
{#fun btGLDebugDrawer_drawTriangle as btGLDebugDrawer_drawTriangle    `( BtGLDebugDrawerClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ a
, withVec3* `Vec3'  peekVec3* -- ^ b
, withVec3* `Vec3'  peekVec3* -- ^ c
, withVec3* `Vec3'  peekVec3* -- ^ color
,  `Float'  -- ^ alpha
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/GLDebugDrawer.h?r=2223#23>
     <http://code.google.com/p/bullet/source/browse/trunk/src/GLDebugDrawer.cpp?r=2223>
-}
{#fun btGLDebugDrawer_drawTriangle as btGLDebugDrawer_drawTriangle'    `( BtGLDebugDrawerClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ a
, allocaVec3-  `Vec3'  peekVec3* -- ^ b
, allocaVec3-  `Vec3'  peekVec3* -- ^ c
, allocaVec3-  `Vec3'  peekVec3* -- ^ color
,  `Float'  -- ^ alpha
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/GLDebugDrawer.h?r=2223#21>
     <http://code.google.com/p/bullet/source/browse/trunk/src/GLDebugDrawer.cpp?r=2223>
-}
{#fun btGLDebugDrawer_drawBox as btGLDebugDrawer_drawBox    `( BtGLDebugDrawerClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ boxMin
, withVec3* `Vec3'  peekVec3* -- ^ boxMax
, withVec3* `Vec3'  peekVec3* -- ^ color
,  `Float'  -- ^ alpha
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/GLDebugDrawer.h?r=2223#21>
     <http://code.google.com/p/bullet/source/browse/trunk/src/GLDebugDrawer.cpp?r=2223>
-}
{#fun btGLDebugDrawer_drawBox as btGLDebugDrawer_drawBox'    `( BtGLDebugDrawerClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ boxMin
, allocaVec3-  `Vec3'  peekVec3* -- ^ boxMax
, allocaVec3-  `Vec3'  peekVec3* -- ^ color
,  `Float'  -- ^ alpha
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/GLDebugDrawer.h?r=2223#25>
     <http://code.google.com/p/bullet/source/browse/trunk/src/GLDebugDrawer.cpp?r=2223>
-}
{#fun btGLDebugDrawer_drawContactPoint as btGLDebugDrawer_drawContactPoint    `( BtGLDebugDrawerClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ PointOnB
, withVec3* `Vec3'  peekVec3* -- ^ normalOnB
,  `Float'  -- ^ distance
,  `Int'  -- ^ lifeTime
, withVec3* `Vec3'  peekVec3* -- ^ color
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/GLDebugDrawer.h?r=2223#25>
     <http://code.google.com/p/bullet/source/browse/trunk/src/GLDebugDrawer.cpp?r=2223>
-}
{#fun btGLDebugDrawer_drawContactPoint as btGLDebugDrawer_drawContactPoint'    `( BtGLDebugDrawerClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ PointOnB
, allocaVec3-  `Vec3'  peekVec3* -- ^ normalOnB
,  `Float'  -- ^ distance
,  `Int'  -- ^ lifeTime
, allocaVec3-  `Vec3'  peekVec3* -- ^ color
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/GLDebugDrawer.h?r=2223#16>
     <http://code.google.com/p/bullet/source/browse/trunk/src/GLDebugDrawer.cpp?r=2223>
-}
{#fun btGLDebugDrawer_drawLine0 as btGLDebugDrawer_drawLine    `( BtGLDebugDrawerClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ from
, withVec3* `Vec3'  peekVec3* -- ^ to
, withVec3* `Vec3'  peekVec3* -- ^ fromColor
, withVec3* `Vec3'  peekVec3* -- ^ toColor
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/GLDebugDrawer.h?r=2223#16>
     <http://code.google.com/p/bullet/source/browse/trunk/src/GLDebugDrawer.cpp?r=2223>
-}
{#fun btGLDebugDrawer_drawLine0 as btGLDebugDrawer_drawLine'    `( BtGLDebugDrawerClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ from
, allocaVec3-  `Vec3'  peekVec3* -- ^ to
, allocaVec3-  `Vec3'  peekVec3* -- ^ fromColor
, allocaVec3-  `Vec3'  peekVec3* -- ^ toColor
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/GLDebugDrawer.h?r=2223#16>
     <http://code.google.com/p/bullet/source/browse/trunk/src/GLDebugDrawer.cpp?r=2223>
-}
{#fun btGLDebugDrawer_drawLine0 as btGLDebugDrawer_drawLine0    `( BtGLDebugDrawerClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ from
, withVec3* `Vec3'  peekVec3* -- ^ to
, withVec3* `Vec3'  peekVec3* -- ^ fromColor
, withVec3* `Vec3'  peekVec3* -- ^ toColor
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/GLDebugDrawer.h?r=2223#16>
     <http://code.google.com/p/bullet/source/browse/trunk/src/GLDebugDrawer.cpp?r=2223>
-}
{#fun btGLDebugDrawer_drawLine0 as btGLDebugDrawer_drawLine0'    `( BtGLDebugDrawerClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ from
, allocaVec3-  `Vec3'  peekVec3* -- ^ to
, allocaVec3-  `Vec3'  peekVec3* -- ^ fromColor
, allocaVec3-  `Vec3'  peekVec3* -- ^ toColor
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/GLDebugDrawer.h?r=2223#18>
     <http://code.google.com/p/bullet/source/browse/trunk/src/GLDebugDrawer.cpp?r=2223>
-}
{#fun btGLDebugDrawer_drawLine1 as btGLDebugDrawer_drawLine1    `( BtGLDebugDrawerClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ from
, withVec3* `Vec3'  peekVec3* -- ^ to
, withVec3* `Vec3'  peekVec3* -- ^ color
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/GLDebugDrawer.h?r=2223#18>
     <http://code.google.com/p/bullet/source/browse/trunk/src/GLDebugDrawer.cpp?r=2223>
-}
{#fun btGLDebugDrawer_drawLine1 as btGLDebugDrawer_drawLine1'    `( BtGLDebugDrawerClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ from
, allocaVec3-  `Vec3'  peekVec3* -- ^ to
, allocaVec3-  `Vec3'  peekVec3* -- ^ color
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/GLDebugDrawer.h?r=2223#27>
     <http://code.google.com/p/bullet/source/browse/trunk/src/GLDebugDrawer.cpp?r=2223>
-}
{#fun btGLDebugDrawer_reportErrorWarning as btGLDebugDrawer_reportErrorWarning    `( BtGLDebugDrawerClass bc )' =>     { withBt* `bc'  -- ^ 
,  `String'  -- ^ warningString
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/GLDebugDrawer.h?r=2223#33>
     <http://code.google.com/p/bullet/source/browse/trunk/src/GLDebugDrawer.cpp?r=2223>
-}
{#fun btGLDebugDrawer_getDebugMode as btGLDebugDrawer_getDebugMode    `( BtGLDebugDrawerClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/GLDebugDrawer.h?r=2223#31>
     <http://code.google.com/p/bullet/source/browse/trunk/src/GLDebugDrawer.cpp?r=2223>
-}
{#fun btGLDebugDrawer_setDebugMode as btGLDebugDrawer_setDebugMode    `( BtGLDebugDrawerClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ debugMode
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/GLDebugDrawer.h?r=2223#20>
     <http://code.google.com/p/bullet/source/browse/trunk/src/GLDebugDrawer.cpp?r=2223>
-}
{#fun btGLDebugDrawer_drawSphere as btGLDebugDrawer_drawSphere    `( BtGLDebugDrawerClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ p
,  `Float'  -- ^ radius
, withVec3* `Vec3'  peekVec3* -- ^ color
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/GLDebugDrawer.h?r=2223#20>
     <http://code.google.com/p/bullet/source/browse/trunk/src/GLDebugDrawer.cpp?r=2223>
-}
{#fun btGLDebugDrawer_drawSphere as btGLDebugDrawer_drawSphere'    `( BtGLDebugDrawerClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ p
,  `Float'  -- ^ radius
, allocaVec3-  `Vec3'  peekVec3* -- ^ color
 } ->  `()'   #}
