module Physics.Bullet.Raw.Utils where

import Control.Monad as M

import Physics.Bullet.Raw
import Physics.Bullet.Raw.Types
import Physics.Bullet.Raw.Class

import Data.Vect.Float

idTransform :: Transform
idTransform = Transform idmtx zero

simpleBtDiscreteDynamicsWorldM :: IO BtDiscreteDynamicsWorld
simpleBtDiscreteDynamicsWorldM = do
    dc <- btDefaultCollisionConstructionInfo
    c <- btDefaultCollisionConfiguration dc
    
    d <- btCollisionDispatcher c
    hc <- btHashedOverlappingPairCache
    b <- btDbvtBroadphase hc
    s <- btSequentialImpulseConstraintSolver
    btDiscreteDynamicsWorld d b s c
{-
simpleBtContinuousDynamicsWorldM :: IO BtContinuousDynamicsWorld
simpleBtContinuousDynamicsWorldM = do
    dc <- btDefaultCollisionConstructionInfo
    c <- btDefaultCollisionConfiguration dc
    
    d <- btCollisionDispatcher c
    hc <- btHashedOverlappingPairCache
    b <- btDbvtBroadphase hc
    s <- btSequentialImpulseConstraintSolver
    btContinuousDynamicsWorld d b s c
-}

localCreateRigidBodyM :: (BtDynamicsWorldClass bc, BtCollisionShapeClass p2) => bc -> Float -> Transform -> p2 -> IO (BtDefaultMotionState, BtRigidBody)
localCreateRigidBodyM dw mass startTransform shape = do
    inertia <- case mass /= 0 of
        True    -> btCollisionShape_calculateLocalInertia shape mass zero
        False   -> return zero
    
    motionState <- btDefaultMotionState startTransform idTransform
    body <- btRigidBody1 mass motionState shape inertia
    btCollisionObject_setContactProcessingThreshold body (1e30)
    btDynamicsWorld_addRigidBody dw body
    return (motionState,body)

mkVehicleM :: (BtDynamicsWorldClass bc,  BtCollisionShapeClass p1) => bc -> p1 -> Float -> IO (BtDefaultMotionState, BtRigidBody, BtRaycastVehicle)
mkVehicleM dw chassisShape mass = do
    --chassisShape <- btBoxShape $ Vector3 1 0.6 2.2
    compound <- btCompoundShape True
    let localTrans = Transform idmtx zero
        wheelRadius = 0.5
        wheelWidth = 0.4
    btCompoundShape_addChildShape compound localTrans chassisShape
    
    (carMotionSate,carChassis) <- localCreateRigidBodyM dw mass idTransform compound
    --(carMotionSate,carChassis) <- localCreateRigidBody dw 8 (Transform idMatrix3x3 $ Vector3 480.0 20.3 (-520.0)) compound
    --wheelShape <- btCylinderShapeX $ Vector3 wheelWidth wheelRadius wheelRadius
    btRigidBody_setCenterOfMassTransform carChassis idTransform
    btRigidBody_setLinearVelocity carChassis zero
    btRigidBody_setAngularVelocity carChassis zero

    tuning <- btRaycastVehicle_btVehicleTuning    
    vehicleRayCaster <- btDefaultVehicleRaycaster dw
    vehicle <- btRaycastVehicle tuning carChassis vehicleRayCaster
    btCollisionObject_setActivationState carChassis 4 -- #define DISABLE_DEACTIVATION 4
    btDynamicsWorld_addVehicle dw vehicle
{-
#ifdef FORCE_ZAXIS_UP
		int rightIndex = 0; 
		int upIndex = 2; 
		int forwardIndex = 1;
		btVector3 wheelDirectionCS0(0,0,-1);
		btVector3 wheelAxleCS(1,0,0);
#else
		int rightIndex = 0;
		int upIndex = 1;
		int forwardIndex = 2;
		btVector3 wheelDirectionCS0(0,-1,0);
		btVector3 wheelAxleCS(-1,0,0);
#endif
-}
    btRaycastVehicle_setCoordinateSystem vehicle 0 1 2
    let connectionHeight        = 0.0
        cCUBE_HALF_EXTENTS      = 1.2
        wheelDirectionCS0       = Vec3 0 (-1) 0
        wheelAxleCS             = Vec3 (-1) 0 0
        suspensionRestLength    = 0.6
        suspensionStiffness     = 20
        suspensionDamping       = 2.3
        suspensionCompression   = 4.4
        rollInfluence           = 0.1
        wheelFriction           = 1000
        
    btRaycastVehicle_addWheel vehicle 
                                (Vec3 (cCUBE_HALF_EXTENTS-(0.3*wheelWidth)) connectionHeight (2*cCUBE_HALF_EXTENTS-wheelRadius))
                                wheelDirectionCS0 wheelAxleCS suspensionRestLength wheelRadius tuning True

    btRaycastVehicle_addWheel vehicle 
                                (Vec3 (-cCUBE_HALF_EXTENTS+(0.3*wheelWidth)) connectionHeight (2*cCUBE_HALF_EXTENTS-wheelRadius))
                                wheelDirectionCS0 wheelAxleCS suspensionRestLength wheelRadius tuning True

    btRaycastVehicle_addWheel vehicle 
                                (Vec3 (-cCUBE_HALF_EXTENTS+(0.3*wheelWidth)) connectionHeight (-2*cCUBE_HALF_EXTENTS+wheelRadius))
                                wheelDirectionCS0 wheelAxleCS suspensionRestLength wheelRadius tuning False

    btRaycastVehicle_addWheel vehicle 
                                (Vec3 (cCUBE_HALF_EXTENTS-(0.3*wheelWidth)) connectionHeight (-2*cCUBE_HALF_EXTENTS+wheelRadius))
                                wheelDirectionCS0 wheelAxleCS suspensionRestLength wheelRadius tuning False
    
    numWheels <- btRaycastVehicle_getNumWheels vehicle
    M.forM_ [0..numWheels-1] $ \i -> do
        wheel <- btRaycastVehicle_getWheelInfo vehicle i
        btWheelInfo_m_suspensionStiffness_set wheel suspensionStiffness
        btWheelInfo_m_wheelsDampingRelaxation_set wheel suspensionDamping
        btWheelInfo_m_wheelsDampingCompression_set wheel suspensionCompression
        btWheelInfo_m_frictionSlip_set wheel wheelFriction
        btWheelInfo_m_rollInfluence_set wheel rollInfluence
    M.forM_ [0..numWheels-1] $ \i -> do
        wheel <- btRaycastVehicle_getWheelInfo vehicle i
        print =<< btWheelInfo_m_suspensionStiffness_get wheel
        print =<< btWheelInfo_m_wheelsDampingRelaxation_get wheel
        print =<< btWheelInfo_m_wheelsDampingCompression_get wheel
        print =<< btWheelInfo_m_frictionSlip_get wheel
        print =<< btWheelInfo_m_rollInfluence_get wheel
    return (carMotionSate,carChassis,vehicle)
