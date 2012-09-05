{-#LANGUAGE ForeignFunctionInterface#-}
#include "Bullet.h"
module Physics.Bullet.Raw.BulletDynamics.Vehicle (
module Physics.Bullet.Raw.BulletDynamics.Vehicle
) where
import Control.Monad
import Foreign.Marshal.Alloc
import Foreign.ForeignPtr
import Foreign.Ptr
import Physics.Bullet.Raw.C2HS
import Physics.Bullet.Raw.Types
import Physics.Bullet.Raw.Class
-- * RaycastInfo
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.h?r=2223#41>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.cpp?r=2223>
-}
{#fun btWheelInfo_RaycastInfo_new as btWheelInfo_RaycastInfo    {  } -> `BtWheelInfo_RaycastInfo' mkBtWheelInfo_RaycastInfo* #}
{#fun btWheelInfo_RaycastInfo_free    `( BtWheelInfo_RaycastInfoClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.h?r=2223#43>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.cpp?r=2223>
-}
{#fun btWheelInfo_RaycastInfo_m_contactNormalWS_set    `( BtWheelInfo_RaycastInfoClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.h?r=2223#43>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.cpp?r=2223>
-}
{#fun btWheelInfo_RaycastInfo_m_contactNormalWS_get    `( BtWheelInfo_RaycastInfoClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.h?r=2223#44>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.cpp?r=2223>
-}
{#fun btWheelInfo_RaycastInfo_m_contactPointWS_set    `( BtWheelInfo_RaycastInfoClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.h?r=2223#44>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.cpp?r=2223>
-}
{#fun btWheelInfo_RaycastInfo_m_contactPointWS_get    `( BtWheelInfo_RaycastInfoClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.h?r=2223#45>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.cpp?r=2223>
-}
{#fun btWheelInfo_RaycastInfo_m_suspensionLength_set    `( BtWheelInfo_RaycastInfoClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.h?r=2223#45>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.cpp?r=2223>
-}
{#fun btWheelInfo_RaycastInfo_m_suspensionLength_get    `( BtWheelInfo_RaycastInfoClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.h?r=2223#46>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.cpp?r=2223>
-}
{#fun btWheelInfo_RaycastInfo_m_hardPointWS_set    `( BtWheelInfo_RaycastInfoClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.h?r=2223#46>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.cpp?r=2223>
-}
{#fun btWheelInfo_RaycastInfo_m_hardPointWS_get    `( BtWheelInfo_RaycastInfoClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.h?r=2223#47>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.cpp?r=2223>
-}
{#fun btWheelInfo_RaycastInfo_m_wheelDirectionWS_set    `( BtWheelInfo_RaycastInfoClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.h?r=2223#47>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.cpp?r=2223>
-}
{#fun btWheelInfo_RaycastInfo_m_wheelDirectionWS_get    `( BtWheelInfo_RaycastInfoClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.h?r=2223#48>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.cpp?r=2223>
-}
{#fun btWheelInfo_RaycastInfo_m_wheelAxleWS_set    `( BtWheelInfo_RaycastInfoClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.h?r=2223#48>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.cpp?r=2223>
-}
{#fun btWheelInfo_RaycastInfo_m_wheelAxleWS_get    `( BtWheelInfo_RaycastInfoClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.h?r=2223#49>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.cpp?r=2223>
-}
{#fun btWheelInfo_RaycastInfo_m_isInContact_set    `( BtWheelInfo_RaycastInfoClass bc )' =>     { withBt* `bc' ,  `Bool'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.h?r=2223#49>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.cpp?r=2223>
-}
{#fun btWheelInfo_RaycastInfo_m_isInContact_get    `( BtWheelInfo_RaycastInfoClass bc )' =>     { withBt* `bc'  } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.h?r=2223#50>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.cpp?r=2223>
-}
{#fun btWheelInfo_RaycastInfo_m_groundObject_set    `( BtWheelInfo_RaycastInfoClass bc )' =>     { withBt* `bc' , withVoidPtr* `VoidPtr'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.h?r=2223#50>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.cpp?r=2223>
-}
{#fun btWheelInfo_RaycastInfo_m_groundObject_get    `( BtWheelInfo_RaycastInfoClass bc )' =>     { withBt* `bc'  } ->  `VoidPtr'  mkVoidPtr* #}
-- * btDefaultVehicleRaycaster
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.h?r=2223#225>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.cpp?r=2223>
-}
{#fun btDefaultVehicleRaycaster_new as btDefaultVehicleRaycaster    `( BtDynamicsWorldClass p0 )' =>     {  withBt* `p0'  } -> `BtDefaultVehicleRaycaster' mkBtDefaultVehicleRaycaster* #}
{#fun btDefaultVehicleRaycaster_free    `( BtDefaultVehicleRaycasterClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.h?r=2223#230>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.cpp?r=2223>
-}
{#fun btDefaultVehicleRaycaster_castRay as btDefaultVehicleRaycaster_castRay    `( BtDefaultVehicleRaycasterClass bc , BtVehicleRaycaster_btVehicleRaycasterResultClass p2 )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ from
, withVec3* `Vec3'  peekVec3* -- ^ to
, withBt* `p2'  -- ^ result
 } ->  `VoidPtr'  mkVoidPtr* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.h?r=2223#230>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.cpp?r=2223>
-}
{#fun btDefaultVehicleRaycaster_castRay as btDefaultVehicleRaycaster_castRay'    `( BtDefaultVehicleRaycasterClass bc , BtVehicleRaycaster_btVehicleRaycasterResultClass p2 )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ from
, allocaVec3-  `Vec3'  peekVec3* -- ^ to
, withBt* `p2'  -- ^ result
 } ->  `VoidPtr'  mkVoidPtr* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.h?r=2223#223>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.cpp?r=2223>
-}
{#fun btDefaultVehicleRaycaster_m_dynamicsWorld_set    `( BtDefaultVehicleRaycasterClass bc , BtDynamicsWorldClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.h?r=2223#223>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.cpp?r=2223>
-}
{#fun btDefaultVehicleRaycaster_m_dynamicsWorld_get    `( BtDefaultVehicleRaycasterClass bc )' =>     { withBt* `bc'  } ->  `BtDynamicsWorld'  mkBtDynamicsWorld* #}
-- * btRaycastVehicle
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.h?r=2223#79>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.cpp?r=2223>
-}
{#fun btRaycastVehicle_new as btRaycastVehicle    `( BtRaycastVehicle_btVehicleTuningClass p0 , BtRigidBodyClass p1 , BtVehicleRaycasterClass p2 )' =>     {  withBt* `p0' , withBt* `p1' , withBt* `p2'  } -> `BtRaycastVehicle' mkBtRaycastVehicle* #}
{#fun btRaycastVehicle_free    `( BtRaycastVehicleClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.h?r=2223#140>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.cpp?r=2223>
-}
{#fun btRaycastVehicle_updateSuspension as btRaycastVehicle_updateSuspension    `( BtRaycastVehicleClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ deltaTime
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.h?r=2223#146>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.cpp?r=2223>
-}
{#fun btRaycastVehicle_getRigidBody0 as btRaycastVehicle_getRigidBody    `( BtRaycastVehicleClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtRigidBody'  mkBtRigidBody* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.h?r=2223#146>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.cpp?r=2223>
-}
{#fun btRaycastVehicle_getRigidBody0 as btRaycastVehicle_getRigidBody0    `( BtRaycastVehicleClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtRigidBody'  mkBtRigidBody* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.h?r=2223#151>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.cpp?r=2223>
-}
{#fun btRaycastVehicle_getRigidBody1 as btRaycastVehicle_getRigidBody1    `( BtRaycastVehicleClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtRigidBody'  mkBtRigidBody* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.h?r=2223#214>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.cpp?r=2223>
-}
{#fun btRaycastVehicle_getUserConstraintId as btRaycastVehicle_getUserConstraintId    `( BtRaycastVehicleClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.h?r=2223#74>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.cpp?r=2223>
-}
{#fun btRaycastVehicle_defaultInit as btRaycastVehicle_defaultInit    `( BtRaycastVehicleClass bc , BtRaycastVehicle_btVehicleTuningClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ tuning
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.h?r=2223#111>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.cpp?r=2223>
-}
{#fun btRaycastVehicle_getWheelTransformWS as btRaycastVehicle_getWheelTransformWS    `( BtRaycastVehicleClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ wheelIndex
, allocaTransform-  `Transform'  peekTransform* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.h?r=2223#117>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.cpp?r=2223>
-}
{#fun btRaycastVehicle_addWheel as btRaycastVehicle_addWheel    `( BtRaycastVehicleClass bc , BtRaycastVehicle_btVehicleTuningClass p5 )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ connectionPointCS0
, withVec3* `Vec3'  peekVec3* -- ^ wheelDirectionCS0
, withVec3* `Vec3'  peekVec3* -- ^ wheelAxleCS
,  `Float'  -- ^ suspensionRestLength
,  `Float'  -- ^ wheelRadius
, withBt* `p5'  -- ^ tuning
,  `Bool'  -- ^ isFrontWheel
 } ->  `BtWheelInfo'  mkBtWheelInfo* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.h?r=2223#117>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.cpp?r=2223>
-}
{#fun btRaycastVehicle_addWheel as btRaycastVehicle_addWheel'    `( BtRaycastVehicleClass bc , BtRaycastVehicle_btVehicleTuningClass p5 )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ connectionPointCS0
, allocaVec3-  `Vec3'  peekVec3* -- ^ wheelDirectionCS0
, allocaVec3-  `Vec3'  peekVec3* -- ^ wheelAxleCS
,  `Float'  -- ^ suspensionRestLength
,  `Float'  -- ^ wheelRadius
, withBt* `p5'  -- ^ tuning
,  `Bool'  -- ^ isFrontWheel
 } ->  `BtWheelInfo'  mkBtWheelInfo* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.h?r=2223#113>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.cpp?r=2223>
-}
{#fun btRaycastVehicle_updateWheelTransform as btRaycastVehicle_updateWheelTransform    `( BtRaycastVehicleClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ wheelIndex
,  `Bool'  -- ^ interpolatedTransform
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.h?r=2223#209>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.cpp?r=2223>
-}
{#fun btRaycastVehicle_setUserConstraintId as btRaycastVehicle_setUserConstraintId    `( BtRaycastVehicleClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ uid
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.h?r=2223#119>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.cpp?r=2223>
-}
{#fun btRaycastVehicle_getNumWheels as btRaycastVehicle_getNumWheels    `( BtRaycastVehicleClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.h?r=2223#97>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.cpp?r=2223>
-}
{#fun btRaycastVehicle_rayCast as btRaycastVehicle_rayCast    `( BtRaycastVehicleClass bc , BtWheelInfoClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ wheel
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.h?r=2223#156>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.cpp?r=2223>
-}
{#fun btRaycastVehicle_getRightAxis as btRaycastVehicle_getRightAxis    `( BtRaycastVehicleClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.h?r=2223#109>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.cpp?r=2223>
-}
{#fun btRaycastVehicle_applyEngineForce as btRaycastVehicle_applyEngineForce    `( BtRaycastVehicleClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ force
,  `Int'  -- ^ wheel
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.h?r=2223#172>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.cpp?r=2223>
-}
{#fun btRaycastVehicle_getForwardVector as btRaycastVehicle_getForwardVector    `( BtRaycastVehicleClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.h?r=2223#126>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.cpp?r=2223>
-}
{#fun btRaycastVehicle_getWheelInfo0 as btRaycastVehicle_getWheelInfo    `( BtRaycastVehicleClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ index
 } ->  `BtWheelInfo'  mkBtWheelInfo* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.h?r=2223#126>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.cpp?r=2223>
-}
{#fun btRaycastVehicle_getWheelInfo0 as btRaycastVehicle_getWheelInfo0    `( BtRaycastVehicleClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ index
 } ->  `BtWheelInfo'  mkBtWheelInfo* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.h?r=2223#128>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.cpp?r=2223>
-}
{#fun btRaycastVehicle_getWheelInfo1 as btRaycastVehicle_getWheelInfo1    `( BtRaycastVehicleClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ index
 } ->  `BtWheelInfo'  mkBtWheelInfo* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.h?r=2223#95>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.cpp?r=2223>
-}
{#fun btRaycastVehicle_getChassisWorldTransform as btRaycastVehicle_getChassisWorldTransform    `( BtRaycastVehicleClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaTransform-  `Transform'  peekTransform* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.h?r=2223#130>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.cpp?r=2223>
-}
{#fun btRaycastVehicle_updateWheelTransformsWS as btRaycastVehicle_updateWheelTransformsWS    `( BtRaycastVehicleClass bc , BtWheelInfoClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ wheel
,  `Bool'  -- ^ interpolatedTransform
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.h?r=2223#102>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.cpp?r=2223>
-}
{#fun btRaycastVehicle_resetSuspension as btRaycastVehicle_resetSuspension    `( BtRaycastVehicleClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.h?r=2223#190>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.cpp?r=2223>
-}
{#fun btRaycastVehicle_setCoordinateSystem as btRaycastVehicle_setCoordinateSystem    `( BtRaycastVehicleClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ rightIndex
,  `Int'  -- ^ upIndex
,  `Int'  -- ^ forwardIndex
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.h?r=2223#204>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.cpp?r=2223>
-}
{#fun btRaycastVehicle_setUserConstraintType as btRaycastVehicle_setUserConstraintType    `( BtRaycastVehicleClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ userConstraintType
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.h?r=2223#93>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.cpp?r=2223>
-}
{#fun btRaycastVehicle_debugDraw as btRaycastVehicle_debugDraw    `( BtRaycastVehicleClass bc , BtIDebugDrawClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ debugDrawer
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.h?r=2223#142>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.cpp?r=2223>
-}
{#fun btRaycastVehicle_updateFriction as btRaycastVehicle_updateFriction    `( BtRaycastVehicleClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ timeStep
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.h?r=2223#165>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.cpp?r=2223>
-}
{#fun btRaycastVehicle_getForwardAxis as btRaycastVehicle_getForwardAxis    `( BtRaycastVehicleClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.h?r=2223#104>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.cpp?r=2223>
-}
{#fun btRaycastVehicle_getSteeringValue as btRaycastVehicle_getSteeringValue    `( BtRaycastVehicleClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ wheel
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.h?r=2223#199>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.cpp?r=2223>
-}
{#fun btRaycastVehicle_getUserConstraintType as btRaycastVehicle_getUserConstraintType    `( BtRaycastVehicleClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.h?r=2223#160>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.cpp?r=2223>
-}
{#fun btRaycastVehicle_getUpAxis as btRaycastVehicle_getUpAxis    `( BtRaycastVehicleClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.h?r=2223#135>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.cpp?r=2223>
-}
{#fun btRaycastVehicle_setPitchControl as btRaycastVehicle_setPitchControl    `( BtRaycastVehicleClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ pitch
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.h?r=2223#185>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.cpp?r=2223>
-}
{#fun btRaycastVehicle_getCurrentSpeedKmHour as btRaycastVehicle_getCurrentSpeedKmHour    `( BtRaycastVehicleClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.h?r=2223#133>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.cpp?r=2223>
-}
{#fun btRaycastVehicle_setBrake as btRaycastVehicle_setBrake    `( BtRaycastVehicleClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ brake
,  `Int'  -- ^ wheelIndex
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.h?r=2223#106>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.cpp?r=2223>
-}
{#fun btRaycastVehicle_setSteeringValue as btRaycastVehicle_setSteeringValue    `( BtRaycastVehicleClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ steering
,  `Int'  -- ^ wheel
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.h?r=2223#99>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.cpp?r=2223>
-}
{#fun btRaycastVehicle_updateVehicle as btRaycastVehicle_updateVehicle    `( BtRaycastVehicleClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ step
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.h?r=2223#85>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.cpp?r=2223>
-}
{#fun btRaycastVehicle_updateAction as btRaycastVehicle_updateAction    `( BtRaycastVehicleClass bc , BtCollisionWorldClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ collisionWorld
,  `Float'  -- ^ step
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.h?r=2223#28>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.cpp?r=2223>
-}
{#fun btRaycastVehicle_m_forwardWS_set    `( BtRaycastVehicleClass bc , BtAlignedObjectArray_btVector3_Class a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.h?r=2223#28>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.cpp?r=2223>
-}
{#fun btRaycastVehicle_m_forwardWS_get    `( BtRaycastVehicleClass bc )' =>     { withBt* `bc'  } ->  `BtAlignedObjectArray_btVector3_'  mkBtAlignedObjectArray_btVector3_* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.h?r=2223#29>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.cpp?r=2223>
-}
{#fun btRaycastVehicle_m_axle_set    `( BtRaycastVehicleClass bc , BtAlignedObjectArray_btVector3_Class a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.h?r=2223#29>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.cpp?r=2223>
-}
{#fun btRaycastVehicle_m_axle_get    `( BtRaycastVehicleClass bc )' =>     { withBt* `bc'  } ->  `BtAlignedObjectArray_btVector3_'  mkBtAlignedObjectArray_btVector3_* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.h?r=2223#30>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.cpp?r=2223>
-}
{#fun btRaycastVehicle_m_forwardImpulse_set    `( BtRaycastVehicleClass bc , BtAlignedObjectArray_float_Class a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.h?r=2223#30>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.cpp?r=2223>
-}
{#fun btRaycastVehicle_m_forwardImpulse_get    `( BtRaycastVehicleClass bc )' =>     { withBt* `bc'  } ->  `BtAlignedObjectArray_float_'  mkBtAlignedObjectArray_float_* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.h?r=2223#31>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.cpp?r=2223>
-}
{#fun btRaycastVehicle_m_sideImpulse_set    `( BtRaycastVehicleClass bc , BtAlignedObjectArray_float_Class a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.h?r=2223#31>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.cpp?r=2223>
-}
{#fun btRaycastVehicle_m_sideImpulse_get    `( BtRaycastVehicleClass bc )' =>     { withBt* `bc'  } ->  `BtAlignedObjectArray_float_'  mkBtAlignedObjectArray_float_* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.h?r=2223#34>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.cpp?r=2223>
-}
{#fun btRaycastVehicle_m_userConstraintType_set    `( BtRaycastVehicleClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.h?r=2223#34>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.cpp?r=2223>
-}
{#fun btRaycastVehicle_m_userConstraintType_get    `( BtRaycastVehicleClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.h?r=2223#35>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.cpp?r=2223>
-}
{#fun btRaycastVehicle_m_userConstraintId_set    `( BtRaycastVehicleClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.h?r=2223#35>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.cpp?r=2223>
-}
{#fun btRaycastVehicle_m_userConstraintId_get    `( BtRaycastVehicleClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.h?r=2223#61>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.cpp?r=2223>
-}
{#fun btRaycastVehicle_m_tau_set    `( BtRaycastVehicleClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.h?r=2223#61>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.cpp?r=2223>
-}
{#fun btRaycastVehicle_m_tau_get    `( BtRaycastVehicleClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.h?r=2223#62>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.cpp?r=2223>
-}
{#fun btRaycastVehicle_m_damping_set    `( BtRaycastVehicleClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.h?r=2223#62>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.cpp?r=2223>
-}
{#fun btRaycastVehicle_m_damping_get    `( BtRaycastVehicleClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.h?r=2223#63>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.cpp?r=2223>
-}
{#fun btRaycastVehicle_m_vehicleRaycaster_set    `( BtRaycastVehicleClass bc , BtVehicleRaycasterClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.h?r=2223#63>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.cpp?r=2223>
-}
{#fun btRaycastVehicle_m_vehicleRaycaster_get    `( BtRaycastVehicleClass bc )' =>     { withBt* `bc'  } ->  `BtVehicleRaycaster'  mkBtVehicleRaycaster* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.h?r=2223#64>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.cpp?r=2223>
-}
{#fun btRaycastVehicle_m_pitchControl_set    `( BtRaycastVehicleClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.h?r=2223#64>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.cpp?r=2223>
-}
{#fun btRaycastVehicle_m_pitchControl_get    `( BtRaycastVehicleClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.h?r=2223#65>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.cpp?r=2223>
-}
{#fun btRaycastVehicle_m_steeringValue_set    `( BtRaycastVehicleClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.h?r=2223#65>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.cpp?r=2223>
-}
{#fun btRaycastVehicle_m_steeringValue_get    `( BtRaycastVehicleClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.h?r=2223#66>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.cpp?r=2223>
-}
{#fun btRaycastVehicle_m_currentVehicleSpeedKmHour_set    `( BtRaycastVehicleClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.h?r=2223#66>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.cpp?r=2223>
-}
{#fun btRaycastVehicle_m_currentVehicleSpeedKmHour_get    `( BtRaycastVehicleClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.h?r=2223#68>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.cpp?r=2223>
-}
{#fun btRaycastVehicle_m_chassisBody_set    `( BtRaycastVehicleClass bc , BtRigidBodyClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.h?r=2223#68>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.cpp?r=2223>
-}
{#fun btRaycastVehicle_m_chassisBody_get    `( BtRaycastVehicleClass bc )' =>     { withBt* `bc'  } ->  `BtRigidBody'  mkBtRigidBody* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.h?r=2223#70>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.cpp?r=2223>
-}
{#fun btRaycastVehicle_m_indexRightAxis_set    `( BtRaycastVehicleClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.h?r=2223#70>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.cpp?r=2223>
-}
{#fun btRaycastVehicle_m_indexRightAxis_get    `( BtRaycastVehicleClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.h?r=2223#71>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.cpp?r=2223>
-}
{#fun btRaycastVehicle_m_indexUpAxis_set    `( BtRaycastVehicleClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.h?r=2223#71>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.cpp?r=2223>
-}
{#fun btRaycastVehicle_m_indexUpAxis_get    `( BtRaycastVehicleClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.h?r=2223#72>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.cpp?r=2223>
-}
{#fun btRaycastVehicle_m_indexForwardAxis_set    `( BtRaycastVehicleClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.h?r=2223#72>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.cpp?r=2223>
-}
{#fun btRaycastVehicle_m_indexForwardAxis_get    `( BtRaycastVehicleClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.h?r=2223#123>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.cpp?r=2223>
-}
{#fun btRaycastVehicle_m_wheelInfo_set    `( BtRaycastVehicleClass bc , BtAlignedObjectArray_btWheelInfo_Class a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.h?r=2223#123>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.cpp?r=2223>
-}
{#fun btRaycastVehicle_m_wheelInfo_get    `( BtRaycastVehicleClass bc )' =>     { withBt* `bc'  } ->  `BtAlignedObjectArray_btWheelInfo_'  mkBtAlignedObjectArray_btWheelInfo_* #}
-- * btVehicleRaycaster
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btVehicleRaycaster.h?r=2223#30>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btVehicleRaycaster.cpp?r=2223>
-}
{#fun btVehicleRaycaster_castRay as btVehicleRaycaster_castRay    `( BtVehicleRaycasterClass bc , BtVehicleRaycaster_btVehicleRaycasterResultClass p2 )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ from
, withVec3* `Vec3'  peekVec3* -- ^ to
, withBt* `p2'  -- ^ result
 } ->  `VoidPtr'  mkVoidPtr* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btVehicleRaycaster.h?r=2223#30>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btVehicleRaycaster.cpp?r=2223>
-}
{#fun btVehicleRaycaster_castRay as btVehicleRaycaster_castRay'    `( BtVehicleRaycasterClass bc , BtVehicleRaycaster_btVehicleRaycasterResultClass p2 )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ from
, allocaVec3-  `Vec3'  peekVec3* -- ^ to
, withBt* `p2'  -- ^ result
 } ->  `VoidPtr'  mkVoidPtr* #}
-- * btVehicleRaycasterResult
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btVehicleRaycaster.h?r=2223#24>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btVehicleRaycaster.cpp?r=2223>
-}
{#fun btVehicleRaycaster_btVehicleRaycasterResult_new as btVehicleRaycaster_btVehicleRaycasterResult    {  } -> `BtVehicleRaycaster_btVehicleRaycasterResult' mkBtVehicleRaycaster_btVehicleRaycasterResult* #}
{#fun btVehicleRaycaster_btVehicleRaycasterResult_free    `( BtVehicleRaycaster_btVehicleRaycasterResultClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btVehicleRaycaster.h?r=2223#27>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btVehicleRaycaster.cpp?r=2223>
-}
{#fun btVehicleRaycaster_btVehicleRaycasterResult_m_distFraction_set    `( BtVehicleRaycaster_btVehicleRaycasterResultClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btVehicleRaycaster.h?r=2223#27>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btVehicleRaycaster.cpp?r=2223>
-}
{#fun btVehicleRaycaster_btVehicleRaycasterResult_m_distFraction_get    `( BtVehicleRaycaster_btVehicleRaycasterResultClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btVehicleRaycaster.h?r=2223#26>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btVehicleRaycaster.cpp?r=2223>
-}
{#fun btVehicleRaycaster_btVehicleRaycasterResult_m_hitNormalInWorld_set    `( BtVehicleRaycaster_btVehicleRaycasterResultClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btVehicleRaycaster.h?r=2223#26>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btVehicleRaycaster.cpp?r=2223>
-}
{#fun btVehicleRaycaster_btVehicleRaycasterResult_m_hitNormalInWorld_get    `( BtVehicleRaycaster_btVehicleRaycasterResultClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btVehicleRaycaster.h?r=2223#25>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btVehicleRaycaster.cpp?r=2223>
-}
{#fun btVehicleRaycaster_btVehicleRaycasterResult_m_hitPointInWorld_set    `( BtVehicleRaycaster_btVehicleRaycasterResultClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btVehicleRaycaster.h?r=2223#25>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btVehicleRaycaster.cpp?r=2223>
-}
{#fun btVehicleRaycaster_btVehicleRaycasterResult_m_hitPointInWorld_get    `( BtVehicleRaycaster_btVehicleRaycasterResultClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
-- * btVehicleTuning
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.h?r=2223#42>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.cpp?r=2223>
-}
{#fun btRaycastVehicle_btVehicleTuning_new as btRaycastVehicle_btVehicleTuning    {  } -> `BtRaycastVehicle_btVehicleTuning' mkBtRaycastVehicle_btVehicleTuning* #}
{#fun btRaycastVehicle_btVehicleTuning_free    `( BtRaycastVehicle_btVehicleTuningClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.h?r=2223#55>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.cpp?r=2223>
-}
{#fun btRaycastVehicle_btVehicleTuning_m_frictionSlip_set    `( BtRaycastVehicle_btVehicleTuningClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.h?r=2223#55>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.cpp?r=2223>
-}
{#fun btRaycastVehicle_btVehicleTuning_m_frictionSlip_get    `( BtRaycastVehicle_btVehicleTuningClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.h?r=2223#56>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.cpp?r=2223>
-}
{#fun btRaycastVehicle_btVehicleTuning_m_maxSuspensionForce_set    `( BtRaycastVehicle_btVehicleTuningClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.h?r=2223#56>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.cpp?r=2223>
-}
{#fun btRaycastVehicle_btVehicleTuning_m_maxSuspensionForce_get    `( BtRaycastVehicle_btVehicleTuningClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.h?r=2223#54>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.cpp?r=2223>
-}
{#fun btRaycastVehicle_btVehicleTuning_m_maxSuspensionTravelCm_set    `( BtRaycastVehicle_btVehicleTuningClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.h?r=2223#54>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.cpp?r=2223>
-}
{#fun btRaycastVehicle_btVehicleTuning_m_maxSuspensionTravelCm_get    `( BtRaycastVehicle_btVehicleTuningClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.h?r=2223#52>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.cpp?r=2223>
-}
{#fun btRaycastVehicle_btVehicleTuning_m_suspensionCompression_set    `( BtRaycastVehicle_btVehicleTuningClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.h?r=2223#52>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.cpp?r=2223>
-}
{#fun btRaycastVehicle_btVehicleTuning_m_suspensionCompression_get    `( BtRaycastVehicle_btVehicleTuningClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.h?r=2223#53>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.cpp?r=2223>
-}
{#fun btRaycastVehicle_btVehicleTuning_m_suspensionDamping_set    `( BtRaycastVehicle_btVehicleTuningClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.h?r=2223#53>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.cpp?r=2223>
-}
{#fun btRaycastVehicle_btVehicleTuning_m_suspensionDamping_get    `( BtRaycastVehicle_btVehicleTuningClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.h?r=2223#51>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.cpp?r=2223>
-}
{#fun btRaycastVehicle_btVehicleTuning_m_suspensionStiffness_set    `( BtRaycastVehicle_btVehicleTuningClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.h?r=2223#51>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btRaycastVehicle.cpp?r=2223>
-}
{#fun btRaycastVehicle_btVehicleTuning_m_suspensionStiffness_get    `( BtRaycastVehicle_btVehicleTuningClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
-- * btWheelInfo
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.h?r=2223#82>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.cpp?r=2223>
-}
{#fun btWheelInfo_new as btWheelInfo    `( BtWheelInfoConstructionInfoClass p0 )' =>     {  withBt* `p0'  } -> `BtWheelInfo' mkBtWheelInfo* #}
{#fun btWheelInfo_free    `( BtWheelInfoClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.h?r=2223#62>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.cpp?r=2223>
-}
{#fun btWheelInfo_getSuspensionRestLength as btWheelInfo_getSuspensionRestLength    `( BtWheelInfoClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.h?r=2223#108>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.cpp?r=2223>
-}
{#fun btWheelInfo_updateWheel as btWheelInfo_updateWheel    `( BtWheelInfoClass bc , BtRigidBodyClass p0 , BtWheelInfo_RaycastInfoClass p1 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ chassis
, withBt* `p1'  -- ^ raycastInfo
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.h?r=2223#78>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.cpp?r=2223>
-}
{#fun btWheelInfo_m_bIsFrontWheel_set    `( BtWheelInfoClass bc )' =>     { withBt* `bc' ,  `Bool'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.h?r=2223#78>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.cpp?r=2223>
-}
{#fun btWheelInfo_m_bIsFrontWheel_get    `( BtWheelInfoClass bc )' =>     { withBt* `bc'  } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.h?r=2223#76>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.cpp?r=2223>
-}
{#fun btWheelInfo_m_brake_set    `( BtWheelInfoClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.h?r=2223#76>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.cpp?r=2223>
-}
{#fun btWheelInfo_m_brake_get    `( BtWheelInfoClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.h?r=2223#57>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.cpp?r=2223>
-}
{#fun btWheelInfo_m_chassisConnectionPointCS_set    `( BtWheelInfoClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.h?r=2223#57>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.cpp?r=2223>
-}
{#fun btWheelInfo_m_chassisConnectionPointCS_get    `( BtWheelInfoClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.h?r=2223#80>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.cpp?r=2223>
-}
{#fun btWheelInfo_m_clientInfo_set    `( BtWheelInfoClass bc )' =>     { withBt* `bc' , withVoidPtr* `VoidPtr'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.h?r=2223#80>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.cpp?r=2223>
-}
{#fun btWheelInfo_m_clientInfo_get    `( BtWheelInfoClass bc )' =>     { withBt* `bc'  } ->  `VoidPtr'  mkVoidPtr* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.h?r=2223#110>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.cpp?r=2223>
-}
{#fun btWheelInfo_m_clippedInvContactDotSuspension_set    `( BtWheelInfoClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.h?r=2223#110>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.cpp?r=2223>
-}
{#fun btWheelInfo_m_clippedInvContactDotSuspension_get    `( BtWheelInfoClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.h?r=2223#70>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.cpp?r=2223>
-}
{#fun btWheelInfo_m_deltaRotation_set    `( BtWheelInfoClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.h?r=2223#70>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.cpp?r=2223>
-}
{#fun btWheelInfo_m_deltaRotation_get    `( BtWheelInfoClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.h?r=2223#74>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.cpp?r=2223>
-}
{#fun btWheelInfo_m_engineForce_set    `( BtWheelInfoClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.h?r=2223#74>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.cpp?r=2223>
-}
{#fun btWheelInfo_m_engineForce_get    `( BtWheelInfoClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.h?r=2223#67>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.cpp?r=2223>
-}
{#fun btWheelInfo_m_frictionSlip_set    `( BtWheelInfoClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.h?r=2223#67>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.cpp?r=2223>
-}
{#fun btWheelInfo_m_frictionSlip_get    `( BtWheelInfoClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.h?r=2223#72>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.cpp?r=2223>
-}
{#fun btWheelInfo_m_maxSuspensionForce_set    `( BtWheelInfoClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.h?r=2223#72>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.cpp?r=2223>
-}
{#fun btWheelInfo_m_maxSuspensionForce_get    `( BtWheelInfoClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.h?r=2223#61>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.cpp?r=2223>
-}
{#fun btWheelInfo_m_maxSuspensionTravelCm_set    `( BtWheelInfoClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.h?r=2223#61>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.cpp?r=2223>
-}
{#fun btWheelInfo_m_maxSuspensionTravelCm_get    `( BtWheelInfoClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.h?r=2223#53>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.cpp?r=2223>
-}
{#fun btWheelInfo_m_raycastInfo_set    `( BtWheelInfoClass bc , BtWheelInfo_RaycastInfoClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.h?r=2223#53>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.cpp?r=2223>
-}
{#fun btWheelInfo_m_raycastInfo_get    `( BtWheelInfoClass bc )' =>     { withBt* `bc'  } ->  `BtWheelInfo_RaycastInfo'  mkBtWheelInfo_RaycastInfo* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.h?r=2223#71>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.cpp?r=2223>
-}
{#fun btWheelInfo_m_rollInfluence_set    `( BtWheelInfoClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.h?r=2223#71>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.cpp?r=2223>
-}
{#fun btWheelInfo_m_rollInfluence_get    `( BtWheelInfoClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.h?r=2223#69>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.cpp?r=2223>
-}
{#fun btWheelInfo_m_rotation_set    `( BtWheelInfoClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.h?r=2223#69>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.cpp?r=2223>
-}
{#fun btWheelInfo_m_rotation_get    `( BtWheelInfoClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.h?r=2223#114>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.cpp?r=2223>
-}
{#fun btWheelInfo_m_skidInfo_set    `( BtWheelInfoClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.h?r=2223#114>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.cpp?r=2223>
-}
{#fun btWheelInfo_m_skidInfo_get    `( BtWheelInfoClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.h?r=2223#68>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.cpp?r=2223>
-}
{#fun btWheelInfo_m_steering_set    `( BtWheelInfoClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.h?r=2223#68>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.cpp?r=2223>
-}
{#fun btWheelInfo_m_steering_get    `( BtWheelInfoClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.h?r=2223#111>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.cpp?r=2223>
-}
{#fun btWheelInfo_m_suspensionRelativeVelocity_set    `( BtWheelInfoClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.h?r=2223#111>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.cpp?r=2223>
-}
{#fun btWheelInfo_m_suspensionRelativeVelocity_get    `( BtWheelInfoClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.h?r=2223#60>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.cpp?r=2223>
-}
{#fun btWheelInfo_m_suspensionRestLength1_set    `( BtWheelInfoClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.h?r=2223#60>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.cpp?r=2223>
-}
{#fun btWheelInfo_m_suspensionRestLength1_get    `( BtWheelInfoClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.h?r=2223#64>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.cpp?r=2223>
-}
{#fun btWheelInfo_m_suspensionStiffness_set    `( BtWheelInfoClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.h?r=2223#64>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.cpp?r=2223>
-}
{#fun btWheelInfo_m_suspensionStiffness_get    `( BtWheelInfoClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.h?r=2223#59>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.cpp?r=2223>
-}
{#fun btWheelInfo_m_wheelAxleCS_set    `( BtWheelInfoClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.h?r=2223#59>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.cpp?r=2223>
-}
{#fun btWheelInfo_m_wheelAxleCS_get    `( BtWheelInfoClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.h?r=2223#58>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.cpp?r=2223>
-}
{#fun btWheelInfo_m_wheelDirectionCS_set    `( BtWheelInfoClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.h?r=2223#58>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.cpp?r=2223>
-}
{#fun btWheelInfo_m_wheelDirectionCS_get    `( BtWheelInfoClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.h?r=2223#65>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.cpp?r=2223>
-}
{#fun btWheelInfo_m_wheelsDampingCompression_set    `( BtWheelInfoClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.h?r=2223#65>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.cpp?r=2223>
-}
{#fun btWheelInfo_m_wheelsDampingCompression_get    `( BtWheelInfoClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.h?r=2223#66>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.cpp?r=2223>
-}
{#fun btWheelInfo_m_wheelsDampingRelaxation_set    `( BtWheelInfoClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.h?r=2223#66>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.cpp?r=2223>
-}
{#fun btWheelInfo_m_wheelsDampingRelaxation_get    `( BtWheelInfoClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.h?r=2223#63>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.cpp?r=2223>
-}
{#fun btWheelInfo_m_wheelsRadius_set    `( BtWheelInfoClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.h?r=2223#63>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.cpp?r=2223>
-}
{#fun btWheelInfo_m_wheelsRadius_get    `( BtWheelInfoClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.h?r=2223#113>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.cpp?r=2223>
-}
{#fun btWheelInfo_m_wheelsSuspensionForce_set    `( BtWheelInfoClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.h?r=2223#113>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.cpp?r=2223>
-}
{#fun btWheelInfo_m_wheelsSuspensionForce_get    `( BtWheelInfoClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.h?r=2223#55>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.cpp?r=2223>
-}
{#fun btWheelInfo_m_worldTransform_set    `( BtWheelInfoClass bc )' =>     { withBt* `bc' , withTransform* `Transform'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.h?r=2223#55>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.cpp?r=2223>
-}
{#fun btWheelInfo_m_worldTransform_get    `( BtWheelInfoClass bc )' =>     { withBt* `bc' , allocaTransform-  `Transform'  peekTransform* } -> `()' #}
-- * btWheelInfoConstructionInfo
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.h?r=2223#20>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.cpp?r=2223>
-}
{#fun btWheelInfoConstructionInfo_new as btWheelInfoConstructionInfo    {  } -> `BtWheelInfoConstructionInfo' mkBtWheelInfoConstructionInfo* #}
{#fun btWheelInfoConstructionInfo_free    `( BtWheelInfoConstructionInfoClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.h?r=2223#33>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.cpp?r=2223>
-}
{#fun btWheelInfoConstructionInfo_m_bIsFrontWheel_set    `( BtWheelInfoConstructionInfoClass bc )' =>     { withBt* `bc' ,  `Bool'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.h?r=2223#33>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.cpp?r=2223>
-}
{#fun btWheelInfoConstructionInfo_m_bIsFrontWheel_get    `( BtWheelInfoConstructionInfoClass bc )' =>     { withBt* `bc'  } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.h?r=2223#21>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.cpp?r=2223>
-}
{#fun btWheelInfoConstructionInfo_m_chassisConnectionCS_set    `( BtWheelInfoConstructionInfoClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.h?r=2223#21>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.cpp?r=2223>
-}
{#fun btWheelInfoConstructionInfo_m_chassisConnectionCS_get    `( BtWheelInfoConstructionInfoClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.h?r=2223#31>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.cpp?r=2223>
-}
{#fun btWheelInfoConstructionInfo_m_frictionSlip_set    `( BtWheelInfoConstructionInfoClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.h?r=2223#31>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.cpp?r=2223>
-}
{#fun btWheelInfoConstructionInfo_m_frictionSlip_get    `( BtWheelInfoConstructionInfoClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.h?r=2223#32>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.cpp?r=2223>
-}
{#fun btWheelInfoConstructionInfo_m_maxSuspensionForce_set    `( BtWheelInfoConstructionInfoClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.h?r=2223#32>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.cpp?r=2223>
-}
{#fun btWheelInfoConstructionInfo_m_maxSuspensionForce_get    `( BtWheelInfoConstructionInfoClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.h?r=2223#25>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.cpp?r=2223>
-}
{#fun btWheelInfoConstructionInfo_m_maxSuspensionTravelCm_set    `( BtWheelInfoConstructionInfoClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.h?r=2223#25>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.cpp?r=2223>
-}
{#fun btWheelInfoConstructionInfo_m_maxSuspensionTravelCm_get    `( BtWheelInfoConstructionInfoClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.h?r=2223#24>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.cpp?r=2223>
-}
{#fun btWheelInfoConstructionInfo_m_suspensionRestLength_set    `( BtWheelInfoConstructionInfoClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.h?r=2223#24>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.cpp?r=2223>
-}
{#fun btWheelInfoConstructionInfo_m_suspensionRestLength_get    `( BtWheelInfoConstructionInfoClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.h?r=2223#28>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.cpp?r=2223>
-}
{#fun btWheelInfoConstructionInfo_m_suspensionStiffness_set    `( BtWheelInfoConstructionInfoClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.h?r=2223#28>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.cpp?r=2223>
-}
{#fun btWheelInfoConstructionInfo_m_suspensionStiffness_get    `( BtWheelInfoConstructionInfoClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.h?r=2223#23>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.cpp?r=2223>
-}
{#fun btWheelInfoConstructionInfo_m_wheelAxleCS_set    `( BtWheelInfoConstructionInfoClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.h?r=2223#23>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.cpp?r=2223>
-}
{#fun btWheelInfoConstructionInfo_m_wheelAxleCS_get    `( BtWheelInfoConstructionInfoClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.h?r=2223#22>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.cpp?r=2223>
-}
{#fun btWheelInfoConstructionInfo_m_wheelDirectionCS_set    `( BtWheelInfoConstructionInfoClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.h?r=2223#22>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.cpp?r=2223>
-}
{#fun btWheelInfoConstructionInfo_m_wheelDirectionCS_get    `( BtWheelInfoConstructionInfoClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.h?r=2223#26>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.cpp?r=2223>
-}
{#fun btWheelInfoConstructionInfo_m_wheelRadius_set    `( BtWheelInfoConstructionInfoClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.h?r=2223#26>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.cpp?r=2223>
-}
{#fun btWheelInfoConstructionInfo_m_wheelRadius_get    `( BtWheelInfoConstructionInfoClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.h?r=2223#29>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.cpp?r=2223>
-}
{#fun btWheelInfoConstructionInfo_m_wheelsDampingCompression_set    `( BtWheelInfoConstructionInfoClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.h?r=2223#29>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.cpp?r=2223>
-}
{#fun btWheelInfoConstructionInfo_m_wheelsDampingCompression_get    `( BtWheelInfoConstructionInfoClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.h?r=2223#30>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.cpp?r=2223>
-}
{#fun btWheelInfoConstructionInfo_m_wheelsDampingRelaxation_set    `( BtWheelInfoConstructionInfoClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.h?r=2223#30>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Vehicle/btWheelInfo.cpp?r=2223>
-}
{#fun btWheelInfoConstructionInfo_m_wheelsDampingRelaxation_get    `( BtWheelInfoConstructionInfoClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
