{-#LANGUAGE ForeignFunctionInterface#-}
#include "Bullet.h"
module Physics.Bullet.Raw.BulletCollision.CollisionDispatch (
module Physics.Bullet.Raw.BulletCollision.CollisionDispatch
) where
import Control.Monad
import Foreign.Marshal.Alloc
import Foreign.ForeignPtr.Unsafe
import Foreign.Ptr
import Physics.Bullet.Raw.C2HS
import Physics.Bullet.Raw.Types
import Physics.Bullet.Raw.Class
-- * AllHitsRayResultCallback
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#269>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_AllHitsRayResultCallback_new as btCollisionWorld_AllHitsRayResultCallback    {  withVec3* `Vec3' , withVec3* `Vec3'  } -> `BtCollisionWorld_AllHitsRayResultCallback' mkBtCollisionWorld_AllHitsRayResultCallback* #}
{#fun btCollisionWorld_AllHitsRayResultCallback_free    `( BtCollisionWorld_AllHitsRayResultCallbackClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#284>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_AllHitsRayResultCallback_addSingleResult as btCollisionWorld_AllHitsRayResultCallback_addSingleResult    `( BtCollisionWorld_AllHitsRayResultCallbackClass bc , BtCollisionWorld_LocalRayResultClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ rayResult
,  `Bool'  -- ^ normalInWorldSpace
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#275>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_AllHitsRayResultCallback_m_collisionObjects_set    `( BtCollisionWorld_AllHitsRayResultCallbackClass bc , BtAlignedObjectArray_btCollisionObject_ptr_Class a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#275>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_AllHitsRayResultCallback_m_collisionObjects_get    `( BtCollisionWorld_AllHitsRayResultCallbackClass bc )' =>     { withBt* `bc'  } ->  `BtAlignedObjectArray_btCollisionObject_ptr_'  mkBtAlignedObjectArray_btCollisionObject_ptr_* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#282>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_AllHitsRayResultCallback_m_hitFractions_set    `( BtCollisionWorld_AllHitsRayResultCallbackClass bc , BtAlignedObjectArray_float_Class a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#282>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_AllHitsRayResultCallback_m_hitFractions_get    `( BtCollisionWorld_AllHitsRayResultCallbackClass bc )' =>     { withBt* `bc'  } ->  `BtAlignedObjectArray_float_'  mkBtAlignedObjectArray_float_* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#280>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_AllHitsRayResultCallback_m_hitNormalWorld_set    `( BtCollisionWorld_AllHitsRayResultCallbackClass bc , BtAlignedObjectArray_btVector3_Class a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#280>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_AllHitsRayResultCallback_m_hitNormalWorld_get    `( BtCollisionWorld_AllHitsRayResultCallbackClass bc )' =>     { withBt* `bc'  } ->  `BtAlignedObjectArray_btVector3_'  mkBtAlignedObjectArray_btVector3_* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#281>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_AllHitsRayResultCallback_m_hitPointWorld_set    `( BtCollisionWorld_AllHitsRayResultCallbackClass bc , BtAlignedObjectArray_btVector3_Class a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#281>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_AllHitsRayResultCallback_m_hitPointWorld_get    `( BtCollisionWorld_AllHitsRayResultCallbackClass bc )' =>     { withBt* `bc'  } ->  `BtAlignedObjectArray_btVector3_'  mkBtAlignedObjectArray_btVector3_* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#277>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_AllHitsRayResultCallback_m_rayFromWorld_set    `( BtCollisionWorld_AllHitsRayResultCallbackClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#277>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_AllHitsRayResultCallback_m_rayFromWorld_get    `( BtCollisionWorld_AllHitsRayResultCallbackClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#278>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_AllHitsRayResultCallback_m_rayToWorld_set    `( BtCollisionWorld_AllHitsRayResultCallbackClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#278>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_AllHitsRayResultCallback_m_rayToWorld_get    `( BtCollisionWorld_AllHitsRayResultCallbackClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
-- * ClosestConvexResultCallback
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#367>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_ClosestConvexResultCallback_new as btCollisionWorld_ClosestConvexResultCallback    {  withVec3* `Vec3' , withVec3* `Vec3'  } -> `BtCollisionWorld_ClosestConvexResultCallback' mkBtCollisionWorld_ClosestConvexResultCallback* #}
{#fun btCollisionWorld_ClosestConvexResultCallback_free    `( BtCollisionWorld_ClosestConvexResultCallbackClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#381>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_ClosestConvexResultCallback_addSingleResult as btCollisionWorld_ClosestConvexResultCallback_addSingleResult    `( BtCollisionWorld_ClosestConvexResultCallbackClass bc , BtCollisionWorld_LocalConvexResultClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ convexResult
,  `Bool'  -- ^ normalInWorldSpace
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#374>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_ClosestConvexResultCallback_m_convexFromWorld_set    `( BtCollisionWorld_ClosestConvexResultCallbackClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#374>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_ClosestConvexResultCallback_m_convexFromWorld_get    `( BtCollisionWorld_ClosestConvexResultCallbackClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#375>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_ClosestConvexResultCallback_m_convexToWorld_set    `( BtCollisionWorld_ClosestConvexResultCallbackClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#375>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_ClosestConvexResultCallback_m_convexToWorld_get    `( BtCollisionWorld_ClosestConvexResultCallbackClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#379>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_ClosestConvexResultCallback_m_hitCollisionObject_set    `( BtCollisionWorld_ClosestConvexResultCallbackClass bc , BtCollisionObjectClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#379>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_ClosestConvexResultCallback_m_hitCollisionObject_get    `( BtCollisionWorld_ClosestConvexResultCallbackClass bc )' =>     { withBt* `bc'  } ->  `BtCollisionObject'  mkBtCollisionObject* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#377>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_ClosestConvexResultCallback_m_hitNormalWorld_set    `( BtCollisionWorld_ClosestConvexResultCallbackClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#377>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_ClosestConvexResultCallback_m_hitNormalWorld_get    `( BtCollisionWorld_ClosestConvexResultCallbackClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#378>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_ClosestConvexResultCallback_m_hitPointWorld_set    `( BtCollisionWorld_ClosestConvexResultCallbackClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#378>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_ClosestConvexResultCallback_m_hitPointWorld_get    `( BtCollisionWorld_ClosestConvexResultCallbackClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
-- * ClosestRayResultCallback
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#235>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_ClosestRayResultCallback_new as btCollisionWorld_ClosestRayResultCallback    {  withVec3* `Vec3' , withVec3* `Vec3'  } -> `BtCollisionWorld_ClosestRayResultCallback' mkBtCollisionWorld_ClosestRayResultCallback* #}
{#fun btCollisionWorld_ClosestRayResultCallback_free    `( BtCollisionWorld_ClosestRayResultCallbackClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#247>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_ClosestRayResultCallback_addSingleResult as btCollisionWorld_ClosestRayResultCallback_addSingleResult    `( BtCollisionWorld_ClosestRayResultCallbackClass bc , BtCollisionWorld_LocalRayResultClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ rayResult
,  `Bool'  -- ^ normalInWorldSpace
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#244>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_ClosestRayResultCallback_m_hitNormalWorld_set    `( BtCollisionWorld_ClosestRayResultCallbackClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#244>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_ClosestRayResultCallback_m_hitNormalWorld_get    `( BtCollisionWorld_ClosestRayResultCallbackClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#245>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_ClosestRayResultCallback_m_hitPointWorld_set    `( BtCollisionWorld_ClosestRayResultCallbackClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#245>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_ClosestRayResultCallback_m_hitPointWorld_get    `( BtCollisionWorld_ClosestRayResultCallbackClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#241>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_ClosestRayResultCallback_m_rayFromWorld_set    `( BtCollisionWorld_ClosestRayResultCallbackClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#241>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_ClosestRayResultCallback_m_rayFromWorld_get    `( BtCollisionWorld_ClosestRayResultCallbackClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#242>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_ClosestRayResultCallback_m_rayToWorld_set    `( BtCollisionWorld_ClosestRayResultCallbackClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#242>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_ClosestRayResultCallback_m_rayToWorld_get    `( BtCollisionWorld_ClosestRayResultCallbackClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
-- * ContactResultCallback
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#424>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_ContactResultCallback_addSingleResult as btCollisionWorld_ContactResultCallback_addSingleResult    `( BtCollisionWorld_ContactResultCallbackClass bc , BtManifoldPointClass p0 , BtCollisionObjectClass p1 , BtCollisionObjectClass p4 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ cp
, withBt* `p1'  -- ^ colObj0
,  `Int'  -- ^ partId0
,  `Int'  -- ^ index0
, withBt* `p4'  -- ^ colObj1
,  `Int'  -- ^ partId1
,  `Int'  -- ^ index1
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#417>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_ContactResultCallback_needsCollision as btCollisionWorld_ContactResultCallback_needsCollision    `( BtCollisionWorld_ContactResultCallbackClass bc , BtBroadphaseProxyClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ proxy0
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#404>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_ContactResultCallback_m_collisionFilterGroup_set    `( BtCollisionWorld_ContactResultCallbackClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#404>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_ContactResultCallback_m_collisionFilterGroup_get    `( BtCollisionWorld_ContactResultCallbackClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#405>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_ContactResultCallback_m_collisionFilterMask_set    `( BtCollisionWorld_ContactResultCallbackClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#405>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_ContactResultCallback_m_collisionFilterMask_get    `( BtCollisionWorld_ContactResultCallbackClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
-- * ConvexResultCallback
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#362>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_ConvexResultCallback_addSingleResult as btCollisionWorld_ConvexResultCallback_addSingleResult    `( BtCollisionWorld_ConvexResultCallbackClass bc , BtCollisionWorld_LocalConvexResultClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ convexResult
,  `Bool'  -- ^ normalInWorldSpace
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#355>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_ConvexResultCallback_needsCollision as btCollisionWorld_ConvexResultCallback_needsCollision    `( BtCollisionWorld_ConvexResultCallbackClass bc , BtBroadphaseProxyClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ proxy0
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#348>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_ConvexResultCallback_hasHit as btCollisionWorld_ConvexResultCallback_hasHit    `( BtCollisionWorld_ConvexResultCallbackClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#333>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_ConvexResultCallback_m_closestHitFraction_set    `( BtCollisionWorld_ConvexResultCallbackClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#333>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_ConvexResultCallback_m_closestHitFraction_get    `( BtCollisionWorld_ConvexResultCallbackClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#334>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_ConvexResultCallback_m_collisionFilterGroup_set    `( BtCollisionWorld_ConvexResultCallbackClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#334>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_ConvexResultCallback_m_collisionFilterGroup_get    `( BtCollisionWorld_ConvexResultCallbackClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#335>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_ConvexResultCallback_m_collisionFilterMask_set    `( BtCollisionWorld_ConvexResultCallbackClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#335>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_ConvexResultCallback_m_collisionFilterMask_get    `( BtCollisionWorld_ConvexResultCallbackClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
-- * CreateFunc
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btSphereSphereCollisionAlgorithm.h?r=2223#55>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btSphereSphereCollisionAlgorithm.cpp?r=2223>
-}
{#fun btSphereSphereCollisionAlgorithm_CreateFunc_new as btSphereSphereCollisionAlgorithm_CreateFunc    {  } -> `BtSphereSphereCollisionAlgorithm_CreateFunc' mkBtSphereSphereCollisionAlgorithm_CreateFunc* #}
{#fun btSphereSphereCollisionAlgorithm_CreateFunc_free    `( BtSphereSphereCollisionAlgorithm_CreateFuncClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btSphereSphereCollisionAlgorithm.h?r=2223#56>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btSphereSphereCollisionAlgorithm.cpp?r=2223>
-}
{#fun btSphereSphereCollisionAlgorithm_CreateFunc_CreateCollisionAlgorithm as btSphereSphereCollisionAlgorithm_CreateFunc_CreateCollisionAlgorithm    `( BtSphereSphereCollisionAlgorithm_CreateFuncClass bc , BtCollisionAlgorithmConstructionInfoClass p0 , BtCollisionObjectClass p1 , BtCollisionObjectClass p2 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ ci
, withBt* `p1'  -- ^ body0
, withBt* `p2'  -- ^ body1
 } ->  `BtCollisionAlgorithm'  mkBtCollisionAlgorithm* #}
-- * CreateFunc
{#fun btConvexConvexAlgorithm_CreateFunc_free    `( BtConvexConvexAlgorithm_CreateFuncClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btConvexConvexAlgorithm.h?r=2223#99>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btConvexConvexAlgorithm.cpp?r=2223>
-}
{#fun btConvexConvexAlgorithm_CreateFunc_CreateCollisionAlgorithm as btConvexConvexAlgorithm_CreateFunc_CreateCollisionAlgorithm    `( BtConvexConvexAlgorithm_CreateFuncClass bc , BtCollisionAlgorithmConstructionInfoClass p0 , BtCollisionObjectClass p1 , BtCollisionObjectClass p2 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ ci
, withBt* `p1'  -- ^ body0
, withBt* `p2'  -- ^ body1
 } ->  `BtCollisionAlgorithm'  mkBtCollisionAlgorithm* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btConvexConvexAlgorithm.h?r=2223#91>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btConvexConvexAlgorithm.cpp?r=2223>
-}
{#fun btConvexConvexAlgorithm_CreateFunc_m_simplexSolver_set    `( BtConvexConvexAlgorithm_CreateFuncClass bc , BtVoronoiSimplexSolverClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btConvexConvexAlgorithm.h?r=2223#91>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btConvexConvexAlgorithm.cpp?r=2223>
-}
{#fun btConvexConvexAlgorithm_CreateFunc_m_simplexSolver_get    `( BtConvexConvexAlgorithm_CreateFuncClass bc )' =>     { withBt* `bc'  } ->  `BtVoronoiSimplexSolver'  mkBtVoronoiSimplexSolver* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btConvexConvexAlgorithm.h?r=2223#92>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btConvexConvexAlgorithm.cpp?r=2223>
-}
{#fun btConvexConvexAlgorithm_CreateFunc_m_numPerturbationIterations_set    `( BtConvexConvexAlgorithm_CreateFuncClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btConvexConvexAlgorithm.h?r=2223#92>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btConvexConvexAlgorithm.cpp?r=2223>
-}
{#fun btConvexConvexAlgorithm_CreateFunc_m_numPerturbationIterations_get    `( BtConvexConvexAlgorithm_CreateFuncClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btConvexConvexAlgorithm.h?r=2223#93>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btConvexConvexAlgorithm.cpp?r=2223>
-}
{#fun btConvexConvexAlgorithm_CreateFunc_m_minimumPointsPerturbationThreshold_set    `( BtConvexConvexAlgorithm_CreateFuncClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btConvexConvexAlgorithm.h?r=2223#93>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btConvexConvexAlgorithm.cpp?r=2223>
-}
{#fun btConvexConvexAlgorithm_CreateFunc_m_minimumPointsPerturbationThreshold_get    `( BtConvexConvexAlgorithm_CreateFuncClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
-- * LocalConvexResult
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#314>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_LocalConvexResult_new as btCollisionWorld_LocalConvexResult    `( BtCollisionObjectClass p0 , BtCollisionWorld_LocalShapeInfoClass p1 )' =>     {  withBt* `p0' , withBt* `p1' , withVec3* `Vec3' , withVec3* `Vec3' ,  `Float'  } -> `BtCollisionWorld_LocalConvexResult' mkBtCollisionWorld_LocalConvexResult* #}
{#fun btCollisionWorld_LocalConvexResult_free    `( BtCollisionWorld_LocalConvexResultClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#323>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_LocalConvexResult_m_hitCollisionObject_set    `( BtCollisionWorld_LocalConvexResultClass bc , BtCollisionObjectClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#323>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_LocalConvexResult_m_hitCollisionObject_get    `( BtCollisionWorld_LocalConvexResultClass bc )' =>     { withBt* `bc'  } ->  `BtCollisionObject'  mkBtCollisionObject* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#327>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_LocalConvexResult_m_hitFraction_set    `( BtCollisionWorld_LocalConvexResultClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#327>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_LocalConvexResult_m_hitFraction_get    `( BtCollisionWorld_LocalConvexResultClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#325>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_LocalConvexResult_m_hitNormalLocal_set    `( BtCollisionWorld_LocalConvexResultClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#325>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_LocalConvexResult_m_hitNormalLocal_get    `( BtCollisionWorld_LocalConvexResultClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#326>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_LocalConvexResult_m_hitPointLocal_set    `( BtCollisionWorld_LocalConvexResultClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#326>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_LocalConvexResult_m_hitPointLocal_get    `( BtCollisionWorld_LocalConvexResultClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#324>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_LocalConvexResult_m_localShapeInfo_set    `( BtCollisionWorld_LocalConvexResultClass bc , BtCollisionWorld_LocalShapeInfoClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#324>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_LocalConvexResult_m_localShapeInfo_get    `( BtCollisionWorld_LocalConvexResultClass bc )' =>     { withBt* `bc'  } ->  `BtCollisionWorld_LocalShapeInfo'  mkBtCollisionWorld_LocalShapeInfo* #}
-- * LocalRayResult
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#179>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_LocalRayResult_new as btCollisionWorld_LocalRayResult    `( BtCollisionObjectClass p0 , BtCollisionWorld_LocalShapeInfoClass p1 )' =>     {  withBt* `p0' , withBt* `p1' , withVec3* `Vec3' ,  `Float'  } -> `BtCollisionWorld_LocalRayResult' mkBtCollisionWorld_LocalRayResult* #}
{#fun btCollisionWorld_LocalRayResult_free    `( BtCollisionWorld_LocalRayResultClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#187>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_LocalRayResult_m_collisionObject_set    `( BtCollisionWorld_LocalRayResultClass bc , BtCollisionObjectClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#187>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_LocalRayResult_m_collisionObject_get    `( BtCollisionWorld_LocalRayResultClass bc )' =>     { withBt* `bc'  } ->  `BtCollisionObject'  mkBtCollisionObject* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#190>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_LocalRayResult_m_hitFraction_set    `( BtCollisionWorld_LocalRayResultClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#190>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_LocalRayResult_m_hitFraction_get    `( BtCollisionWorld_LocalRayResultClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#189>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_LocalRayResult_m_hitNormalLocal_set    `( BtCollisionWorld_LocalRayResultClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#189>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_LocalRayResult_m_hitNormalLocal_get    `( BtCollisionWorld_LocalRayResultClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#188>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_LocalRayResult_m_localShapeInfo_set    `( BtCollisionWorld_LocalRayResultClass bc , BtCollisionWorld_LocalShapeInfoClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#188>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_LocalRayResult_m_localShapeInfo_get    `( BtCollisionWorld_LocalRayResultClass bc )' =>     { withBt* `bc'  } ->  `BtCollisionWorld_LocalShapeInfo'  mkBtCollisionWorld_LocalShapeInfo* #}
-- * LocalShapeInfo
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#166>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_LocalShapeInfo_new as btCollisionWorld_LocalShapeInfo    {  } -> `BtCollisionWorld_LocalShapeInfo' mkBtCollisionWorld_LocalShapeInfo* #}
{#fun btCollisionWorld_LocalShapeInfo_free    `( BtCollisionWorld_LocalShapeInfoClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#167>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_LocalShapeInfo_m_shapePart_set    `( BtCollisionWorld_LocalShapeInfoClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#167>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_LocalShapeInfo_m_shapePart_get    `( BtCollisionWorld_LocalShapeInfoClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#168>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_LocalShapeInfo_m_triangleIndex_set    `( BtCollisionWorld_LocalShapeInfoClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#168>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_LocalShapeInfo_m_triangleIndex_get    `( BtCollisionWorld_LocalShapeInfoClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
-- * RayResultCallback
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#230>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_RayResultCallback_addSingleResult as btCollisionWorld_RayResultCallback_addSingleResult    `( BtCollisionWorld_RayResultCallbackClass bc , BtCollisionWorld_LocalRayResultClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ rayResult
,  `Bool'  -- ^ normalInWorldSpace
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#222>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_RayResultCallback_needsCollision as btCollisionWorld_RayResultCallback_needsCollision    `( BtCollisionWorld_RayResultCallbackClass bc , BtBroadphaseProxyClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ proxy0
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#207>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_RayResultCallback_hasHit as btCollisionWorld_RayResultCallback_hasHit    `( BtCollisionWorld_RayResultCallbackClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#197>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_RayResultCallback_m_closestHitFraction_set    `( BtCollisionWorld_RayResultCallbackClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#197>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_RayResultCallback_m_closestHitFraction_get    `( BtCollisionWorld_RayResultCallbackClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#199>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_RayResultCallback_m_collisionFilterGroup_set    `( BtCollisionWorld_RayResultCallbackClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#199>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_RayResultCallback_m_collisionFilterGroup_get    `( BtCollisionWorld_RayResultCallbackClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#200>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_RayResultCallback_m_collisionFilterMask_set    `( BtCollisionWorld_RayResultCallbackClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#200>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_RayResultCallback_m_collisionFilterMask_get    `( BtCollisionWorld_RayResultCallbackClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#198>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_RayResultCallback_m_collisionObject_set    `( BtCollisionWorld_RayResultCallbackClass bc , BtCollisionObjectClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#198>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_RayResultCallback_m_collisionObject_get    `( BtCollisionWorld_RayResultCallbackClass bc )' =>     { withBt* `bc'  } ->  `BtCollisionObject'  mkBtCollisionObject* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#202>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_RayResultCallback_m_flags_set    `( BtCollisionWorld_RayResultCallbackClass bc )' =>     { withBt* `bc' ,  `Word32'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#202>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_RayResultCallback_m_flags_get    `( BtCollisionWorld_RayResultCallbackClass bc )' =>     { withBt* `bc'  } ->  `Word32'   #}
-- * btActivatingCollisionAlgorithm
-- * btCollisionAlgorithmCreateFunc
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionCreateFunc.h?r=2223#30>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionCreateFunc.cpp?r=2223>
-}
{#fun btCollisionAlgorithmCreateFunc_new as btCollisionAlgorithmCreateFunc    {  } -> `BtCollisionAlgorithmCreateFunc' mkBtCollisionAlgorithmCreateFunc* #}
{#fun btCollisionAlgorithmCreateFunc_free    `( BtCollisionAlgorithmCreateFuncClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionCreateFunc.h?r=2223#36>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionCreateFunc.cpp?r=2223>
-}
{#fun btCollisionAlgorithmCreateFunc_CreateCollisionAlgorithm as btCollisionAlgorithmCreateFunc_CreateCollisionAlgorithm    `( BtCollisionAlgorithmCreateFuncClass bc , BtCollisionAlgorithmConstructionInfoClass p0 , BtCollisionObjectClass p1 , BtCollisionObjectClass p2 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ arg0
, withBt* `p1'  -- ^ body0
, withBt* `p2'  -- ^ body1
 } ->  `BtCollisionAlgorithm'  mkBtCollisionAlgorithm* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionCreateFunc.h?r=2223#28>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionCreateFunc.cpp?r=2223>
-}
{#fun btCollisionAlgorithmCreateFunc_m_swapped_set    `( BtCollisionAlgorithmCreateFuncClass bc )' =>     { withBt* `bc' ,  `Bool'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionCreateFunc.h?r=2223#28>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionCreateFunc.cpp?r=2223>
-}
{#fun btCollisionAlgorithmCreateFunc_m_swapped_get    `( BtCollisionAlgorithmCreateFuncClass bc )' =>     { withBt* `bc'  } ->  `Bool'   #}
-- * btCollisionConfiguration
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionConfiguration.h?r=2223#41>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionConfiguration.cpp?r=2223>
-}
{#fun btCollisionConfiguration_getStackAllocator as btCollisionConfiguration_getStackAllocator    `( BtCollisionConfigurationClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtStackAlloc'  mkBtStackAlloc* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionConfiguration.h?r=2223#43>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionConfiguration.cpp?r=2223>
-}
{#fun btCollisionConfiguration_getCollisionAlgorithmCreateFunc as btCollisionConfiguration_getCollisionAlgorithmCreateFunc    `( BtCollisionConfigurationClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ proxyType0
,  `Int'  -- ^ proxyType1
 } ->  `BtCollisionAlgorithmCreateFunc'  mkBtCollisionAlgorithmCreateFunc* #}
-- * btCollisionDispatcher
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionDispatcher.h?r=2223#107>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionDispatcher.cpp?r=2223>
-}
{#fun btCollisionDispatcher_new as btCollisionDispatcher    `( BtCollisionConfigurationClass p0 )' =>     {  withBt* `p0'  } -> `BtCollisionDispatcher' mkBtCollisionDispatcher* #}
{#fun btCollisionDispatcher_free    `( BtCollisionDispatcherClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionDispatcher.h?r=2223#140>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionDispatcher.cpp?r=2223>
-}
{#fun btCollisionDispatcher_allocateCollisionAlgorithm as btCollisionDispatcher_allocateCollisionAlgorithm    `( BtCollisionDispatcherClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ size
 } ->  `VoidPtr'  mkVoidPtr* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionDispatcher.h?r=2223#74>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionDispatcher.cpp?r=2223>
-}
{#fun btCollisionDispatcher_getDispatcherFlags as btCollisionDispatcher_getDispatcherFlags    `( BtCollisionDispatcherClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionDispatcher.h?r=2223#144>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionDispatcher.cpp?r=2223>
-}
{#fun btCollisionDispatcher_getCollisionConfiguration0 as btCollisionDispatcher_getCollisionConfiguration    `( BtCollisionDispatcherClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtCollisionConfiguration'  mkBtCollisionConfiguration* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionDispatcher.h?r=2223#144>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionDispatcher.cpp?r=2223>
-}
{#fun btCollisionDispatcher_getCollisionConfiguration0 as btCollisionDispatcher_getCollisionConfiguration0    `( BtCollisionDispatcherClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtCollisionConfiguration'  mkBtCollisionConfiguration* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionDispatcher.h?r=2223#149>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionDispatcher.cpp?r=2223>
-}
{#fun btCollisionDispatcher_getCollisionConfiguration1 as btCollisionDispatcher_getCollisionConfiguration1    `( BtCollisionDispatcherClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtCollisionConfiguration'  mkBtCollisionConfiguration* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionDispatcher.h?r=2223#79>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionDispatcher.cpp?r=2223>
-}
{#fun btCollisionDispatcher_setDispatcherFlags as btCollisionDispatcher_setDispatcherFlags    `( BtCollisionDispatcherClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ flags
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionDispatcher.h?r=2223#113>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionDispatcher.cpp?r=2223>
-}
{#fun btCollisionDispatcher_releaseManifold as btCollisionDispatcher_releaseManifold    `( BtCollisionDispatcherClass bc , BtPersistentManifoldClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ manifold
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionDispatcher.h?r=2223#154>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionDispatcher.cpp?r=2223>
-}
{#fun btCollisionDispatcher_setCollisionConfiguration as btCollisionDispatcher_setCollisionConfiguration    `( BtCollisionDispatcherClass bc , BtCollisionConfigurationClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ config
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionDispatcher.h?r=2223#87>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionDispatcher.cpp?r=2223>
-}
{#fun btCollisionDispatcher_getNumManifolds as btCollisionDispatcher_getNumManifolds    `( BtCollisionDispatcherClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionDispatcher.h?r=2223#116>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionDispatcher.cpp?r=2223>
-}
{#fun btCollisionDispatcher_clearManifold as btCollisionDispatcher_clearManifold    `( BtCollisionDispatcherClass bc , BtPersistentManifoldClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ manifold
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionDispatcher.h?r=2223#142>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionDispatcher.cpp?r=2223>
-}
{#fun btCollisionDispatcher_freeCollisionAlgorithm as btCollisionDispatcher_freeCollisionAlgorithm    `( BtCollisionDispatcherClass bc )' =>     { withBt* `bc'  -- ^ 
, withVoidPtr* `VoidPtr'  -- ^ ptr
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionDispatcher.h?r=2223#85>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionDispatcher.cpp?r=2223>
-}
{#fun btCollisionDispatcher_registerCollisionCreateFunc as btCollisionDispatcher_registerCollisionCreateFunc    `( BtCollisionDispatcherClass bc , BtCollisionAlgorithmCreateFuncClass p2 )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ proxyType0
,  `Int'  -- ^ proxyType1
, withBt* `p2'  -- ^ createFunc
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionDispatcher.h?r=2223#138>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionDispatcher.cpp?r=2223>
-}
{#fun btCollisionDispatcher_defaultNearCallback as btCollisionDispatcher_defaultNearCallback    `(  BtBroadphasePairClass p0 , BtCollisionDispatcherClass p1 , BtDispatcherInfoClass p2 )' =>     {  withBt* `p0'  -- ^ collisionPair
, withBt* `p1'  -- ^ dispatcher
, withBt* `p2'  -- ^ dispatchInfo
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionDispatcher.h?r=2223#119>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionDispatcher.cpp?r=2223>
-}
{#fun btCollisionDispatcher_findAlgorithm as btCollisionDispatcher_findAlgorithm    `( BtCollisionDispatcherClass bc , BtCollisionObjectClass p0 , BtCollisionObjectClass p1 , BtPersistentManifoldClass p2 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ body0
, withBt* `p1'  -- ^ body1
, withBt* `p2'  -- ^ sharedManifold
 } ->  `BtCollisionAlgorithm'  mkBtCollisionAlgorithm* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionDispatcher.h?r=2223#123>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionDispatcher.cpp?r=2223>
-}
{#fun btCollisionDispatcher_needsResponse as btCollisionDispatcher_needsResponse    `( BtCollisionDispatcherClass bc , BtCollisionObjectClass p0 , BtCollisionObjectClass p1 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ body0
, withBt* `p1'  -- ^ body1
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionDispatcher.h?r=2223#111>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionDispatcher.cpp?r=2223>
-}
{#fun btCollisionDispatcher_getNewManifold as btCollisionDispatcher_getNewManifold    `( BtCollisionDispatcherClass bc )' =>     { withBt* `bc'  -- ^ 
, withVoidPtr* `VoidPtr'  -- ^ b0
, withVoidPtr* `VoidPtr'  -- ^ b1
 } ->  `BtPersistentManifold'  mkBtPersistentManifold* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionDispatcher.h?r=2223#125>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionDispatcher.cpp?r=2223>
-}
{#fun btCollisionDispatcher_dispatchAllCollisionPairs as btCollisionDispatcher_dispatchAllCollisionPairs    `( BtCollisionDispatcherClass bc , BtOverlappingPairCacheClass p0 , BtDispatcherInfoClass p1 , BtDispatcherClass p2 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ pairCache
, withBt* `p1'  -- ^ dispatchInfo
, withBt* `p2'  -- ^ dispatcher
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionDispatcher.h?r=2223#121>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionDispatcher.cpp?r=2223>
-}
{#fun btCollisionDispatcher_needsCollision as btCollisionDispatcher_needsCollision    `( BtCollisionDispatcherClass bc , BtCollisionObjectClass p0 , BtCollisionObjectClass p1 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ body0
, withBt* `p1'  -- ^ body1
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionDispatcher.h?r=2223#97>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionDispatcher.cpp?r=2223>
-}
{#fun btCollisionDispatcher_getManifoldByIndexInternal0 as btCollisionDispatcher_getManifoldByIndexInternal    `( BtCollisionDispatcherClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ index
 } ->  `BtPersistentManifold'  mkBtPersistentManifold* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionDispatcher.h?r=2223#97>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionDispatcher.cpp?r=2223>
-}
{#fun btCollisionDispatcher_getManifoldByIndexInternal0 as btCollisionDispatcher_getManifoldByIndexInternal0    `( BtCollisionDispatcherClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ index
 } ->  `BtPersistentManifold'  mkBtPersistentManifold* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionDispatcher.h?r=2223#102>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionDispatcher.cpp?r=2223>
-}
{#fun btCollisionDispatcher_getManifoldByIndexInternal1 as btCollisionDispatcher_getManifoldByIndexInternal1    `( BtCollisionDispatcherClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ index
 } ->  `BtPersistentManifold'  mkBtPersistentManifold* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionDispatcher.h?r=2223#62>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionDispatcher.cpp?r=2223>
-}
{#fun btCollisionDispatcher_m_collisionConfiguration_set    `( BtCollisionDispatcherClass bc , BtCollisionConfigurationClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionDispatcher.h?r=2223#62>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionDispatcher.cpp?r=2223>
-}
{#fun btCollisionDispatcher_m_collisionConfiguration_get    `( BtCollisionDispatcherClass bc )' =>     { withBt* `bc'  } ->  `BtCollisionConfiguration'  mkBtCollisionConfiguration* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionDispatcher.h?r=2223#52>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionDispatcher.cpp?r=2223>
-}
{#fun btCollisionDispatcher_m_defaultManifoldResult_set    `( BtCollisionDispatcherClass bc , BtManifoldResultClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionDispatcher.h?r=2223#52>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionDispatcher.cpp?r=2223>
-}
{#fun btCollisionDispatcher_m_defaultManifoldResult_get    `( BtCollisionDispatcherClass bc )' =>     { withBt* `bc'  } ->  `BtManifoldResult'  mkBtManifoldResult* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionDispatcher.h?r=2223#48>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionDispatcher.cpp?r=2223>
-}
{#fun btCollisionDispatcher_m_dispatcherFlags_set    `( BtCollisionDispatcherClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionDispatcher.h?r=2223#48>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionDispatcher.cpp?r=2223>
-}
{#fun btCollisionDispatcher_m_dispatcherFlags_get    `( BtCollisionDispatcherClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionDispatcher.h?r=2223#50>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionDispatcher.cpp?r=2223>
-}
{#fun btCollisionDispatcher_m_manifoldsPtr_set    `( BtCollisionDispatcherClass bc , BtAlignedObjectArray_btPersistentManifold_ptr_Class a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionDispatcher.h?r=2223#50>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionDispatcher.cpp?r=2223>
-}
{#fun btCollisionDispatcher_m_manifoldsPtr_get    `( BtCollisionDispatcherClass bc )' =>     { withBt* `bc'  } ->  `BtAlignedObjectArray_btPersistentManifold_ptr_'  mkBtAlignedObjectArray_btPersistentManifold_ptr_* #}
-- * btCollisionObject
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#190>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObject_new as btCollisionObject    {  } -> `BtCollisionObject' mkBtCollisionObject* #}
{#fun btCollisionObject_free    `( BtCollisionObjectClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#410>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObject_getCcdSquareMotionThreshold as btCollisionObject_getCcdSquareMotionThreshold    `( BtCollisionObjectClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#255>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObject_activate as btCollisionObject_activate    `( BtCollisionObjectClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Bool'  -- ^ forceActivation
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#332>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObject_setInterpolationLinearVelocity as btCollisionObject_setInterpolationLinearVelocity    `( BtCollisionObjectClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ linvel
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#332>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObject_setInterpolationLinearVelocity as btCollisionObject_setInterpolationLinearVelocity'    `( BtCollisionObjectClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ linvel
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#274>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObject_getFriction as btCollisionObject_getFriction    `( BtCollisionObjectClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#367>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObject_setCompanionId as btCollisionObject_setCompanionId    `( BtCollisionObjectClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ id
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#337>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObject_setInterpolationAngularVelocity as btCollisionObject_setInterpolationAngularVelocity    `( BtCollisionObjectClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ angvel
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#337>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObject_setInterpolationAngularVelocity as btCollisionObject_setInterpolationAngularVelocity'    `( BtCollisionObjectClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ angvel
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#447>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObject_serialize as btCollisionObject_serialize    `( BtCollisionObjectClass bc , BtSerializerClass p1 )' =>     { withBt* `bc'  -- ^ 
, withVoidPtr* `VoidPtr'  -- ^ dataBuffer
, withBt* `p1'  -- ^ serializer
 } ->  `String'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#295>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObject_setWorldTransform as btCollisionObject_setWorldTransform    `( BtCollisionObjectClass bc )' =>     { withBt* `bc'  -- ^ 
, withTransform* `Transform'  peekTransform* -- ^ worldTrans
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#295>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObject_setWorldTransform as btCollisionObject_setWorldTransform'    `( BtCollisionObjectClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaTransform-  `Transform'  peekTransform* -- ^ worldTrans
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#362>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObject_getCompanionId as btCollisionObject_getCompanionId    `( BtCollisionObjectClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#235>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObject_internalSetExtensionPointer as btCollisionObject_internalSetExtensionPointer    `( BtCollisionObjectClass bc )' =>     { withBt* `bc'  -- ^ 
, withVoidPtr* `VoidPtr'  -- ^ pointer
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#162>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObject_setContactProcessingThreshold as btCollisionObject_setContactProcessingThreshold    `( BtCollisionObjectClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ contactProcessingThreshold
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#327>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObject_setInterpolationWorldTransform as btCollisionObject_setInterpolationWorldTransform    `( BtCollisionObjectClass bc )' =>     { withBt* `bc'  -- ^ 
, withTransform* `Transform'  peekTransform* -- ^ trans
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#327>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObject_setInterpolationWorldTransform as btCollisionObject_setInterpolationWorldTransform'    `( BtCollisionObjectClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaTransform-  `Transform'  peekTransform* -- ^ trans
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#342>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObject_getInterpolationLinearVelocity as btCollisionObject_getInterpolationLinearVelocity    `( BtCollisionObjectClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#140>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObject_mergesSimulationIslands as btCollisionObject_mergesSimulationIslands    `( BtCollisionObjectClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#194>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObject_setCollisionShape as btCollisionObject_setCollisionShape    `( BtCollisionObjectClass bc , BtCollisionShapeClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ collisionShape
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#418>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObject_setCcdMotionThreshold as btCollisionObject_setCcdMotionThreshold    `( BtCollisionObjectClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ ccdMotionThreshold
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#352>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObject_getIslandTag as btCollisionObject_getIslandTag    `( BtCollisionObjectClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#517>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObject_calculateSerializeBufferSize as btCollisionObject_calculateSerializeBufferSize    `( BtCollisionObjectClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#405>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObject_getCcdMotionThreshold as btCollisionObject_getCcdMotionThreshold    `( BtCollisionObjectClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#430>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObject_setUserPointer as btCollisionObject_setUserPointer    `( BtCollisionObjectClass bc )' =>     { withBt* `bc'  -- ^ 
, withVoidPtr* `VoidPtr'  -- ^ userPointer
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#436>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObject_checkCollideWith as btCollisionObject_checkCollideWith    `( BtCollisionObjectClass bc , BtCollisionObjectClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ co
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#146>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObject_getAnisotropicFriction as btCollisionObject_getAnisotropicFriction    `( BtCollisionObjectClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#347>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObject_getInterpolationAngularVelocity as btCollisionObject_getInterpolationAngularVelocity    `( BtCollisionObjectClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#253>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObject_forceActivationState as btCollisionObject_forceActivationState    `( BtCollisionObjectClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ newState
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#171>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObject_isStaticObject as btCollisionObject_isStaticObject    `( BtCollisionObjectClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#270>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObject_setFriction as btCollisionObject_setFriction    `( BtCollisionObjectClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ frict
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#317>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObject_getInterpolationWorldTransform0 as btCollisionObject_getInterpolationWorldTransform    `( BtCollisionObjectClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaTransform-  `Transform'  peekTransform* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#317>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObject_getInterpolationWorldTransform0 as btCollisionObject_getInterpolationWorldTransform0    `( BtCollisionObjectClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaTransform-  `Transform'  peekTransform* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#322>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObject_getInterpolationWorldTransform1 as btCollisionObject_getInterpolationWorldTransform1    `( BtCollisionObjectClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaTransform-  `Transform'  peekTransform* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#357>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObject_setIslandTag as btCollisionObject_setIslandTag    `( BtCollisionObjectClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ tag
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#377>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObject_setHitFraction as btCollisionObject_setHitFraction    `( BtCollisionObjectClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ hitFraction
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#449>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObject_serializeSingleObject as btCollisionObject_serializeSingleObject    `( BtCollisionObjectClass bc , BtSerializerClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ serializer
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#383>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObject_getCollisionFlags as btCollisionObject_getCollisionFlags    `( BtCollisionObjectClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#248>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObject_getDeactivationTime as btCollisionObject_getDeactivationTime    `( BtCollisionObjectClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#200>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObject_getCollisionShape0 as btCollisionObject_getCollisionShape    `( BtCollisionObjectClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtCollisionShape'  mkBtCollisionShape* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#200>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObject_getCollisionShape0 as btCollisionObject_getCollisionShape0    `( BtCollisionObjectClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtCollisionShape'  mkBtCollisionShape* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#205>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObject_getCollisionShape1 as btCollisionObject_getCollisionShape1    `( BtCollisionObjectClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtCollisionShape'  mkBtCollisionShape* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#150>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObject_setAnisotropicFriction as btCollisionObject_setAnisotropicFriction    `( BtCollisionObjectClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ anisotropicFriction
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#150>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObject_setAnisotropicFriction as btCollisionObject_setAnisotropicFriction'    `( BtCollisionObjectClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ anisotropicFriction
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#108>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObject_checkCollideWithOverride as btCollisionObject_checkCollideWithOverride    `( BtCollisionObjectClass bc , BtCollisionObjectClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ arg0
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#301>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObject_getBroadphaseHandle0 as btCollisionObject_getBroadphaseHandle    `( BtCollisionObjectClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtBroadphaseProxy'  mkBtBroadphaseProxy* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#301>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObject_getBroadphaseHandle0 as btCollisionObject_getBroadphaseHandle0    `( BtCollisionObjectClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtBroadphaseProxy'  mkBtBroadphaseProxy* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#306>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObject_getBroadphaseHandle1 as btCollisionObject_getBroadphaseHandle1    `( BtCollisionObjectClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtBroadphaseProxy'  mkBtBroadphaseProxy* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#424>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObject_getUserPointer as btCollisionObject_getUserPointer    `( BtCollisionObjectClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `VoidPtr'  mkVoidPtr* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#400>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObject_setCcdSweptSphereRadius as btCollisionObject_setCcdSweptSphereRadius    `( BtCollisionObjectClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ radius
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#285>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObject_getWorldTransform0 as btCollisionObject_getWorldTransform    `( BtCollisionObjectClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaTransform-  `Transform'  peekTransform* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#285>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObject_getWorldTransform0 as btCollisionObject_getWorldTransform0    `( BtCollisionObjectClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaTransform-  `Transform'  peekTransform* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#290>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObject_getWorldTransform1 as btCollisionObject_getWorldTransform1    `( BtCollisionObjectClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaTransform-  `Transform'  peekTransform* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#388>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObject_setCollisionFlags as btCollisionObject_setCollisionFlags    `( BtCollisionObjectClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ flags
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#222>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObject_internalSetTemporaryCollisionShape as btCollisionObject_internalSetTemporaryCollisionShape    `( BtCollisionObjectClass bc , BtCollisionShapeClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ collisionShape
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#372>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObject_getHitFraction as btCollisionObject_getHitFraction    `( BtCollisionObjectClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#257>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObject_isActive as btCollisionObject_isActive    `( BtCollisionObjectClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#242>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObject_setActivationState as btCollisionObject_setActivationState    `( BtCollisionObjectClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ newState
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#280>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObject_getInternalType as btCollisionObject_getInternalType    `( BtCollisionObjectClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#240>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObject_getActivationState as btCollisionObject_getActivationState    `( BtCollisionObjectClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#185>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObject_hasContactResponse as btCollisionObject_hasContactResponse    `( BtCollisionObjectClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#210>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObject_getRootCollisionShape0 as btCollisionObject_getRootCollisionShape    `( BtCollisionObjectClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtCollisionShape'  mkBtCollisionShape* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#210>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObject_getRootCollisionShape0 as btCollisionObject_getRootCollisionShape0    `( BtCollisionObjectClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtCollisionShape'  mkBtCollisionShape* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#215>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObject_getRootCollisionShape1 as btCollisionObject_getRootCollisionShape1    `( BtCollisionObjectClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtCollisionShape'  mkBtCollisionShape* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#266>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObject_getRestitution as btCollisionObject_getRestitution    `( BtCollisionObjectClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#394>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObject_getCcdSweptSphereRadius as btCollisionObject_getCcdSweptSphereRadius    `( BtCollisionObjectClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#166>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObject_getContactProcessingThreshold as btCollisionObject_getContactProcessingThreshold    `( BtCollisionObjectClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#244>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObject_setDeactivationTime as btCollisionObject_setDeactivationTime    `( BtCollisionObjectClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ time
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#229>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObject_internalGetExtensionPointer as btCollisionObject_internalGetExtensionPointer    `( BtCollisionObjectClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `VoidPtr'  mkVoidPtr* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#180>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObject_isStaticOrKinematicObject as btCollisionObject_isStaticOrKinematicObject    `( BtCollisionObjectClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#262>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObject_setRestitution as btCollisionObject_setRestitution    `( BtCollisionObjectClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ rest
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#155>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObject_hasAnisotropicFriction as btCollisionObject_hasAnisotropicFriction    `( BtCollisionObjectClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#311>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObject_setBroadphaseHandle as btCollisionObject_setBroadphaseHandle    `( BtCollisionObjectClass bc , BtBroadphaseProxyClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ handle
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#175>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObject_isKinematicObject as btCollisionObject_isKinematicObject    `( BtCollisionObjectClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#83>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObject_m_activationState1_set    `( BtCollisionObjectClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#83>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObject_m_activationState1_get    `( BtCollisionObjectClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#64>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObject_m_anisotropicFriction_set    `( BtCollisionObjectClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#64>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObject_m_anisotropicFriction_get    `( BtCollisionObjectClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#68>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObject_m_broadphaseHandle_set    `( BtCollisionObjectClass bc , BtBroadphaseProxyClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#68>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObject_m_broadphaseHandle_get    `( BtCollisionObjectClass bc )' =>     { withBt* `bc'  } ->  `BtBroadphaseProxy'  mkBtBroadphaseProxy* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#103>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObject_m_ccdMotionThreshold_set    `( BtCollisionObjectClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#103>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObject_m_ccdMotionThreshold_get    `( BtCollisionObjectClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#100>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObject_m_ccdSweptSphereRadius_set    `( BtCollisionObjectClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#100>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObject_m_ccdSweptSphereRadius_get    `( BtCollisionObjectClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#106>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObject_m_checkCollideWith_set    `( BtCollisionObjectClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#106>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObject_m_checkCollideWith_get    `( BtCollisionObjectClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#78>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObject_m_collisionFlags_set    `( BtCollisionObjectClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#78>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObject_m_collisionFlags_get    `( BtCollisionObjectClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#69>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObject_m_collisionShape_set    `( BtCollisionObjectClass bc , BtCollisionShapeClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#69>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObject_m_collisionShape_get    `( BtCollisionObjectClass bc )' =>     { withBt* `bc'  } ->  `BtCollisionShape'  mkBtCollisionShape* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#81>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObject_m_companionId_set    `( BtCollisionObjectClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#81>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObject_m_companionId_get    `( BtCollisionObjectClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#66>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObject_m_contactProcessingThreshold_set    `( BtCollisionObjectClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#66>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObject_m_contactProcessingThreshold_get    `( BtCollisionObjectClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#84>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObject_m_deactivationTime_set    `( BtCollisionObjectClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#84>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObject_m_deactivationTime_get    `( BtCollisionObjectClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#71>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObject_m_extensionPointer_set    `( BtCollisionObjectClass bc )' =>     { withBt* `bc' , withVoidPtr* `VoidPtr'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#71>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObject_m_extensionPointer_get    `( BtCollisionObjectClass bc )' =>     { withBt* `bc'  } ->  `VoidPtr'  mkVoidPtr* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#86>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObject_m_friction_set    `( BtCollisionObjectClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#86>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObject_m_friction_get    `( BtCollisionObjectClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#65>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObject_m_hasAnisotropicFriction_set    `( BtCollisionObjectClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#65>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObject_m_hasAnisotropicFriction_get    `( BtCollisionObjectClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#97>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObject_m_hitFraction_set    `( BtCollisionObjectClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#97>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObject_m_hitFraction_get    `( BtCollisionObjectClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#91>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObject_m_internalType_set    `( BtCollisionObjectClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#91>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObject_m_internalType_get    `( BtCollisionObjectClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#62>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObject_m_interpolationAngularVelocity_set    `( BtCollisionObjectClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#62>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObject_m_interpolationAngularVelocity_get    `( BtCollisionObjectClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#61>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObject_m_interpolationLinearVelocity_set    `( BtCollisionObjectClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#61>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObject_m_interpolationLinearVelocity_get    `( BtCollisionObjectClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#58>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObject_m_interpolationWorldTransform_set    `( BtCollisionObjectClass bc )' =>     { withBt* `bc' , withTransform* `Transform'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#58>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObject_m_interpolationWorldTransform_get    `( BtCollisionObjectClass bc )' =>     { withBt* `bc' , allocaTransform-  `Transform'  peekTransform* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#80>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObject_m_islandTag1_set    `( BtCollisionObjectClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#80>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObject_m_islandTag1_get    `( BtCollisionObjectClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#87>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObject_m_restitution_set    `( BtCollisionObjectClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#87>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObject_m_restitution_get    `( BtCollisionObjectClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#76>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObject_m_rootCollisionShape_set    `( BtCollisionObjectClass bc , BtCollisionShapeClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#76>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObject_m_rootCollisionShape_get    `( BtCollisionObjectClass bc )' =>     { withBt* `bc'  } ->  `BtCollisionShape'  mkBtCollisionShape* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#94>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObject_m_userObjectPointer_set    `( BtCollisionObjectClass bc )' =>     { withBt* `bc' , withVoidPtr* `VoidPtr'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#94>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObject_m_userObjectPointer_get    `( BtCollisionObjectClass bc )' =>     { withBt* `bc'  } ->  `VoidPtr'  mkVoidPtr* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#54>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObject_m_worldTransform_set    `( BtCollisionObjectClass bc )' =>     { withBt* `bc' , withTransform* `Transform'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#54>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObject_m_worldTransform_get    `( BtCollisionObjectClass bc )' =>     { withBt* `bc' , allocaTransform-  `Transform'  peekTransform* } -> `()' #}
-- * btCollisionObjectDoubleData
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#455>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObjectDoubleData_new as btCollisionObjectDoubleData    {  } -> `BtCollisionObjectDoubleData' mkBtCollisionObjectDoubleData* #}
{#fun btCollisionObjectDoubleData_free    `( BtCollisionObjectDoubleDataClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#478>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObjectDoubleData_m_activationState1_set    `( BtCollisionObjectDoubleDataClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#478>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObjectDoubleData_m_activationState1_get    `( BtCollisionObjectDoubleDataClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#465>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObjectDoubleData_m_anisotropicFriction_set    `( BtCollisionObjectDoubleDataClass bc , BtVector3DoubleDataClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#465>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObjectDoubleData_m_anisotropicFriction_get    `( BtCollisionObjectDoubleDataClass bc )' =>     { withBt* `bc'  } ->  `BtVector3DoubleData'  mkBtVector3DoubleData* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#456>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObjectDoubleData_m_broadphaseHandle_set    `( BtCollisionObjectDoubleDataClass bc )' =>     { withBt* `bc' , withVoidPtr* `VoidPtr'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#456>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObjectDoubleData_m_broadphaseHandle_get    `( BtCollisionObjectDoubleDataClass bc )' =>     { withBt* `bc'  } ->  `VoidPtr'  mkVoidPtr* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#472>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObjectDoubleData_m_ccdMotionThreshold_set    `( BtCollisionObjectDoubleDataClass bc )' =>     { withBt* `bc' ,  `Double'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#472>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObjectDoubleData_m_ccdMotionThreshold_get    `( BtCollisionObjectDoubleDataClass bc )' =>     { withBt* `bc'  } ->  `Double'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#471>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObjectDoubleData_m_ccdSweptSphereRadius_set    `( BtCollisionObjectDoubleDataClass bc )' =>     { withBt* `bc' ,  `Double'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#471>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObjectDoubleData_m_ccdSweptSphereRadius_get    `( BtCollisionObjectDoubleDataClass bc )' =>     { withBt* `bc'  } ->  `Double'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#480>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObjectDoubleData_m_checkCollideWith_set    `( BtCollisionObjectDoubleDataClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#480>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObjectDoubleData_m_checkCollideWith_get    `( BtCollisionObjectDoubleDataClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#475>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObjectDoubleData_m_collisionFlags_set    `( BtCollisionObjectDoubleDataClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#475>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObjectDoubleData_m_collisionFlags_get    `( BtCollisionObjectDoubleDataClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#457>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObjectDoubleData_m_collisionShape_set    `( BtCollisionObjectDoubleDataClass bc )' =>     { withBt* `bc' , withVoidPtr* `VoidPtr'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#457>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObjectDoubleData_m_collisionShape_get    `( BtCollisionObjectDoubleDataClass bc )' =>     { withBt* `bc'  } ->  `VoidPtr'  mkVoidPtr* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#477>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObjectDoubleData_m_companionId_set    `( BtCollisionObjectDoubleDataClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#477>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObjectDoubleData_m_companionId_get    `( BtCollisionObjectDoubleDataClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#466>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObjectDoubleData_m_contactProcessingThreshold_set    `( BtCollisionObjectDoubleDataClass bc )' =>     { withBt* `bc' ,  `Double'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#466>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObjectDoubleData_m_contactProcessingThreshold_get    `( BtCollisionObjectDoubleDataClass bc )' =>     { withBt* `bc'  } ->  `Double'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#467>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObjectDoubleData_m_deactivationTime_set    `( BtCollisionObjectDoubleDataClass bc )' =>     { withBt* `bc' ,  `Double'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#467>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObjectDoubleData_m_deactivationTime_get    `( BtCollisionObjectDoubleDataClass bc )' =>     { withBt* `bc'  } ->  `Double'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#468>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObjectDoubleData_m_friction_set    `( BtCollisionObjectDoubleDataClass bc )' =>     { withBt* `bc' ,  `Double'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#468>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObjectDoubleData_m_friction_get    `( BtCollisionObjectDoubleDataClass bc )' =>     { withBt* `bc'  } ->  `Double'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#474>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObjectDoubleData_m_hasAnisotropicFriction_set    `( BtCollisionObjectDoubleDataClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#474>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObjectDoubleData_m_hasAnisotropicFriction_get    `( BtCollisionObjectDoubleDataClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#470>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObjectDoubleData_m_hitFraction_set    `( BtCollisionObjectDoubleDataClass bc )' =>     { withBt* `bc' ,  `Double'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#470>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObjectDoubleData_m_hitFraction_get    `( BtCollisionObjectDoubleDataClass bc )' =>     { withBt* `bc'  } ->  `Double'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#479>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObjectDoubleData_m_internalType_set    `( BtCollisionObjectDoubleDataClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#479>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObjectDoubleData_m_internalType_get    `( BtCollisionObjectDoubleDataClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#464>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObjectDoubleData_m_interpolationAngularVelocity_set    `( BtCollisionObjectDoubleDataClass bc , BtVector3DoubleDataClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#464>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObjectDoubleData_m_interpolationAngularVelocity_get    `( BtCollisionObjectDoubleDataClass bc )' =>     { withBt* `bc'  } ->  `BtVector3DoubleData'  mkBtVector3DoubleData* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#463>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObjectDoubleData_m_interpolationLinearVelocity_set    `( BtCollisionObjectDoubleDataClass bc , BtVector3DoubleDataClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#463>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObjectDoubleData_m_interpolationLinearVelocity_get    `( BtCollisionObjectDoubleDataClass bc )' =>     { withBt* `bc'  } ->  `BtVector3DoubleData'  mkBtVector3DoubleData* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#462>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObjectDoubleData_m_interpolationWorldTransform_set    `( BtCollisionObjectDoubleDataClass bc , BtTransformDoubleDataClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#462>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObjectDoubleData_m_interpolationWorldTransform_get    `( BtCollisionObjectDoubleDataClass bc )' =>     { withBt* `bc'  } ->  `BtTransformDoubleData'  mkBtTransformDoubleData* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#476>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObjectDoubleData_m_islandTag1_set    `( BtCollisionObjectDoubleDataClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#476>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObjectDoubleData_m_islandTag1_get    `( BtCollisionObjectDoubleDataClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#459>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObjectDoubleData_m_name_set    `( BtCollisionObjectDoubleDataClass bc )' =>     { withBt* `bc' ,  `String'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#459>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObjectDoubleData_m_name_get    `( BtCollisionObjectDoubleDataClass bc )' =>     { withBt* `bc'  } ->  `String'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#469>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObjectDoubleData_m_restitution_set    `( BtCollisionObjectDoubleDataClass bc )' =>     { withBt* `bc' ,  `Double'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#469>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObjectDoubleData_m_restitution_get    `( BtCollisionObjectDoubleDataClass bc )' =>     { withBt* `bc'  } ->  `Double'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#458>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObjectDoubleData_m_rootCollisionShape_set    `( BtCollisionObjectDoubleDataClass bc , BtCollisionShapeDataClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#458>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObjectDoubleData_m_rootCollisionShape_get    `( BtCollisionObjectDoubleDataClass bc )' =>     { withBt* `bc'  } ->  `BtCollisionShapeData'  mkBtCollisionShapeData* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#461>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObjectDoubleData_m_worldTransform_set    `( BtCollisionObjectDoubleDataClass bc , BtTransformDoubleDataClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#461>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObjectDoubleData_m_worldTransform_get    `( BtCollisionObjectDoubleDataClass bc )' =>     { withBt* `bc'  } ->  `BtTransformDoubleData'  mkBtTransformDoubleData* #}
-- * btCollisionObjectFloatData
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#487>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObjectFloatData_new as btCollisionObjectFloatData    {  } -> `BtCollisionObjectFloatData' mkBtCollisionObjectFloatData* #}
{#fun btCollisionObjectFloatData_free    `( BtCollisionObjectFloatDataClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#510>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObjectFloatData_m_activationState1_set    `( BtCollisionObjectFloatDataClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#510>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObjectFloatData_m_activationState1_get    `( BtCollisionObjectFloatDataClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#497>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObjectFloatData_m_anisotropicFriction_set    `( BtCollisionObjectFloatDataClass bc , BtVector3FloatDataClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#497>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObjectFloatData_m_anisotropicFriction_get    `( BtCollisionObjectFloatDataClass bc )' =>     { withBt* `bc'  } ->  `BtVector3FloatData'  mkBtVector3FloatData* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#488>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObjectFloatData_m_broadphaseHandle_set    `( BtCollisionObjectFloatDataClass bc )' =>     { withBt* `bc' , withVoidPtr* `VoidPtr'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#488>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObjectFloatData_m_broadphaseHandle_get    `( BtCollisionObjectFloatDataClass bc )' =>     { withBt* `bc'  } ->  `VoidPtr'  mkVoidPtr* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#504>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObjectFloatData_m_ccdMotionThreshold_set    `( BtCollisionObjectFloatDataClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#504>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObjectFloatData_m_ccdMotionThreshold_get    `( BtCollisionObjectFloatDataClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#503>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObjectFloatData_m_ccdSweptSphereRadius_set    `( BtCollisionObjectFloatDataClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#503>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObjectFloatData_m_ccdSweptSphereRadius_get    `( BtCollisionObjectFloatDataClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#512>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObjectFloatData_m_checkCollideWith_set    `( BtCollisionObjectFloatDataClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#512>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObjectFloatData_m_checkCollideWith_get    `( BtCollisionObjectFloatDataClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#507>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObjectFloatData_m_collisionFlags_set    `( BtCollisionObjectFloatDataClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#507>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObjectFloatData_m_collisionFlags_get    `( BtCollisionObjectFloatDataClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#489>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObjectFloatData_m_collisionShape_set    `( BtCollisionObjectFloatDataClass bc )' =>     { withBt* `bc' , withVoidPtr* `VoidPtr'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#489>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObjectFloatData_m_collisionShape_get    `( BtCollisionObjectFloatDataClass bc )' =>     { withBt* `bc'  } ->  `VoidPtr'  mkVoidPtr* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#509>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObjectFloatData_m_companionId_set    `( BtCollisionObjectFloatDataClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#509>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObjectFloatData_m_companionId_get    `( BtCollisionObjectFloatDataClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#498>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObjectFloatData_m_contactProcessingThreshold_set    `( BtCollisionObjectFloatDataClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#498>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObjectFloatData_m_contactProcessingThreshold_get    `( BtCollisionObjectFloatDataClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#499>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObjectFloatData_m_deactivationTime_set    `( BtCollisionObjectFloatDataClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#499>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObjectFloatData_m_deactivationTime_get    `( BtCollisionObjectFloatDataClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#500>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObjectFloatData_m_friction_set    `( BtCollisionObjectFloatDataClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#500>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObjectFloatData_m_friction_get    `( BtCollisionObjectFloatDataClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#506>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObjectFloatData_m_hasAnisotropicFriction_set    `( BtCollisionObjectFloatDataClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#506>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObjectFloatData_m_hasAnisotropicFriction_get    `( BtCollisionObjectFloatDataClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#502>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObjectFloatData_m_hitFraction_set    `( BtCollisionObjectFloatDataClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#502>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObjectFloatData_m_hitFraction_get    `( BtCollisionObjectFloatDataClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#511>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObjectFloatData_m_internalType_set    `( BtCollisionObjectFloatDataClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#511>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObjectFloatData_m_internalType_get    `( BtCollisionObjectFloatDataClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#496>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObjectFloatData_m_interpolationAngularVelocity_set    `( BtCollisionObjectFloatDataClass bc , BtVector3FloatDataClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#496>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObjectFloatData_m_interpolationAngularVelocity_get    `( BtCollisionObjectFloatDataClass bc )' =>     { withBt* `bc'  } ->  `BtVector3FloatData'  mkBtVector3FloatData* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#495>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObjectFloatData_m_interpolationLinearVelocity_set    `( BtCollisionObjectFloatDataClass bc , BtVector3FloatDataClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#495>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObjectFloatData_m_interpolationLinearVelocity_get    `( BtCollisionObjectFloatDataClass bc )' =>     { withBt* `bc'  } ->  `BtVector3FloatData'  mkBtVector3FloatData* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#494>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObjectFloatData_m_interpolationWorldTransform_set    `( BtCollisionObjectFloatDataClass bc , BtTransformFloatDataClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#494>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObjectFloatData_m_interpolationWorldTransform_get    `( BtCollisionObjectFloatDataClass bc )' =>     { withBt* `bc'  } ->  `BtTransformFloatData'  mkBtTransformFloatData* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#508>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObjectFloatData_m_islandTag1_set    `( BtCollisionObjectFloatDataClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#508>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObjectFloatData_m_islandTag1_get    `( BtCollisionObjectFloatDataClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#491>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObjectFloatData_m_name_set    `( BtCollisionObjectFloatDataClass bc )' =>     { withBt* `bc' ,  `String'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#491>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObjectFloatData_m_name_get    `( BtCollisionObjectFloatDataClass bc )' =>     { withBt* `bc'  } ->  `String'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#501>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObjectFloatData_m_restitution_set    `( BtCollisionObjectFloatDataClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#501>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObjectFloatData_m_restitution_get    `( BtCollisionObjectFloatDataClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#490>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObjectFloatData_m_rootCollisionShape_set    `( BtCollisionObjectFloatDataClass bc , BtCollisionShapeDataClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#490>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObjectFloatData_m_rootCollisionShape_get    `( BtCollisionObjectFloatDataClass bc )' =>     { withBt* `bc'  } ->  `BtCollisionShapeData'  mkBtCollisionShapeData* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#493>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObjectFloatData_m_worldTransform_set    `( BtCollisionObjectFloatDataClass bc , BtTransformFloatDataClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.h?r=2223#493>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionObject.cpp?r=2223>
-}
{#fun btCollisionObjectFloatData_m_worldTransform_get    `( BtCollisionObjectFloatDataClass bc )' =>     { withBt* `bc'  } ->  `BtTransformFloatData'  mkBtTransformFloatData* #}
-- * btCollisionWorld
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#109>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_new as btCollisionWorld    `( BtDispatcherClass p0 , BtBroadphaseInterfaceClass p1 , BtCollisionConfigurationClass p2 )' =>     {  withBt* `p0' , withBt* `p1' , withBt* `p2'  } -> `BtCollisionWorld' mkBtCollisionWorld* #}
{#fun btCollisionWorld_free    `( BtCollisionWorldClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#113>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_setBroadphase as btCollisionWorld_setBroadphase    `( BtCollisionWorldClass bc , BtBroadphaseInterfaceClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ pairCache
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#504>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_serialize as btCollisionWorld_serialize    `( BtCollisionWorldClass bc , BtSerializerClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ serializer
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#134>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_getDispatcher0 as btCollisionWorld_getDispatcher    `( BtCollisionWorldClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtDispatcher'  mkBtDispatcher* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#134>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_getDispatcher0 as btCollisionWorld_getDispatcher0    `( BtCollisionWorldClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtDispatcher'  mkBtDispatcher* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#139>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_getDispatcher1 as btCollisionWorld_getDispatcher1    `( BtCollisionWorldClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtDispatcher'  mkBtDispatcher* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#484>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_getDispatchInfo0 as btCollisionWorld_getDispatchInfo    `( BtCollisionWorldClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtDispatcherInfo'  mkBtDispatcherInfo* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#484>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_getDispatchInfo0 as btCollisionWorld_getDispatchInfo0    `( BtCollisionWorldClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtDispatcherInfo'  mkBtDispatcherInfo* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#489>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_getDispatchInfo1 as btCollisionWorld_getDispatchInfo1    `( BtCollisionWorldClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtDispatcherInfo'  mkBtDispatcherInfo* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#153>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_getDebugDrawer as btCollisionWorld_getDebugDrawer    `( BtCollisionWorldClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtIDebugDraw'  mkBtIDebugDraw* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#482>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_performDiscreteCollisionDetection as btCollisionWorld_performDiscreteCollisionDetection    `( BtCollisionWorldClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#469>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_getCollisionObjectArray0 as btCollisionWorld_getCollisionObjectArray    `( BtCollisionWorldClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtAlignedObjectArray_btCollisionObject_ptr_'  mkBtAlignedObjectArray_btCollisionObject_ptr_* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#469>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_getCollisionObjectArray0 as btCollisionWorld_getCollisionObjectArray0    `( BtCollisionWorldClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtAlignedObjectArray_btCollisionObject_ptr_'  mkBtAlignedObjectArray_btCollisionObject_ptr_* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#474>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_getCollisionObjectArray1 as btCollisionWorld_getCollisionObjectArray1    `( BtCollisionWorldClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtAlignedObjectArray_btCollisionObject_ptr_'  mkBtAlignedObjectArray_btCollisionObject_ptr_* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#160>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_debugDrawObject as btCollisionWorld_debugDrawObject    `( BtCollisionWorldClass bc , BtCollisionShapeClass p1 )' =>     { withBt* `bc'  -- ^ 
, withTransform* `Transform'  peekTransform* -- ^ worldTransform
, withBt* `p1'  -- ^ shape
, withVec3* `Vec3'  peekVec3* -- ^ color
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#160>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_debugDrawObject as btCollisionWorld_debugDrawObject'    `( BtCollisionWorldClass bc , BtCollisionShapeClass p1 )' =>     { withBt* `bc'  -- ^ 
, allocaTransform-  `Transform'  peekTransform* -- ^ worldTransform
, withBt* `p1'  -- ^ shape
, allocaVec3-  `Vec3'  peekVec3* -- ^ color
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#436>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_rayTest as btCollisionWorld_rayTest    `( BtCollisionWorldClass bc , BtCollisionWorld_RayResultCallbackClass p2 )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ rayFromWorld
, withVec3* `Vec3'  peekVec3* -- ^ rayToWorld
, withBt* `p2'  -- ^ resultCallback
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#436>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_rayTest as btCollisionWorld_rayTest'    `( BtCollisionWorldClass bc , BtCollisionWorld_RayResultCallbackClass p2 )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ rayFromWorld
, allocaVec3-  `Vec3'  peekVec3* -- ^ rayToWorld
, withBt* `p2'  -- ^ resultCallback
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#467>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_addCollisionObject as btCollisionWorld_addCollisionObject    `( BtCollisionWorldClass bc , BtCollisionObjectClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ collisionObject
,  `Int'  -- ^ collisionFilterGroup
,  `Int'  -- ^ collisionFilterMask
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#498>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_setForceUpdateAllAabbs as btCollisionWorld_setForceUpdateAllAabbs    `( BtCollisionWorldClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Bool'  -- ^ forceUpdateAllAabbs
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#444>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_contactTest as btCollisionWorld_contactTest    `( BtCollisionWorldClass bc , BtCollisionObjectClass p0 , BtCollisionWorld_ContactResultCallbackClass p1 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ colObj
, withBt* `p1'  -- ^ resultCallback
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#494>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_getForceUpdateAllAabbs as btCollisionWorld_getForceUpdateAllAabbs    `( BtCollisionWorldClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#146>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_updateAabbs as btCollisionWorld_updateAabbs    `( BtCollisionWorldClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#148>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_setDebugDrawer as btCollisionWorld_setDebugDrawer    `( BtCollisionWorldClass bc , BtIDebugDrawClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ debugDrawer
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#158>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_debugDrawWorld as btCollisionWorld_debugDrawWorld    `( BtCollisionWorldClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#440>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_convexSweepTest as btCollisionWorld_convexSweepTest    `( BtCollisionWorldClass bc , BtConvexShapeClass p0 , BtCollisionWorld_ConvexResultCallbackClass p3 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ castShape
, withTransform* `Transform'  peekTransform* -- ^ from
, withTransform* `Transform'  peekTransform* -- ^ to
, withBt* `p3'  -- ^ resultCallback
,  `Float'  -- ^ allowedCcdPenetration
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#440>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_convexSweepTest as btCollisionWorld_convexSweepTest'    `( BtCollisionWorldClass bc , BtConvexShapeClass p0 , BtCollisionWorld_ConvexResultCallbackClass p3 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ castShape
, allocaTransform-  `Transform'  peekTransform* -- ^ from
, allocaTransform-  `Transform'  peekTransform* -- ^ to
, withBt* `p3'  -- ^ resultCallback
,  `Float'  -- ^ allowedCcdPenetration
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#429>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_getNumCollisionObjects as btCollisionWorld_getNumCollisionObjects    `( BtCollisionWorldClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#448>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_contactPairTest as btCollisionWorld_contactPairTest    `( BtCollisionWorldClass bc , BtCollisionObjectClass p0 , BtCollisionObjectClass p1 , BtCollisionWorld_ContactResultCallbackClass p2 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ colObjA
, withBt* `p1'  -- ^ colObjB
, withBt* `p2'  -- ^ resultCallback
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#118>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_getBroadphase0 as btCollisionWorld_getBroadphase    `( BtCollisionWorldClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtBroadphaseInterface'  mkBtBroadphaseInterface* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#118>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_getBroadphase0 as btCollisionWorld_getBroadphase0    `( BtCollisionWorldClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtBroadphaseInterface'  mkBtBroadphaseInterface* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#123>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_getBroadphase1 as btCollisionWorld_getBroadphase1    `( BtCollisionWorldClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtBroadphaseInterface'  mkBtBroadphaseInterface* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#458>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_rayTestSingle as btCollisionWorld_rayTestSingle    `(  BtCollisionObjectClass p2 , BtCollisionShapeClass p3 , BtCollisionWorld_RayResultCallbackClass p5 )' =>     {  withTransform* `Transform'  peekTransform* -- ^ rayFromTrans
, withTransform* `Transform'  peekTransform* -- ^ rayToTrans
, withBt* `p2'  -- ^ collisionObject
, withBt* `p3'  -- ^ collisionShape
, withTransform* `Transform'  peekTransform* -- ^ colObjWorldTransform
, withBt* `p5'  -- ^ resultCallback
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#458>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_rayTestSingle as btCollisionWorld_rayTestSingle'    `(  BtCollisionObjectClass p2 , BtCollisionShapeClass p3 , BtCollisionWorld_RayResultCallbackClass p5 )' =>     {  allocaTransform-  `Transform'  peekTransform* -- ^ rayFromTrans
, allocaTransform-  `Transform'  peekTransform* -- ^ rayToTrans
, withBt* `p2'  -- ^ collisionObject
, withBt* `p3'  -- ^ collisionShape
, allocaTransform-  `Transform'  peekTransform* -- ^ colObjWorldTransform
, withBt* `p5'  -- ^ resultCallback
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#465>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_objectQuerySingle as btCollisionWorld_objectQuerySingle    `(  BtConvexShapeClass p0 , BtCollisionObjectClass p3 , BtCollisionShapeClass p4 , BtCollisionWorld_ConvexResultCallbackClass p6 )' =>     {  withBt* `p0'  -- ^ castShape
, withTransform* `Transform'  peekTransform* -- ^ rayFromTrans
, withTransform* `Transform'  peekTransform* -- ^ rayToTrans
, withBt* `p3'  -- ^ collisionObject
, withBt* `p4'  -- ^ collisionShape
, withTransform* `Transform'  peekTransform* -- ^ colObjWorldTransform
, withBt* `p6'  -- ^ resultCallback
,  `Float'  -- ^ allowedPenetration
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#465>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_objectQuerySingle as btCollisionWorld_objectQuerySingle'    `(  BtConvexShapeClass p0 , BtCollisionObjectClass p3 , BtCollisionShapeClass p4 , BtCollisionWorld_ConvexResultCallbackClass p6 )' =>     {  withBt* `p0'  -- ^ castShape
, allocaTransform-  `Transform'  peekTransform* -- ^ rayFromTrans
, allocaTransform-  `Transform'  peekTransform* -- ^ rayToTrans
, withBt* `p3'  -- ^ collisionObject
, withBt* `p4'  -- ^ collisionShape
, allocaTransform-  `Transform'  peekTransform* -- ^ colObjWorldTransform
, withBt* `p6'  -- ^ resultCallback
,  `Float'  -- ^ allowedPenetration
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#144>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_updateSingleAabb as btCollisionWorld_updateSingleAabb    `( BtCollisionWorldClass bc , BtCollisionObjectClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ colObj
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#104>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_serializeCollisionObjects as btCollisionWorld_serializeCollisionObjects    `( BtCollisionWorldClass bc , BtSerializerClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ serializer
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#128>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_getPairCache as btCollisionWorld_getPairCache    `( BtCollisionWorldClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtOverlappingPairCache'  mkBtOverlappingPairCache* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#480>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_removeCollisionObject as btCollisionWorld_removeCollisionObject    `( BtCollisionWorldClass bc , BtCollisionObjectClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ collisionObject
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#96>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_m_broadphasePairCache_set    `( BtCollisionWorldClass bc , BtBroadphaseInterfaceClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#96>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_m_broadphasePairCache_get    `( BtCollisionWorldClass bc )' =>     { withBt* `bc'  } ->  `BtBroadphaseInterface'  mkBtBroadphaseInterface* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#88>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_m_collisionObjects_set    `( BtCollisionWorldClass bc , BtAlignedObjectArray_btCollisionObject_ptr_Class a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#88>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_m_collisionObjects_get    `( BtCollisionWorldClass bc )' =>     { withBt* `bc'  } ->  `BtAlignedObjectArray_btCollisionObject_ptr_'  mkBtAlignedObjectArray_btCollisionObject_ptr_* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#98>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_m_debugDrawer_set    `( BtCollisionWorldClass bc , BtIDebugDrawClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#98>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_m_debugDrawer_get    `( BtCollisionWorldClass bc )' =>     { withBt* `bc'  } ->  `BtIDebugDraw'  mkBtIDebugDraw* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#92>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_m_dispatchInfo_set    `( BtCollisionWorldClass bc , BtDispatcherInfoClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#92>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_m_dispatchInfo_get    `( BtCollisionWorldClass bc )' =>     { withBt* `bc'  } ->  `BtDispatcherInfo'  mkBtDispatcherInfo* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#90>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_m_dispatcher1_set    `( BtCollisionWorldClass bc , BtDispatcherClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#90>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_m_dispatcher1_get    `( BtCollisionWorldClass bc )' =>     { withBt* `bc'  } ->  `BtDispatcher'  mkBtDispatcher* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#102>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_m_forceUpdateAllAabbs_set    `( BtCollisionWorldClass bc )' =>     { withBt* `bc' ,  `Bool'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#102>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_m_forceUpdateAllAabbs_get    `( BtCollisionWorldClass bc )' =>     { withBt* `bc'  } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#94>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_m_stackAlloc_set    `( BtCollisionWorldClass bc , BtStackAllocClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.h?r=2223#94>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btCollisionWorld.cpp?r=2223>
-}
{#fun btCollisionWorld_m_stackAlloc_get    `( BtCollisionWorldClass bc )' =>     { withBt* `bc'  } ->  `BtStackAlloc'  mkBtStackAlloc* #}
-- * btConvexConvexAlgorithm
{#fun btConvexConvexAlgorithm_free    `( BtConvexConvexAlgorithmClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btConvexConvexAlgorithm.h?r=2223#71>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btConvexConvexAlgorithm.cpp?r=2223>
-}
{#fun btConvexConvexAlgorithm_getAllContactManifolds as btConvexConvexAlgorithm_getAllContactManifolds    `( BtConvexConvexAlgorithmClass bc , BtAlignedObjectArray_btPersistentManifold_ptr_Class p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ manifoldArray
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btConvexConvexAlgorithm.h?r=2223#69>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btConvexConvexAlgorithm.cpp?r=2223>
-}
{#fun btConvexConvexAlgorithm_calculateTimeOfImpact as btConvexConvexAlgorithm_calculateTimeOfImpact    `( BtConvexConvexAlgorithmClass bc , BtCollisionObjectClass p0 , BtCollisionObjectClass p1 , BtDispatcherInfoClass p2 , BtManifoldResultClass p3 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ body0
, withBt* `p1'  -- ^ body1
, withBt* `p2'  -- ^ dispatchInfo
, withBt* `p3'  -- ^ resultOut
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btConvexConvexAlgorithm.h?r=2223#79>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btConvexConvexAlgorithm.cpp?r=2223>
-}
{#fun btConvexConvexAlgorithm_setLowLevelOfDetail as btConvexConvexAlgorithm_setLowLevelOfDetail    `( BtConvexConvexAlgorithmClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Bool'  -- ^ useLowLevel
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btConvexConvexAlgorithm.h?r=2223#67>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btConvexConvexAlgorithm.cpp?r=2223>
-}
{#fun btConvexConvexAlgorithm_processCollision as btConvexConvexAlgorithm_processCollision    `( BtConvexConvexAlgorithmClass bc , BtCollisionObjectClass p0 , BtCollisionObjectClass p1 , BtDispatcherInfoClass p2 , BtManifoldResultClass p3 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ body0
, withBt* `p1'  -- ^ body1
, withBt* `p2'  -- ^ dispatchInfo
, withBt* `p3'  -- ^ resultOut
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btConvexConvexAlgorithm.h?r=2223#82>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btConvexConvexAlgorithm.cpp?r=2223>
-}
{#fun btConvexConvexAlgorithm_getManifold as btConvexConvexAlgorithm_getManifold    `( BtConvexConvexAlgorithmClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtPersistentManifold'  mkBtPersistentManifold* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btConvexConvexAlgorithm.h?r=2223#45>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btConvexConvexAlgorithm.cpp?r=2223>
-}
{#fun btConvexConvexAlgorithm_m_simplexSolver_set    `( BtConvexConvexAlgorithmClass bc , BtVoronoiSimplexSolverClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btConvexConvexAlgorithm.h?r=2223#45>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btConvexConvexAlgorithm.cpp?r=2223>
-}
{#fun btConvexConvexAlgorithm_m_simplexSolver_get    `( BtConvexConvexAlgorithmClass bc )' =>     { withBt* `bc'  } ->  `BtVoronoiSimplexSolver'  mkBtVoronoiSimplexSolver* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btConvexConvexAlgorithm.h?r=2223#49>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btConvexConvexAlgorithm.cpp?r=2223>
-}
{#fun btConvexConvexAlgorithm_m_ownManifold_set    `( BtConvexConvexAlgorithmClass bc )' =>     { withBt* `bc' ,  `Bool'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btConvexConvexAlgorithm.h?r=2223#49>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btConvexConvexAlgorithm.cpp?r=2223>
-}
{#fun btConvexConvexAlgorithm_m_ownManifold_get    `( BtConvexConvexAlgorithmClass bc )' =>     { withBt* `bc'  } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btConvexConvexAlgorithm.h?r=2223#50>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btConvexConvexAlgorithm.cpp?r=2223>
-}
{#fun btConvexConvexAlgorithm_m_manifoldPtr_set    `( BtConvexConvexAlgorithmClass bc , BtPersistentManifoldClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btConvexConvexAlgorithm.h?r=2223#50>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btConvexConvexAlgorithm.cpp?r=2223>
-}
{#fun btConvexConvexAlgorithm_m_manifoldPtr_get    `( BtConvexConvexAlgorithmClass bc )' =>     { withBt* `bc'  } ->  `BtPersistentManifold'  mkBtPersistentManifold* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btConvexConvexAlgorithm.h?r=2223#51>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btConvexConvexAlgorithm.cpp?r=2223>
-}
{#fun btConvexConvexAlgorithm_m_lowLevelOfDetail_set    `( BtConvexConvexAlgorithmClass bc )' =>     { withBt* `bc' ,  `Bool'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btConvexConvexAlgorithm.h?r=2223#51>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btConvexConvexAlgorithm.cpp?r=2223>
-}
{#fun btConvexConvexAlgorithm_m_lowLevelOfDetail_get    `( BtConvexConvexAlgorithmClass bc )' =>     { withBt* `bc'  } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btConvexConvexAlgorithm.h?r=2223#53>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btConvexConvexAlgorithm.cpp?r=2223>
-}
{#fun btConvexConvexAlgorithm_m_numPerturbationIterations_set    `( BtConvexConvexAlgorithmClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btConvexConvexAlgorithm.h?r=2223#53>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btConvexConvexAlgorithm.cpp?r=2223>
-}
{#fun btConvexConvexAlgorithm_m_numPerturbationIterations_get    `( BtConvexConvexAlgorithmClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btConvexConvexAlgorithm.h?r=2223#54>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btConvexConvexAlgorithm.cpp?r=2223>
-}
{#fun btConvexConvexAlgorithm_m_minimumPointsPerturbationThreshold_set    `( BtConvexConvexAlgorithmClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btConvexConvexAlgorithm.h?r=2223#54>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btConvexConvexAlgorithm.cpp?r=2223>
-}
{#fun btConvexConvexAlgorithm_m_minimumPointsPerturbationThreshold_get    `( BtConvexConvexAlgorithmClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
-- * btDefaultCollisionConfiguration
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btDefaultCollisionConfiguration.h?r=2223#95>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btDefaultCollisionConfiguration.cpp?r=2223>
-}
{#fun btDefaultCollisionConfiguration_new as btDefaultCollisionConfiguration    `( BtDefaultCollisionConstructionInfoClass p0 )' =>     {  withBt* `p0'  } -> `BtDefaultCollisionConfiguration' mkBtDefaultCollisionConfiguration* #}
{#fun btDefaultCollisionConfiguration_free    `( BtDefaultCollisionConfigurationClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btDefaultCollisionConfiguration.h?r=2223#110>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btDefaultCollisionConfiguration.cpp?r=2223>
-}
{#fun btDefaultCollisionConfiguration_getStackAllocator as btDefaultCollisionConfiguration_getStackAllocator    `( BtDefaultCollisionConfigurationClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtStackAlloc'  mkBtStackAlloc* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btDefaultCollisionConfiguration.h?r=2223#132>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btDefaultCollisionConfiguration.cpp?r=2223>
-}
{#fun btDefaultCollisionConfiguration_setPlaneConvexMultipointIterations as btDefaultCollisionConfiguration_setPlaneConvexMultipointIterations    `( BtDefaultCollisionConfigurationClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ numPerturbationIterations
,  `Int'  -- ^ minimumPointsPerturbationThreshold
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btDefaultCollisionConfiguration.h?r=2223#115>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btDefaultCollisionConfiguration.cpp?r=2223>
-}
{#fun btDefaultCollisionConfiguration_getSimplexSolver as btDefaultCollisionConfiguration_getSimplexSolver    `( BtDefaultCollisionConfigurationClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtVoronoiSimplexSolver'  mkBtVoronoiSimplexSolver* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btDefaultCollisionConfiguration.h?r=2223#130>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btDefaultCollisionConfiguration.cpp?r=2223>
-}
{#fun btDefaultCollisionConfiguration_setConvexConvexMultipointIterations as btDefaultCollisionConfiguration_setConvexConvexMultipointIterations    `( BtDefaultCollisionConfigurationClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ numPerturbationIterations
,  `Int'  -- ^ minimumPointsPerturbationThreshold
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btDefaultCollisionConfiguration.h?r=2223#121>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btDefaultCollisionConfiguration.cpp?r=2223>
-}
{#fun btDefaultCollisionConfiguration_getCollisionAlgorithmCreateFunc as btDefaultCollisionConfiguration_getCollisionAlgorithmCreateFunc    `( BtDefaultCollisionConfigurationClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ proxyType0
,  `Int'  -- ^ proxyType1
 } ->  `BtCollisionAlgorithmCreateFunc'  mkBtCollisionAlgorithmCreateFunc* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btDefaultCollisionConfiguration.h?r=2223#57>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btDefaultCollisionConfiguration.cpp?r=2223>
-}
{#fun btDefaultCollisionConfiguration_m_persistentManifoldPoolSize_set    `( BtDefaultCollisionConfigurationClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btDefaultCollisionConfiguration.h?r=2223#57>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btDefaultCollisionConfiguration.cpp?r=2223>
-}
{#fun btDefaultCollisionConfiguration_m_persistentManifoldPoolSize_get    `( BtDefaultCollisionConfigurationClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btDefaultCollisionConfiguration.h?r=2223#59>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btDefaultCollisionConfiguration.cpp?r=2223>
-}
{#fun btDefaultCollisionConfiguration_m_stackAlloc_set    `( BtDefaultCollisionConfigurationClass bc , BtStackAllocClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btDefaultCollisionConfiguration.h?r=2223#59>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btDefaultCollisionConfiguration.cpp?r=2223>
-}
{#fun btDefaultCollisionConfiguration_m_stackAlloc_get    `( BtDefaultCollisionConfigurationClass bc )' =>     { withBt* `bc'  } ->  `BtStackAlloc'  mkBtStackAlloc* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btDefaultCollisionConfiguration.h?r=2223#60>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btDefaultCollisionConfiguration.cpp?r=2223>
-}
{#fun btDefaultCollisionConfiguration_m_ownsStackAllocator_set    `( BtDefaultCollisionConfigurationClass bc )' =>     { withBt* `bc' ,  `Bool'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btDefaultCollisionConfiguration.h?r=2223#60>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btDefaultCollisionConfiguration.cpp?r=2223>
-}
{#fun btDefaultCollisionConfiguration_m_ownsStackAllocator_get    `( BtDefaultCollisionConfigurationClass bc )' =>     { withBt* `bc'  } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btDefaultCollisionConfiguration.h?r=2223#63>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btDefaultCollisionConfiguration.cpp?r=2223>
-}
{#fun btDefaultCollisionConfiguration_m_ownsPersistentManifoldPool_set    `( BtDefaultCollisionConfigurationClass bc )' =>     { withBt* `bc' ,  `Bool'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btDefaultCollisionConfiguration.h?r=2223#63>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btDefaultCollisionConfiguration.cpp?r=2223>
-}
{#fun btDefaultCollisionConfiguration_m_ownsPersistentManifoldPool_get    `( BtDefaultCollisionConfigurationClass bc )' =>     { withBt* `bc'  } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btDefaultCollisionConfiguration.h?r=2223#67>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btDefaultCollisionConfiguration.cpp?r=2223>
-}
{#fun btDefaultCollisionConfiguration_m_ownsCollisionAlgorithmPool_set    `( BtDefaultCollisionConfigurationClass bc )' =>     { withBt* `bc' ,  `Bool'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btDefaultCollisionConfiguration.h?r=2223#67>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btDefaultCollisionConfiguration.cpp?r=2223>
-}
{#fun btDefaultCollisionConfiguration_m_ownsCollisionAlgorithmPool_get    `( BtDefaultCollisionConfigurationClass bc )' =>     { withBt* `bc'  } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btDefaultCollisionConfiguration.h?r=2223#70>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btDefaultCollisionConfiguration.cpp?r=2223>
-}
{#fun btDefaultCollisionConfiguration_m_simplexSolver_set    `( BtDefaultCollisionConfigurationClass bc , BtVoronoiSimplexSolverClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btDefaultCollisionConfiguration.h?r=2223#70>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btDefaultCollisionConfiguration.cpp?r=2223>
-}
{#fun btDefaultCollisionConfiguration_m_simplexSolver_get    `( BtDefaultCollisionConfigurationClass bc )' =>     { withBt* `bc'  } ->  `BtVoronoiSimplexSolver'  mkBtVoronoiSimplexSolver* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btDefaultCollisionConfiguration.h?r=2223#74>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btDefaultCollisionConfiguration.cpp?r=2223>
-}
{#fun btDefaultCollisionConfiguration_m_convexConvexCreateFunc_set    `( BtDefaultCollisionConfigurationClass bc , BtCollisionAlgorithmCreateFuncClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btDefaultCollisionConfiguration.h?r=2223#74>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btDefaultCollisionConfiguration.cpp?r=2223>
-}
{#fun btDefaultCollisionConfiguration_m_convexConvexCreateFunc_get    `( BtDefaultCollisionConfigurationClass bc )' =>     { withBt* `bc'  } ->  `BtCollisionAlgorithmCreateFunc'  mkBtCollisionAlgorithmCreateFunc* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btDefaultCollisionConfiguration.h?r=2223#75>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btDefaultCollisionConfiguration.cpp?r=2223>
-}
{#fun btDefaultCollisionConfiguration_m_convexConcaveCreateFunc_set    `( BtDefaultCollisionConfigurationClass bc , BtCollisionAlgorithmCreateFuncClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btDefaultCollisionConfiguration.h?r=2223#75>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btDefaultCollisionConfiguration.cpp?r=2223>
-}
{#fun btDefaultCollisionConfiguration_m_convexConcaveCreateFunc_get    `( BtDefaultCollisionConfigurationClass bc )' =>     { withBt* `bc'  } ->  `BtCollisionAlgorithmCreateFunc'  mkBtCollisionAlgorithmCreateFunc* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btDefaultCollisionConfiguration.h?r=2223#76>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btDefaultCollisionConfiguration.cpp?r=2223>
-}
{#fun btDefaultCollisionConfiguration_m_swappedConvexConcaveCreateFunc_set    `( BtDefaultCollisionConfigurationClass bc , BtCollisionAlgorithmCreateFuncClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btDefaultCollisionConfiguration.h?r=2223#76>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btDefaultCollisionConfiguration.cpp?r=2223>
-}
{#fun btDefaultCollisionConfiguration_m_swappedConvexConcaveCreateFunc_get    `( BtDefaultCollisionConfigurationClass bc )' =>     { withBt* `bc'  } ->  `BtCollisionAlgorithmCreateFunc'  mkBtCollisionAlgorithmCreateFunc* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btDefaultCollisionConfiguration.h?r=2223#77>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btDefaultCollisionConfiguration.cpp?r=2223>
-}
{#fun btDefaultCollisionConfiguration_m_compoundCreateFunc_set    `( BtDefaultCollisionConfigurationClass bc , BtCollisionAlgorithmCreateFuncClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btDefaultCollisionConfiguration.h?r=2223#77>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btDefaultCollisionConfiguration.cpp?r=2223>
-}
{#fun btDefaultCollisionConfiguration_m_compoundCreateFunc_get    `( BtDefaultCollisionConfigurationClass bc )' =>     { withBt* `bc'  } ->  `BtCollisionAlgorithmCreateFunc'  mkBtCollisionAlgorithmCreateFunc* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btDefaultCollisionConfiguration.h?r=2223#78>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btDefaultCollisionConfiguration.cpp?r=2223>
-}
{#fun btDefaultCollisionConfiguration_m_swappedCompoundCreateFunc_set    `( BtDefaultCollisionConfigurationClass bc , BtCollisionAlgorithmCreateFuncClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btDefaultCollisionConfiguration.h?r=2223#78>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btDefaultCollisionConfiguration.cpp?r=2223>
-}
{#fun btDefaultCollisionConfiguration_m_swappedCompoundCreateFunc_get    `( BtDefaultCollisionConfigurationClass bc )' =>     { withBt* `bc'  } ->  `BtCollisionAlgorithmCreateFunc'  mkBtCollisionAlgorithmCreateFunc* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btDefaultCollisionConfiguration.h?r=2223#79>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btDefaultCollisionConfiguration.cpp?r=2223>
-}
{#fun btDefaultCollisionConfiguration_m_emptyCreateFunc_set    `( BtDefaultCollisionConfigurationClass bc , BtCollisionAlgorithmCreateFuncClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btDefaultCollisionConfiguration.h?r=2223#79>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btDefaultCollisionConfiguration.cpp?r=2223>
-}
{#fun btDefaultCollisionConfiguration_m_emptyCreateFunc_get    `( BtDefaultCollisionConfigurationClass bc )' =>     { withBt* `bc'  } ->  `BtCollisionAlgorithmCreateFunc'  mkBtCollisionAlgorithmCreateFunc* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btDefaultCollisionConfiguration.h?r=2223#80>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btDefaultCollisionConfiguration.cpp?r=2223>
-}
{#fun btDefaultCollisionConfiguration_m_sphereSphereCF_set    `( BtDefaultCollisionConfigurationClass bc , BtCollisionAlgorithmCreateFuncClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btDefaultCollisionConfiguration.h?r=2223#80>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btDefaultCollisionConfiguration.cpp?r=2223>
-}
{#fun btDefaultCollisionConfiguration_m_sphereSphereCF_get    `( BtDefaultCollisionConfigurationClass bc )' =>     { withBt* `bc'  } ->  `BtCollisionAlgorithmCreateFunc'  mkBtCollisionAlgorithmCreateFunc* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btDefaultCollisionConfiguration.h?r=2223#86>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btDefaultCollisionConfiguration.cpp?r=2223>
-}
{#fun btDefaultCollisionConfiguration_m_boxBoxCF_set    `( BtDefaultCollisionConfigurationClass bc , BtCollisionAlgorithmCreateFuncClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btDefaultCollisionConfiguration.h?r=2223#86>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btDefaultCollisionConfiguration.cpp?r=2223>
-}
{#fun btDefaultCollisionConfiguration_m_boxBoxCF_get    `( BtDefaultCollisionConfigurationClass bc )' =>     { withBt* `bc'  } ->  `BtCollisionAlgorithmCreateFunc'  mkBtCollisionAlgorithmCreateFunc* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btDefaultCollisionConfiguration.h?r=2223#87>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btDefaultCollisionConfiguration.cpp?r=2223>
-}
{#fun btDefaultCollisionConfiguration_m_sphereTriangleCF_set    `( BtDefaultCollisionConfigurationClass bc , BtCollisionAlgorithmCreateFuncClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btDefaultCollisionConfiguration.h?r=2223#87>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btDefaultCollisionConfiguration.cpp?r=2223>
-}
{#fun btDefaultCollisionConfiguration_m_sphereTriangleCF_get    `( BtDefaultCollisionConfigurationClass bc )' =>     { withBt* `bc'  } ->  `BtCollisionAlgorithmCreateFunc'  mkBtCollisionAlgorithmCreateFunc* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btDefaultCollisionConfiguration.h?r=2223#88>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btDefaultCollisionConfiguration.cpp?r=2223>
-}
{#fun btDefaultCollisionConfiguration_m_triangleSphereCF_set    `( BtDefaultCollisionConfigurationClass bc , BtCollisionAlgorithmCreateFuncClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btDefaultCollisionConfiguration.h?r=2223#88>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btDefaultCollisionConfiguration.cpp?r=2223>
-}
{#fun btDefaultCollisionConfiguration_m_triangleSphereCF_get    `( BtDefaultCollisionConfigurationClass bc )' =>     { withBt* `bc'  } ->  `BtCollisionAlgorithmCreateFunc'  mkBtCollisionAlgorithmCreateFunc* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btDefaultCollisionConfiguration.h?r=2223#89>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btDefaultCollisionConfiguration.cpp?r=2223>
-}
{#fun btDefaultCollisionConfiguration_m_planeConvexCF_set    `( BtDefaultCollisionConfigurationClass bc , BtCollisionAlgorithmCreateFuncClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btDefaultCollisionConfiguration.h?r=2223#89>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btDefaultCollisionConfiguration.cpp?r=2223>
-}
{#fun btDefaultCollisionConfiguration_m_planeConvexCF_get    `( BtDefaultCollisionConfigurationClass bc )' =>     { withBt* `bc'  } ->  `BtCollisionAlgorithmCreateFunc'  mkBtCollisionAlgorithmCreateFunc* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btDefaultCollisionConfiguration.h?r=2223#90>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btDefaultCollisionConfiguration.cpp?r=2223>
-}
{#fun btDefaultCollisionConfiguration_m_convexPlaneCF_set    `( BtDefaultCollisionConfigurationClass bc , BtCollisionAlgorithmCreateFuncClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btDefaultCollisionConfiguration.h?r=2223#90>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btDefaultCollisionConfiguration.cpp?r=2223>
-}
{#fun btDefaultCollisionConfiguration_m_convexPlaneCF_get    `( BtDefaultCollisionConfigurationClass bc )' =>     { withBt* `bc'  } ->  `BtCollisionAlgorithmCreateFunc'  mkBtCollisionAlgorithmCreateFunc* #}
-- * btDefaultCollisionConstructionInfo
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btDefaultCollisionConfiguration.h?r=2223#34>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btDefaultCollisionConfiguration.cpp?r=2223>
-}
{#fun btDefaultCollisionConstructionInfo_new as btDefaultCollisionConstructionInfo    {  } -> `BtDefaultCollisionConstructionInfo' mkBtDefaultCollisionConstructionInfo* #}
{#fun btDefaultCollisionConstructionInfo_free    `( BtDefaultCollisionConstructionInfoClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btDefaultCollisionConfiguration.h?r=2223#30>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btDefaultCollisionConfiguration.cpp?r=2223>
-}
{#fun btDefaultCollisionConstructionInfo_m_customCollisionAlgorithmMaxElementSize_set    `( BtDefaultCollisionConstructionInfoClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btDefaultCollisionConfiguration.h?r=2223#30>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btDefaultCollisionConfiguration.cpp?r=2223>
-}
{#fun btDefaultCollisionConstructionInfo_m_customCollisionAlgorithmMaxElementSize_get    `( BtDefaultCollisionConstructionInfoClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btDefaultCollisionConfiguration.h?r=2223#29>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btDefaultCollisionConfiguration.cpp?r=2223>
-}
{#fun btDefaultCollisionConstructionInfo_m_defaultMaxCollisionAlgorithmPoolSize_set    `( BtDefaultCollisionConstructionInfoClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btDefaultCollisionConfiguration.h?r=2223#29>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btDefaultCollisionConfiguration.cpp?r=2223>
-}
{#fun btDefaultCollisionConstructionInfo_m_defaultMaxCollisionAlgorithmPoolSize_get    `( BtDefaultCollisionConstructionInfoClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btDefaultCollisionConfiguration.h?r=2223#28>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btDefaultCollisionConfiguration.cpp?r=2223>
-}
{#fun btDefaultCollisionConstructionInfo_m_defaultMaxPersistentManifoldPoolSize_set    `( BtDefaultCollisionConstructionInfoClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btDefaultCollisionConfiguration.h?r=2223#28>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btDefaultCollisionConfiguration.cpp?r=2223>
-}
{#fun btDefaultCollisionConstructionInfo_m_defaultMaxPersistentManifoldPoolSize_get    `( BtDefaultCollisionConstructionInfoClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btDefaultCollisionConfiguration.h?r=2223#31>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btDefaultCollisionConfiguration.cpp?r=2223>
-}
{#fun btDefaultCollisionConstructionInfo_m_defaultStackAllocatorSize_set    `( BtDefaultCollisionConstructionInfoClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btDefaultCollisionConfiguration.h?r=2223#31>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btDefaultCollisionConfiguration.cpp?r=2223>
-}
{#fun btDefaultCollisionConstructionInfo_m_defaultStackAllocatorSize_get    `( BtDefaultCollisionConstructionInfoClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btDefaultCollisionConfiguration.h?r=2223#25>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btDefaultCollisionConfiguration.cpp?r=2223>
-}
{#fun btDefaultCollisionConstructionInfo_m_stackAlloc_set    `( BtDefaultCollisionConstructionInfoClass bc , BtStackAllocClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btDefaultCollisionConfiguration.h?r=2223#25>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btDefaultCollisionConfiguration.cpp?r=2223>
-}
{#fun btDefaultCollisionConstructionInfo_m_stackAlloc_get    `( BtDefaultCollisionConstructionInfoClass bc )' =>     { withBt* `bc'  } ->  `BtStackAlloc'  mkBtStackAlloc* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btDefaultCollisionConfiguration.h?r=2223#32>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btDefaultCollisionConfiguration.cpp?r=2223>
-}
{#fun btDefaultCollisionConstructionInfo_m_useEpaPenetrationAlgorithm_set    `( BtDefaultCollisionConstructionInfoClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btDefaultCollisionConfiguration.h?r=2223#32>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btDefaultCollisionConfiguration.cpp?r=2223>
-}
{#fun btDefaultCollisionConstructionInfo_m_useEpaPenetrationAlgorithm_get    `( BtDefaultCollisionConstructionInfoClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
-- * btGhostObject
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btGhostObject.h?r=2223#42>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btGhostObject.cpp?r=2223>
-}
{#fun btGhostObject_new as btGhostObject    {  } -> `BtGhostObject' mkBtGhostObject* #}
{#fun btGhostObject_free    `( BtGhostObjectClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btGhostObject.h?r=2223#46>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btGhostObject.cpp?r=2223>
-}
{#fun btGhostObject_convexSweepTest as btGhostObject_convexSweepTest    `( BtGhostObjectClass bc , BtConvexShapeClass p0 , BtCollisionWorld_ConvexResultCallbackClass p3 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ castShape
, withTransform* `Transform'  peekTransform* -- ^ convexFromWorld
, withTransform* `Transform'  peekTransform* -- ^ convexToWorld
, withBt* `p3'  -- ^ resultCallback
,  `Float'  -- ^ allowedCcdPenetration
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btGhostObject.h?r=2223#46>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btGhostObject.cpp?r=2223>
-}
{#fun btGhostObject_convexSweepTest as btGhostObject_convexSweepTest'    `( BtGhostObjectClass bc , BtConvexShapeClass p0 , BtCollisionWorld_ConvexResultCallbackClass p3 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ castShape
, allocaTransform-  `Transform'  peekTransform* -- ^ convexFromWorld
, allocaTransform-  `Transform'  peekTransform* -- ^ convexToWorld
, withBt* `p3'  -- ^ resultCallback
,  `Float'  -- ^ allowedCcdPenetration
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btGhostObject.h?r=2223#53>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btGhostObject.cpp?r=2223>
-}
{#fun btGhostObject_removeOverlappingObjectInternal as btGhostObject_removeOverlappingObjectInternal    `( BtGhostObjectClass bc , BtBroadphaseProxyClass p0 , BtDispatcherClass p1 , BtBroadphaseProxyClass p2 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ otherProxy
, withBt* `p1'  -- ^ dispatcher
, withBt* `p2'  -- ^ thisProxy
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btGhostObject.h?r=2223#55>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btGhostObject.cpp?r=2223>
-}
{#fun btGhostObject_getNumOverlappingObjects as btGhostObject_getNumOverlappingObjects    `( BtGhostObjectClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btGhostObject.h?r=2223#51>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btGhostObject.cpp?r=2223>
-}
{#fun btGhostObject_addOverlappingObjectInternal as btGhostObject_addOverlappingObjectInternal    `( BtGhostObjectClass bc , BtBroadphaseProxyClass p0 , BtBroadphaseProxyClass p1 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ otherProxy
, withBt* `p1'  -- ^ thisProxy
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btGhostObject.h?r=2223#48>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btGhostObject.cpp?r=2223>
-}
{#fun btGhostObject_rayTest as btGhostObject_rayTest    `( BtGhostObjectClass bc , BtCollisionWorld_RayResultCallbackClass p2 )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ rayFromWorld
, withVec3* `Vec3'  peekVec3* -- ^ rayToWorld
, withBt* `p2'  -- ^ resultCallback
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btGhostObject.h?r=2223#48>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btGhostObject.cpp?r=2223>
-}
{#fun btGhostObject_rayTest as btGhostObject_rayTest'    `( BtGhostObjectClass bc , BtCollisionWorld_RayResultCallbackClass p2 )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ rayFromWorld
, allocaVec3-  `Vec3'  peekVec3* -- ^ rayToWorld
, withBt* `p2'  -- ^ resultCallback
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btGhostObject.h?r=2223#70>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btGhostObject.cpp?r=2223>
-}
{#fun btGhostObject_getOverlappingPairs0 as btGhostObject_getOverlappingPairs    `( BtGhostObjectClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtAlignedObjectArray_btCollisionObject_ptr_'  mkBtAlignedObjectArray_btCollisionObject_ptr_* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btGhostObject.h?r=2223#70>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btGhostObject.cpp?r=2223>
-}
{#fun btGhostObject_getOverlappingPairs0 as btGhostObject_getOverlappingPairs0    `( BtGhostObjectClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtAlignedObjectArray_btCollisionObject_ptr_'  mkBtAlignedObjectArray_btCollisionObject_ptr_* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btGhostObject.h?r=2223#84>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btGhostObject.cpp?r=2223>
-}
{#fun btGhostObject_upcast0 as btGhostObject_upcast    `(  BtCollisionObjectClass p0 )' =>     {  withBt* `p0'  -- ^ colObj
 } ->  `BtGhostObject'  mkBtGhostObject* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btGhostObject.h?r=2223#84>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btGhostObject.cpp?r=2223>
-}
{#fun btGhostObject_upcast0 as btGhostObject_upcast0    `(  BtCollisionObjectClass p0 )' =>     {  withBt* `p0'  -- ^ colObj
 } ->  `BtGhostObject'  mkBtGhostObject* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btGhostObject.h?r=2223#90>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btGhostObject.cpp?r=2223>
-}
{#fun btGhostObject_upcast1 as btGhostObject_upcast1    `(  BtCollisionObjectClass p0 )' =>     {  withBt* `p0'  -- ^ colObj
 } ->  `BtGhostObject'  mkBtGhostObject* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btGhostObject.h?r=2223#60>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btGhostObject.cpp?r=2223>
-}
{#fun btGhostObject_getOverlappingObject0 as btGhostObject_getOverlappingObject    `( BtGhostObjectClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ index
 } ->  `BtCollisionObject'  mkBtCollisionObject* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btGhostObject.h?r=2223#60>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btGhostObject.cpp?r=2223>
-}
{#fun btGhostObject_getOverlappingObject0 as btGhostObject_getOverlappingObject0    `( BtGhostObjectClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ index
 } ->  `BtCollisionObject'  mkBtCollisionObject* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btGhostObject.h?r=2223#65>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btGhostObject.cpp?r=2223>
-}
{#fun btGhostObject_getOverlappingObject1 as btGhostObject_getOverlappingObject1    `( BtGhostObjectClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ index
 } ->  `BtCollisionObject'  mkBtCollisionObject* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btGhostObject.h?r=2223#38>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btGhostObject.cpp?r=2223>
-}
{#fun btGhostObject_m_overlappingObjects_set    `( BtGhostObjectClass bc , BtAlignedObjectArray_btCollisionObject_ptr_Class a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btGhostObject.h?r=2223#38>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btGhostObject.cpp?r=2223>
-}
{#fun btGhostObject_m_overlappingObjects_get    `( BtGhostObjectClass bc )' =>     { withBt* `bc'  } ->  `BtAlignedObjectArray_btCollisionObject_ptr_'  mkBtAlignedObjectArray_btCollisionObject_ptr_* #}
-- * btGhostPairCallback
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btGhostObject.h?r=2223#128>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btGhostObject.cpp?r=2223>
-}
{#fun btGhostPairCallback_new as btGhostPairCallback    {  } -> `BtGhostPairCallback' mkBtGhostPairCallback* #}
{#fun btGhostPairCallback_free    `( BtGhostPairCallbackClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btGhostObject.h?r=2223#137>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btGhostObject.cpp?r=2223>
-}
{#fun btGhostPairCallback_addOverlappingPair as btGhostPairCallback_addOverlappingPair    `( BtGhostPairCallbackClass bc , BtBroadphaseProxyClass p0 , BtBroadphaseProxyClass p1 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ proxy0
, withBt* `p1'  -- ^ proxy1
 } ->  `BtBroadphasePair'  mkBtBroadphasePair* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btGhostObject.h?r=2223#150>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btGhostObject.cpp?r=2223>
-}
{#fun btGhostPairCallback_removeOverlappingPair as btGhostPairCallback_removeOverlappingPair    `( BtGhostPairCallbackClass bc , BtBroadphaseProxyClass p0 , BtBroadphaseProxyClass p1 , BtDispatcherClass p2 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ proxy0
, withBt* `p1'  -- ^ proxy1
, withBt* `p2'  -- ^ dispatcher
 } ->  `VoidPtr'  mkVoidPtr* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btGhostObject.h?r=2223#163>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btGhostObject.cpp?r=2223>
-}
{#fun btGhostPairCallback_removeOverlappingPairsContainingProxy as btGhostPairCallback_removeOverlappingPairsContainingProxy    `( BtGhostPairCallbackClass bc , BtBroadphaseProxyClass p0 , BtDispatcherClass p1 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ arg0
, withBt* `p1'  -- ^ arg1
 } ->  `()'   #}
-- * btManifoldResult
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btManifoldResult.h?r=2223#55>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btManifoldResult.cpp?r=2223>
-}
{#fun btManifoldResult_new0 as btManifoldResult0    {  } -> `BtManifoldResult' mkBtManifoldResult* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btManifoldResult.h?r=2223#66>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btManifoldResult.cpp?r=2223>
-}
{#fun btManifoldResult_new1 as btManifoldResult1    `( BtCollisionObjectClass p0 , BtCollisionObjectClass p1 )' =>     {  withBt* `p0' , withBt* `p1'  } -> `BtManifoldResult' mkBtManifoldResult* #}
{#fun btManifoldResult_free    `( BtManifoldResultClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btManifoldResult.h?r=2223#75>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btManifoldResult.cpp?r=2223>
-}
{#fun btManifoldResult_getPersistentManifold0 as btManifoldResult_getPersistentManifold    `( BtManifoldResultClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtPersistentManifold'  mkBtPersistentManifold* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btManifoldResult.h?r=2223#75>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btManifoldResult.cpp?r=2223>
-}
{#fun btManifoldResult_getPersistentManifold0 as btManifoldResult_getPersistentManifold0    `( BtManifoldResultClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtPersistentManifold'  mkBtPersistentManifold* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btManifoldResult.h?r=2223#79>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btManifoldResult.cpp?r=2223>
-}
{#fun btManifoldResult_getPersistentManifold1 as btManifoldResult_getPersistentManifold1    `( BtManifoldResultClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtPersistentManifold'  mkBtPersistentManifold* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btManifoldResult.h?r=2223#116>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btManifoldResult.cpp?r=2223>
-}
{#fun btManifoldResult_getBody0Internal as btManifoldResult_getBody0Internal    `( BtManifoldResultClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtCollisionObject'  mkBtCollisionObject* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btManifoldResult.h?r=2223#97>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btManifoldResult.cpp?r=2223>
-}
{#fun btManifoldResult_addContactPoint as btManifoldResult_addContactPoint    `( BtManifoldResultClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ normalOnBInWorld
, withVec3* `Vec3'  peekVec3* -- ^ pointInWorld
,  `Float'  -- ^ depth
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btManifoldResult.h?r=2223#97>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btManifoldResult.cpp?r=2223>
-}
{#fun btManifoldResult_addContactPoint as btManifoldResult_addContactPoint'    `( BtManifoldResultClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ normalOnBInWorld
, allocaVec3-  `Vec3'  peekVec3* -- ^ pointInWorld
,  `Float'  -- ^ depth
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btManifoldResult.h?r=2223#121>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btManifoldResult.cpp?r=2223>
-}
{#fun btManifoldResult_getBody1Internal as btManifoldResult_getBody1Internal    `( BtManifoldResultClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtCollisionObject'  mkBtCollisionObject* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btManifoldResult.h?r=2223#90>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btManifoldResult.cpp?r=2223>
-}
{#fun btManifoldResult_setShapeIdentifiersB as btManifoldResult_setShapeIdentifiersB    `( BtManifoldResultClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ partId1
,  `Int'  -- ^ index1
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btManifoldResult.h?r=2223#84>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btManifoldResult.cpp?r=2223>
-}
{#fun btManifoldResult_setShapeIdentifiersA as btManifoldResult_setShapeIdentifiersA    `( BtManifoldResultClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ partId0
,  `Int'  -- ^ index0
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btManifoldResult.h?r=2223#99>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btManifoldResult.cpp?r=2223>
-}
{#fun btManifoldResult_refreshContactPoints as btManifoldResult_refreshContactPoints    `( BtManifoldResultClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btManifoldResult.h?r=2223#70>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btManifoldResult.cpp?r=2223>
-}
{#fun btManifoldResult_setPersistentManifold as btManifoldResult_setPersistentManifold    `( BtManifoldResultClass bc , BtPersistentManifoldClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ manifoldPtr
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btManifoldResult.h?r=2223#45>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btManifoldResult.cpp?r=2223>
-}
{#fun btManifoldResult_m_body0_set    `( BtManifoldResultClass bc , BtCollisionObjectClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btManifoldResult.h?r=2223#45>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btManifoldResult.cpp?r=2223>
-}
{#fun btManifoldResult_m_body0_get    `( BtManifoldResultClass bc )' =>     { withBt* `bc'  } ->  `BtCollisionObject'  mkBtCollisionObject* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btManifoldResult.h?r=2223#46>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btManifoldResult.cpp?r=2223>
-}
{#fun btManifoldResult_m_body1_set    `( BtManifoldResultClass bc , BtCollisionObjectClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btManifoldResult.h?r=2223#46>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btManifoldResult.cpp?r=2223>
-}
{#fun btManifoldResult_m_body1_get    `( BtManifoldResultClass bc )' =>     { withBt* `bc'  } ->  `BtCollisionObject'  mkBtCollisionObject* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btManifoldResult.h?r=2223#49>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btManifoldResult.cpp?r=2223>
-}
{#fun btManifoldResult_m_index0_set    `( BtManifoldResultClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btManifoldResult.h?r=2223#49>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btManifoldResult.cpp?r=2223>
-}
{#fun btManifoldResult_m_index0_get    `( BtManifoldResultClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btManifoldResult.h?r=2223#50>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btManifoldResult.cpp?r=2223>
-}
{#fun btManifoldResult_m_index1_set    `( BtManifoldResultClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btManifoldResult.h?r=2223#50>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btManifoldResult.cpp?r=2223>
-}
{#fun btManifoldResult_m_index1_get    `( BtManifoldResultClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btManifoldResult.h?r=2223#39>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btManifoldResult.cpp?r=2223>
-}
{#fun btManifoldResult_m_manifoldPtr_set    `( BtManifoldResultClass bc , BtPersistentManifoldClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btManifoldResult.h?r=2223#39>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btManifoldResult.cpp?r=2223>
-}
{#fun btManifoldResult_m_manifoldPtr_get    `( BtManifoldResultClass bc )' =>     { withBt* `bc'  } ->  `BtPersistentManifold'  mkBtPersistentManifold* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btManifoldResult.h?r=2223#47>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btManifoldResult.cpp?r=2223>
-}
{#fun btManifoldResult_m_partId0_set    `( BtManifoldResultClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btManifoldResult.h?r=2223#47>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btManifoldResult.cpp?r=2223>
-}
{#fun btManifoldResult_m_partId0_get    `( BtManifoldResultClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btManifoldResult.h?r=2223#48>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btManifoldResult.cpp?r=2223>
-}
{#fun btManifoldResult_m_partId1_set    `( BtManifoldResultClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btManifoldResult.h?r=2223#48>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btManifoldResult.cpp?r=2223>
-}
{#fun btManifoldResult_m_partId1_get    `( BtManifoldResultClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btManifoldResult.h?r=2223#42>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btManifoldResult.cpp?r=2223>
-}
{#fun btManifoldResult_m_rootTransA_set    `( BtManifoldResultClass bc )' =>     { withBt* `bc' , withTransform* `Transform'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btManifoldResult.h?r=2223#42>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btManifoldResult.cpp?r=2223>
-}
{#fun btManifoldResult_m_rootTransA_get    `( BtManifoldResultClass bc )' =>     { withBt* `bc' , allocaTransform-  `Transform'  peekTransform* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btManifoldResult.h?r=2223#43>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btManifoldResult.cpp?r=2223>
-}
{#fun btManifoldResult_m_rootTransB_set    `( BtManifoldResultClass bc )' =>     { withBt* `bc' , withTransform* `Transform'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btManifoldResult.h?r=2223#43>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btManifoldResult.cpp?r=2223>
-}
{#fun btManifoldResult_m_rootTransB_get    `( BtManifoldResultClass bc )' =>     { withBt* `bc' , allocaTransform-  `Transform'  peekTransform* } -> `()' #}
-- * btPairCachingGhostObject
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btGhostObject.h?r=2223#105>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btGhostObject.cpp?r=2223>
-}
{#fun btPairCachingGhostObject_new as btPairCachingGhostObject    {  } -> `BtPairCachingGhostObject' mkBtPairCachingGhostObject* #}
{#fun btPairCachingGhostObject_free    `( BtPairCachingGhostObjectClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btGhostObject.h?r=2223#112>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btGhostObject.cpp?r=2223>
-}
{#fun btPairCachingGhostObject_removeOverlappingObjectInternal as btPairCachingGhostObject_removeOverlappingObjectInternal    `( BtPairCachingGhostObjectClass bc , BtBroadphaseProxyClass p0 , BtDispatcherClass p1 , BtBroadphaseProxyClass p2 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ otherProxy
, withBt* `p1'  -- ^ dispatcher
, withBt* `p2'  -- ^ thisProxy
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btGhostObject.h?r=2223#114>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btGhostObject.cpp?r=2223>
-}
{#fun btPairCachingGhostObject_getOverlappingPairCache as btPairCachingGhostObject_getOverlappingPairCache    `( BtPairCachingGhostObjectClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtHashedOverlappingPairCache'  mkBtHashedOverlappingPairCache* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btGhostObject.h?r=2223#110>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btGhostObject.cpp?r=2223>
-}
{#fun btPairCachingGhostObject_addOverlappingObjectInternal as btPairCachingGhostObject_addOverlappingObjectInternal    `( BtPairCachingGhostObjectClass bc , BtBroadphaseProxyClass p0 , BtBroadphaseProxyClass p1 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ otherProxy
, withBt* `p1'  -- ^ thisProxy
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btGhostObject.h?r=2223#101>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btGhostObject.cpp?r=2223>
-}
{#fun btPairCachingGhostObject_m_hashPairCache_set    `( BtPairCachingGhostObjectClass bc , BtHashedOverlappingPairCacheClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btGhostObject.h?r=2223#101>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btGhostObject.cpp?r=2223>
-}
{#fun btPairCachingGhostObject_m_hashPairCache_get    `( BtPairCachingGhostObjectClass bc )' =>     { withBt* `bc'  } ->  `BtHashedOverlappingPairCache'  mkBtHashedOverlappingPairCache* #}
-- * btSphereSphereCollisionAlgorithm
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btSphereSphereCollisionAlgorithm.h?r=2223#35>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btSphereSphereCollisionAlgorithm.cpp?r=2223>
-}
{#fun btSphereSphereCollisionAlgorithm_new0 as btSphereSphereCollisionAlgorithm0    `( BtPersistentManifoldClass p0 , BtCollisionAlgorithmConstructionInfoClass p1 , BtCollisionObjectClass p2 , BtCollisionObjectClass p3 )' =>     {  withBt* `p0' , withBt* `p1' , withBt* `p2' , withBt* `p3'  } -> `BtSphereSphereCollisionAlgorithm' mkBtSphereSphereCollisionAlgorithm* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btSphereSphereCollisionAlgorithm.h?r=2223#37>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btSphereSphereCollisionAlgorithm.cpp?r=2223>
-}
{#fun btSphereSphereCollisionAlgorithm_new1 as btSphereSphereCollisionAlgorithm1    `( BtCollisionAlgorithmConstructionInfoClass p0 )' =>     {  withBt* `p0'  } -> `BtSphereSphereCollisionAlgorithm' mkBtSphereSphereCollisionAlgorithm* #}
{#fun btSphereSphereCollisionAlgorithm_free    `( BtSphereSphereCollisionAlgorithmClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btSphereSphereCollisionAlgorithm.h?r=2223#44>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btSphereSphereCollisionAlgorithm.cpp?r=2223>
-}
{#fun btSphereSphereCollisionAlgorithm_getAllContactManifolds as btSphereSphereCollisionAlgorithm_getAllContactManifolds    `( BtSphereSphereCollisionAlgorithmClass bc , BtAlignedObjectArray_btPersistentManifold_ptr_Class p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ manifoldArray
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btSphereSphereCollisionAlgorithm.h?r=2223#42>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btSphereSphereCollisionAlgorithm.cpp?r=2223>
-}
{#fun btSphereSphereCollisionAlgorithm_calculateTimeOfImpact as btSphereSphereCollisionAlgorithm_calculateTimeOfImpact    `( BtSphereSphereCollisionAlgorithmClass bc , BtCollisionObjectClass p0 , BtCollisionObjectClass p1 , BtDispatcherInfoClass p2 , BtManifoldResultClass p3 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ body0
, withBt* `p1'  -- ^ body1
, withBt* `p2'  -- ^ dispatchInfo
, withBt* `p3'  -- ^ resultOut
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btSphereSphereCollisionAlgorithm.h?r=2223#40>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btSphereSphereCollisionAlgorithm.cpp?r=2223>
-}
{#fun btSphereSphereCollisionAlgorithm_processCollision as btSphereSphereCollisionAlgorithm_processCollision    `( BtSphereSphereCollisionAlgorithmClass bc , BtCollisionObjectClass p0 , BtCollisionObjectClass p1 , BtDispatcherInfoClass p2 , BtManifoldResultClass p3 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ body0
, withBt* `p1'  -- ^ body1
, withBt* `p2'  -- ^ dispatchInfo
, withBt* `p3'  -- ^ resultOut
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btSphereSphereCollisionAlgorithm.h?r=2223#31>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btSphereSphereCollisionAlgorithm.cpp?r=2223>
-}
{#fun btSphereSphereCollisionAlgorithm_m_ownManifold_set    `( BtSphereSphereCollisionAlgorithmClass bc )' =>     { withBt* `bc' ,  `Bool'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btSphereSphereCollisionAlgorithm.h?r=2223#31>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btSphereSphereCollisionAlgorithm.cpp?r=2223>
-}
{#fun btSphereSphereCollisionAlgorithm_m_ownManifold_get    `( BtSphereSphereCollisionAlgorithmClass bc )' =>     { withBt* `bc'  } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btSphereSphereCollisionAlgorithm.h?r=2223#32>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btSphereSphereCollisionAlgorithm.cpp?r=2223>
-}
{#fun btSphereSphereCollisionAlgorithm_m_manifoldPtr_set    `( BtSphereSphereCollisionAlgorithmClass bc , BtPersistentManifoldClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btSphereSphereCollisionAlgorithm.h?r=2223#32>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/CollisionDispatch/btSphereSphereCollisionAlgorithm.cpp?r=2223>
-}
{#fun btSphereSphereCollisionAlgorithm_m_manifoldPtr_get    `( BtSphereSphereCollisionAlgorithmClass bc )' =>     { withBt* `bc'  } ->  `BtPersistentManifold'  mkBtPersistentManifold* #}
