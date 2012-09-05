{-#LANGUAGE ForeignFunctionInterface#-}
#include "Bullet.h"
module Physics.Bullet.Raw.BulletDynamics.Dynamics (
module Physics.Bullet.Raw.BulletDynamics.Dynamics
) where
import Control.Monad
import Foreign.Marshal.Alloc
import Foreign.ForeignPtr
import Foreign.Ptr
import Physics.Bullet.Raw.C2HS
import Physics.Bullet.Raw.Types
import Physics.Bullet.Raw.Class
-- * btActionInterface
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btActionInterface.h?r=2223#30>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btActionInterface.cpp?r=2223>
-}
{#fun btActionInterface_getFixedBody as btActionInterface_getFixedBody    `( )' =>     {  } ->  `BtRigidBody'  mkBtRigidBody* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btActionInterface.h?r=2223#39>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btActionInterface.cpp?r=2223>
-}
{#fun btActionInterface_updateAction as btActionInterface_updateAction    `( BtActionInterfaceClass bc , BtCollisionWorldClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ collisionWorld
,  `Float'  -- ^ deltaTimeStep
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btActionInterface.h?r=2223#41>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btActionInterface.cpp?r=2223>
-}
{#fun btActionInterface_debugDraw as btActionInterface_debugDraw    `( BtActionInterfaceClass bc , BtIDebugDrawClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ debugDrawer
 } ->  `()'   #}
-- * btDiscreteDynamicsWorld
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.h?r=2223#86>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.cpp?r=2223>
-}
{#fun btDiscreteDynamicsWorld_new as btDiscreteDynamicsWorld    `( BtDispatcherClass p0 , BtBroadphaseInterfaceClass p1 , BtConstraintSolverClass p2 , BtCollisionConfigurationClass p3 )' =>     {  withBt* `p0' , withBt* `p1' , withBt* `p2' , withBt* `p3'  } -> `BtDiscreteDynamicsWorld' mkBtDiscreteDynamicsWorld* #}
{#fun btDiscreteDynamicsWorld_free    `( BtDiscreteDynamicsWorldClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.h?r=2223#122>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.cpp?r=2223>
-}
{#fun btDiscreteDynamicsWorld_setGravity as btDiscreteDynamicsWorld_setGravity    `( BtDiscreteDynamicsWorldClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ gravity
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.h?r=2223#122>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.cpp?r=2223>
-}
{#fun btDiscreteDynamicsWorld_setGravity as btDiscreteDynamicsWorld_setGravity'    `( BtDiscreteDynamicsWorldClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ gravity
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.h?r=2223#103>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.cpp?r=2223>
-}
{#fun btDiscreteDynamicsWorld_addAction as btDiscreteDynamicsWorld_addAction    `( BtDiscreteDynamicsWorldClass bc , BtActionInterfaceClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ arg0
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.h?r=2223#162>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.cpp?r=2223>
-}
{#fun btDiscreteDynamicsWorld_applyGravity as btDiscreteDynamicsWorld_applyGravity    `( BtDiscreteDynamicsWorldClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.h?r=2223#194>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.cpp?r=2223>
-}
{#fun btDiscreteDynamicsWorld_serialize as btDiscreteDynamicsWorld_serialize    `( BtDiscreteDynamicsWorldClass bc , BtSerializerClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ serializer
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.h?r=2223#117>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.cpp?r=2223>
-}
{#fun btDiscreteDynamicsWorld_getCollisionWorld as btDiscreteDynamicsWorld_getCollisionWorld    `( BtDiscreteDynamicsWorldClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtCollisionWorld'  mkBtCollisionWorld* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.h?r=2223#128>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.cpp?r=2223>
-}
{#fun btDiscreteDynamicsWorld_addRigidBody0 as btDiscreteDynamicsWorld_addRigidBody    `( BtDiscreteDynamicsWorldClass bc , BtRigidBodyClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ body
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.h?r=2223#128>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.cpp?r=2223>
-}
{#fun btDiscreteDynamicsWorld_addRigidBody0 as btDiscreteDynamicsWorld_addRigidBody0    `( BtDiscreteDynamicsWorldClass bc , BtRigidBodyClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ body
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.h?r=2223#130>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.cpp?r=2223>
-}
{#fun btDiscreteDynamicsWorld_addRigidBody1 as btDiscreteDynamicsWorld_addRigidBody1    `( BtDiscreteDynamicsWorldClass bc , BtRigidBodyClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ body
,  `Int'  -- ^ group
,  `Int'  -- ^ mask
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.h?r=2223#159>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.cpp?r=2223>
-}
{#fun btDiscreteDynamicsWorld_clearForces as btDiscreteDynamicsWorld_clearForces    `( BtDiscreteDynamicsWorldClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.h?r=2223#178>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.cpp?r=2223>
-}
{#fun btDiscreteDynamicsWorld_removeVehicle as btDiscreteDynamicsWorld_removeVehicle    `( BtDiscreteDynamicsWorldClass bc , BtActionInterfaceClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ vehicle
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.h?r=2223#80>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.cpp?r=2223>
-}
{#fun btDiscreteDynamicsWorld_serializeRigidBodies as btDiscreteDynamicsWorld_serializeRigidBodies    `( BtDiscreteDynamicsWorldClass bc , BtSerializerClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ serializer
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.h?r=2223#75>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.cpp?r=2223>
-}
{#fun btDiscreteDynamicsWorld_internalSingleStepSimulation as btDiscreteDynamicsWorld_internalSingleStepSimulation    `( BtDiscreteDynamicsWorldClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ timeStep
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.h?r=2223#188>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.cpp?r=2223>
-}
{#fun btDiscreteDynamicsWorld_getSynchronizeAllMotionStates as btDiscreteDynamicsWorld_getSynchronizeAllMotionStates    `( BtDiscreteDynamicsWorldClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.h?r=2223#164>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.cpp?r=2223>
-}
{#fun btDiscreteDynamicsWorld_setNumTasks as btDiscreteDynamicsWorld_setNumTasks    `( BtDiscreteDynamicsWorldClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ numTasks
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.h?r=2223#184>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.cpp?r=2223>
-}
{#fun btDiscreteDynamicsWorld_setSynchronizeAllMotionStates as btDiscreteDynamicsWorld_setSynchronizeAllMotionStates    `( BtDiscreteDynamicsWorldClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Bool'  -- ^ synchronizeAll
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.h?r=2223#61>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.cpp?r=2223>
-}
{#fun btDiscreteDynamicsWorld_predictUnconstraintMotion as btDiscreteDynamicsWorld_predictUnconstraintMotion    `( BtDiscreteDynamicsWorldClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ timeStep
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.h?r=2223#101>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.cpp?r=2223>
-}
{#fun btDiscreteDynamicsWorld_removeConstraint as btDiscreteDynamicsWorld_removeConstraint    `( BtDiscreteDynamicsWorldClass bc , BtTypedConstraintClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ constraint
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.h?r=2223#146>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.cpp?r=2223>
-}
{#fun btDiscreteDynamicsWorld_getNumConstraints as btDiscreteDynamicsWorld_getNumConstraints    `( BtDiscreteDynamicsWorldClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.h?r=2223#126>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.cpp?r=2223>
-}
{#fun btDiscreteDynamicsWorld_addCollisionObject as btDiscreteDynamicsWorld_addCollisionObject    `( BtDiscreteDynamicsWorldClass bc , BtCollisionObjectClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ collisionObject
,  `Int'  -- ^ collisionFilterGroup
,  `Int'  -- ^ collisionFilterMask
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.h?r=2223#132>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.cpp?r=2223>
-}
{#fun btDiscreteDynamicsWorld_removeRigidBody as btDiscreteDynamicsWorld_removeRigidBody    `( BtDiscreteDynamicsWorldClass bc , BtRigidBodyClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ body
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.h?r=2223#63>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.cpp?r=2223>
-}
{#fun btDiscreteDynamicsWorld_integrateTransforms as btDiscreteDynamicsWorld_integrateTransforms    `( BtDiscreteDynamicsWorldClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ timeStep
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.h?r=2223#138>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.cpp?r=2223>
-}
{#fun btDiscreteDynamicsWorld_debugDrawConstraint as btDiscreteDynamicsWorld_debugDrawConstraint    `( BtDiscreteDynamicsWorldClass bc , BtTypedConstraintClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ constraint
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.h?r=2223#140>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.cpp?r=2223>
-}
{#fun btDiscreteDynamicsWorld_debugDrawWorld as btDiscreteDynamicsWorld_debugDrawWorld    `( BtDiscreteDynamicsWorldClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.h?r=2223#65>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.cpp?r=2223>
-}
{#fun btDiscreteDynamicsWorld_calculateSimulationIslands as btDiscreteDynamicsWorld_calculateSimulationIslands    `( BtDiscreteDynamicsWorldClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.h?r=2223#99>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.cpp?r=2223>
-}
{#fun btDiscreteDynamicsWorld_addConstraint as btDiscreteDynamicsWorld_addConstraint    `( BtDiscreteDynamicsWorldClass bc , BtTypedConstraintClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ constraint
,  `Bool'  -- ^ disableCollisionsBetweenLinkedBodies
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.h?r=2223#73>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.cpp?r=2223>
-}
{#fun btDiscreteDynamicsWorld_startProfiling as btDiscreteDynamicsWorld_startProfiling    `( BtDiscreteDynamicsWorldClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ timeStep
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.h?r=2223#69>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.cpp?r=2223>
-}
{#fun btDiscreteDynamicsWorld_updateActivationState as btDiscreteDynamicsWorld_updateActivationState    `( BtDiscreteDynamicsWorldClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ timeStep
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.h?r=2223#124>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.cpp?r=2223>
-}
{#fun btDiscreteDynamicsWorld_getGravity as btDiscreteDynamicsWorld_getGravity    `( BtDiscreteDynamicsWorldClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.h?r=2223#105>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.cpp?r=2223>
-}
{#fun btDiscreteDynamicsWorld_removeAction as btDiscreteDynamicsWorld_removeAction    `( BtDiscreteDynamicsWorldClass bc , BtActionInterfaceClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ arg0
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.h?r=2223#182>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.cpp?r=2223>
-}
{#fun btDiscreteDynamicsWorld_removeCharacter as btDiscreteDynamicsWorld_removeCharacter    `( BtDiscreteDynamicsWorldClass bc , BtActionInterfaceClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ character
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.h?r=2223#78>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.cpp?r=2223>
-}
{#fun btDiscreteDynamicsWorld_saveKinematicState as btDiscreteDynamicsWorld_saveKinematicState    `( BtDiscreteDynamicsWorldClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ timeStep
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.h?r=2223#148>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.cpp?r=2223>
-}
{#fun btDiscreteDynamicsWorld_getConstraint0 as btDiscreteDynamicsWorld_getConstraint    `( BtDiscreteDynamicsWorldClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ index
 } ->  `BtTypedConstraint'  mkBtTypedConstraint* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.h?r=2223#148>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.cpp?r=2223>
-}
{#fun btDiscreteDynamicsWorld_getConstraint0 as btDiscreteDynamicsWorld_getConstraint0    `( BtDiscreteDynamicsWorldClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ index
 } ->  `BtTypedConstraint'  mkBtTypedConstraint* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.h?r=2223#150>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.cpp?r=2223>
-}
{#fun btDiscreteDynamicsWorld_getConstraint1 as btDiscreteDynamicsWorld_getConstraint1    `( BtDiscreteDynamicsWorldClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ index
 } ->  `BtTypedConstraint'  mkBtTypedConstraint* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.h?r=2223#144>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.cpp?r=2223>
-}
{#fun btDiscreteDynamicsWorld_getConstraintSolver as btDiscreteDynamicsWorld_getConstraintSolver    `( BtDiscreteDynamicsWorldClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtConstraintSolver'  mkBtConstraintSolver* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.h?r=2223#180>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.cpp?r=2223>
-}
{#fun btDiscreteDynamicsWorld_addCharacter as btDiscreteDynamicsWorld_addCharacter    `( BtDiscreteDynamicsWorldClass bc , BtActionInterfaceClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ character
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.h?r=2223#67>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.cpp?r=2223>
-}
{#fun btDiscreteDynamicsWorld_solveConstraints as btDiscreteDynamicsWorld_solveConstraints    `( BtDiscreteDynamicsWorldClass bc , BtContactSolverInfoClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ solverInfo
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.h?r=2223#71>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.cpp?r=2223>
-}
{#fun btDiscreteDynamicsWorld_updateActions as btDiscreteDynamicsWorld_updateActions    `( BtDiscreteDynamicsWorldClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ timeStep
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.h?r=2223#170>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.cpp?r=2223>
-}
{#fun btDiscreteDynamicsWorld_updateVehicles as btDiscreteDynamicsWorld_updateVehicles    `( BtDiscreteDynamicsWorldClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ timeStep
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.h?r=2223#97>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.cpp?r=2223>
-}
{#fun btDiscreteDynamicsWorld_synchronizeSingleMotionState as btDiscreteDynamicsWorld_synchronizeSingleMotionState    `( BtDiscreteDynamicsWorldClass bc , BtRigidBodyClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ body
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.h?r=2223#176>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.cpp?r=2223>
-}
{#fun btDiscreteDynamicsWorld_addVehicle as btDiscreteDynamicsWorld_addVehicle    `( BtDiscreteDynamicsWorldClass bc , BtActionInterfaceClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ vehicle
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.h?r=2223#94>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.cpp?r=2223>
-}
{#fun btDiscreteDynamicsWorld_synchronizeMotionStates as btDiscreteDynamicsWorld_synchronizeMotionStates    `( BtDiscreteDynamicsWorldClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.h?r=2223#91>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.cpp?r=2223>
-}
{#fun btDiscreteDynamicsWorld_stepSimulation as btDiscreteDynamicsWorld_stepSimulation    `( BtDiscreteDynamicsWorldClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ timeStep
,  `Int'  -- ^ maxSubSteps
,  `Float'  -- ^ fixedTimeStep
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.h?r=2223#135>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.cpp?r=2223>
-}
{#fun btDiscreteDynamicsWorld_removeCollisionObject as btDiscreteDynamicsWorld_removeCollisionObject    `( BtDiscreteDynamicsWorldClass bc , BtCollisionObjectClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ collisionObject
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.h?r=2223#142>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.cpp?r=2223>
-}
{#fun btDiscreteDynamicsWorld_setConstraintSolver as btDiscreteDynamicsWorld_setConstraintSolver    `( BtDiscreteDynamicsWorldClass bc , BtConstraintSolverClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ solver
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.h?r=2223#39>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.cpp?r=2223>
-}
{#fun btDiscreteDynamicsWorld_m_constraintSolver_set    `( BtDiscreteDynamicsWorldClass bc , BtConstraintSolverClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.h?r=2223#39>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.cpp?r=2223>
-}
{#fun btDiscreteDynamicsWorld_m_constraintSolver_get    `( BtDiscreteDynamicsWorldClass bc )' =>     { withBt* `bc'  } ->  `BtConstraintSolver'  mkBtConstraintSolver* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.h?r=2223#43>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.cpp?r=2223>
-}
{#fun btDiscreteDynamicsWorld_m_constraints_set    `( BtDiscreteDynamicsWorldClass bc , BtAlignedObjectArray_btTypedConstraint_ptr_Class a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.h?r=2223#43>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.cpp?r=2223>
-}
{#fun btDiscreteDynamicsWorld_m_constraints_get    `( BtDiscreteDynamicsWorldClass bc )' =>     { withBt* `bc'  } ->  `BtAlignedObjectArray_btTypedConstraint_ptr_'  mkBtAlignedObjectArray_btTypedConstraint_ptr_* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.h?r=2223#45>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.cpp?r=2223>
-}
{#fun btDiscreteDynamicsWorld_m_nonStaticRigidBodies_set    `( BtDiscreteDynamicsWorldClass bc , BtAlignedObjectArray_btRigidBody_ptr_Class a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.h?r=2223#45>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.cpp?r=2223>
-}
{#fun btDiscreteDynamicsWorld_m_nonStaticRigidBodies_get    `( BtDiscreteDynamicsWorldClass bc )' =>     { withBt* `bc'  } ->  `BtAlignedObjectArray_btRigidBody_ptr_'  mkBtAlignedObjectArray_btRigidBody_ptr_* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.h?r=2223#47>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.cpp?r=2223>
-}
{#fun btDiscreteDynamicsWorld_m_gravity_set    `( BtDiscreteDynamicsWorldClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.h?r=2223#47>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.cpp?r=2223>
-}
{#fun btDiscreteDynamicsWorld_m_gravity_get    `( BtDiscreteDynamicsWorldClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.h?r=2223#50>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.cpp?r=2223>
-}
{#fun btDiscreteDynamicsWorld_m_localTime_set    `( BtDiscreteDynamicsWorldClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.h?r=2223#50>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.cpp?r=2223>
-}
{#fun btDiscreteDynamicsWorld_m_localTime_get    `( BtDiscreteDynamicsWorldClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.h?r=2223#53>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.cpp?r=2223>
-}
{#fun btDiscreteDynamicsWorld_m_ownsIslandManager_set    `( BtDiscreteDynamicsWorldClass bc )' =>     { withBt* `bc' ,  `Bool'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.h?r=2223#53>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.cpp?r=2223>
-}
{#fun btDiscreteDynamicsWorld_m_ownsIslandManager_get    `( BtDiscreteDynamicsWorldClass bc )' =>     { withBt* `bc'  } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.h?r=2223#54>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.cpp?r=2223>
-}
{#fun btDiscreteDynamicsWorld_m_ownsConstraintSolver_set    `( BtDiscreteDynamicsWorldClass bc )' =>     { withBt* `bc' ,  `Bool'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.h?r=2223#54>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.cpp?r=2223>
-}
{#fun btDiscreteDynamicsWorld_m_ownsConstraintSolver_get    `( BtDiscreteDynamicsWorldClass bc )' =>     { withBt* `bc'  } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.h?r=2223#55>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.cpp?r=2223>
-}
{#fun btDiscreteDynamicsWorld_m_synchronizeAllMotionStates_set    `( BtDiscreteDynamicsWorldClass bc )' =>     { withBt* `bc' ,  `Bool'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.h?r=2223#55>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.cpp?r=2223>
-}
{#fun btDiscreteDynamicsWorld_m_synchronizeAllMotionStates_get    `( BtDiscreteDynamicsWorldClass bc )' =>     { withBt* `bc'  } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.h?r=2223#57>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.cpp?r=2223>
-}
{#fun btDiscreteDynamicsWorld_m_actions_set    `( BtDiscreteDynamicsWorldClass bc , BtAlignedObjectArray_btActionInterface_ptr_Class a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.h?r=2223#57>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.cpp?r=2223>
-}
{#fun btDiscreteDynamicsWorld_m_actions_get    `( BtDiscreteDynamicsWorldClass bc )' =>     { withBt* `bc'  } ->  `BtAlignedObjectArray_btActionInterface_ptr_'  mkBtAlignedObjectArray_btActionInterface_ptr_* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.h?r=2223#59>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.cpp?r=2223>
-}
{#fun btDiscreteDynamicsWorld_m_profileTimings_set    `( BtDiscreteDynamicsWorldClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.h?r=2223#59>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.cpp?r=2223>
-}
{#fun btDiscreteDynamicsWorld_m_profileTimings_get    `( BtDiscreteDynamicsWorldClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
-- * btDynamicsWorld
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDynamicsWorld.h?r=2223#83>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDynamicsWorld.cpp?r=2223>
-}
{#fun btDynamicsWorld_setGravity as btDynamicsWorld_setGravity    `( BtDynamicsWorldClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ gravity
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDynamicsWorld.h?r=2223#83>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDynamicsWorld.cpp?r=2223>
-}
{#fun btDynamicsWorld_setGravity as btDynamicsWorld_setGravity'    `( BtDynamicsWorldClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ gravity
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDynamicsWorld.h?r=2223#77>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDynamicsWorld.cpp?r=2223>
-}
{#fun btDynamicsWorld_addAction as btDynamicsWorld_addAction    `( BtDynamicsWorldClass bc , BtActionInterfaceClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ action
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDynamicsWorld.h?r=2223#131>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDynamicsWorld.cpp?r=2223>
-}
{#fun btDynamicsWorld_getSolverInfo as btDynamicsWorld_getSolverInfo    `( BtDynamicsWorldClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtContactSolverInfo'  mkBtContactSolverInfo* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDynamicsWorld.h?r=2223#88>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDynamicsWorld.cpp?r=2223>
-}
{#fun btDynamicsWorld_addRigidBody0 as btDynamicsWorld_addRigidBody    `( BtDynamicsWorldClass bc , BtRigidBodyClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ body
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDynamicsWorld.h?r=2223#88>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDynamicsWorld.cpp?r=2223>
-}
{#fun btDynamicsWorld_addRigidBody0 as btDynamicsWorld_addRigidBody0    `( BtDynamicsWorldClass bc , BtRigidBodyClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ body
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDynamicsWorld.h?r=2223#90>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDynamicsWorld.cpp?r=2223>
-}
{#fun btDynamicsWorld_addRigidBody1 as btDynamicsWorld_addRigidBody1    `( BtDynamicsWorldClass bc , BtRigidBodyClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ body
,  `Int'  -- ^ group
,  `Int'  -- ^ mask
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDynamicsWorld.h?r=2223#106>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDynamicsWorld.cpp?r=2223>
-}
{#fun btDynamicsWorld_clearForces as btDynamicsWorld_clearForces    `( BtDynamicsWorldClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDynamicsWorld.h?r=2223#140>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDynamicsWorld.cpp?r=2223>
-}
{#fun btDynamicsWorld_removeVehicle as btDynamicsWorld_removeVehicle    `( BtDynamicsWorldClass bc , BtActionInterfaceClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ vehicle
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDynamicsWorld.h?r=2223#75>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDynamicsWorld.cpp?r=2223>
-}
{#fun btDynamicsWorld_removeConstraint as btDynamicsWorld_removeConstraint    `( BtDynamicsWorldClass bc , BtTypedConstraintClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ constraint
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDynamicsWorld.h?r=2223#98>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDynamicsWorld.cpp?r=2223>
-}
{#fun btDynamicsWorld_getNumConstraints as btDynamicsWorld_getNumConstraints    `( BtDynamicsWorldClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDynamicsWorld.h?r=2223#92>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDynamicsWorld.cpp?r=2223>
-}
{#fun btDynamicsWorld_removeRigidBody as btDynamicsWorld_removeRigidBody    `( BtDynamicsWorldClass bc , BtRigidBodyClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ body
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDynamicsWorld.h?r=2223#86>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDynamicsWorld.cpp?r=2223>
-}
{#fun btDynamicsWorld_synchronizeMotionStates as btDynamicsWorld_synchronizeMotionStates    `( BtDynamicsWorldClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDynamicsWorld.h?r=2223#70>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDynamicsWorld.cpp?r=2223>
-}
{#fun btDynamicsWorld_addConstraint as btDynamicsWorld_addConstraint    `( BtDynamicsWorldClass bc , BtTypedConstraintClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ constraint
,  `Bool'  -- ^ disableCollisionsBetweenLinkedBodies
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDynamicsWorld.h?r=2223#84>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDynamicsWorld.cpp?r=2223>
-}
{#fun btDynamicsWorld_getGravity as btDynamicsWorld_getGravity    `( BtDynamicsWorldClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDynamicsWorld.h?r=2223#68>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDynamicsWorld.cpp?r=2223>
-}
{#fun btDynamicsWorld_debugDrawWorld as btDynamicsWorld_debugDrawWorld    `( BtDynamicsWorldClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDynamicsWorld.h?r=2223#79>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDynamicsWorld.cpp?r=2223>
-}
{#fun btDynamicsWorld_removeAction as btDynamicsWorld_removeAction    `( BtDynamicsWorldClass bc , BtActionInterfaceClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ action
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDynamicsWorld.h?r=2223#121>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDynamicsWorld.cpp?r=2223>
-}
{#fun btDynamicsWorld_setWorldUserInfo as btDynamicsWorld_setWorldUserInfo    `( BtDynamicsWorldClass bc )' =>     { withBt* `bc'  -- ^ 
, withVoidPtr* `VoidPtr'  -- ^ worldUserInfo
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDynamicsWorld.h?r=2223#144>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDynamicsWorld.cpp?r=2223>
-}
{#fun btDynamicsWorld_removeCharacter as btDynamicsWorld_removeCharacter    `( BtDynamicsWorldClass bc , BtActionInterfaceClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ character
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDynamicsWorld.h?r=2223#100>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDynamicsWorld.cpp?r=2223>
-}
{#fun btDynamicsWorld_getConstraint0 as btDynamicsWorld_getConstraint    `( BtDynamicsWorldClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ index
 } ->  `BtTypedConstraint'  mkBtTypedConstraint* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDynamicsWorld.h?r=2223#100>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDynamicsWorld.cpp?r=2223>
-}
{#fun btDynamicsWorld_getConstraint0 as btDynamicsWorld_getConstraint0    `( BtDynamicsWorldClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ index
 } ->  `BtTypedConstraint'  mkBtTypedConstraint* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDynamicsWorld.h?r=2223#102>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDynamicsWorld.cpp?r=2223>
-}
{#fun btDynamicsWorld_getConstraint1 as btDynamicsWorld_getConstraint1    `( BtDynamicsWorldClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ index
 } ->  `BtTypedConstraint'  mkBtTypedConstraint* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDynamicsWorld.h?r=2223#96>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDynamicsWorld.cpp?r=2223>
-}
{#fun btDynamicsWorld_getConstraintSolver as btDynamicsWorld_getConstraintSolver    `( BtDynamicsWorldClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtConstraintSolver'  mkBtConstraintSolver* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDynamicsWorld.h?r=2223#66>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDynamicsWorld.cpp?r=2223>
-}
{#fun btDynamicsWorld_stepSimulation as btDynamicsWorld_stepSimulation    `( BtDynamicsWorldClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ timeStep
,  `Int'  -- ^ maxSubSteps
,  `Float'  -- ^ fixedTimeStep
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDynamicsWorld.h?r=2223#142>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDynamicsWorld.cpp?r=2223>
-}
{#fun btDynamicsWorld_addCharacter as btDynamicsWorld_addCharacter    `( BtDynamicsWorldClass bc , BtActionInterfaceClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ character
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDynamicsWorld.h?r=2223#138>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDynamicsWorld.cpp?r=2223>
-}
{#fun btDynamicsWorld_addVehicle as btDynamicsWorld_addVehicle    `( BtDynamicsWorldClass bc , BtActionInterfaceClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ vehicle
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDynamicsWorld.h?r=2223#126>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDynamicsWorld.cpp?r=2223>
-}
{#fun btDynamicsWorld_getWorldUserInfo as btDynamicsWorld_getWorldUserInfo    `( BtDynamicsWorldClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `VoidPtr'  mkVoidPtr* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDynamicsWorld.h?r=2223#94>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDynamicsWorld.cpp?r=2223>
-}
{#fun btDynamicsWorld_setConstraintSolver as btDynamicsWorld_setConstraintSolver    `( BtDynamicsWorldClass bc , BtConstraintSolverClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ solver
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDynamicsWorld.h?r=2223#46>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDynamicsWorld.cpp?r=2223>
-}
{#fun btDynamicsWorld_m_worldUserInfo_set    `( BtDynamicsWorldClass bc )' =>     { withBt* `bc' , withVoidPtr* `VoidPtr'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDynamicsWorld.h?r=2223#46>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDynamicsWorld.cpp?r=2223>
-}
{#fun btDynamicsWorld_m_worldUserInfo_get    `( BtDynamicsWorldClass bc )' =>     { withBt* `bc'  } ->  `VoidPtr'  mkVoidPtr* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDynamicsWorld.h?r=2223#48>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDynamicsWorld.cpp?r=2223>
-}
{#fun btDynamicsWorld_m_solverInfo_set    `( BtDynamicsWorldClass bc , BtContactSolverInfoClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDynamicsWorld.h?r=2223#48>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btDynamicsWorld.cpp?r=2223>
-}
{#fun btDynamicsWorld_m_solverInfo_get    `( BtDynamicsWorldClass bc )' =>     { withBt* `bc'  } ->  `BtContactSolverInfo'  mkBtContactSolverInfo* #}
-- * btRigidBody
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#164>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_new0 as btRigidBody0    `( BtRigidBody_btRigidBodyConstructionInfoClass p0 )' =>     {  withBt* `p0'  } -> `BtRigidBody' mkBtRigidBody* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#168>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_new1 as btRigidBody1    `( BtMotionStateClass p1 , BtCollisionShapeClass p2 )' =>     {   `Float' , withBt* `p1' , withBt* `p2' , withVec3* `Vec3'  } -> `BtRigidBody' mkBtRigidBody* #}
{#fun btRigidBody_free    `( BtRigidBodyClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#209>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_setGravity as btRigidBody_setGravity    `( BtRigidBodyClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ acceleration
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#209>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_setGravity as btRigidBody_setGravity'    `( BtRigidBodyClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ acceleration
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#405>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_updateDeactivation as btRigidBody_updateDeactivation    `( BtRigidBodyClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ timeStep
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#477>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_setAngularFactor0 as btRigidBody_setAngularFactor    `( BtRigidBodyClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ angFac
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#477>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_setAngularFactor0 as btRigidBody_setAngularFactor'    `( BtRigidBodyClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ angFac
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#477>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_setAngularFactor0 as btRigidBody_setAngularFactor0    `( BtRigidBodyClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ angFac
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#477>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_setAngularFactor0 as btRigidBody_setAngularFactor0'    `( BtRigidBodyClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ angFac
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#482>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_setAngularFactor1 as btRigidBody_setAngularFactor1    `( BtRigidBodyClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ angFac
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#606>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_internalWritebackVelocity0 as btRigidBody_internalWritebackVelocity    `( BtRigidBodyClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#606>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_internalWritebackVelocity0 as btRigidBody_internalWritebackVelocity0    `( BtRigidBodyClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#619>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_internalWritebackVelocity1 as btRigidBody_internalWritebackVelocity1    `( BtRigidBodyClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ timeStep
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#532>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_getPushVelocity as btRigidBody_getPushVelocity    `( BtRigidBodyClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#551>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_internalGetDeltaAngularVelocity as btRigidBody_internalGetDeltaAngularVelocity    `( BtRigidBodyClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#207>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_applyGravity as btRigidBody_applyGravity    `( BtRigidBodyClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#628>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_serialize as btRigidBody_serialize    `( BtRigidBodyClass bc , BtSerializerClass p1 )' =>     { withBt* `bc'  -- ^ 
, withVoidPtr* `VoidPtr'  -- ^ dataBuffer
, withBt* `p1'  -- ^ serializer
 } ->  `String'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#343>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_getOrientation as btRigidBody_getOrientation    `( BtRigidBodyClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaUnitQuaternion-  `UnitQuaternion'  peekUnitQuaternion* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#268>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_applyCentralForce as btRigidBody_applyCentralForce    `( BtRigidBodyClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ force
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#268>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_applyCentralForce as btRigidBody_applyCentralForce'    `( BtRigidBodyClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ force
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#466>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_setMotionState as btRigidBody_setMotionState    `( BtRigidBodyClass bc , BtMotionStateClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ motionState
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#332>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_clearForces as btRigidBody_clearForces    `( BtRigidBodyClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#458>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_getMotionState0 as btRigidBody_getMotionState    `( BtRigidBodyClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtMotionState'  mkBtMotionState* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#458>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_getMotionState0 as btRigidBody_getMotionState0    `( BtRigidBodyClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtMotionState'  mkBtMotionState* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#462>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_getMotionState1 as btRigidBody_getMotionState1    `( BtRigidBodyClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtMotionState'  mkBtMotionState* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#216>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_setDamping as btRigidBody_setDamping    `( BtRigidBodyClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ lin_damping
,  `Float'  -- ^ ang_damping
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#320>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_applyImpulse as btRigidBody_applyImpulse    `( BtRigidBodyClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ impulse
, withVec3* `Vec3'  peekVec3* -- ^ rel_pos
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#320>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_applyImpulse as btRigidBody_applyImpulse'    `( BtRigidBodyClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ impulse
, allocaVec3-  `Vec3'  peekVec3* -- ^ rel_pos
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#299>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_applyTorque as btRigidBody_applyTorque    `( BtRigidBodyClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ torque
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#299>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_applyTorque as btRigidBody_applyTorque'    `( BtRigidBodyClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ torque
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#597>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_internalApplyPushImpulse as btRigidBody_internalApplyPushImpulse    `( BtRigidBodyClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ linearComponent
, withVec3* `Vec3'  peekVec3* -- ^ angularComponent
,  `Float'  -- ^ impulseMagnitude
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#597>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_internalApplyPushImpulse as btRigidBody_internalApplyPushImpulse'    `( BtRigidBodyClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ linearComponent
, allocaVec3-  `Vec3'  peekVec3* -- ^ angularComponent
,  `Float'  -- ^ impulseMagnitude
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#422>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_wantsSleeping as btRigidBody_wantsSleeping    `( BtRigidBodyClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#452>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_setNewBroadphaseProxy as btRigidBody_setNewBroadphaseProxy    `( BtRigidBodyClass bc , BtBroadphaseProxyClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ broadphaseProxy
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#366>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_getVelocityInLocalPoint as btRigidBody_getVelocityInLocalPoint    `( BtRigidBodyClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ rel_pos
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#366>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_getVelocityInLocalPoint as btRigidBody_getVelocityInLocalPoint'    `( BtRigidBodyClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ rel_pos
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#625>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_calculateSerializeBufferSize as btRigidBody_calculateSerializeBufferSize    `( BtRigidBodyClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#361>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_setAngularVelocity as btRigidBody_setAngularVelocity    `( BtRigidBodyClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ ang_vel
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#361>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_setAngularVelocity as btRigidBody_setAngularVelocity'    `( BtRigidBodyClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ ang_vel
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#250>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_getLinearFactor as btRigidBody_getLinearFactor    `( BtRigidBodyClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#203>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_predictIntegratedTransform as btRigidBody_predictIntegratedTransform    `( BtRigidBodyClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ step
, withTransform* `Transform'  peekTransform* -- ^ predictedTransform
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#203>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_predictIntegratedTransform as btRigidBody_predictIntegratedTransform'    `( BtRigidBodyClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ step
, allocaTransform-  `Transform'  peekTransform* -- ^ predictedTransform
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#556>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_internalGetAngularFactor as btRigidBody_internalGetAngularFactor    `( BtRigidBodyClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#233>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_getAngularSleepingThreshold as btRigidBody_getAngularSleepingThreshold    `( BtRigidBodyClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#238>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_applyDamping as btRigidBody_applyDamping    `( BtRigidBodyClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ timeStep
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#205>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_saveKinematicState as btRigidBody_saveKinematicState    `( BtRigidBodyClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ step
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#293>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_setSleepingThresholds as btRigidBody_setSleepingThresholds    `( BtRigidBodyClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ linear
,  `Float'  -- ^ angular
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#351>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_getAngularVelocity as btRigidBody_getAngularVelocity    `( BtRigidBodyClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#228>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_getLinearSleepingThreshold as btRigidBody_getLinearSleepingThreshold    `( BtRigidBodyClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#561>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_internalGetInvMass as btRigidBody_internalGetInvMass    `( BtRigidBodyClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#315>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_applyTorqueImpulse as btRigidBody_applyTorqueImpulse    `( BtRigidBodyClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ torque
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#315>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_applyTorqueImpulse as btRigidBody_applyTorqueImpulse'    `( BtRigidBodyClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ torque
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#566>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_internalGetPushVelocity as btRigidBody_internalGetPushVelocity    `( BtRigidBodyClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#254>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_setLinearFactor as btRigidBody_setLinearFactor    `( BtRigidBodyClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ linearFactor
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#254>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_setLinearFactor as btRigidBody_setLinearFactor'    `( BtRigidBodyClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ linearFactor
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#630>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_serializeSingleObject as btRigidBody_serializeSingleObject    `( BtRigidBodyClass bc , BtSerializerClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ serializer
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#259>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_getInvMass as btRigidBody_getInvMass    `( BtRigidBodyClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#273>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_getTotalForce as btRigidBody_getTotalForce    `( BtRigidBodyClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#340>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_getCenterOfMassPosition as btRigidBody_getCenterOfMassPosition    `( BtRigidBodyClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#381>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_getAabb as btRigidBody_getAabb    `( BtRigidBodyClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ aabbMin
, withVec3* `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#381>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_getAabb as btRigidBody_getAabb'    `( BtRigidBodyClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMin
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#444>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_getBroadphaseProxy0 as btRigidBody_getBroadphaseProxy    `( BtRigidBodyClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtBroadphaseProxy'  mkBtBroadphaseProxy* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#444>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_getBroadphaseProxy0 as btRigidBody_getBroadphaseProxy0    `( BtRigidBodyClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtBroadphaseProxy'  mkBtBroadphaseProxy* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#448>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_getBroadphaseProxy1 as btRigidBody_getBroadphaseProxy1    `( BtRigidBodyClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtBroadphaseProxy'  mkBtBroadphaseProxy* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#240>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_getCollisionShape0 as btRigidBody_getCollisionShape    `( BtRigidBodyClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtCollisionShape'  mkBtCollisionShape* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#240>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_getCollisionShape0 as btRigidBody_getCollisionShape0    `( BtRigidBodyClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtCollisionShape'  mkBtCollisionShape* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#244>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_getCollisionShape1 as btRigidBody_getCollisionShape1    `( BtRigidBodyClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtCollisionShape'  mkBtCollisionShape* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#189>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_upcast0 as btRigidBody_upcast    `(  BtCollisionObjectClass p0 )' =>     {  withBt* `p0'  -- ^ colObj
 } ->  `BtRigidBody'  mkBtRigidBody* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#189>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_upcast0 as btRigidBody_upcast0    `(  BtCollisionObjectClass p0 )' =>     {  withBt* `p0'  -- ^ colObj
 } ->  `BtRigidBody'  mkBtRigidBody* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#195>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_upcast1 as btRigidBody_upcast1    `(  BtCollisionObjectClass p0 )' =>     {  withBt* `p0'  -- ^ colObj
 } ->  `BtRigidBody'  mkBtRigidBody* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#497>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_checkCollideWithOverride as btRigidBody_checkCollideWithOverride    `( BtRigidBodyClass bc , BtCollisionObjectClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ co
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#375>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_translate as btRigidBody_translate    `( BtRigidBodyClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ v
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#375>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_translate as btRigidBody_translate'    `( BtRigidBodyClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ v
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#338>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_updateInertiaTensor as btRigidBody_updateInertiaTensor    `( BtRigidBodyClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#304>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_applyForce as btRigidBody_applyForce    `( BtRigidBodyClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ force
, withVec3* `Vec3'  peekVec3* -- ^ rel_pos
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#304>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_applyForce as btRigidBody_applyForce'    `( BtRigidBodyClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ force
, allocaVec3-  `Vec3'  peekVec3* -- ^ rel_pos
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#581>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_internalGetAngularVelocity as btRigidBody_internalGetAngularVelocity    `( BtRigidBodyClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ angVel
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#581>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_internalGetAngularVelocity as btRigidBody_internalGetAngularVelocity'    `( BtRigidBodyClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ angVel
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#181>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_setupRigidBody as btRigidBody_setupRigidBody    `( BtRigidBodyClass bc , BtRigidBody_btRigidBodyConstructionInfoClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ constructionInfo
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#310>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_applyCentralImpulse as btRigidBody_applyCentralImpulse    `( BtRigidBodyClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ impulse
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#310>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_applyCentralImpulse as btRigidBody_applyCentralImpulse'    `( BtRigidBodyClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ impulse
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#537>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_getTurnVelocity as btRigidBody_getTurnVelocity    `( BtRigidBodyClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#522>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_getDeltaLinearVelocity as btRigidBody_getDeltaLinearVelocity    `( BtRigidBodyClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#264>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_integrateVelocities as btRigidBody_integrateVelocities    `( BtRigidBodyClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ step
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#211>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_getGravity as btRigidBody_getGravity    `( BtRigidBodyClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#248>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_setMassProps as btRigidBody_setMassProps    `( BtRigidBodyClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ mass
, withVec3* `Vec3'  peekVec3* -- ^ inertia
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#248>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_setMassProps as btRigidBody_setMassProps'    `( BtRigidBodyClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ mass
, allocaVec3-  `Vec3'  peekVec3* -- ^ inertia
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#266>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_setCenterOfMassTransform as btRigidBody_setCenterOfMassTransform    `( BtRigidBodyClass bc )' =>     { withBt* `bc'  -- ^ 
, withTransform* `Transform'  peekTransform* -- ^ xform
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#266>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_setCenterOfMassTransform as btRigidBody_setCenterOfMassTransform'    `( BtRigidBodyClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaTransform-  `Transform'  peekTransform* -- ^ xform
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#512>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_setFlags as btRigidBody_setFlags    `( BtRigidBodyClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ flags
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#499>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_addConstraintRef as btRigidBody_addConstraintRef    `( BtRigidBodyClass bc , BtTypedConstraintClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ c
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#356>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_setLinearVelocity as btRigidBody_setLinearVelocity    `( BtRigidBodyClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ lin_vel
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#356>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_setLinearVelocity as btRigidBody_setLinearVelocity'    `( BtRigidBodyClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ lin_vel
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#492>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_isInWorld as btRigidBody_isInWorld    `( BtRigidBodyClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#278>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_getTotalTorque as btRigidBody_getTotalTorque    `( BtRigidBodyClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#507>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_getNumConstraintRefs as btRigidBody_getNumConstraintRefs    `( BtRigidBodyClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#399>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_computeAngularImpulseDenominator as btRigidBody_computeAngularImpulseDenominator    `( BtRigidBodyClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ axis
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#399>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_computeAngularImpulseDenominator as btRigidBody_computeAngularImpulseDenominator'    `( BtRigidBodyClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ axis
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#260>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_getInvInertiaTensorWorld as btRigidBody_getInvInertiaTensorWorld    `( BtRigidBodyClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaMat3-  `Mat3'  peekMat3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#527>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_getDeltaAngularVelocity as btRigidBody_getDeltaAngularVelocity    `( BtRigidBodyClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#546>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_internalGetDeltaLinearVelocity as btRigidBody_internalGetDeltaLinearVelocity    `( BtRigidBodyClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#387>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_computeImpulseDenominator as btRigidBody_computeImpulseDenominator    `( BtRigidBodyClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ pos
, withVec3* `Vec3'  peekVec3* -- ^ normal
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#387>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_computeImpulseDenominator as btRigidBody_computeImpulseDenominator'    `( BtRigidBodyClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ pos
, allocaVec3-  `Vec3'  peekVec3* -- ^ normal
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#502>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_getConstraintRef as btRigidBody_getConstraintRef    `( BtRigidBodyClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ index
 } ->  `BtTypedConstraint'  mkBtTypedConstraint* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#223>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_getAngularDamping as btRigidBody_getAngularDamping    `( BtRigidBodyClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#571>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_internalGetTurnVelocity as btRigidBody_internalGetTurnVelocity    `( BtRigidBodyClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#185>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_proceedToTransform as btRigidBody_proceedToTransform    `( BtRigidBodyClass bc )' =>     { withBt* `bc'  -- ^ 
, withTransform* `Transform'  peekTransform* -- ^ newTrans
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#185>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_proceedToTransform as btRigidBody_proceedToTransform'    `( BtRigidBodyClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaTransform-  `Transform'  peekTransform* -- ^ newTrans
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#288>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_setInvInertiaDiagLocal as btRigidBody_setInvInertiaDiagLocal    `( BtRigidBodyClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ diagInvInertia
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#288>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_setInvInertiaDiagLocal as btRigidBody_setInvInertiaDiagLocal'    `( BtRigidBodyClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ diagInvInertia
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#283>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_getInvInertiaDiagLocal as btRigidBody_getInvInertiaDiagLocal    `( BtRigidBodyClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#345>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_getCenterOfMassTransform as btRigidBody_getCenterOfMassTransform    `( BtRigidBodyClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaTransform-  `Transform'  peekTransform* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#500>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_removeConstraintRef as btRigidBody_removeConstraintRef    `( BtRigidBodyClass bc , BtTypedConstraintClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ c
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#486>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_getAngularFactor as btRigidBody_getAngularFactor    `( BtRigidBodyClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#348>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_getLinearVelocity as btRigidBody_getLinearVelocity    `( BtRigidBodyClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#517>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_getFlags as btRigidBody_getFlags    `( BtRigidBodyClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#576>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_internalGetVelocityInLocalPointObsolete as btRigidBody_internalGetVelocityInLocalPointObsolete    `( BtRigidBodyClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ rel_pos
, withVec3* `Vec3'  peekVec3* -- ^ velocity
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#576>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_internalGetVelocityInLocalPointObsolete as btRigidBody_internalGetVelocityInLocalPointObsolete'    `( BtRigidBodyClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ rel_pos
, allocaVec3-  `Vec3'  peekVec3* -- ^ velocity
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#218>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_getLinearDamping as btRigidBody_getLinearDamping    `( BtRigidBodyClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#77>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_m_additionalAngularDampingFactor_set    `( BtRigidBodyClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#77>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_m_additionalAngularDampingFactor_get    `( BtRigidBodyClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#76>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_m_additionalAngularDampingThresholdSqr_set    `( BtRigidBodyClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#76>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_m_additionalAngularDampingThresholdSqr_get    `( BtRigidBodyClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#73>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_m_additionalDamping_set    `( BtRigidBodyClass bc )' =>     { withBt* `bc' ,  `Bool'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#73>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_m_additionalDamping_get    `( BtRigidBodyClass bc )' =>     { withBt* `bc'  } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#74>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_m_additionalDampingFactor_set    `( BtRigidBodyClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#74>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_m_additionalDampingFactor_get    `( BtRigidBodyClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#75>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_m_additionalLinearDampingThresholdSqr_set    `( BtRigidBodyClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#75>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_m_additionalLinearDampingThresholdSqr_get    `( BtRigidBodyClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#71>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_m_angularDamping_set    `( BtRigidBodyClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#71>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_m_angularDamping_get    `( BtRigidBodyClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#98>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_m_angularFactor_set    `( BtRigidBodyClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#98>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_m_angularFactor_get    `( BtRigidBodyClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#81>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_m_angularSleepingThreshold_set    `( BtRigidBodyClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#81>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_m_angularSleepingThreshold_get    `( BtRigidBodyClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#60>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_m_angularVelocity_set    `( BtRigidBodyClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#60>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_m_angularVelocity_get    `( BtRigidBodyClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#87>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_m_constraintRefs_set    `( BtRigidBodyClass bc , BtAlignedObjectArray_btTypedConstraint_ptr_Class a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#87>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_m_constraintRefs_get    `( BtRigidBodyClass bc )' =>     { withBt* `bc'  } ->  `BtAlignedObjectArray_btTypedConstraint_ptr_'  mkBtAlignedObjectArray_btTypedConstraint_ptr_* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#474>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_m_contactSolverType_set    `( BtRigidBodyClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#474>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_m_contactSolverType_get    `( BtRigidBodyClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#91>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_m_debugBodyId_set    `( BtRigidBodyClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#91>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_m_debugBodyId_get    `( BtRigidBodyClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#97>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_m_deltaAngularVelocity_set    `( BtRigidBodyClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#97>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_m_deltaAngularVelocity_get    `( BtRigidBodyClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#96>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_m_deltaLinearVelocity_set    `( BtRigidBodyClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#96>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_m_deltaLinearVelocity_get    `( BtRigidBodyClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#475>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_m_frictionSolverType_set    `( BtRigidBodyClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#475>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_m_frictionSolverType_get    `( BtRigidBodyClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#64>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_m_gravity_set    `( BtRigidBodyClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#64>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_m_gravity_get    `( BtRigidBodyClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#65>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_m_gravity_acceleration_set    `( BtRigidBodyClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#65>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_m_gravity_acceleration_get    `( BtRigidBodyClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#66>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_m_invInertiaLocal_set    `( BtRigidBodyClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#66>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_m_invInertiaLocal_get    `( BtRigidBodyClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#58>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_m_invInertiaTensorWorld_set    `( BtRigidBodyClass bc )' =>     { withBt* `bc' , withMat3* `Mat3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#58>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_m_invInertiaTensorWorld_get    `( BtRigidBodyClass bc )' =>     { withBt* `bc' , allocaMat3-  `Mat3'  peekMat3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#99>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_m_invMass_set    `( BtRigidBodyClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#99>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_m_invMass_get    `( BtRigidBodyClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#61>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_m_inverseMass_set    `( BtRigidBodyClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#61>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_m_inverseMass_get    `( BtRigidBodyClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#70>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_m_linearDamping_set    `( BtRigidBodyClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#70>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_m_linearDamping_get    `( BtRigidBodyClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#62>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_m_linearFactor_set    `( BtRigidBodyClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#62>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_m_linearFactor_get    `( BtRigidBodyClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#80>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_m_linearSleepingThreshold_set    `( BtRigidBodyClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#80>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_m_linearSleepingThreshold_get    `( BtRigidBodyClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#59>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_m_linearVelocity_set    `( BtRigidBodyClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#59>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_m_linearVelocity_get    `( BtRigidBodyClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#84>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_m_optionalMotionState_set    `( BtRigidBodyClass bc , BtMotionStateClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#84>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_m_optionalMotionState_get    `( BtRigidBodyClass bc )' =>     { withBt* `bc'  } ->  `BtMotionState'  mkBtMotionState* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#100>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_m_pushVelocity_set    `( BtRigidBodyClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#100>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_m_pushVelocity_get    `( BtRigidBodyClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#89>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_m_rigidbodyFlags_set    `( BtRigidBodyClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#89>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_m_rigidbodyFlags_get    `( BtRigidBodyClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#67>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_m_totalForce_set    `( BtRigidBodyClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#67>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_m_totalForce_get    `( BtRigidBodyClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#68>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_m_totalTorque_set    `( BtRigidBodyClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#68>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_m_totalTorque_get    `( BtRigidBodyClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#101>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_m_turnVelocity_set    `( BtRigidBodyClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#101>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_m_turnVelocity_get    `( BtRigidBodyClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
-- * btRigidBodyConstructionInfo
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#142>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_btRigidBodyConstructionInfo_new as btRigidBody_btRigidBodyConstructionInfo    `( BtMotionStateClass p1 , BtCollisionShapeClass p2 )' =>     {   `Float' , withBt* `p1' , withBt* `p2' , withVec3* `Vec3'  } -> `BtRigidBody_btRigidBodyConstructionInfo' mkBtRigidBody_btRigidBodyConstructionInfo* #}
{#fun btRigidBody_btRigidBodyConstructionInfo_free    `( BtRigidBody_btRigidBodyConstructionInfoClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#140>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_btRigidBodyConstructionInfo_m_additionalAngularDampingFactor_set    `( BtRigidBody_btRigidBodyConstructionInfoClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#140>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_btRigidBodyConstructionInfo_m_additionalAngularDampingFactor_get    `( BtRigidBody_btRigidBodyConstructionInfoClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#139>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_btRigidBodyConstructionInfo_m_additionalAngularDampingThresholdSqr_set    `( BtRigidBody_btRigidBodyConstructionInfoClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#139>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_btRigidBodyConstructionInfo_m_additionalAngularDampingThresholdSqr_get    `( BtRigidBody_btRigidBodyConstructionInfoClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#136>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_btRigidBodyConstructionInfo_m_additionalDamping_set    `( BtRigidBody_btRigidBodyConstructionInfoClass bc )' =>     { withBt* `bc' ,  `Bool'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#136>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_btRigidBodyConstructionInfo_m_additionalDamping_get    `( BtRigidBody_btRigidBodyConstructionInfoClass bc )' =>     { withBt* `bc'  } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#137>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_btRigidBodyConstructionInfo_m_additionalDampingFactor_set    `( BtRigidBody_btRigidBodyConstructionInfoClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#137>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_btRigidBodyConstructionInfo_m_additionalDampingFactor_get    `( BtRigidBody_btRigidBodyConstructionInfoClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#138>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_btRigidBodyConstructionInfo_m_additionalLinearDampingThresholdSqr_set    `( BtRigidBody_btRigidBodyConstructionInfoClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#138>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_btRigidBodyConstructionInfo_m_additionalLinearDampingThresholdSqr_get    `( BtRigidBody_btRigidBodyConstructionInfoClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#124>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_btRigidBodyConstructionInfo_m_angularDamping_set    `( BtRigidBody_btRigidBodyConstructionInfoClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#124>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_btRigidBodyConstructionInfo_m_angularDamping_get    `( BtRigidBody_btRigidBodyConstructionInfoClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#132>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_btRigidBodyConstructionInfo_m_angularSleepingThreshold_set    `( BtRigidBody_btRigidBodyConstructionInfoClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#132>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_btRigidBodyConstructionInfo_m_angularSleepingThreshold_get    `( BtRigidBody_btRigidBodyConstructionInfoClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#121>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_btRigidBodyConstructionInfo_m_collisionShape_set    `( BtRigidBody_btRigidBodyConstructionInfoClass bc , BtCollisionShapeClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#121>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_btRigidBodyConstructionInfo_m_collisionShape_get    `( BtRigidBody_btRigidBodyConstructionInfoClass bc )' =>     { withBt* `bc'  } ->  `BtCollisionShape'  mkBtCollisionShape* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#127>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_btRigidBodyConstructionInfo_m_friction_set    `( BtRigidBody_btRigidBodyConstructionInfoClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#127>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_btRigidBodyConstructionInfo_m_friction_get    `( BtRigidBody_btRigidBodyConstructionInfoClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#123>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_btRigidBodyConstructionInfo_m_linearDamping_set    `( BtRigidBody_btRigidBodyConstructionInfoClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#123>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_btRigidBodyConstructionInfo_m_linearDamping_get    `( BtRigidBody_btRigidBodyConstructionInfoClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#131>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_btRigidBodyConstructionInfo_m_linearSleepingThreshold_set    `( BtRigidBody_btRigidBodyConstructionInfoClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#131>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_btRigidBodyConstructionInfo_m_linearSleepingThreshold_get    `( BtRigidBody_btRigidBodyConstructionInfoClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#122>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_btRigidBodyConstructionInfo_m_localInertia_set    `( BtRigidBody_btRigidBodyConstructionInfoClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#122>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_btRigidBodyConstructionInfo_m_localInertia_get    `( BtRigidBody_btRigidBodyConstructionInfoClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#114>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_btRigidBodyConstructionInfo_m_mass_set    `( BtRigidBody_btRigidBodyConstructionInfoClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#114>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_btRigidBodyConstructionInfo_m_mass_get    `( BtRigidBody_btRigidBodyConstructionInfoClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#118>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_btRigidBodyConstructionInfo_m_motionState_set    `( BtRigidBody_btRigidBodyConstructionInfoClass bc , BtMotionStateClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#118>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_btRigidBodyConstructionInfo_m_motionState_get    `( BtRigidBody_btRigidBodyConstructionInfoClass bc )' =>     { withBt* `bc'  } ->  `BtMotionState'  mkBtMotionState* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#129>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_btRigidBodyConstructionInfo_m_restitution_set    `( BtRigidBody_btRigidBodyConstructionInfoClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#129>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_btRigidBodyConstructionInfo_m_restitution_get    `( BtRigidBody_btRigidBodyConstructionInfoClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#119>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_btRigidBodyConstructionInfo_m_startWorldTransform_set    `( BtRigidBody_btRigidBodyConstructionInfoClass bc )' =>     { withBt* `bc' , withTransform* `Transform'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#119>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBody_btRigidBodyConstructionInfo_m_startWorldTransform_get    `( BtRigidBody_btRigidBodyConstructionInfoClass bc )' =>     { withBt* `bc' , allocaTransform-  `Transform'  peekTransform* } -> `()' #}
-- * btRigidBodyDoubleData
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#663>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBodyDoubleData_new as btRigidBodyDoubleData    {  } -> `BtRigidBodyDoubleData' mkBtRigidBodyDoubleData* #}
{#fun btRigidBodyDoubleData_free    `( BtRigidBodyDoubleDataClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#664>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBodyDoubleData_m_collisionObjectData_set    `( BtRigidBodyDoubleDataClass bc , BtCollisionObjectDoubleDataClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#664>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBodyDoubleData_m_collisionObjectData_get    `( BtRigidBodyDoubleDataClass bc )' =>     { withBt* `bc'  } ->  `BtCollisionObjectDoubleData'  mkBtCollisionObjectDoubleData* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#665>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBodyDoubleData_m_invInertiaTensorWorld_set    `( BtRigidBodyDoubleDataClass bc , BtMatrix3x3DoubleDataClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#665>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBodyDoubleData_m_invInertiaTensorWorld_get    `( BtRigidBodyDoubleDataClass bc )' =>     { withBt* `bc'  } ->  `BtMatrix3x3DoubleData'  mkBtMatrix3x3DoubleData* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#666>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBodyDoubleData_m_linearVelocity_set    `( BtRigidBodyDoubleDataClass bc , BtVector3DoubleDataClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#666>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBodyDoubleData_m_linearVelocity_get    `( BtRigidBodyDoubleDataClass bc )' =>     { withBt* `bc'  } ->  `BtVector3DoubleData'  mkBtVector3DoubleData* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#667>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBodyDoubleData_m_angularVelocity_set    `( BtRigidBodyDoubleDataClass bc , BtVector3DoubleDataClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#667>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBodyDoubleData_m_angularVelocity_get    `( BtRigidBodyDoubleDataClass bc )' =>     { withBt* `bc'  } ->  `BtVector3DoubleData'  mkBtVector3DoubleData* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#668>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBodyDoubleData_m_angularFactor_set    `( BtRigidBodyDoubleDataClass bc , BtVector3DoubleDataClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#668>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBodyDoubleData_m_angularFactor_get    `( BtRigidBodyDoubleDataClass bc )' =>     { withBt* `bc'  } ->  `BtVector3DoubleData'  mkBtVector3DoubleData* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#669>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBodyDoubleData_m_linearFactor_set    `( BtRigidBodyDoubleDataClass bc , BtVector3DoubleDataClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#669>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBodyDoubleData_m_linearFactor_get    `( BtRigidBodyDoubleDataClass bc )' =>     { withBt* `bc'  } ->  `BtVector3DoubleData'  mkBtVector3DoubleData* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#670>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBodyDoubleData_m_gravity_set    `( BtRigidBodyDoubleDataClass bc , BtVector3DoubleDataClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#670>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBodyDoubleData_m_gravity_get    `( BtRigidBodyDoubleDataClass bc )' =>     { withBt* `bc'  } ->  `BtVector3DoubleData'  mkBtVector3DoubleData* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#671>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBodyDoubleData_m_gravity_acceleration_set    `( BtRigidBodyDoubleDataClass bc , BtVector3DoubleDataClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#671>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBodyDoubleData_m_gravity_acceleration_get    `( BtRigidBodyDoubleDataClass bc )' =>     { withBt* `bc'  } ->  `BtVector3DoubleData'  mkBtVector3DoubleData* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#672>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBodyDoubleData_m_invInertiaLocal_set    `( BtRigidBodyDoubleDataClass bc , BtVector3DoubleDataClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#672>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBodyDoubleData_m_invInertiaLocal_get    `( BtRigidBodyDoubleDataClass bc )' =>     { withBt* `bc'  } ->  `BtVector3DoubleData'  mkBtVector3DoubleData* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#673>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBodyDoubleData_m_totalForce_set    `( BtRigidBodyDoubleDataClass bc , BtVector3DoubleDataClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#673>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBodyDoubleData_m_totalForce_get    `( BtRigidBodyDoubleDataClass bc )' =>     { withBt* `bc'  } ->  `BtVector3DoubleData'  mkBtVector3DoubleData* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#674>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBodyDoubleData_m_totalTorque_set    `( BtRigidBodyDoubleDataClass bc , BtVector3DoubleDataClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#674>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBodyDoubleData_m_totalTorque_get    `( BtRigidBodyDoubleDataClass bc )' =>     { withBt* `bc'  } ->  `BtVector3DoubleData'  mkBtVector3DoubleData* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#675>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBodyDoubleData_m_inverseMass_set    `( BtRigidBodyDoubleDataClass bc )' =>     { withBt* `bc' ,  `Double'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#675>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBodyDoubleData_m_inverseMass_get    `( BtRigidBodyDoubleDataClass bc )' =>     { withBt* `bc'  } ->  `Double'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#676>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBodyDoubleData_m_linearDamping_set    `( BtRigidBodyDoubleDataClass bc )' =>     { withBt* `bc' ,  `Double'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#676>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBodyDoubleData_m_linearDamping_get    `( BtRigidBodyDoubleDataClass bc )' =>     { withBt* `bc'  } ->  `Double'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#677>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBodyDoubleData_m_angularDamping_set    `( BtRigidBodyDoubleDataClass bc )' =>     { withBt* `bc' ,  `Double'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#677>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBodyDoubleData_m_angularDamping_get    `( BtRigidBodyDoubleDataClass bc )' =>     { withBt* `bc'  } ->  `Double'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#678>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBodyDoubleData_m_additionalDampingFactor_set    `( BtRigidBodyDoubleDataClass bc )' =>     { withBt* `bc' ,  `Double'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#678>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBodyDoubleData_m_additionalDampingFactor_get    `( BtRigidBodyDoubleDataClass bc )' =>     { withBt* `bc'  } ->  `Double'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#679>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBodyDoubleData_m_additionalLinearDampingThresholdSqr_set    `( BtRigidBodyDoubleDataClass bc )' =>     { withBt* `bc' ,  `Double'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#679>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBodyDoubleData_m_additionalLinearDampingThresholdSqr_get    `( BtRigidBodyDoubleDataClass bc )' =>     { withBt* `bc'  } ->  `Double'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#680>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBodyDoubleData_m_additionalAngularDampingThresholdSqr_set    `( BtRigidBodyDoubleDataClass bc )' =>     { withBt* `bc' ,  `Double'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#680>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBodyDoubleData_m_additionalAngularDampingThresholdSqr_get    `( BtRigidBodyDoubleDataClass bc )' =>     { withBt* `bc'  } ->  `Double'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#681>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBodyDoubleData_m_additionalAngularDampingFactor_set    `( BtRigidBodyDoubleDataClass bc )' =>     { withBt* `bc' ,  `Double'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#681>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBodyDoubleData_m_additionalAngularDampingFactor_get    `( BtRigidBodyDoubleDataClass bc )' =>     { withBt* `bc'  } ->  `Double'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#682>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBodyDoubleData_m_linearSleepingThreshold_set    `( BtRigidBodyDoubleDataClass bc )' =>     { withBt* `bc' ,  `Double'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#682>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBodyDoubleData_m_linearSleepingThreshold_get    `( BtRigidBodyDoubleDataClass bc )' =>     { withBt* `bc'  } ->  `Double'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#683>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBodyDoubleData_m_angularSleepingThreshold_set    `( BtRigidBodyDoubleDataClass bc )' =>     { withBt* `bc' ,  `Double'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#683>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBodyDoubleData_m_angularSleepingThreshold_get    `( BtRigidBodyDoubleDataClass bc )' =>     { withBt* `bc'  } ->  `Double'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#684>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBodyDoubleData_m_additionalDamping_set    `( BtRigidBodyDoubleDataClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#684>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBodyDoubleData_m_additionalDamping_get    `( BtRigidBodyDoubleDataClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
-- * btRigidBodyFloatData
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#637>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBodyFloatData_new as btRigidBodyFloatData    {  } -> `BtRigidBodyFloatData' mkBtRigidBodyFloatData* #}
{#fun btRigidBodyFloatData_free    `( BtRigidBodyFloatDataClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#655>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBodyFloatData_m_additionalAngularDampingFactor_set    `( BtRigidBodyFloatDataClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#655>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBodyFloatData_m_additionalAngularDampingFactor_get    `( BtRigidBodyFloatDataClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#654>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBodyFloatData_m_additionalAngularDampingThresholdSqr_set    `( BtRigidBodyFloatDataClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#654>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBodyFloatData_m_additionalAngularDampingThresholdSqr_get    `( BtRigidBodyFloatDataClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#658>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBodyFloatData_m_additionalDamping_set    `( BtRigidBodyFloatDataClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#658>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBodyFloatData_m_additionalDamping_get    `( BtRigidBodyFloatDataClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#652>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBodyFloatData_m_additionalDampingFactor_set    `( BtRigidBodyFloatDataClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#652>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBodyFloatData_m_additionalDampingFactor_get    `( BtRigidBodyFloatDataClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#653>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBodyFloatData_m_additionalLinearDampingThresholdSqr_set    `( BtRigidBodyFloatDataClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#653>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBodyFloatData_m_additionalLinearDampingThresholdSqr_get    `( BtRigidBodyFloatDataClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#651>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBodyFloatData_m_angularDamping_set    `( BtRigidBodyFloatDataClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#651>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBodyFloatData_m_angularDamping_get    `( BtRigidBodyFloatDataClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#642>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBodyFloatData_m_angularFactor_set    `( BtRigidBodyFloatDataClass bc , BtVector3FloatDataClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#642>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBodyFloatData_m_angularFactor_get    `( BtRigidBodyFloatDataClass bc )' =>     { withBt* `bc'  } ->  `BtVector3FloatData'  mkBtVector3FloatData* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#657>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBodyFloatData_m_angularSleepingThreshold_set    `( BtRigidBodyFloatDataClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#657>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBodyFloatData_m_angularSleepingThreshold_get    `( BtRigidBodyFloatDataClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#641>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBodyFloatData_m_angularVelocity_set    `( BtRigidBodyFloatDataClass bc , BtVector3FloatDataClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#641>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBodyFloatData_m_angularVelocity_get    `( BtRigidBodyFloatDataClass bc )' =>     { withBt* `bc'  } ->  `BtVector3FloatData'  mkBtVector3FloatData* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#638>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBodyFloatData_m_collisionObjectData_set    `( BtRigidBodyFloatDataClass bc , BtCollisionObjectFloatDataClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#638>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBodyFloatData_m_collisionObjectData_get    `( BtRigidBodyFloatDataClass bc )' =>     { withBt* `bc'  } ->  `BtCollisionObjectFloatData'  mkBtCollisionObjectFloatData* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#644>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBodyFloatData_m_gravity_set    `( BtRigidBodyFloatDataClass bc , BtVector3FloatDataClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#644>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBodyFloatData_m_gravity_get    `( BtRigidBodyFloatDataClass bc )' =>     { withBt* `bc'  } ->  `BtVector3FloatData'  mkBtVector3FloatData* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#645>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBodyFloatData_m_gravity_acceleration_set    `( BtRigidBodyFloatDataClass bc , BtVector3FloatDataClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#645>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBodyFloatData_m_gravity_acceleration_get    `( BtRigidBodyFloatDataClass bc )' =>     { withBt* `bc'  } ->  `BtVector3FloatData'  mkBtVector3FloatData* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#646>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBodyFloatData_m_invInertiaLocal_set    `( BtRigidBodyFloatDataClass bc , BtVector3FloatDataClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#646>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBodyFloatData_m_invInertiaLocal_get    `( BtRigidBodyFloatDataClass bc )' =>     { withBt* `bc'  } ->  `BtVector3FloatData'  mkBtVector3FloatData* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#639>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBodyFloatData_m_invInertiaTensorWorld_set    `( BtRigidBodyFloatDataClass bc , BtMatrix3x3FloatDataClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#639>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBodyFloatData_m_invInertiaTensorWorld_get    `( BtRigidBodyFloatDataClass bc )' =>     { withBt* `bc'  } ->  `BtMatrix3x3FloatData'  mkBtMatrix3x3FloatData* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#649>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBodyFloatData_m_inverseMass_set    `( BtRigidBodyFloatDataClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#649>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBodyFloatData_m_inverseMass_get    `( BtRigidBodyFloatDataClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#650>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBodyFloatData_m_linearDamping_set    `( BtRigidBodyFloatDataClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#650>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBodyFloatData_m_linearDamping_get    `( BtRigidBodyFloatDataClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#643>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBodyFloatData_m_linearFactor_set    `( BtRigidBodyFloatDataClass bc , BtVector3FloatDataClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#643>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBodyFloatData_m_linearFactor_get    `( BtRigidBodyFloatDataClass bc )' =>     { withBt* `bc'  } ->  `BtVector3FloatData'  mkBtVector3FloatData* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#656>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBodyFloatData_m_linearSleepingThreshold_set    `( BtRigidBodyFloatDataClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#656>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBodyFloatData_m_linearSleepingThreshold_get    `( BtRigidBodyFloatDataClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#640>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBodyFloatData_m_linearVelocity_set    `( BtRigidBodyFloatDataClass bc , BtVector3FloatDataClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#640>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBodyFloatData_m_linearVelocity_get    `( BtRigidBodyFloatDataClass bc )' =>     { withBt* `bc'  } ->  `BtVector3FloatData'  mkBtVector3FloatData* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#647>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBodyFloatData_m_totalForce_set    `( BtRigidBodyFloatDataClass bc , BtVector3FloatDataClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#647>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBodyFloatData_m_totalForce_get    `( BtRigidBodyFloatDataClass bc )' =>     { withBt* `bc'  } ->  `BtVector3FloatData'  mkBtVector3FloatData* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#648>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBodyFloatData_m_totalTorque_set    `( BtRigidBodyFloatDataClass bc , BtVector3FloatDataClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.h?r=2223#648>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btRigidBody.cpp?r=2223>
-}
{#fun btRigidBodyFloatData_m_totalTorque_get    `( BtRigidBodyFloatDataClass bc )' =>     { withBt* `bc'  } ->  `BtVector3FloatData'  mkBtVector3FloatData* #}
-- * btSimpleDynamicsWorld
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btSimpleDynamicsWorld.h?r=2223#46>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btSimpleDynamicsWorld.cpp?r=2223>
-}
{#fun btSimpleDynamicsWorld_new as btSimpleDynamicsWorld    `( BtDispatcherClass p0 , BtBroadphaseInterfaceClass p1 , BtConstraintSolverClass p2 , BtCollisionConfigurationClass p3 )' =>     {  withBt* `p0' , withBt* `p1' , withBt* `p2' , withBt* `p3'  } -> `BtSimpleDynamicsWorld' mkBtSimpleDynamicsWorld* #}
{#fun btSimpleDynamicsWorld_free    `( BtSimpleDynamicsWorldClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btSimpleDynamicsWorld.h?r=2223#35>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btSimpleDynamicsWorld.cpp?r=2223>
-}
{#fun btSimpleDynamicsWorld_predictUnconstraintMotion as btSimpleDynamicsWorld_predictUnconstraintMotion    `( BtSimpleDynamicsWorldClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ timeStep
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btSimpleDynamicsWorld.h?r=2223#53>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btSimpleDynamicsWorld.cpp?r=2223>
-}
{#fun btSimpleDynamicsWorld_setGravity as btSimpleDynamicsWorld_setGravity    `( BtSimpleDynamicsWorldClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ gravity
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btSimpleDynamicsWorld.h?r=2223#53>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btSimpleDynamicsWorld.cpp?r=2223>
-}
{#fun btSimpleDynamicsWorld_setGravity as btSimpleDynamicsWorld_setGravity'    `( BtSimpleDynamicsWorldClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ gravity
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btSimpleDynamicsWorld.h?r=2223#65>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btSimpleDynamicsWorld.cpp?r=2223>
-}
{#fun btSimpleDynamicsWorld_addAction as btSimpleDynamicsWorld_addAction    `( BtSimpleDynamicsWorldClass bc , BtActionInterfaceClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ action
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btSimpleDynamicsWorld.h?r=2223#74>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btSimpleDynamicsWorld.cpp?r=2223>
-}
{#fun btSimpleDynamicsWorld_synchronizeMotionStates as btSimpleDynamicsWorld_synchronizeMotionStates    `( BtSimpleDynamicsWorldClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btSimpleDynamicsWorld.h?r=2223#76>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btSimpleDynamicsWorld.cpp?r=2223>
-}
{#fun btSimpleDynamicsWorld_setConstraintSolver as btSimpleDynamicsWorld_setConstraintSolver    `( BtSimpleDynamicsWorldClass bc , BtConstraintSolverClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ solver
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btSimpleDynamicsWorld.h?r=2223#51>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btSimpleDynamicsWorld.cpp?r=2223>
-}
{#fun btSimpleDynamicsWorld_stepSimulation as btSimpleDynamicsWorld_stepSimulation    `( BtSimpleDynamicsWorldClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ timeStep
,  `Int'  -- ^ maxSubSteps
,  `Float'  -- ^ fixedTimeStep
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btSimpleDynamicsWorld.h?r=2223#78>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btSimpleDynamicsWorld.cpp?r=2223>
-}
{#fun btSimpleDynamicsWorld_getConstraintSolver as btSimpleDynamicsWorld_getConstraintSolver    `( BtSimpleDynamicsWorldClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtConstraintSolver'  mkBtConstraintSolver* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btSimpleDynamicsWorld.h?r=2223#61>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btSimpleDynamicsWorld.cpp?r=2223>
-}
{#fun btSimpleDynamicsWorld_removeRigidBody as btSimpleDynamicsWorld_removeRigidBody    `( BtSimpleDynamicsWorldClass bc , BtRigidBodyClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ body
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btSimpleDynamicsWorld.h?r=2223#57>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btSimpleDynamicsWorld.cpp?r=2223>
-}
{#fun btSimpleDynamicsWorld_addRigidBody0 as btSimpleDynamicsWorld_addRigidBody    `( BtSimpleDynamicsWorldClass bc , BtRigidBodyClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ body
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btSimpleDynamicsWorld.h?r=2223#57>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btSimpleDynamicsWorld.cpp?r=2223>
-}
{#fun btSimpleDynamicsWorld_addRigidBody0 as btSimpleDynamicsWorld_addRigidBody0    `( BtSimpleDynamicsWorldClass bc , BtRigidBodyClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ body
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btSimpleDynamicsWorld.h?r=2223#59>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btSimpleDynamicsWorld.cpp?r=2223>
-}
{#fun btSimpleDynamicsWorld_addRigidBody1 as btSimpleDynamicsWorld_addRigidBody1    `( BtSimpleDynamicsWorldClass bc , BtRigidBodyClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ body
,  `Int'  -- ^ group
,  `Int'  -- ^ mask
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btSimpleDynamicsWorld.h?r=2223#55>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btSimpleDynamicsWorld.cpp?r=2223>
-}
{#fun btSimpleDynamicsWorld_getGravity as btSimpleDynamicsWorld_getGravity    `( BtSimpleDynamicsWorldClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btSimpleDynamicsWorld.h?r=2223#37>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btSimpleDynamicsWorld.cpp?r=2223>
-}
{#fun btSimpleDynamicsWorld_integrateTransforms as btSimpleDynamicsWorld_integrateTransforms    `( BtSimpleDynamicsWorldClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ timeStep
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btSimpleDynamicsWorld.h?r=2223#70>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btSimpleDynamicsWorld.cpp?r=2223>
-}
{#fun btSimpleDynamicsWorld_removeCollisionObject as btSimpleDynamicsWorld_removeCollisionObject    `( BtSimpleDynamicsWorldClass bc , BtCollisionObjectClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ collisionObject
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btSimpleDynamicsWorld.h?r=2223#85>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btSimpleDynamicsWorld.cpp?r=2223>
-}
{#fun btSimpleDynamicsWorld_clearForces as btSimpleDynamicsWorld_clearForces    `( BtSimpleDynamicsWorldClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btSimpleDynamicsWorld.h?r=2223#67>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btSimpleDynamicsWorld.cpp?r=2223>
-}
{#fun btSimpleDynamicsWorld_removeAction as btSimpleDynamicsWorld_removeAction    `( BtSimpleDynamicsWorldClass bc , BtActionInterfaceClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ action
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btSimpleDynamicsWorld.h?r=2223#72>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btSimpleDynamicsWorld.cpp?r=2223>
-}
{#fun btSimpleDynamicsWorld_updateAabbs as btSimpleDynamicsWorld_updateAabbs    `( BtSimpleDynamicsWorldClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btSimpleDynamicsWorld.h?r=2223#63>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btSimpleDynamicsWorld.cpp?r=2223>
-}
{#fun btSimpleDynamicsWorld_debugDrawWorld as btSimpleDynamicsWorld_debugDrawWorld    `( BtSimpleDynamicsWorldClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btSimpleDynamicsWorld.h?r=2223#31>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btSimpleDynamicsWorld.cpp?r=2223>
-}
{#fun btSimpleDynamicsWorld_m_constraintSolver_set    `( BtSimpleDynamicsWorldClass bc , BtConstraintSolverClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btSimpleDynamicsWorld.h?r=2223#31>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btSimpleDynamicsWorld.cpp?r=2223>
-}
{#fun btSimpleDynamicsWorld_m_constraintSolver_get    `( BtSimpleDynamicsWorldClass bc )' =>     { withBt* `bc'  } ->  `BtConstraintSolver'  mkBtConstraintSolver* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btSimpleDynamicsWorld.h?r=2223#33>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btSimpleDynamicsWorld.cpp?r=2223>
-}
{#fun btSimpleDynamicsWorld_m_ownsConstraintSolver_set    `( BtSimpleDynamicsWorldClass bc )' =>     { withBt* `bc' ,  `Bool'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btSimpleDynamicsWorld.h?r=2223#33>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btSimpleDynamicsWorld.cpp?r=2223>
-}
{#fun btSimpleDynamicsWorld_m_ownsConstraintSolver_get    `( BtSimpleDynamicsWorldClass bc )' =>     { withBt* `bc'  } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btSimpleDynamicsWorld.h?r=2223#39>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btSimpleDynamicsWorld.cpp?r=2223>
-}
{#fun btSimpleDynamicsWorld_m_gravity_set    `( BtSimpleDynamicsWorldClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btSimpleDynamicsWorld.h?r=2223#39>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/Dynamics/btSimpleDynamicsWorld.cpp?r=2223>
-}
{#fun btSimpleDynamicsWorld_m_gravity_get    `( BtSimpleDynamicsWorldClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
