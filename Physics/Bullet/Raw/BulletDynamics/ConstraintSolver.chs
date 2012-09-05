{-#LANGUAGE ForeignFunctionInterface#-}
#include "Bullet.h"
module Physics.Bullet.Raw.BulletDynamics.ConstraintSolver (
module Physics.Bullet.Raw.BulletDynamics.ConstraintSolver
) where
import Control.Monad
import Foreign.Marshal.Alloc
import Foreign.ForeignPtr
import Foreign.Ptr
import Physics.Bullet.Raw.C2HS
import Physics.Bullet.Raw.Types
import Physics.Bullet.Raw.Class
-- * btAngularLimit
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.h?r=2223#359>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.cpp?r=2223>
-}
{#fun btAngularLimit_new as btAngularLimit    {  } -> `BtAngularLimit' mkBtAngularLimit* #}
{#fun btAngularLimit_free    `( BtAngularLimitClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.h?r=2223#398>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.cpp?r=2223>
-}
{#fun btAngularLimit_getCorrection as btAngularLimit_getCorrection    `( BtAngularLimitClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.h?r=2223#373>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.cpp?r=2223>
-}
{#fun btAngularLimit_set as btAngularLimit_set    `( BtAngularLimitClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ low
,  `Float'  -- ^ high
,  `Float'  -- ^ _softness
,  `Float'  -- ^ _biasFactor
,  `Float'  -- ^ _relaxationFactor
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.h?r=2223#426>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.cpp?r=2223>
-}
{#fun btAngularLimit_getError as btAngularLimit_getError    `( BtAngularLimitClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.h?r=2223#416>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.cpp?r=2223>
-}
{#fun btAngularLimit_isLimit as btAngularLimit_isLimit    `( BtAngularLimitClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.h?r=2223#404>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.cpp?r=2223>
-}
{#fun btAngularLimit_getSign as btAngularLimit_getSign    `( BtAngularLimitClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.h?r=2223#386>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.cpp?r=2223>
-}
{#fun btAngularLimit_getBiasFactor as btAngularLimit_getBiasFactor    `( BtAngularLimitClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.h?r=2223#380>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.cpp?r=2223>
-}
{#fun btAngularLimit_getSoftness as btAngularLimit_getSoftness    `( BtAngularLimitClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.h?r=2223#430>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.cpp?r=2223>
-}
{#fun btAngularLimit_getHigh as btAngularLimit_getHigh    `( BtAngularLimitClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.h?r=2223#410>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.cpp?r=2223>
-}
{#fun btAngularLimit_getHalfRange as btAngularLimit_getHalfRange    `( BtAngularLimitClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.h?r=2223#428>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.cpp?r=2223>
-}
{#fun btAngularLimit_getLow as btAngularLimit_getLow    `( BtAngularLimitClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.h?r=2223#392>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.cpp?r=2223>
-}
{#fun btAngularLimit_getRelaxationFactor as btAngularLimit_getRelaxationFactor    `( BtAngularLimitClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.h?r=2223#346>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.cpp?r=2223>
-}
{#fun btAngularLimit_m_center_set    `( BtAngularLimitClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.h?r=2223#346>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.cpp?r=2223>
-}
{#fun btAngularLimit_m_center_get    `( BtAngularLimitClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.h?r=2223#347>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.cpp?r=2223>
-}
{#fun btAngularLimit_m_halfRange_set    `( BtAngularLimitClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.h?r=2223#347>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.cpp?r=2223>
-}
{#fun btAngularLimit_m_halfRange_get    `( BtAngularLimitClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.h?r=2223#348>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.cpp?r=2223>
-}
{#fun btAngularLimit_m_softness_set    `( BtAngularLimitClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.h?r=2223#348>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.cpp?r=2223>
-}
{#fun btAngularLimit_m_softness_get    `( BtAngularLimitClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.h?r=2223#349>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.cpp?r=2223>
-}
{#fun btAngularLimit_m_biasFactor_set    `( BtAngularLimitClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.h?r=2223#349>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.cpp?r=2223>
-}
{#fun btAngularLimit_m_biasFactor_get    `( BtAngularLimitClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.h?r=2223#350>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.cpp?r=2223>
-}
{#fun btAngularLimit_m_relaxationFactor_set    `( BtAngularLimitClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.h?r=2223#350>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.cpp?r=2223>
-}
{#fun btAngularLimit_m_relaxationFactor_get    `( BtAngularLimitClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.h?r=2223#351>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.cpp?r=2223>
-}
{#fun btAngularLimit_m_correction_set    `( BtAngularLimitClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.h?r=2223#351>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.cpp?r=2223>
-}
{#fun btAngularLimit_m_correction_get    `( BtAngularLimitClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.h?r=2223#352>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.cpp?r=2223>
-}
{#fun btAngularLimit_m_sign_set    `( BtAngularLimitClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.h?r=2223#352>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.cpp?r=2223>
-}
{#fun btAngularLimit_m_sign_get    `( BtAngularLimitClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.h?r=2223#355>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.cpp?r=2223>
-}
{#fun btAngularLimit_m_solveLimit_set    `( BtAngularLimitClass bc )' =>     { withBt* `bc' ,  `Bool'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.h?r=2223#355>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.cpp?r=2223>
-}
{#fun btAngularLimit_m_solveLimit_get    `( BtAngularLimitClass bc )' =>     { withBt* `bc'  } ->  `Bool'   #}
-- * btConeTwistConstraint
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#129>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraint_new0 as btConeTwistConstraint0    `( BtRigidBodyClass p0 , BtRigidBodyClass p1 )' =>     {  withBt* `p0' , withBt* `p1' , withTransform* `Transform' , withTransform* `Transform'  } -> `BtConeTwistConstraint' mkBtConeTwistConstraint* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#131>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraint_new1 as btConeTwistConstraint1    `( BtRigidBodyClass p0 )' =>     {  withBt* `p0' , withTransform* `Transform'  } -> `BtConeTwistConstraint' mkBtConeTwistConstraint* #}
{#fun btConeTwistConstraint_free    `( BtConeTwistConstraintClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#152>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraint_getRigidBodyB as btConeTwistConstraint_getRigidBodyB    `( BtConeTwistConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtRigidBody'  mkBtRigidBody* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#133>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraint_buildJacobian as btConeTwistConstraint_buildJacobian    `( BtConeTwistConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#148>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraint_getRigidBodyA as btConeTwistConstraint_getRigidBodyA    `( BtConeTwistConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtRigidBody'  mkBtRigidBody* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#124>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraint_adjustSwingAxisToUseEllipseNormal as btConeTwistConstraint_adjustSwingAxisToUseEllipseNormal    `( BtConeTwistConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ vSwingAxis
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#124>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraint_adjustSwingAxisToUseEllipseNormal as btConeTwistConstraint_adjustSwingAxisToUseEllipseNormal'    `( BtConeTwistConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ vSwingAxis
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#246>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraint_isPastSwingLimit as btConeTwistConstraint_isPastSwingLimit    `( BtConeTwistConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#274>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraint_getFrameOffsetA as btConeTwistConstraint_getFrameOffsetA    `( BtConeTwistConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaTransform-  `Transform'  peekTransform* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#279>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraint_getFrameOffsetB as btConeTwistConstraint_getFrameOffsetB    `( BtConeTwistConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaTransform-  `Transform'  peekTransform* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#141>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraint_getInfo2NonVirtual as btConeTwistConstraint_getInfo2NonVirtual    `( BtConeTwistConstraintClass bc , BtTypedConstraint_btConstraintInfo2Class p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ info
, withTransform* `Transform'  peekTransform* -- ^ transA
, withTransform* `Transform'  peekTransform* -- ^ transB
, withMat3* `Mat3'  peekMat3* -- ^ invInertiaWorldA
, withMat3* `Mat3'  peekMat3* -- ^ invInertiaWorldB
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#141>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraint_getInfo2NonVirtual as btConeTwistConstraint_getInfo2NonVirtual'    `( BtConeTwistConstraintClass bc , BtTypedConstraint_btConstraintInfo2Class p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ info
, allocaTransform-  `Transform'  peekTransform* -- ^ transA
, allocaTransform-  `Transform'  peekTransform* -- ^ transB
, allocaMat3-  `Mat3'  peekMat3* -- ^ invInertiaWorldA
, allocaMat3-  `Mat3'  peekMat3* -- ^ invInertiaWorldB
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#230>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraint_getSwingSpan1 as btConeTwistConstraint_getSwingSpan1    `( BtConeTwistConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#228>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraint_calcAngleInfo2 as btConeTwistConstraint_calcAngleInfo2    `( BtConeTwistConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
, withTransform* `Transform'  peekTransform* -- ^ transA
, withTransform* `Transform'  peekTransform* -- ^ transB
, withMat3* `Mat3'  peekMat3* -- ^ invInertiaWorldA
, withMat3* `Mat3'  peekMat3* -- ^ invInertiaWorldB
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#228>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraint_calcAngleInfo2 as btConeTwistConstraint_calcAngleInfo2'    `( BtConeTwistConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaTransform-  `Transform'  peekTransform* -- ^ transA
, allocaTransform-  `Transform'  peekTransform* -- ^ transB
, allocaMat3-  `Mat3'  peekMat3* -- ^ invInertiaWorldA
, allocaMat3-  `Mat3'  peekMat3* -- ^ invInertiaWorldB
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#286>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraint_getParam as btConeTwistConstraint_getParam    `( BtConeTwistConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ num
,  `Int'  -- ^ axis
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#248>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraint_setDamping as btConeTwistConstraint_setDamping    `( BtConeTwistConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ damping
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#135>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraint_getInfo1 as btConeTwistConstraint_getInfo1    `( BtConeTwistConstraintClass bc , BtTypedConstraint_btConstraintInfo1Class p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ info
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#139>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraint_getInfo2 as btConeTwistConstraint_getInfo2    `( BtConeTwistConstraintClass bc , BtTypedConstraint_btConstraintInfo2Class p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ info
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#270>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraint_setParam as btConeTwistConstraint_setParam    `( BtConeTwistConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ num
,  `Float'  -- ^ value
,  `Int'  -- ^ axis
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#318>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraint_calculateSerializeBufferSize as btConeTwistConstraint_calculateSerializeBufferSize    `( BtConeTwistConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#116>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraint_init as btConeTwistConstraint_init    `( BtConeTwistConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#242>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraint_getTwistAngle as btConeTwistConstraint_getTwistAngle    `( BtConeTwistConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#252>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraint_setMaxMotorImpulseNormalized as btConeTwistConstraint_setMaxMotorImpulseNormalized    `( BtConeTwistConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ maxMotorImpulse
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#212>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraint_getSolveTwistLimit as btConeTwistConstraint_getSolveTwistLimit    `( BtConeTwistConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#250>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraint_enableMotor as btConeTwistConstraint_enableMotor    `( BtConeTwistConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Bool'  -- ^ b
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#210>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraint_getBFrame as btConeTwistConstraint_getBFrame    `( BtConeTwistConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaTransform-  `Transform'  peekTransform* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#137>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraint_getInfo1NonVirtual as btConeTwistConstraint_getInfo1NonVirtual    `( BtConeTwistConstraintClass bc , BtTypedConstraint_btConstraintInfo1Class p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ info
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#326>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraint_serialize as btConeTwistConstraint_serialize    `( BtConeTwistConstraintClass bc , BtSerializerClass p1 )' =>     { withBt* `bc'  -- ^ 
, withVoidPtr* `VoidPtr'  -- ^ dataBuffer
, withBt* `p1'  -- ^ serializer
 } ->  `String'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#254>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraint_getFixThresh as btConeTwistConstraint_getFixThresh    `( BtConeTwistConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#217>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraint_getSolveSwingLimit as btConeTwistConstraint_getSolveSwingLimit    `( BtConeTwistConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#234>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraint_getSwingSpan2 as btConeTwistConstraint_getSwingSpan2    `( BtConeTwistConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#157>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraint_setAngularOnly as btConeTwistConstraint_setAngularOnly    `( BtConeTwistConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Bool'  -- ^ angularOnly
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#272>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraint_setFrames as btConeTwistConstraint_setFrames    `( BtConeTwistConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
, withTransform* `Transform'  peekTransform* -- ^ frameA
, withTransform* `Transform'  peekTransform* -- ^ frameB
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#272>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraint_setFrames as btConeTwistConstraint_setFrames'    `( BtConeTwistConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaTransform-  `Transform'  peekTransform* -- ^ frameA
, allocaTransform-  `Transform'  peekTransform* -- ^ frameB
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#162>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraint_setLimit0 as btConeTwistConstraint_setLimit    `( BtConeTwistConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ limitIndex
,  `Float'  -- ^ limitValue
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#162>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraint_setLimit0 as btConeTwistConstraint_setLimit0    `( BtConeTwistConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ limitIndex
,  `Float'  -- ^ limitValue
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#198>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraint_setLimit1 as btConeTwistConstraint_setLimit1    `( BtConeTwistConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ _swingSpan1
,  `Float'  -- ^ _swingSpan2
,  `Float'  -- ^ _twistSpan
,  `Float'  -- ^ _softness
,  `Float'  -- ^ _biasFactor
,  `Float'  -- ^ _relaxationFactor
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#222>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraint_getTwistLimitSign as btConeTwistConstraint_getTwistLimitSign    `( BtConeTwistConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#251>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraint_setMaxMotorImpulse as btConeTwistConstraint_setMaxMotorImpulse    `( BtConeTwistConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ maxMotorImpulse
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#227>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraint_calcAngleInfo as btConeTwistConstraint_calcAngleInfo    `( BtConeTwistConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#261>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraint_setMotorTarget as btConeTwistConstraint_setMotorTarget    `( BtConeTwistConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
, withUnitQuaternion* `UnitQuaternion'  peekUnitQuaternion* -- ^ q
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#261>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraint_setMotorTarget as btConeTwistConstraint_setMotorTarget'    `( BtConeTwistConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaUnitQuaternion-  `UnitQuaternion'  peekUnitQuaternion* -- ^ q
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#255>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraint_setFixThresh as btConeTwistConstraint_setFixThresh    `( BtConeTwistConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ fixThresh
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#264>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraint_setMotorTargetInConstraintSpace as btConeTwistConstraint_setMotorTargetInConstraintSpace    `( BtConeTwistConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
, withUnitQuaternion* `UnitQuaternion'  peekUnitQuaternion* -- ^ q
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#264>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraint_setMotorTargetInConstraintSpace as btConeTwistConstraint_setMotorTargetInConstraintSpace'    `( BtConeTwistConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaUnitQuaternion-  `UnitQuaternion'  peekUnitQuaternion* -- ^ q
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#143>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraint_solveConstraintObsolete as btConeTwistConstraint_solveConstraintObsolete    `( BtConeTwistConstraintClass bc , BtRigidBodyClass p0 , BtRigidBodyClass p1 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ bodyA
, withBt* `p1'  -- ^ bodyB
,  `Float'  -- ^ timeStep
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#266>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraint_GetPointForAngle as btConeTwistConstraint_GetPointForAngle    `( BtConeTwistConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ fAngleInRadians
,  `Float'  -- ^ fLength
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#145>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraint_updateRHS as btConeTwistConstraint_updateRHS    `( BtConeTwistConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ timeStep
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#238>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraint_getTwistSpan as btConeTwistConstraint_getTwistSpan    `( BtConeTwistConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#209>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraint_getAFrame as btConeTwistConstraint_getAFrame    `( BtConeTwistConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaTransform-  `Transform'  peekTransform* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#60>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraint_m_rbAFrame_set    `( BtConeTwistConstraintClass bc )' =>     { withBt* `bc' , withTransform* `Transform'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#60>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraint_m_rbAFrame_get    `( BtConeTwistConstraintClass bc )' =>     { withBt* `bc' , allocaTransform-  `Transform'  peekTransform* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#61>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraint_m_rbBFrame_set    `( BtConeTwistConstraintClass bc )' =>     { withBt* `bc' , withTransform* `Transform'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#61>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraint_m_rbBFrame_get    `( BtConeTwistConstraintClass bc )' =>     { withBt* `bc' , allocaTransform-  `Transform'  peekTransform* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#63>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraint_m_limitSoftness_set    `( BtConeTwistConstraintClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#63>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraint_m_limitSoftness_get    `( BtConeTwistConstraintClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#64>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraint_m_biasFactor_set    `( BtConeTwistConstraintClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#64>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraint_m_biasFactor_get    `( BtConeTwistConstraintClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#65>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraint_m_relaxationFactor_set    `( BtConeTwistConstraintClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#65>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraint_m_relaxationFactor_get    `( BtConeTwistConstraintClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#67>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraint_m_damping_set    `( BtConeTwistConstraintClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#67>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraint_m_damping_get    `( BtConeTwistConstraintClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#69>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraint_m_swingSpan1_set    `( BtConeTwistConstraintClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#69>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraint_m_swingSpan1_get    `( BtConeTwistConstraintClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#70>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraint_m_swingSpan2_set    `( BtConeTwistConstraintClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#70>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraint_m_swingSpan2_get    `( BtConeTwistConstraintClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#71>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraint_m_twistSpan_set    `( BtConeTwistConstraintClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#71>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraint_m_twistSpan_get    `( BtConeTwistConstraintClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#73>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraint_m_fixThresh_set    `( BtConeTwistConstraintClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#73>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraint_m_fixThresh_get    `( BtConeTwistConstraintClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#75>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraint_m_swingAxis_set    `( BtConeTwistConstraintClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#75>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraint_m_swingAxis_get    `( BtConeTwistConstraintClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#76>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraint_m_twistAxis_set    `( BtConeTwistConstraintClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#76>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraint_m_twistAxis_get    `( BtConeTwistConstraintClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#78>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraint_m_kSwing_set    `( BtConeTwistConstraintClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#78>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraint_m_kSwing_get    `( BtConeTwistConstraintClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#79>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraint_m_kTwist_set    `( BtConeTwistConstraintClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#79>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraint_m_kTwist_get    `( BtConeTwistConstraintClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#81>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraint_m_twistLimitSign_set    `( BtConeTwistConstraintClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#81>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraint_m_twistLimitSign_get    `( BtConeTwistConstraintClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#82>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraint_m_swingCorrection_set    `( BtConeTwistConstraintClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#82>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraint_m_swingCorrection_get    `( BtConeTwistConstraintClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#83>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraint_m_twistCorrection_set    `( BtConeTwistConstraintClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#83>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraint_m_twistCorrection_get    `( BtConeTwistConstraintClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#85>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraint_m_twistAngle_set    `( BtConeTwistConstraintClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#85>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraint_m_twistAngle_get    `( BtConeTwistConstraintClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#87>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraint_m_accSwingLimitImpulse_set    `( BtConeTwistConstraintClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#87>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraint_m_accSwingLimitImpulse_get    `( BtConeTwistConstraintClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#88>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraint_m_accTwistLimitImpulse_set    `( BtConeTwistConstraintClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#88>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraint_m_accTwistLimitImpulse_get    `( BtConeTwistConstraintClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#90>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraint_m_angularOnly_set    `( BtConeTwistConstraintClass bc )' =>     { withBt* `bc' ,  `Bool'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#90>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraint_m_angularOnly_get    `( BtConeTwistConstraintClass bc )' =>     { withBt* `bc'  } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#91>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraint_m_solveTwistLimit_set    `( BtConeTwistConstraintClass bc )' =>     { withBt* `bc' ,  `Bool'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#91>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraint_m_solveTwistLimit_get    `( BtConeTwistConstraintClass bc )' =>     { withBt* `bc'  } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#92>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraint_m_solveSwingLimit_set    `( BtConeTwistConstraintClass bc )' =>     { withBt* `bc' ,  `Bool'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#92>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraint_m_solveSwingLimit_get    `( BtConeTwistConstraintClass bc )' =>     { withBt* `bc'  } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#94>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraint_m_useSolveConstraintObsolete_set    `( BtConeTwistConstraintClass bc )' =>     { withBt* `bc' ,  `Bool'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#94>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraint_m_useSolveConstraintObsolete_get    `( BtConeTwistConstraintClass bc )' =>     { withBt* `bc'  } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#97>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraint_m_swingLimitRatio_set    `( BtConeTwistConstraintClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#97>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraint_m_swingLimitRatio_get    `( BtConeTwistConstraintClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#98>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraint_m_twistLimitRatio_set    `( BtConeTwistConstraintClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#98>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraint_m_twistLimitRatio_get    `( BtConeTwistConstraintClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#99>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraint_m_twistAxisA_set    `( BtConeTwistConstraintClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#99>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraint_m_twistAxisA_get    `( BtConeTwistConstraintClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#102>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraint_m_bMotorEnabled_set    `( BtConeTwistConstraintClass bc )' =>     { withBt* `bc' ,  `Bool'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#102>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraint_m_bMotorEnabled_get    `( BtConeTwistConstraintClass bc )' =>     { withBt* `bc'  } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#103>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraint_m_bNormalizedMotorStrength_set    `( BtConeTwistConstraintClass bc )' =>     { withBt* `bc' ,  `Bool'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#103>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraint_m_bNormalizedMotorStrength_get    `( BtConeTwistConstraintClass bc )' =>     { withBt* `bc'  } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#104>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraint_m_qTarget_set    `( BtConeTwistConstraintClass bc )' =>     { withBt* `bc' , withUnitQuaternion* `UnitQuaternion'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#104>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraint_m_qTarget_get    `( BtConeTwistConstraintClass bc )' =>     { withBt* `bc' , allocaUnitQuaternion-  `UnitQuaternion'  peekUnitQuaternion* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#105>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraint_m_maxMotorImpulse_set    `( BtConeTwistConstraintClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#105>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraint_m_maxMotorImpulse_get    `( BtConeTwistConstraintClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#106>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraint_m_accMotorImpulse_set    `( BtConeTwistConstraintClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#106>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraint_m_accMotorImpulse_get    `( BtConeTwistConstraintClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#109>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraint_m_flags_set    `( BtConeTwistConstraintClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#109>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraint_m_flags_get    `( BtConeTwistConstraintClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#110>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraint_m_linCFM_set    `( BtConeTwistConstraintClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#110>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraint_m_linCFM_get    `( BtConeTwistConstraintClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#111>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraint_m_linERP_set    `( BtConeTwistConstraintClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#111>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraint_m_linERP_get    `( BtConeTwistConstraintClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#112>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraint_m_angCFM_set    `( BtConeTwistConstraintClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#112>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraint_m_angCFM_get    `( BtConeTwistConstraintClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
-- * btConeTwistConstraintData
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#297>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraintData_new as btConeTwistConstraintData    {  } -> `BtConeTwistConstraintData' mkBtConeTwistConstraintData* #}
{#fun btConeTwistConstraintData_free    `( BtConeTwistConstraintDataClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#298>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraintData_m_typeConstraintData_set    `( BtConeTwistConstraintDataClass bc , BtTypedConstraintDataClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#298>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraintData_m_typeConstraintData_get    `( BtConeTwistConstraintDataClass bc )' =>     { withBt* `bc'  } ->  `BtTypedConstraintData'  mkBtTypedConstraintData* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#299>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraintData_m_rbAFrame_set    `( BtConeTwistConstraintDataClass bc , BtTransformFloatDataClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#299>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraintData_m_rbAFrame_get    `( BtConeTwistConstraintDataClass bc )' =>     { withBt* `bc'  } ->  `BtTransformFloatData'  mkBtTransformFloatData* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#300>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraintData_m_rbBFrame_set    `( BtConeTwistConstraintDataClass bc , BtTransformFloatDataClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#300>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraintData_m_rbBFrame_get    `( BtConeTwistConstraintDataClass bc )' =>     { withBt* `bc'  } ->  `BtTransformFloatData'  mkBtTransformFloatData* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#303>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraintData_m_swingSpan1_set    `( BtConeTwistConstraintDataClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#303>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraintData_m_swingSpan1_get    `( BtConeTwistConstraintDataClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#304>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraintData_m_swingSpan2_set    `( BtConeTwistConstraintDataClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#304>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraintData_m_swingSpan2_get    `( BtConeTwistConstraintDataClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#305>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraintData_m_twistSpan_set    `( BtConeTwistConstraintDataClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#305>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraintData_m_twistSpan_get    `( BtConeTwistConstraintDataClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#306>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraintData_m_limitSoftness_set    `( BtConeTwistConstraintDataClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#306>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraintData_m_limitSoftness_get    `( BtConeTwistConstraintDataClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#307>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraintData_m_biasFactor_set    `( BtConeTwistConstraintDataClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#307>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraintData_m_biasFactor_get    `( BtConeTwistConstraintDataClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#308>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraintData_m_relaxationFactor_set    `( BtConeTwistConstraintDataClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#308>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraintData_m_relaxationFactor_get    `( BtConeTwistConstraintDataClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#310>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraintData_m_damping_set    `( BtConeTwistConstraintDataClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h?r=2223#310>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp?r=2223>
-}
{#fun btConeTwistConstraintData_m_damping_get    `( BtConeTwistConstraintDataClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
-- * btConstraintInfo1
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.h?r=2223#95>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.cpp?r=2223>
-}
{#fun btTypedConstraint_btConstraintInfo1_new as btTypedConstraint_btConstraintInfo1    {  } -> `BtTypedConstraint_btConstraintInfo1' mkBtTypedConstraint_btConstraintInfo1* #}
{#fun btTypedConstraint_btConstraintInfo1_free    `( BtTypedConstraint_btConstraintInfo1Class bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.h?r=2223#96>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.cpp?r=2223>
-}
{#fun btTypedConstraint_btConstraintInfo1_m_numConstraintRows_set    `( BtTypedConstraint_btConstraintInfo1Class bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.h?r=2223#96>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.cpp?r=2223>
-}
{#fun btTypedConstraint_btConstraintInfo1_m_numConstraintRows_get    `( BtTypedConstraint_btConstraintInfo1Class bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.h?r=2223#96>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.cpp?r=2223>
-}
{#fun btTypedConstraint_btConstraintInfo1_nub_set    `( BtTypedConstraint_btConstraintInfo1Class bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.h?r=2223#96>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.cpp?r=2223>
-}
{#fun btTypedConstraint_btConstraintInfo1_nub_get    `( BtTypedConstraint_btConstraintInfo1Class bc )' =>     { withBt* `bc'  } ->  `Int'   #}
-- * btConstraintInfo2
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.h?r=2223#99>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.cpp?r=2223>
-}
{#fun btTypedConstraint_btConstraintInfo2_new as btTypedConstraint_btConstraintInfo2    {  } -> `BtTypedConstraint_btConstraintInfo2' mkBtTypedConstraint_btConstraintInfo2* #}
{#fun btTypedConstraint_btConstraintInfo2_free    `( BtTypedConstraint_btConstraintInfo2Class bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.h?r=2223#102>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.cpp?r=2223>
-}
{#fun btTypedConstraint_btConstraintInfo2_erp_set    `( BtTypedConstraint_btConstraintInfo2Class bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.h?r=2223#102>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.cpp?r=2223>
-}
{#fun btTypedConstraint_btConstraintInfo2_erp_get    `( BtTypedConstraint_btConstraintInfo2Class bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.h?r=2223#102>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.cpp?r=2223>
-}
{#fun btTypedConstraint_btConstraintInfo2_fps_set    `( BtTypedConstraint_btConstraintInfo2Class bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.h?r=2223#102>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.cpp?r=2223>
-}
{#fun btTypedConstraint_btConstraintInfo2_fps_get    `( BtTypedConstraint_btConstraintInfo2Class bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.h?r=2223#130>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.cpp?r=2223>
-}
{#fun btTypedConstraint_btConstraintInfo2_m_damping_set    `( BtTypedConstraint_btConstraintInfo2Class bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.h?r=2223#130>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.cpp?r=2223>
-}
{#fun btTypedConstraint_btConstraintInfo2_m_damping_get    `( BtTypedConstraint_btConstraintInfo2Class bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.h?r=2223#127>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.cpp?r=2223>
-}
{#fun btTypedConstraint_btConstraintInfo2_m_numIterations_set    `( BtTypedConstraint_btConstraintInfo2Class bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.h?r=2223#127>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.cpp?r=2223>
-}
{#fun btTypedConstraint_btConstraintInfo2_m_numIterations_get    `( BtTypedConstraint_btConstraintInfo2Class bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.h?r=2223#111>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.cpp?r=2223>
-}
{#fun btTypedConstraint_btConstraintInfo2_rowskip_set    `( BtTypedConstraint_btConstraintInfo2Class bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.h?r=2223#111>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.cpp?r=2223>
-}
{#fun btTypedConstraint_btConstraintInfo2_rowskip_get    `( BtTypedConstraint_btConstraintInfo2Class bc )' =>     { withBt* `bc'  } ->  `Int'   #}
-- * btConstraintSetting
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btPoint2PointConstraint.h?r=2223#36>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btPoint2PointConstraint.cpp?r=2223>
-}
{#fun btConstraintSetting_new as btConstraintSetting    {  } -> `BtConstraintSetting' mkBtConstraintSetting* #}
{#fun btConstraintSetting_free    `( BtConstraintSettingClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btPoint2PointConstraint.h?r=2223#42>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btPoint2PointConstraint.cpp?r=2223>
-}
{#fun btConstraintSetting_m_tau_set    `( BtConstraintSettingClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btPoint2PointConstraint.h?r=2223#42>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btPoint2PointConstraint.cpp?r=2223>
-}
{#fun btConstraintSetting_m_tau_get    `( BtConstraintSettingClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btPoint2PointConstraint.h?r=2223#43>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btPoint2PointConstraint.cpp?r=2223>
-}
{#fun btConstraintSetting_m_damping_set    `( BtConstraintSettingClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btPoint2PointConstraint.h?r=2223#43>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btPoint2PointConstraint.cpp?r=2223>
-}
{#fun btConstraintSetting_m_damping_get    `( BtConstraintSettingClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btPoint2PointConstraint.h?r=2223#44>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btPoint2PointConstraint.cpp?r=2223>
-}
{#fun btConstraintSetting_m_impulseClamp_set    `( BtConstraintSettingClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btPoint2PointConstraint.h?r=2223#44>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btPoint2PointConstraint.cpp?r=2223>
-}
{#fun btConstraintSetting_m_impulseClamp_get    `( BtConstraintSettingClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
-- * btConstraintSolver
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConstraintSolver.h?r=2223#46>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConstraintSolver.cpp?r=2223>
-}
{#fun btConstraintSolver_reset as btConstraintSolver_reset    `( BtConstraintSolverClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConstraintSolver.h?r=2223#43>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConstraintSolver.cpp?r=2223>
-}
{#fun btConstraintSolver_allSolved as btConstraintSolver_allSolved    `( BtConstraintSolverClass bc , BtContactSolverInfoClass p0 , BtIDebugDrawClass p1 , BtStackAllocClass p2 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ arg0
, withBt* `p1'  -- ^ arg1
, withBt* `p2'  -- ^ arg2
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConstraintSolver.h?r=2223#38>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btConstraintSolver.cpp?r=2223>
-}
{#fun btConstraintSolver_prepareSolve as btConstraintSolver_prepareSolve    `( BtConstraintSolverClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ arg0
,  `Int'  -- ^ arg1
 } ->  `()'   #}
-- * btContactConstraint
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btContactConstraint.h?r=2223#50>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btContactConstraint.cpp?r=2223>
-}
{#fun btContactConstraint_getInfo1 as btContactConstraint_getInfo1    `( BtContactConstraintClass bc , BtTypedConstraint_btConstraintInfo1Class p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ info
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btContactConstraint.h?r=2223#36>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btContactConstraint.cpp?r=2223>
-}
{#fun btContactConstraint_setContactManifold as btContactConstraint_setContactManifold    `( BtContactConstraintClass bc , BtPersistentManifoldClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ contactManifold
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btContactConstraint.h?r=2223#55>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btContactConstraint.cpp?r=2223>
-}
{#fun btContactConstraint_buildJacobian as btContactConstraint_buildJacobian    `( BtContactConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btContactConstraint.h?r=2223#52>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btContactConstraint.cpp?r=2223>
-}
{#fun btContactConstraint_getInfo2 as btContactConstraint_getInfo2    `( BtContactConstraintClass bc , BtTypedConstraint_btConstraintInfo2Class p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ info
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btContactConstraint.h?r=2223#38>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btContactConstraint.cpp?r=2223>
-}
{#fun btContactConstraint_getContactManifold0 as btContactConstraint_getContactManifold    `( BtContactConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtPersistentManifold'  mkBtPersistentManifold* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btContactConstraint.h?r=2223#38>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btContactConstraint.cpp?r=2223>
-}
{#fun btContactConstraint_getContactManifold0 as btContactConstraint_getContactManifold0    `( BtContactConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtPersistentManifold'  mkBtPersistentManifold* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btContactConstraint.h?r=2223#43>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btContactConstraint.cpp?r=2223>
-}
{#fun btContactConstraint_getContactManifold1 as btContactConstraint_getContactManifold1    `( BtContactConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtPersistentManifold'  mkBtPersistentManifold* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btContactConstraint.h?r=2223#29>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btContactConstraint.cpp?r=2223>
-}
{#fun btContactConstraint_m_contactManifold_set    `( BtContactConstraintClass bc , BtPersistentManifoldClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btContactConstraint.h?r=2223#29>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btContactConstraint.cpp?r=2223>
-}
{#fun btContactConstraint_m_contactManifold_get    `( BtContactConstraintClass bc )' =>     { withBt* `bc'  } ->  `BtPersistentManifold'  mkBtPersistentManifold* #}
-- * btContactSolverInfo
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btContactSolverInfo.h?r=2223#65>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btContactSolverInfo.cpp?r=2223>
-}
{#fun btContactSolverInfo_new as btContactSolverInfo    {  } -> `BtContactSolverInfo' mkBtContactSolverInfo* #}
{#fun btContactSolverInfo_free    `( BtContactSolverInfoClass bc )' =>     { withBt* `bc'  } -> `()' #}
-- * btContactSolverInfoData
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btContactSolverInfo.h?r=2223#34>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btContactSolverInfo.cpp?r=2223>
-}
{#fun btContactSolverInfoData_new as btContactSolverInfoData    {  } -> `BtContactSolverInfoData' mkBtContactSolverInfoData* #}
{#fun btContactSolverInfoData_free    `( BtContactSolverInfoDataClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btContactSolverInfo.h?r=2223#37>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btContactSolverInfo.cpp?r=2223>
-}
{#fun btContactSolverInfoData_m_tau_set    `( BtContactSolverInfoDataClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btContactSolverInfo.h?r=2223#37>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btContactSolverInfo.cpp?r=2223>
-}
{#fun btContactSolverInfoData_m_tau_get    `( BtContactSolverInfoDataClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btContactSolverInfo.h?r=2223#38>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btContactSolverInfo.cpp?r=2223>
-}
{#fun btContactSolverInfoData_m_damping_set    `( BtContactSolverInfoDataClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btContactSolverInfo.h?r=2223#38>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btContactSolverInfo.cpp?r=2223>
-}
{#fun btContactSolverInfoData_m_damping_get    `( BtContactSolverInfoDataClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btContactSolverInfo.h?r=2223#39>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btContactSolverInfo.cpp?r=2223>
-}
{#fun btContactSolverInfoData_m_friction_set    `( BtContactSolverInfoDataClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btContactSolverInfo.h?r=2223#39>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btContactSolverInfo.cpp?r=2223>
-}
{#fun btContactSolverInfoData_m_friction_get    `( BtContactSolverInfoDataClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btContactSolverInfo.h?r=2223#40>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btContactSolverInfo.cpp?r=2223>
-}
{#fun btContactSolverInfoData_m_timeStep_set    `( BtContactSolverInfoDataClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btContactSolverInfo.h?r=2223#40>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btContactSolverInfo.cpp?r=2223>
-}
{#fun btContactSolverInfoData_m_timeStep_get    `( BtContactSolverInfoDataClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btContactSolverInfo.h?r=2223#41>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btContactSolverInfo.cpp?r=2223>
-}
{#fun btContactSolverInfoData_m_restitution_set    `( BtContactSolverInfoDataClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btContactSolverInfo.h?r=2223#41>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btContactSolverInfo.cpp?r=2223>
-}
{#fun btContactSolverInfoData_m_restitution_get    `( BtContactSolverInfoDataClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btContactSolverInfo.h?r=2223#42>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btContactSolverInfo.cpp?r=2223>
-}
{#fun btContactSolverInfoData_m_numIterations_set    `( BtContactSolverInfoDataClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btContactSolverInfo.h?r=2223#42>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btContactSolverInfo.cpp?r=2223>
-}
{#fun btContactSolverInfoData_m_numIterations_get    `( BtContactSolverInfoDataClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btContactSolverInfo.h?r=2223#43>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btContactSolverInfo.cpp?r=2223>
-}
{#fun btContactSolverInfoData_m_maxErrorReduction_set    `( BtContactSolverInfoDataClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btContactSolverInfo.h?r=2223#43>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btContactSolverInfo.cpp?r=2223>
-}
{#fun btContactSolverInfoData_m_maxErrorReduction_get    `( BtContactSolverInfoDataClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btContactSolverInfo.h?r=2223#44>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btContactSolverInfo.cpp?r=2223>
-}
{#fun btContactSolverInfoData_m_sor_set    `( BtContactSolverInfoDataClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btContactSolverInfo.h?r=2223#44>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btContactSolverInfo.cpp?r=2223>
-}
{#fun btContactSolverInfoData_m_sor_get    `( BtContactSolverInfoDataClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btContactSolverInfo.h?r=2223#45>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btContactSolverInfo.cpp?r=2223>
-}
{#fun btContactSolverInfoData_m_erp_set    `( BtContactSolverInfoDataClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btContactSolverInfo.h?r=2223#45>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btContactSolverInfo.cpp?r=2223>
-}
{#fun btContactSolverInfoData_m_erp_get    `( BtContactSolverInfoDataClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btContactSolverInfo.h?r=2223#46>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btContactSolverInfo.cpp?r=2223>
-}
{#fun btContactSolverInfoData_m_erp2_set    `( BtContactSolverInfoDataClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btContactSolverInfo.h?r=2223#46>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btContactSolverInfo.cpp?r=2223>
-}
{#fun btContactSolverInfoData_m_erp2_get    `( BtContactSolverInfoDataClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btContactSolverInfo.h?r=2223#47>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btContactSolverInfo.cpp?r=2223>
-}
{#fun btContactSolverInfoData_m_globalCfm_set    `( BtContactSolverInfoDataClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btContactSolverInfo.h?r=2223#47>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btContactSolverInfo.cpp?r=2223>
-}
{#fun btContactSolverInfoData_m_globalCfm_get    `( BtContactSolverInfoDataClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btContactSolverInfo.h?r=2223#48>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btContactSolverInfo.cpp?r=2223>
-}
{#fun btContactSolverInfoData_m_splitImpulse_set    `( BtContactSolverInfoDataClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btContactSolverInfo.h?r=2223#48>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btContactSolverInfo.cpp?r=2223>
-}
{#fun btContactSolverInfoData_m_splitImpulse_get    `( BtContactSolverInfoDataClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btContactSolverInfo.h?r=2223#49>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btContactSolverInfo.cpp?r=2223>
-}
{#fun btContactSolverInfoData_m_splitImpulsePenetrationThreshold_set    `( BtContactSolverInfoDataClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btContactSolverInfo.h?r=2223#49>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btContactSolverInfo.cpp?r=2223>
-}
{#fun btContactSolverInfoData_m_splitImpulsePenetrationThreshold_get    `( BtContactSolverInfoDataClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btContactSolverInfo.h?r=2223#50>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btContactSolverInfo.cpp?r=2223>
-}
{#fun btContactSolverInfoData_m_linearSlop_set    `( BtContactSolverInfoDataClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btContactSolverInfo.h?r=2223#50>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btContactSolverInfo.cpp?r=2223>
-}
{#fun btContactSolverInfoData_m_linearSlop_get    `( BtContactSolverInfoDataClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btContactSolverInfo.h?r=2223#51>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btContactSolverInfo.cpp?r=2223>
-}
{#fun btContactSolverInfoData_m_warmstartingFactor_set    `( BtContactSolverInfoDataClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btContactSolverInfo.h?r=2223#51>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btContactSolverInfo.cpp?r=2223>
-}
{#fun btContactSolverInfoData_m_warmstartingFactor_get    `( BtContactSolverInfoDataClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btContactSolverInfo.h?r=2223#53>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btContactSolverInfo.cpp?r=2223>
-}
{#fun btContactSolverInfoData_m_solverMode_set    `( BtContactSolverInfoDataClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btContactSolverInfo.h?r=2223#53>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btContactSolverInfo.cpp?r=2223>
-}
{#fun btContactSolverInfoData_m_solverMode_get    `( BtContactSolverInfoDataClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btContactSolverInfo.h?r=2223#54>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btContactSolverInfo.cpp?r=2223>
-}
{#fun btContactSolverInfoData_m_restingContactRestitutionThreshold_set    `( BtContactSolverInfoDataClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btContactSolverInfo.h?r=2223#54>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btContactSolverInfo.cpp?r=2223>
-}
{#fun btContactSolverInfoData_m_restingContactRestitutionThreshold_get    `( BtContactSolverInfoDataClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btContactSolverInfo.h?r=2223#55>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btContactSolverInfo.cpp?r=2223>
-}
{#fun btContactSolverInfoData_m_minimumSolverBatchSize_set    `( BtContactSolverInfoDataClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btContactSolverInfo.h?r=2223#55>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btContactSolverInfo.cpp?r=2223>
-}
{#fun btContactSolverInfoData_m_minimumSolverBatchSize_get    `( BtContactSolverInfoDataClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
-- * btGeneric6DofConstraint
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#352>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btGeneric6DofConstraint_new0 as btGeneric6DofConstraint0    `( BtRigidBodyClass p0 , BtRigidBodyClass p1 )' =>     {  withBt* `p0' , withBt* `p1' , withTransform* `Transform' , withTransform* `Transform' ,  `Bool'  } -> `BtGeneric6DofConstraint' mkBtGeneric6DofConstraint* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#353>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btGeneric6DofConstraint_new1 as btGeneric6DofConstraint1    `( BtRigidBodyClass p0 )' =>     {  withBt* `p0' , withTransform* `Transform' ,  `Bool'  } -> `BtGeneric6DofConstraint' mkBtGeneric6DofConstraint* #}
{#fun btGeneric6DofConstraint_free    `( BtGeneric6DofConstraintClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#405>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btGeneric6DofConstraint_buildJacobian as btGeneric6DofConstraint_buildJacobian    `( BtGeneric6DofConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#547>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btGeneric6DofConstraint_setParam as btGeneric6DofConstraint_setParam    `( BtGeneric6DofConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ num
,  `Float'  -- ^ value
,  `Int'  -- ^ axis
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#409>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btGeneric6DofConstraint_getInfo1NonVirtual as btGeneric6DofConstraint_getInfo1NonVirtual    `( BtGeneric6DofConstraintClass bc , BtTypedConstraint_btConstraintInfo1Class p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ info
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#382>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btGeneric6DofConstraint_getFrameOffsetA0 as btGeneric6DofConstraint_getFrameOffsetA    `( BtGeneric6DofConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaTransform-  `Transform'  peekTransform* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#382>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btGeneric6DofConstraint_getFrameOffsetA0 as btGeneric6DofConstraint_getFrameOffsetA0    `( BtGeneric6DofConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaTransform-  `Transform'  peekTransform* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#393>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btGeneric6DofConstraint_getFrameOffsetA1 as btGeneric6DofConstraint_getFrameOffsetA1    `( BtGeneric6DofConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaTransform-  `Transform'  peekTransform* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#434>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btGeneric6DofConstraint_getRelativePivotPosition as btGeneric6DofConstraint_getRelativePivotPosition    `( BtGeneric6DofConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ axis_index
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#343>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btGeneric6DofConstraint_calculateAngleInfo as btGeneric6DofConstraint_calculateAngleInfo    `( BtGeneric6DofConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#413>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btGeneric6DofConstraint_getInfo2NonVirtual as btGeneric6DofConstraint_getInfo2NonVirtual    `( BtGeneric6DofConstraintClass bc , BtTypedConstraint_btConstraintInfo2Class p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ info
, withTransform* `Transform'  peekTransform* -- ^ transA
, withTransform* `Transform'  peekTransform* -- ^ transB
, withVec3* `Vec3'  peekVec3* -- ^ linVelA
, withVec3* `Vec3'  peekVec3* -- ^ linVelB
, withVec3* `Vec3'  peekVec3* -- ^ angVelA
, withVec3* `Vec3'  peekVec3* -- ^ angVelB
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#413>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btGeneric6DofConstraint_getInfo2NonVirtual as btGeneric6DofConstraint_getInfo2NonVirtual'    `( BtGeneric6DofConstraintClass bc , BtTypedConstraint_btConstraintInfo2Class p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ info
, allocaTransform-  `Transform'  peekTransform* -- ^ transA
, allocaTransform-  `Transform'  peekTransform* -- ^ transB
, allocaVec3-  `Vec3'  peekVec3* -- ^ linVelA
, allocaVec3-  `Vec3'  peekVec3* -- ^ linVelB
, allocaVec3-  `Vec3'  peekVec3* -- ^ angVelA
, allocaVec3-  `Vec3'  peekVec3* -- ^ angVelB
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#329>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btGeneric6DofConstraint_setAngularLimits as btGeneric6DofConstraint_setAngularLimits    `( BtGeneric6DofConstraintClass bc , BtTypedConstraint_btConstraintInfo2Class p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ info
,  `Int'  -- ^ row_offset
, withTransform* `Transform'  peekTransform* -- ^ transA
, withTransform* `Transform'  peekTransform* -- ^ transB
, withVec3* `Vec3'  peekVec3* -- ^ linVelA
, withVec3* `Vec3'  peekVec3* -- ^ linVelB
, withVec3* `Vec3'  peekVec3* -- ^ angVelA
, withVec3* `Vec3'  peekVec3* -- ^ angVelB
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#329>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btGeneric6DofConstraint_setAngularLimits as btGeneric6DofConstraint_setAngularLimits'    `( BtGeneric6DofConstraintClass bc , BtTypedConstraint_btConstraintInfo2Class p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ info
,  `Int'  -- ^ row_offset
, allocaTransform-  `Transform'  peekTransform* -- ^ transA
, allocaTransform-  `Transform'  peekTransform* -- ^ transB
, allocaVec3-  `Vec3'  peekVec3* -- ^ linVelA
, allocaVec3-  `Vec3'  peekVec3* -- ^ linVelB
, allocaVec3-  `Vec3'  peekVec3* -- ^ angVelA
, allocaVec3-  `Vec3'  peekVec3* -- ^ angVelB
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#549>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btGeneric6DofConstraint_getParam as btGeneric6DofConstraint_getParam    `( BtGeneric6DofConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ num
,  `Int'  -- ^ axis
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#407>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btGeneric6DofConstraint_getInfo1 as btGeneric6DofConstraint_getInfo1    `( BtGeneric6DofConstraintClass bc , BtTypedConstraint_btConstraintInfo1Class p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ info
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#411>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btGeneric6DofConstraint_getInfo2 as btGeneric6DofConstraint_getInfo2    `( BtGeneric6DofConstraintClass bc , BtTypedConstraint_btConstraintInfo2Class p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ info
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#535>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btGeneric6DofConstraint_calcAnchorPos as btGeneric6DofConstraint_calcAnchorPos    `( BtGeneric6DofConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#471>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btGeneric6DofConstraint_getAngularLowerLimit as btGeneric6DofConstraint_getAngularLowerLimit    `( BtGeneric6DofConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ angularLower
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#471>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btGeneric6DofConstraint_getAngularLowerLimit as btGeneric6DofConstraint_getAngularLowerLimit'    `( BtGeneric6DofConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ angularLower
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#579>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btGeneric6DofConstraint_calculateSerializeBufferSize as btGeneric6DofConstraint_calculateSerializeBufferSize    `( BtGeneric6DofConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#422>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btGeneric6DofConstraint_getAxis as btGeneric6DofConstraint_getAxis    `( BtGeneric6DofConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ axis_index
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#460>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btGeneric6DofConstraint_getLinearUpperLimit as btGeneric6DofConstraint_getLinearUpperLimit    `( BtGeneric6DofConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ linearUpper
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#460>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btGeneric6DofConstraint_getLinearUpperLimit as btGeneric6DofConstraint_getLinearUpperLimit'    `( BtGeneric6DofConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ linearUpper
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#543>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btGeneric6DofConstraint_setUseFrameOffset as btGeneric6DofConstraint_setUseFrameOffset    `( BtGeneric6DofConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Bool'  -- ^ frameOffsetOnOff
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#525>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btGeneric6DofConstraint_isLimited as btGeneric6DofConstraint_isLimited    `( BtGeneric6DofConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ limitIndex
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#490>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btGeneric6DofConstraint_getRotationalLimitMotor as btGeneric6DofConstraint_getRotationalLimitMotor    `( BtGeneric6DofConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ index
 } ->  `BtRotationalLimitMotor'  mkBtRotationalLimitMotor* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#337>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btGeneric6DofConstraint_buildAngularJacobian as btGeneric6DofConstraint_buildAngularJacobian    `( BtGeneric6DofConstraintClass bc , BtJacobianEntryClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ jacAngular
, withVec3* `Vec3'  peekVec3* -- ^ jointAxisW
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#337>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btGeneric6DofConstraint_buildAngularJacobian as btGeneric6DofConstraint_buildAngularJacobian'    `( BtGeneric6DofConstraintClass bc , BtJacobianEntryClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ jacAngular
, allocaVec3-  `Vec3'  peekVec3* -- ^ jointAxisW
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#387>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btGeneric6DofConstraint_getFrameOffsetB0 as btGeneric6DofConstraint_getFrameOffsetB    `( BtGeneric6DofConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaTransform-  `Transform'  peekTransform* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#387>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btGeneric6DofConstraint_getFrameOffsetB0 as btGeneric6DofConstraint_getFrameOffsetB0    `( BtGeneric6DofConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaTransform-  `Transform'  peekTransform* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#398>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btGeneric6DofConstraint_getFrameOffsetB1 as btGeneric6DofConstraint_getFrameOffsetB1    `( BtGeneric6DofConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaTransform-  `Transform'  peekTransform* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#445>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btGeneric6DofConstraint_setLinearLowerLimit as btGeneric6DofConstraint_setLinearLowerLimit    `( BtGeneric6DofConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ linearLower
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#445>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btGeneric6DofConstraint_setLinearLowerLimit as btGeneric6DofConstraint_setLinearLowerLimit'    `( BtGeneric6DofConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ linearLower
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#450>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btGeneric6DofConstraint_getLinearLowerLimit as btGeneric6DofConstraint_getLinearLowerLimit    `( BtGeneric6DofConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ linearLower
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#450>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btGeneric6DofConstraint_getLinearLowerLimit as btGeneric6DofConstraint_getLinearLowerLimit'    `( BtGeneric6DofConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ linearLower
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#335>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btGeneric6DofConstraint_buildLinearJacobian as btGeneric6DofConstraint_buildLinearJacobian    `( BtGeneric6DofConstraintClass bc , BtJacobianEntryClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ jacLinear
, withVec3* `Vec3'  peekVec3* -- ^ normalWorld
, withVec3* `Vec3'  peekVec3* -- ^ pivotAInW
, withVec3* `Vec3'  peekVec3* -- ^ pivotBInW
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#335>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btGeneric6DofConstraint_buildLinearJacobian as btGeneric6DofConstraint_buildLinearJacobian'    `( BtGeneric6DofConstraintClass bc , BtJacobianEntryClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ jacLinear
, allocaVec3-  `Vec3'  peekVec3* -- ^ normalWorld
, allocaVec3-  `Vec3'  peekVec3* -- ^ pivotAInW
, allocaVec3-  `Vec3'  peekVec3* -- ^ pivotBInW
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#542>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btGeneric6DofConstraint_getUseFrameOffset as btGeneric6DofConstraint_getUseFrameOffset    `( BtGeneric6DofConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#377>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btGeneric6DofConstraint_getCalculatedTransformB as btGeneric6DofConstraint_getCalculatedTransformB    `( BtGeneric6DofConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaTransform-  `Transform'  peekTransform* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#360>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btGeneric6DofConstraint_calculateTransforms0 as btGeneric6DofConstraint_calculateTransforms    `( BtGeneric6DofConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
, withTransform* `Transform'  peekTransform* -- ^ transA
, withTransform* `Transform'  peekTransform* -- ^ transB
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#360>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btGeneric6DofConstraint_calculateTransforms0 as btGeneric6DofConstraint_calculateTransforms'    `( BtGeneric6DofConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaTransform-  `Transform'  peekTransform* -- ^ transA
, allocaTransform-  `Transform'  peekTransform* -- ^ transB
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#360>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btGeneric6DofConstraint_calculateTransforms0 as btGeneric6DofConstraint_calculateTransforms0    `( BtGeneric6DofConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
, withTransform* `Transform'  peekTransform* -- ^ transA
, withTransform* `Transform'  peekTransform* -- ^ transB
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#360>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btGeneric6DofConstraint_calculateTransforms0 as btGeneric6DofConstraint_calculateTransforms0'    `( BtGeneric6DofConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaTransform-  `Transform'  peekTransform* -- ^ transA
, allocaTransform-  `Transform'  peekTransform* -- ^ transB
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#362>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btGeneric6DofConstraint_calculateTransforms1 as btGeneric6DofConstraint_calculateTransforms1    `( BtGeneric6DofConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#539>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btGeneric6DofConstraint_get_limit_motor_info2 as btGeneric6DofConstraint_get_limit_motor_info2    `( BtGeneric6DofConstraintClass bc , BtRotationalLimitMotorClass p0 , BtTypedConstraint_btConstraintInfo2Class p7 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ limot
, withTransform* `Transform'  peekTransform* -- ^ transA
, withTransform* `Transform'  peekTransform* -- ^ transB
, withVec3* `Vec3'  peekVec3* -- ^ linVelA
, withVec3* `Vec3'  peekVec3* -- ^ linVelB
, withVec3* `Vec3'  peekVec3* -- ^ angVelA
, withVec3* `Vec3'  peekVec3* -- ^ angVelB
, withBt* `p7'  -- ^ info
,  `Int'  -- ^ row
, withVec3* `Vec3'  peekVec3* -- ^ ax1
,  `Int'  -- ^ rotational
,  `Int'  -- ^ rotAllowed
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#539>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btGeneric6DofConstraint_get_limit_motor_info2 as btGeneric6DofConstraint_get_limit_motor_info2'    `( BtGeneric6DofConstraintClass bc , BtRotationalLimitMotorClass p0 , BtTypedConstraint_btConstraintInfo2Class p7 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ limot
, allocaTransform-  `Transform'  peekTransform* -- ^ transA
, allocaTransform-  `Transform'  peekTransform* -- ^ transB
, allocaVec3-  `Vec3'  peekVec3* -- ^ linVelA
, allocaVec3-  `Vec3'  peekVec3* -- ^ linVelB
, allocaVec3-  `Vec3'  peekVec3* -- ^ angVelA
, allocaVec3-  `Vec3'  peekVec3* -- ^ angVelB
, withBt* `p7'  -- ^ info
,  `Int'  -- ^ row
, allocaVec3-  `Vec3'  peekVec3* -- ^ ax1
,  `Int'  -- ^ rotational
,  `Int'  -- ^ rotAllowed
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#368>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btGeneric6DofConstraint_getCalculatedTransformA as btGeneric6DofConstraint_getCalculatedTransformA    `( BtGeneric6DofConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaTransform-  `Transform'  peekTransform* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#585>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btGeneric6DofConstraint_serialize as btGeneric6DofConstraint_serialize    `( BtGeneric6DofConstraintClass bc , BtSerializerClass p1 )' =>     { withBt* `bc'  -- ^ 
, withVoidPtr* `VoidPtr'  -- ^ dataBuffer
, withBt* `p1'  -- ^ serializer
 } ->  `String'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#502>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btGeneric6DofConstraint_setLimit as btGeneric6DofConstraint_setLimit    `( BtGeneric6DofConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ axis
,  `Float'  -- ^ lo
,  `Float'  -- ^ hi
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#496>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btGeneric6DofConstraint_getTranslationalLimitMotor as btGeneric6DofConstraint_getTranslationalLimitMotor    `( BtGeneric6DofConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtTranslationalLimitMotor'  mkBtTranslationalLimitMotor* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#331>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btGeneric6DofConstraint_setLinearLimits as btGeneric6DofConstraint_setLinearLimits    `( BtGeneric6DofConstraintClass bc , BtTypedConstraint_btConstraintInfo2Class p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ info
,  `Int'  -- ^ row
, withTransform* `Transform'  peekTransform* -- ^ transA
, withTransform* `Transform'  peekTransform* -- ^ transB
, withVec3* `Vec3'  peekVec3* -- ^ linVelA
, withVec3* `Vec3'  peekVec3* -- ^ linVelB
, withVec3* `Vec3'  peekVec3* -- ^ angVelA
, withVec3* `Vec3'  peekVec3* -- ^ angVelB
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#331>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btGeneric6DofConstraint_setLinearLimits as btGeneric6DofConstraint_setLinearLimits'    `( BtGeneric6DofConstraintClass bc , BtTypedConstraint_btConstraintInfo2Class p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ info
,  `Int'  -- ^ row
, allocaTransform-  `Transform'  peekTransform* -- ^ transA
, allocaTransform-  `Transform'  peekTransform* -- ^ transB
, allocaVec3-  `Vec3'  peekVec3* -- ^ linVelA
, allocaVec3-  `Vec3'  peekVec3* -- ^ linVelB
, allocaVec3-  `Vec3'  peekVec3* -- ^ angVelA
, allocaVec3-  `Vec3'  peekVec3* -- ^ angVelB
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#428>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btGeneric6DofConstraint_getAngle as btGeneric6DofConstraint_getAngle    `( BtGeneric6DofConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ axis_index
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#416>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btGeneric6DofConstraint_updateRHS as btGeneric6DofConstraint_updateRHS    `( BtGeneric6DofConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ timeStep
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#483>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btGeneric6DofConstraint_getAngularUpperLimit as btGeneric6DofConstraint_getAngularUpperLimit    `( BtGeneric6DofConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ angularUpper
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#483>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btGeneric6DofConstraint_getAngularUpperLimit as btGeneric6DofConstraint_getAngularUpperLimit'    `( BtGeneric6DofConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ angularUpper
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#465>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btGeneric6DofConstraint_setAngularLowerLimit as btGeneric6DofConstraint_setAngularLowerLimit    `( BtGeneric6DofConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ angularLower
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#465>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btGeneric6DofConstraint_setAngularLowerLimit as btGeneric6DofConstraint_setAngularLowerLimit'    `( BtGeneric6DofConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ angularLower
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#340>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btGeneric6DofConstraint_calculateLinearInfo as btGeneric6DofConstraint_calculateLinearInfo    `( BtGeneric6DofConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#436>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btGeneric6DofConstraint_setFrames as btGeneric6DofConstraint_setFrames    `( BtGeneric6DofConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
, withTransform* `Transform'  peekTransform* -- ^ frameA
, withTransform* `Transform'  peekTransform* -- ^ frameB
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#436>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btGeneric6DofConstraint_setFrames as btGeneric6DofConstraint_setFrames'    `( BtGeneric6DofConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaTransform-  `Transform'  peekTransform* -- ^ frameA
, allocaTransform-  `Transform'  peekTransform* -- ^ frameB
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#455>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btGeneric6DofConstraint_setLinearUpperLimit as btGeneric6DofConstraint_setLinearUpperLimit    `( BtGeneric6DofConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ linearUpper
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#455>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btGeneric6DofConstraint_setLinearUpperLimit as btGeneric6DofConstraint_setLinearUpperLimit'    `( BtGeneric6DofConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ linearUpper
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#477>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btGeneric6DofConstraint_setAngularUpperLimit as btGeneric6DofConstraint_setAngularUpperLimit    `( BtGeneric6DofConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ angularUpper
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#477>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btGeneric6DofConstraint_setAngularUpperLimit as btGeneric6DofConstraint_setAngularUpperLimit'    `( BtGeneric6DofConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ angularUpper
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#551>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btGeneric6DofConstraint_setAxis as btGeneric6DofConstraint_setAxis    `( BtGeneric6DofConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ axis1
, withVec3* `Vec3'  peekVec3* -- ^ axis2
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#551>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btGeneric6DofConstraint_setAxis as btGeneric6DofConstraint_setAxis'    `( BtGeneric6DofConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ axis1
, allocaVec3-  `Vec3'  peekVec3* -- ^ axis2
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#443>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btGeneric6DofConstraint_testAngularLimitMotor as btGeneric6DofConstraint_testAngularLimitMotor    `( BtGeneric6DofConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ axis_index
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#277>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btGeneric6DofConstraint_m_frameInA_set    `( BtGeneric6DofConstraintClass bc )' =>     { withBt* `bc' , withTransform* `Transform'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#277>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btGeneric6DofConstraint_m_frameInA_get    `( BtGeneric6DofConstraintClass bc )' =>     { withBt* `bc' , allocaTransform-  `Transform'  peekTransform* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#278>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btGeneric6DofConstraint_m_frameInB_set    `( BtGeneric6DofConstraintClass bc )' =>     { withBt* `bc' , withTransform* `Transform'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#278>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btGeneric6DofConstraint_m_frameInB_get    `( BtGeneric6DofConstraintClass bc )' =>     { withBt* `bc' , allocaTransform-  `Transform'  peekTransform* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#289>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btGeneric6DofConstraint_m_linearLimits_set    `( BtGeneric6DofConstraintClass bc , BtTranslationalLimitMotorClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#289>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btGeneric6DofConstraint_m_linearLimits_get    `( BtGeneric6DofConstraintClass bc )' =>     { withBt* `bc'  } ->  `BtTranslationalLimitMotor'  mkBtTranslationalLimitMotor* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#302>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btGeneric6DofConstraint_m_timeStep_set    `( BtGeneric6DofConstraintClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#302>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btGeneric6DofConstraint_m_timeStep_get    `( BtGeneric6DofConstraintClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#303>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btGeneric6DofConstraint_m_calculatedTransformA_set    `( BtGeneric6DofConstraintClass bc )' =>     { withBt* `bc' , withTransform* `Transform'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#303>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btGeneric6DofConstraint_m_calculatedTransformA_get    `( BtGeneric6DofConstraintClass bc )' =>     { withBt* `bc' , allocaTransform-  `Transform'  peekTransform* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#304>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btGeneric6DofConstraint_m_calculatedTransformB_set    `( BtGeneric6DofConstraintClass bc )' =>     { withBt* `bc' , withTransform* `Transform'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#304>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btGeneric6DofConstraint_m_calculatedTransformB_get    `( BtGeneric6DofConstraintClass bc )' =>     { withBt* `bc' , allocaTransform-  `Transform'  peekTransform* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#305>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btGeneric6DofConstraint_m_calculatedAxisAngleDiff_set    `( BtGeneric6DofConstraintClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#305>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btGeneric6DofConstraint_m_calculatedAxisAngleDiff_get    `( BtGeneric6DofConstraintClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#307>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btGeneric6DofConstraint_m_calculatedLinearDiff_set    `( BtGeneric6DofConstraintClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#307>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btGeneric6DofConstraint_m_calculatedLinearDiff_get    `( BtGeneric6DofConstraintClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#308>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btGeneric6DofConstraint_m_factA_set    `( BtGeneric6DofConstraintClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#308>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btGeneric6DofConstraint_m_factA_get    `( BtGeneric6DofConstraintClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#309>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btGeneric6DofConstraint_m_factB_set    `( BtGeneric6DofConstraintClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#309>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btGeneric6DofConstraint_m_factB_get    `( BtGeneric6DofConstraintClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#310>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btGeneric6DofConstraint_m_hasStaticBody_set    `( BtGeneric6DofConstraintClass bc )' =>     { withBt* `bc' ,  `Bool'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#310>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btGeneric6DofConstraint_m_hasStaticBody_get    `( BtGeneric6DofConstraintClass bc )' =>     { withBt* `bc'  } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#312>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btGeneric6DofConstraint_m_AnchorPos_set    `( BtGeneric6DofConstraintClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#312>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btGeneric6DofConstraint_m_AnchorPos_get    `( BtGeneric6DofConstraintClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#314>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btGeneric6DofConstraint_m_useLinearReferenceFrameA_set    `( BtGeneric6DofConstraintClass bc )' =>     { withBt* `bc' ,  `Bool'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#314>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btGeneric6DofConstraint_m_useLinearReferenceFrameA_get    `( BtGeneric6DofConstraintClass bc )' =>     { withBt* `bc'  } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#315>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btGeneric6DofConstraint_m_useOffsetForConstraintFrame_set    `( BtGeneric6DofConstraintClass bc )' =>     { withBt* `bc' ,  `Bool'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#315>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btGeneric6DofConstraint_m_useOffsetForConstraintFrame_get    `( BtGeneric6DofConstraintClass bc )' =>     { withBt* `bc'  } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#317>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btGeneric6DofConstraint_m_flags_set    `( BtGeneric6DofConstraintClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#317>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btGeneric6DofConstraint_m_flags_get    `( BtGeneric6DofConstraintClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#350>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btGeneric6DofConstraint_m_useSolveConstraintObsolete_set    `( BtGeneric6DofConstraintClass bc )' =>     { withBt* `bc' ,  `Bool'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#350>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btGeneric6DofConstraint_m_useSolveConstraintObsolete_get    `( BtGeneric6DofConstraintClass bc )' =>     { withBt* `bc'  } ->  `Bool'   #}
-- * btGeneric6DofConstraintData
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#564>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btGeneric6DofConstraintData_new as btGeneric6DofConstraintData    {  } -> `BtGeneric6DofConstraintData' mkBtGeneric6DofConstraintData* #}
{#fun btGeneric6DofConstraintData_free    `( BtGeneric6DofConstraintDataClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#565>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btGeneric6DofConstraintData_m_typeConstraintData_set    `( BtGeneric6DofConstraintDataClass bc , BtTypedConstraintDataClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#565>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btGeneric6DofConstraintData_m_typeConstraintData_get    `( BtGeneric6DofConstraintDataClass bc )' =>     { withBt* `bc'  } ->  `BtTypedConstraintData'  mkBtTypedConstraintData* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#566>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btGeneric6DofConstraintData_m_rbAFrame_set    `( BtGeneric6DofConstraintDataClass bc , BtTransformFloatDataClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#566>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btGeneric6DofConstraintData_m_rbAFrame_get    `( BtGeneric6DofConstraintDataClass bc )' =>     { withBt* `bc'  } ->  `BtTransformFloatData'  mkBtTransformFloatData* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#567>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btGeneric6DofConstraintData_m_rbBFrame_set    `( BtGeneric6DofConstraintDataClass bc , BtTransformFloatDataClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#567>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btGeneric6DofConstraintData_m_rbBFrame_get    `( BtGeneric6DofConstraintDataClass bc )' =>     { withBt* `bc'  } ->  `BtTransformFloatData'  mkBtTransformFloatData* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#569>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btGeneric6DofConstraintData_m_linearUpperLimit_set    `( BtGeneric6DofConstraintDataClass bc , BtVector3FloatDataClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#569>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btGeneric6DofConstraintData_m_linearUpperLimit_get    `( BtGeneric6DofConstraintDataClass bc )' =>     { withBt* `bc'  } ->  `BtVector3FloatData'  mkBtVector3FloatData* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#570>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btGeneric6DofConstraintData_m_linearLowerLimit_set    `( BtGeneric6DofConstraintDataClass bc , BtVector3FloatDataClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#570>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btGeneric6DofConstraintData_m_linearLowerLimit_get    `( BtGeneric6DofConstraintDataClass bc )' =>     { withBt* `bc'  } ->  `BtVector3FloatData'  mkBtVector3FloatData* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#572>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btGeneric6DofConstraintData_m_angularUpperLimit_set    `( BtGeneric6DofConstraintDataClass bc , BtVector3FloatDataClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#572>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btGeneric6DofConstraintData_m_angularUpperLimit_get    `( BtGeneric6DofConstraintDataClass bc )' =>     { withBt* `bc'  } ->  `BtVector3FloatData'  mkBtVector3FloatData* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#573>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btGeneric6DofConstraintData_m_angularLowerLimit_set    `( BtGeneric6DofConstraintDataClass bc , BtVector3FloatDataClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#573>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btGeneric6DofConstraintData_m_angularLowerLimit_get    `( BtGeneric6DofConstraintDataClass bc )' =>     { withBt* `bc'  } ->  `BtVector3FloatData'  mkBtVector3FloatData* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#575>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btGeneric6DofConstraintData_m_useLinearReferenceFrameA_set    `( BtGeneric6DofConstraintDataClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#575>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btGeneric6DofConstraintData_m_useLinearReferenceFrameA_get    `( BtGeneric6DofConstraintDataClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#576>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btGeneric6DofConstraintData_m_useOffsetForConstraintFrame_set    `( BtGeneric6DofConstraintDataClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#576>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btGeneric6DofConstraintData_m_useOffsetForConstraintFrame_get    `( BtGeneric6DofConstraintDataClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
-- * btGeneric6DofSpringConstraint
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofSpringConstraint.h?r=2223#44>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofSpringConstraint.cpp?r=2223>
-}
{#fun btGeneric6DofSpringConstraint_new as btGeneric6DofSpringConstraint    `( BtRigidBodyClass p0 , BtRigidBodyClass p1 )' =>     {  withBt* `p0' , withBt* `p1' , withTransform* `Transform' , withTransform* `Transform' ,  `Bool'  } -> `BtGeneric6DofSpringConstraint' mkBtGeneric6DofSpringConstraint* #}
{#fun btGeneric6DofSpringConstraint_free    `( BtGeneric6DofSpringConstraintClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofSpringConstraint.h?r=2223#74>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofSpringConstraint.cpp?r=2223>
-}
{#fun btGeneric6DofSpringConstraint_calculateSerializeBufferSize as btGeneric6DofSpringConstraint_calculateSerializeBufferSize    `( BtGeneric6DofSpringConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofSpringConstraint.h?r=2223#48>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofSpringConstraint.cpp?r=2223>
-}
{#fun btGeneric6DofSpringConstraint_setEquilibriumPoint0 as btGeneric6DofSpringConstraint_setEquilibriumPoint    `( BtGeneric6DofSpringConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofSpringConstraint.h?r=2223#48>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofSpringConstraint.cpp?r=2223>
-}
{#fun btGeneric6DofSpringConstraint_setEquilibriumPoint0 as btGeneric6DofSpringConstraint_setEquilibriumPoint0    `( BtGeneric6DofSpringConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofSpringConstraint.h?r=2223#49>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofSpringConstraint.cpp?r=2223>
-}
{#fun btGeneric6DofSpringConstraint_setEquilibriumPoint1 as btGeneric6DofSpringConstraint_setEquilibriumPoint1    `( BtGeneric6DofSpringConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ index
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofSpringConstraint.h?r=2223#50>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofSpringConstraint.cpp?r=2223>
-}
{#fun btGeneric6DofSpringConstraint_setEquilibriumPoint2 as btGeneric6DofSpringConstraint_setEquilibriumPoint2    `( BtGeneric6DofSpringConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ index
,  `Float'  -- ^ val
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofSpringConstraint.h?r=2223#80>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofSpringConstraint.cpp?r=2223>
-}
{#fun btGeneric6DofSpringConstraint_serialize as btGeneric6DofSpringConstraint_serialize    `( BtGeneric6DofSpringConstraintClass bc , BtSerializerClass p1 )' =>     { withBt* `bc'  -- ^ 
, withVoidPtr* `VoidPtr'  -- ^ dataBuffer
, withBt* `p1'  -- ^ serializer
 } ->  `String'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofSpringConstraint.h?r=2223#45>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofSpringConstraint.cpp?r=2223>
-}
{#fun btGeneric6DofSpringConstraint_enableSpring as btGeneric6DofSpringConstraint_enableSpring    `( BtGeneric6DofSpringConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ index
,  `Bool'  -- ^ onOff
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofSpringConstraint.h?r=2223#46>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofSpringConstraint.cpp?r=2223>
-}
{#fun btGeneric6DofSpringConstraint_setStiffness as btGeneric6DofSpringConstraint_setStiffness    `( BtGeneric6DofSpringConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ index
,  `Float'  -- ^ stiffness
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofSpringConstraint.h?r=2223#47>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofSpringConstraint.cpp?r=2223>
-}
{#fun btGeneric6DofSpringConstraint_setDamping as btGeneric6DofSpringConstraint_setDamping    `( BtGeneric6DofSpringConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ index
,  `Float'  -- ^ damping
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofSpringConstraint.h?r=2223#54>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofSpringConstraint.cpp?r=2223>
-}
{#fun btGeneric6DofSpringConstraint_getInfo2 as btGeneric6DofSpringConstraint_getInfo2    `( BtGeneric6DofSpringConstraintClass bc , BtTypedConstraint_btConstraintInfo2Class p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ info
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofSpringConstraint.h?r=2223#42>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofSpringConstraint.cpp?r=2223>
-}
{#fun btGeneric6DofSpringConstraint_internalUpdateSprings as btGeneric6DofSpringConstraint_internalUpdateSprings    `( BtGeneric6DofSpringConstraintClass bc , BtTypedConstraint_btConstraintInfo2Class p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ info
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofSpringConstraint.h?r=2223#52>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofSpringConstraint.cpp?r=2223>
-}
{#fun btGeneric6DofSpringConstraint_setAxis as btGeneric6DofSpringConstraint_setAxis    `( BtGeneric6DofSpringConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ axis1
, withVec3* `Vec3'  peekVec3* -- ^ axis2
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofSpringConstraint.h?r=2223#52>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofSpringConstraint.cpp?r=2223>
-}
{#fun btGeneric6DofSpringConstraint_setAxis as btGeneric6DofSpringConstraint_setAxis'    `( BtGeneric6DofSpringConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ axis1
, allocaVec3-  `Vec3'  peekVec3* -- ^ axis2
 } ->  `()'   #}
-- * btGeneric6DofSpringConstraintData
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofSpringConstraint.h?r=2223#65>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofSpringConstraint.cpp?r=2223>
-}
{#fun btGeneric6DofSpringConstraintData_new as btGeneric6DofSpringConstraintData    {  } -> `BtGeneric6DofSpringConstraintData' mkBtGeneric6DofSpringConstraintData* #}
{#fun btGeneric6DofSpringConstraintData_free    `( BtGeneric6DofSpringConstraintDataClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofSpringConstraint.h?r=2223#66>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofSpringConstraint.cpp?r=2223>
-}
{#fun btGeneric6DofSpringConstraintData_m_6dofData_set    `( BtGeneric6DofSpringConstraintDataClass bc , BtGeneric6DofConstraintDataClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofSpringConstraint.h?r=2223#66>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofSpringConstraint.cpp?r=2223>
-}
{#fun btGeneric6DofSpringConstraintData_m_6dofData_get    `( BtGeneric6DofSpringConstraintDataClass bc )' =>     { withBt* `bc'  } ->  `BtGeneric6DofConstraintData'  mkBtGeneric6DofConstraintData* #}
-- * btHinge2Constraint
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHinge2Constraint.h?r=2223#42>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHinge2Constraint.cpp?r=2223>
-}
{#fun btHinge2Constraint_new as btHinge2Constraint    `( BtRigidBodyClass p0 , BtRigidBodyClass p1 )' =>     {  withBt* `p0' , withBt* `p1' , withVec3* `Vec3' , withVec3* `Vec3' , withVec3* `Vec3'  } -> `BtHinge2Constraint' mkBtHinge2Constraint* #}
{#fun btHinge2Constraint_free    `( BtHinge2ConstraintClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHinge2Constraint.h?r=2223#52>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHinge2Constraint.cpp?r=2223>
-}
{#fun btHinge2Constraint_setLowerLimit as btHinge2Constraint_setLowerLimit    `( BtHinge2ConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ ang1min
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHinge2Constraint.h?r=2223#45>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHinge2Constraint.cpp?r=2223>
-}
{#fun btHinge2Constraint_getAnchor2 as btHinge2Constraint_getAnchor2    `( BtHinge2ConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHinge2Constraint.h?r=2223#46>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHinge2Constraint.cpp?r=2223>
-}
{#fun btHinge2Constraint_getAxis1 as btHinge2Constraint_getAxis1    `( BtHinge2ConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHinge2Constraint.h?r=2223#44>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHinge2Constraint.cpp?r=2223>
-}
{#fun btHinge2Constraint_getAnchor as btHinge2Constraint_getAnchor    `( BtHinge2ConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHinge2Constraint.h?r=2223#47>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHinge2Constraint.cpp?r=2223>
-}
{#fun btHinge2Constraint_getAxis2 as btHinge2Constraint_getAxis2    `( BtHinge2ConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHinge2Constraint.h?r=2223#51>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHinge2Constraint.cpp?r=2223>
-}
{#fun btHinge2Constraint_setUpperLimit as btHinge2Constraint_setUpperLimit    `( BtHinge2ConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ ang1max
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHinge2Constraint.h?r=2223#49>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHinge2Constraint.cpp?r=2223>
-}
{#fun btHinge2Constraint_getAngle2 as btHinge2Constraint_getAngle2    `( BtHinge2ConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHinge2Constraint.h?r=2223#48>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHinge2Constraint.cpp?r=2223>
-}
{#fun btHinge2Constraint_getAngle1 as btHinge2Constraint_getAngle1    `( BtHinge2ConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHinge2Constraint.h?r=2223#35>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHinge2Constraint.cpp?r=2223>
-}
{#fun btHinge2Constraint_m_anchor_set    `( BtHinge2ConstraintClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHinge2Constraint.h?r=2223#35>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHinge2Constraint.cpp?r=2223>
-}
{#fun btHinge2Constraint_m_anchor_get    `( BtHinge2ConstraintClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHinge2Constraint.h?r=2223#36>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHinge2Constraint.cpp?r=2223>
-}
{#fun btHinge2Constraint_m_axis1_set    `( BtHinge2ConstraintClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHinge2Constraint.h?r=2223#36>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHinge2Constraint.cpp?r=2223>
-}
{#fun btHinge2Constraint_m_axis1_get    `( BtHinge2ConstraintClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHinge2Constraint.h?r=2223#37>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHinge2Constraint.cpp?r=2223>
-}
{#fun btHinge2Constraint_m_axis2_set    `( BtHinge2ConstraintClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHinge2Constraint.h?r=2223#37>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHinge2Constraint.cpp?r=2223>
-}
{#fun btHinge2Constraint_m_axis2_get    `( BtHinge2ConstraintClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
-- * btHingeConstraint
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#103>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraint_new0 as btHingeConstraint0    `( BtRigidBodyClass p0 , BtRigidBodyClass p1 )' =>     {  withBt* `p0' , withBt* `p1' , withVec3* `Vec3' , withVec3* `Vec3' , withVec3* `Vec3' , withVec3* `Vec3' ,  `Bool'  } -> `BtHingeConstraint' mkBtHingeConstraint* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#105>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraint_new1 as btHingeConstraint1    `( BtRigidBodyClass p0 )' =>     {  withBt* `p0' , withVec3* `Vec3' , withVec3* `Vec3' ,  `Bool'  } -> `BtHingeConstraint' mkBtHingeConstraint* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#107>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraint_new2 as btHingeConstraint2    `( BtRigidBodyClass p0 , BtRigidBodyClass p1 )' =>     {  withBt* `p0' , withBt* `p1' , withTransform* `Transform' , withTransform* `Transform' ,  `Bool'  } -> `BtHingeConstraint' mkBtHingeConstraint* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#109>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraint_new3 as btHingeConstraint3    `( BtRigidBodyClass p0 )' =>     {  withBt* `p0' , withTransform* `Transform' ,  `Bool'  } -> `BtHingeConstraint' mkBtHingeConstraint* #}
{#fun btHingeConstraint_free    `( BtHingeConstraintClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#132>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraint_getRigidBodyB0 as btHingeConstraint_getRigidBodyB    `( BtHingeConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtRigidBody'  mkBtRigidBody* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#132>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraint_getRigidBodyB0 as btHingeConstraint_getRigidBodyB0    `( BtHingeConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtRigidBody'  mkBtRigidBody* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#142>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraint_getRigidBodyB1 as btHingeConstraint_getRigidBodyB1    `( BtHingeConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtRigidBody'  mkBtRigidBody* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#120>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraint_getInfo2NonVirtual as btHingeConstraint_getInfo2NonVirtual    `( BtHingeConstraintClass bc , BtTypedConstraint_btConstraintInfo2Class p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ info
, withTransform* `Transform'  peekTransform* -- ^ transA
, withTransform* `Transform'  peekTransform* -- ^ transB
, withVec3* `Vec3'  peekVec3* -- ^ angVelA
, withVec3* `Vec3'  peekVec3* -- ^ angVelB
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#120>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraint_getInfo2NonVirtual as btHingeConstraint_getInfo2NonVirtual'    `( BtHingeConstraintClass bc , BtTypedConstraint_btConstraintInfo2Class p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ info
, allocaTransform-  `Transform'  peekTransform* -- ^ transA
, allocaTransform-  `Transform'  peekTransform* -- ^ transB
, allocaVec3-  `Vec3'  peekVec3* -- ^ angVelA
, allocaVec3-  `Vec3'  peekVec3* -- ^ angVelB
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#128>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraint_getRigidBodyA0 as btHingeConstraint_getRigidBodyA    `( BtHingeConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtRigidBody'  mkBtRigidBody* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#128>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraint_getRigidBodyA0 as btHingeConstraint_getRigidBodyA0    `( BtHingeConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtRigidBody'  mkBtRigidBody* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#137>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraint_getRigidBodyA1 as btHingeConstraint_getRigidBodyA1    `( BtHingeConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtRigidBody'  mkBtRigidBody* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#276>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraint_getMotorTargetVelosity as btHingeConstraint_getMotorTargetVelosity    `( BtHingeConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#147>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraint_getFrameOffsetA as btHingeConstraint_getFrameOffsetA    `( BtHingeConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaTransform-  `Transform'  peekTransform* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#152>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraint_getFrameOffsetB as btHingeConstraint_getFrameOffsetB    `( BtHingeConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaTransform-  `Transform'  peekTransform* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#112>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraint_buildJacobian as btHingeConstraint_buildJacobian    `( BtHingeConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#175>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraint_setMaxMotorImpulse as btHingeConstraint_setMaxMotorImpulse    `( BtHingeConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ maxMotorImpulse
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#237>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraint_getHingeAngle0 as btHingeConstraint_getHingeAngle    `( BtHingeConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#237>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraint_getHingeAngle0 as btHingeConstraint_getHingeAngle0    `( BtHingeConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#239>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraint_getHingeAngle1 as btHingeConstraint_getHingeAngle1    `( BtHingeConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
, withTransform* `Transform'  peekTransform* -- ^ transA
, withTransform* `Transform'  peekTransform* -- ^ transB
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#239>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraint_getHingeAngle1 as btHingeConstraint_getHingeAngle1'    `( BtHingeConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaTransform-  `Transform'  peekTransform* -- ^ transA
, allocaTransform-  `Transform'  peekTransform* -- ^ transB
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#241>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraint_testLimit as btHingeConstraint_testLimit    `( BtHingeConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
, withTransform* `Transform'  peekTransform* -- ^ transA
, withTransform* `Transform'  peekTransform* -- ^ transB
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#241>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraint_testLimit as btHingeConstraint_testLimit'    `( BtHingeConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaTransform-  `Transform'  peekTransform* -- ^ transA
, allocaTransform-  `Transform'  peekTransform* -- ^ transB
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#114>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraint_getInfo1 as btHingeConstraint_getInfo1    `( BtHingeConstraintClass bc , BtTypedConstraint_btConstraintInfo1Class p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ info
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#122>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraint_getInfo2Internal as btHingeConstraint_getInfo2Internal    `( BtHingeConstraintClass bc , BtTypedConstraint_btConstraintInfo2Class p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ info
, withTransform* `Transform'  peekTransform* -- ^ transA
, withTransform* `Transform'  peekTransform* -- ^ transB
, withVec3* `Vec3'  peekVec3* -- ^ angVelA
, withVec3* `Vec3'  peekVec3* -- ^ angVelB
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#122>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraint_getInfo2Internal as btHingeConstraint_getInfo2Internal'    `( BtHingeConstraintClass bc , BtTypedConstraint_btConstraintInfo2Class p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ info
, allocaTransform-  `Transform'  peekTransform* -- ^ transA
, allocaTransform-  `Transform'  peekTransform* -- ^ transB
, allocaVec3-  `Vec3'  peekVec3* -- ^ angVelA
, allocaVec3-  `Vec3'  peekVec3* -- ^ angVelB
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#118>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraint_getInfo2 as btHingeConstraint_getInfo2    `( BtHingeConstraintClass bc , BtTypedConstraint_btConstraintInfo2Class p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ info
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#227>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraint_getUpperLimit as btHingeConstraint_getUpperLimit    `( BtHingeConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#164>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraint_enableAngularMotor as btHingeConstraint_enableAngularMotor    `( BtHingeConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Bool'  -- ^ enableMotor
,  `Float'  -- ^ targetVelocity
,  `Float'  -- ^ maxMotorImpulse
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#259>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraint_getLimitSign as btHingeConstraint_getLimitSign    `( BtHingeConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#345>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraint_calculateSerializeBufferSize as btHingeConstraint_calculateSerializeBufferSize    `( BtHingeConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#280>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraint_getMaxMotorImpulse as btHingeConstraint_getMaxMotorImpulse    `( BtHingeConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#218>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraint_getLowerLimit as btHingeConstraint_getLowerLimit    `( BtHingeConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#291>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraint_setParam as btHingeConstraint_setParam    `( BtHingeConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ num
,  `Float'  -- ^ value
,  `Int'  -- ^ axis
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#286>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraint_setUseFrameOffset as btHingeConstraint_setUseFrameOffset    `( BtHingeConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Bool'  -- ^ frameOffsetOnOff
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#272>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraint_getEnableAngularMotor as btHingeConstraint_getEnableAngularMotor    `( BtHingeConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#174>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraint_enableMotor as btHingeConstraint_enableMotor    `( BtHingeConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Bool'  -- ^ enableMotor
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#245>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraint_getBFrame0 as btHingeConstraint_getBFrame    `( BtHingeConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaTransform-  `Transform'  peekTransform* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#245>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraint_getBFrame0 as btHingeConstraint_getBFrame0    `( BtHingeConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaTransform-  `Transform'  peekTransform* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#248>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraint_getBFrame1 as btHingeConstraint_getBFrame1    `( BtHingeConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaTransform-  `Transform'  peekTransform* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#116>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraint_getInfo1NonVirtual as btHingeConstraint_getInfo1NonVirtual    `( BtHingeConstraintClass bc , BtTypedConstraint_btConstraintInfo1Class p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ info
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#123>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraint_getInfo2InternalUsingFrameOffset as btHingeConstraint_getInfo2InternalUsingFrameOffset    `( BtHingeConstraintClass bc , BtTypedConstraint_btConstraintInfo2Class p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ info
, withTransform* `Transform'  peekTransform* -- ^ transA
, withTransform* `Transform'  peekTransform* -- ^ transB
, withVec3* `Vec3'  peekVec3* -- ^ angVelA
, withVec3* `Vec3'  peekVec3* -- ^ angVelB
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#123>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraint_getInfo2InternalUsingFrameOffset as btHingeConstraint_getInfo2InternalUsingFrameOffset'    `( BtHingeConstraintClass bc , BtTypedConstraint_btConstraintInfo2Class p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ info
, allocaTransform-  `Transform'  peekTransform* -- ^ transA
, allocaTransform-  `Transform'  peekTransform* -- ^ transB
, allocaVec3-  `Vec3'  peekVec3* -- ^ angVelA
, allocaVec3-  `Vec3'  peekVec3* -- ^ angVelB
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#351>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraint_serialize as btHingeConstraint_serialize    `( BtHingeConstraintClass bc , BtSerializerClass p1 )' =>     { withBt* `bc'  -- ^ 
, withVoidPtr* `VoidPtr'  -- ^ dataBuffer
, withBt* `p1'  -- ^ serializer
 } ->  `String'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#285>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraint_getUseFrameOffset as btHingeConstraint_getUseFrameOffset    `( BtHingeConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#159>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraint_setAngularOnly as btHingeConstraint_setAngularOnly    `( BtHingeConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Bool'  -- ^ angularOnly
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#293>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraint_getParam as btHingeConstraint_getParam    `( BtHingeConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ num
,  `Int'  -- ^ axis
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#180>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraint_setLimit as btHingeConstraint_setLimit    `( BtHingeConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ low
,  `Float'  -- ^ high
,  `Float'  -- ^ _softness
,  `Float'  -- ^ _biasFactor
,  `Float'  -- ^ _relaxationFactor
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#250>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraint_getSolveLimit as btHingeConstraint_getSolveLimit    `( BtHingeConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#126>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraint_updateRHS as btHingeConstraint_updateRHS    `( BtHingeConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ timeStep
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#176>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraint_setMotorTarget0 as btHingeConstraint_setMotorTarget    `( BtHingeConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
, withUnitQuaternion* `UnitQuaternion'  peekUnitQuaternion* -- ^ qAinB
,  `Float'  -- ^ dt
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#176>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraint_setMotorTarget0 as btHingeConstraint_setMotorTarget'    `( BtHingeConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaUnitQuaternion-  `UnitQuaternion'  peekUnitQuaternion* -- ^ qAinB
,  `Float'  -- ^ dt
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#176>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraint_setMotorTarget0 as btHingeConstraint_setMotorTarget0    `( BtHingeConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
, withUnitQuaternion* `UnitQuaternion'  peekUnitQuaternion* -- ^ qAinB
,  `Float'  -- ^ dt
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#176>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraint_setMotorTarget0 as btHingeConstraint_setMotorTarget0'    `( BtHingeConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaUnitQuaternion-  `UnitQuaternion'  peekUnitQuaternion* -- ^ qAinB
,  `Float'  -- ^ dt
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#177>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraint_setMotorTarget1 as btHingeConstraint_setMotorTarget1    `( BtHingeConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ targetAngle
,  `Float'  -- ^ dt
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#268>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraint_getAngularOnly as btHingeConstraint_getAngularOnly    `( BtHingeConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#157>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraint_setFrames as btHingeConstraint_setFrames    `( BtHingeConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
, withTransform* `Transform'  peekTransform* -- ^ frameA
, withTransform* `Transform'  peekTransform* -- ^ frameB
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#157>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraint_setFrames as btHingeConstraint_setFrames'    `( BtHingeConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaTransform-  `Transform'  peekTransform* -- ^ frameA
, allocaTransform-  `Transform'  peekTransform* -- ^ frameB
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#193>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraint_setAxis as btHingeConstraint_setAxis    `( BtHingeConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ axisInA
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#193>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraint_setAxis as btHingeConstraint_setAxis'    `( BtHingeConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ axisInA
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#244>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraint_getAFrame0 as btHingeConstraint_getAFrame    `( BtHingeConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaTransform-  `Transform'  peekTransform* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#244>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraint_getAFrame0 as btHingeConstraint_getAFrame0    `( BtHingeConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaTransform-  `Transform'  peekTransform* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#247>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraint_getAFrame1 as btHingeConstraint_getAFrame1    `( BtHingeConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaTransform-  `Transform'  peekTransform* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#58>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraint_m_rbAFrame_set    `( BtHingeConstraintClass bc )' =>     { withBt* `bc' , withTransform* `Transform'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#58>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraint_m_rbAFrame_get    `( BtHingeConstraintClass bc )' =>     { withBt* `bc' , allocaTransform-  `Transform'  peekTransform* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#59>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraint_m_rbBFrame_set    `( BtHingeConstraintClass bc )' =>     { withBt* `bc' , withTransform* `Transform'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#59>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraint_m_rbBFrame_get    `( BtHingeConstraintClass bc )' =>     { withBt* `bc' , allocaTransform-  `Transform'  peekTransform* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#61>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraint_m_motorTargetVelocity_set    `( BtHingeConstraintClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#61>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraint_m_motorTargetVelocity_get    `( BtHingeConstraintClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#62>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraint_m_maxMotorImpulse_set    `( BtHingeConstraintClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#62>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraint_m_maxMotorImpulse_get    `( BtHingeConstraintClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#66>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraint_m_limit_set    `( BtHingeConstraintClass bc , BtAngularLimitClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#66>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraint_m_limit_get    `( BtHingeConstraintClass bc )' =>     { withBt* `bc'  } ->  `BtAngularLimit'  mkBtAngularLimit* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#80>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraint_m_kHinge_set    `( BtHingeConstraintClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#80>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraint_m_kHinge_get    `( BtHingeConstraintClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#83>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraint_m_accLimitImpulse_set    `( BtHingeConstraintClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#83>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraint_m_accLimitImpulse_get    `( BtHingeConstraintClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#84>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraint_m_hingeAngle_set    `( BtHingeConstraintClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#84>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraint_m_hingeAngle_get    `( BtHingeConstraintClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#85>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraint_m_referenceSign_set    `( BtHingeConstraintClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#85>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraint_m_referenceSign_get    `( BtHingeConstraintClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#87>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraint_m_angularOnly_set    `( BtHingeConstraintClass bc )' =>     { withBt* `bc' ,  `Bool'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#87>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraint_m_angularOnly_get    `( BtHingeConstraintClass bc )' =>     { withBt* `bc'  } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#88>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraint_m_enableAngularMotor_set    `( BtHingeConstraintClass bc )' =>     { withBt* `bc' ,  `Bool'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#88>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraint_m_enableAngularMotor_get    `( BtHingeConstraintClass bc )' =>     { withBt* `bc'  } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#89>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraint_m_useSolveConstraintObsolete_set    `( BtHingeConstraintClass bc )' =>     { withBt* `bc' ,  `Bool'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#89>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraint_m_useSolveConstraintObsolete_get    `( BtHingeConstraintClass bc )' =>     { withBt* `bc'  } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#90>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraint_m_useOffsetForConstraintFrame_set    `( BtHingeConstraintClass bc )' =>     { withBt* `bc' ,  `Bool'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#90>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraint_m_useOffsetForConstraintFrame_get    `( BtHingeConstraintClass bc )' =>     { withBt* `bc'  } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#91>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraint_m_useReferenceFrameA_set    `( BtHingeConstraintClass bc )' =>     { withBt* `bc' ,  `Bool'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#91>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraint_m_useReferenceFrameA_get    `( BtHingeConstraintClass bc )' =>     { withBt* `bc'  } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#93>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraint_m_accMotorImpulse_set    `( BtHingeConstraintClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#93>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraint_m_accMotorImpulse_get    `( BtHingeConstraintClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#95>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraint_m_flags_set    `( BtHingeConstraintClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#95>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraint_m_flags_get    `( BtHingeConstraintClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#96>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraint_m_normalCFM_set    `( BtHingeConstraintClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#96>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraint_m_normalCFM_get    `( BtHingeConstraintClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#97>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraint_m_stopCFM_set    `( BtHingeConstraintClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#97>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraint_m_stopCFM_get    `( BtHingeConstraintClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#98>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraint_m_stopERP_set    `( BtHingeConstraintClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#98>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraint_m_stopERP_get    `( BtHingeConstraintClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
-- * btHingeConstraintDoubleData
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#305>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraintDoubleData_new as btHingeConstraintDoubleData    {  } -> `BtHingeConstraintDoubleData' mkBtHingeConstraintDoubleData* #}
{#fun btHingeConstraintDoubleData_free    `( BtHingeConstraintDoubleDataClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#306>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraintDoubleData_m_typeConstraintData_set    `( BtHingeConstraintDoubleDataClass bc , BtTypedConstraintDataClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#306>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraintDoubleData_m_typeConstraintData_get    `( BtHingeConstraintDoubleDataClass bc )' =>     { withBt* `bc'  } ->  `BtTypedConstraintData'  mkBtTypedConstraintData* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#307>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraintDoubleData_m_rbAFrame_set    `( BtHingeConstraintDoubleDataClass bc , BtTransformDoubleDataClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#307>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraintDoubleData_m_rbAFrame_get    `( BtHingeConstraintDoubleDataClass bc )' =>     { withBt* `bc'  } ->  `BtTransformDoubleData'  mkBtTransformDoubleData* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#308>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraintDoubleData_m_rbBFrame_set    `( BtHingeConstraintDoubleDataClass bc , BtTransformDoubleDataClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#308>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraintDoubleData_m_rbBFrame_get    `( BtHingeConstraintDoubleDataClass bc )' =>     { withBt* `bc'  } ->  `BtTransformDoubleData'  mkBtTransformDoubleData* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#309>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraintDoubleData_m_useReferenceFrameA_set    `( BtHingeConstraintDoubleDataClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#309>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraintDoubleData_m_useReferenceFrameA_get    `( BtHingeConstraintDoubleDataClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#310>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraintDoubleData_m_angularOnly_set    `( BtHingeConstraintDoubleDataClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#310>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraintDoubleData_m_angularOnly_get    `( BtHingeConstraintDoubleDataClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#311>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraintDoubleData_m_enableAngularMotor_set    `( BtHingeConstraintDoubleDataClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#311>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraintDoubleData_m_enableAngularMotor_get    `( BtHingeConstraintDoubleDataClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#312>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraintDoubleData_m_motorTargetVelocity_set    `( BtHingeConstraintDoubleDataClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#312>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraintDoubleData_m_motorTargetVelocity_get    `( BtHingeConstraintDoubleDataClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#313>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraintDoubleData_m_maxMotorImpulse_set    `( BtHingeConstraintDoubleDataClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#313>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraintDoubleData_m_maxMotorImpulse_get    `( BtHingeConstraintDoubleDataClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#315>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraintDoubleData_m_lowerLimit_set    `( BtHingeConstraintDoubleDataClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#315>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraintDoubleData_m_lowerLimit_get    `( BtHingeConstraintDoubleDataClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#316>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraintDoubleData_m_upperLimit_set    `( BtHingeConstraintDoubleDataClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#316>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraintDoubleData_m_upperLimit_get    `( BtHingeConstraintDoubleDataClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#317>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraintDoubleData_m_limitSoftness_set    `( BtHingeConstraintDoubleDataClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#317>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraintDoubleData_m_limitSoftness_get    `( BtHingeConstraintDoubleDataClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#318>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraintDoubleData_m_biasFactor_set    `( BtHingeConstraintDoubleDataClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#318>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraintDoubleData_m_biasFactor_get    `( BtHingeConstraintDoubleDataClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#319>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraintDoubleData_m_relaxationFactor_set    `( BtHingeConstraintDoubleDataClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#319>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraintDoubleData_m_relaxationFactor_get    `( BtHingeConstraintDoubleDataClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
-- * btHingeConstraintFloatData
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#324>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraintFloatData_new as btHingeConstraintFloatData    {  } -> `BtHingeConstraintFloatData' mkBtHingeConstraintFloatData* #}
{#fun btHingeConstraintFloatData_free    `( BtHingeConstraintFloatDataClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#325>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraintFloatData_m_typeConstraintData_set    `( BtHingeConstraintFloatDataClass bc , BtTypedConstraintDataClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#325>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraintFloatData_m_typeConstraintData_get    `( BtHingeConstraintFloatDataClass bc )' =>     { withBt* `bc'  } ->  `BtTypedConstraintData'  mkBtTypedConstraintData* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#326>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraintFloatData_m_rbAFrame_set    `( BtHingeConstraintFloatDataClass bc , BtTransformFloatDataClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#326>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraintFloatData_m_rbAFrame_get    `( BtHingeConstraintFloatDataClass bc )' =>     { withBt* `bc'  } ->  `BtTransformFloatData'  mkBtTransformFloatData* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#327>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraintFloatData_m_rbBFrame_set    `( BtHingeConstraintFloatDataClass bc , BtTransformFloatDataClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#327>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraintFloatData_m_rbBFrame_get    `( BtHingeConstraintFloatDataClass bc )' =>     { withBt* `bc'  } ->  `BtTransformFloatData'  mkBtTransformFloatData* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#328>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraintFloatData_m_useReferenceFrameA_set    `( BtHingeConstraintFloatDataClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#328>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraintFloatData_m_useReferenceFrameA_get    `( BtHingeConstraintFloatDataClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#329>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraintFloatData_m_angularOnly_set    `( BtHingeConstraintFloatDataClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#329>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraintFloatData_m_angularOnly_get    `( BtHingeConstraintFloatDataClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#331>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraintFloatData_m_enableAngularMotor_set    `( BtHingeConstraintFloatDataClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#331>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraintFloatData_m_enableAngularMotor_get    `( BtHingeConstraintFloatDataClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#332>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraintFloatData_m_motorTargetVelocity_set    `( BtHingeConstraintFloatDataClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#332>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraintFloatData_m_motorTargetVelocity_get    `( BtHingeConstraintFloatDataClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#333>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraintFloatData_m_maxMotorImpulse_set    `( BtHingeConstraintFloatDataClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#333>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraintFloatData_m_maxMotorImpulse_get    `( BtHingeConstraintFloatDataClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#335>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraintFloatData_m_lowerLimit_set    `( BtHingeConstraintFloatDataClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#335>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraintFloatData_m_lowerLimit_get    `( BtHingeConstraintFloatDataClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#336>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraintFloatData_m_upperLimit_set    `( BtHingeConstraintFloatDataClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#336>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraintFloatData_m_upperLimit_get    `( BtHingeConstraintFloatDataClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#337>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraintFloatData_m_limitSoftness_set    `( BtHingeConstraintFloatDataClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#337>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraintFloatData_m_limitSoftness_get    `( BtHingeConstraintFloatDataClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#338>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraintFloatData_m_biasFactor_set    `( BtHingeConstraintFloatDataClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#338>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraintFloatData_m_biasFactor_get    `( BtHingeConstraintFloatDataClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#339>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraintFloatData_m_relaxationFactor_set    `( BtHingeConstraintFloatDataClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.h?r=2223#339>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp?r=2223>
-}
{#fun btHingeConstraintFloatData_m_relaxationFactor_get    `( BtHingeConstraintFloatDataClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
-- * btJacobianEntry
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btJacobianEntry.h?r=2223#34>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btJacobianEntry.cpp?r=2223>
-}
{#fun btJacobianEntry_new0 as btJacobianEntry0    {  } -> `BtJacobianEntry' mkBtJacobianEntry* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btJacobianEntry.h?r=2223#61>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btJacobianEntry.cpp?r=2223>
-}
{#fun btJacobianEntry_new2 as btJacobianEntry2    {  withVec3* `Vec3' , withMat3* `Mat3' , withMat3* `Mat3' , withVec3* `Vec3' , withVec3* `Vec3'  } -> `BtJacobianEntry' mkBtJacobianEntry* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btJacobianEntry.h?r=2223#77>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btJacobianEntry.cpp?r=2223>
-}
{#fun btJacobianEntry_new3 as btJacobianEntry3    {  withVec3* `Vec3' , withVec3* `Vec3' , withVec3* `Vec3' , withVec3* `Vec3'  } -> `BtJacobianEntry' mkBtJacobianEntry* #}
{#fun btJacobianEntry_free    `( BtJacobianEntryClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btJacobianEntry.h?r=2223#107>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btJacobianEntry.cpp?r=2223>
-}
{#fun btJacobianEntry_getDiagonal as btJacobianEntry_getDiagonal    `( BtJacobianEntryClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btJacobianEntry.h?r=2223#133>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btJacobianEntry.cpp?r=2223>
-}
{#fun btJacobianEntry_getRelativeVelocity as btJacobianEntry_getRelativeVelocity    `( BtJacobianEntryClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ linvelA
, withVec3* `Vec3'  peekVec3* -- ^ angvelA
, withVec3* `Vec3'  peekVec3* -- ^ linvelB
, withVec3* `Vec3'  peekVec3* -- ^ angvelB
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btJacobianEntry.h?r=2223#133>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btJacobianEntry.cpp?r=2223>
-}
{#fun btJacobianEntry_getRelativeVelocity as btJacobianEntry_getRelativeVelocity'    `( BtJacobianEntryClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ linvelA
, allocaVec3-  `Vec3'  peekVec3* -- ^ angvelA
, allocaVec3-  `Vec3'  peekVec3* -- ^ linvelB
, allocaVec3-  `Vec3'  peekVec3* -- ^ angvelB
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btJacobianEntry.h?r=2223#149>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btJacobianEntry.cpp?r=2223>
-}
{#fun btJacobianEntry_m_0MinvJt_set    `( BtJacobianEntryClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btJacobianEntry.h?r=2223#149>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btJacobianEntry.cpp?r=2223>
-}
{#fun btJacobianEntry_m_0MinvJt_get    `( BtJacobianEntryClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btJacobianEntry.h?r=2223#150>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btJacobianEntry.cpp?r=2223>
-}
{#fun btJacobianEntry_m_1MinvJt_set    `( BtJacobianEntryClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btJacobianEntry.h?r=2223#150>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btJacobianEntry.cpp?r=2223>
-}
{#fun btJacobianEntry_m_1MinvJt_get    `( BtJacobianEntryClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btJacobianEntry.h?r=2223#152>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btJacobianEntry.cpp?r=2223>
-}
{#fun btJacobianEntry_m_Adiag_set    `( BtJacobianEntryClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btJacobianEntry.h?r=2223#152>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btJacobianEntry.cpp?r=2223>
-}
{#fun btJacobianEntry_m_Adiag_get    `( BtJacobianEntryClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btJacobianEntry.h?r=2223#147>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btJacobianEntry.cpp?r=2223>
-}
{#fun btJacobianEntry_m_aJ_set    `( BtJacobianEntryClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btJacobianEntry.h?r=2223#147>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btJacobianEntry.cpp?r=2223>
-}
{#fun btJacobianEntry_m_aJ_get    `( BtJacobianEntryClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btJacobianEntry.h?r=2223#148>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btJacobianEntry.cpp?r=2223>
-}
{#fun btJacobianEntry_m_bJ_set    `( BtJacobianEntryClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btJacobianEntry.h?r=2223#148>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btJacobianEntry.cpp?r=2223>
-}
{#fun btJacobianEntry_m_bJ_get    `( BtJacobianEntryClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btJacobianEntry.h?r=2223#146>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btJacobianEntry.cpp?r=2223>
-}
{#fun btJacobianEntry_m_linearJointAxis_set    `( BtJacobianEntryClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btJacobianEntry.h?r=2223#146>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btJacobianEntry.cpp?r=2223>
-}
{#fun btJacobianEntry_m_linearJointAxis_get    `( BtJacobianEntryClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
-- * btPoint2PointConstraint
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btPoint2PointConstraint.h?r=2223#75>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btPoint2PointConstraint.cpp?r=2223>
-}
{#fun btPoint2PointConstraint_new0 as btPoint2PointConstraint0    `( BtRigidBodyClass p0 , BtRigidBodyClass p1 )' =>     {  withBt* `p0' , withBt* `p1' , withVec3* `Vec3' , withVec3* `Vec3'  } -> `BtPoint2PointConstraint' mkBtPoint2PointConstraint* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btPoint2PointConstraint.h?r=2223#77>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btPoint2PointConstraint.cpp?r=2223>
-}
{#fun btPoint2PointConstraint_new1 as btPoint2PointConstraint1    `( BtRigidBodyClass p0 )' =>     {  withBt* `p0' , withVec3* `Vec3'  } -> `BtPoint2PointConstraint' mkBtPoint2PointConstraint* #}
{#fun btPoint2PointConstraint_free    `( BtPoint2PointConstraintClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btPoint2PointConstraint.h?r=2223#84>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btPoint2PointConstraint.cpp?r=2223>
-}
{#fun btPoint2PointConstraint_getInfo1NonVirtual as btPoint2PointConstraint_getInfo1NonVirtual    `( BtPoint2PointConstraintClass bc , BtTypedConstraint_btConstraintInfo1Class p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ info
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btPoint2PointConstraint.h?r=2223#88>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btPoint2PointConstraint.cpp?r=2223>
-}
{#fun btPoint2PointConstraint_getInfo2NonVirtual as btPoint2PointConstraint_getInfo2NonVirtual    `( BtPoint2PointConstraintClass bc , BtTypedConstraint_btConstraintInfo2Class p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ info
, withTransform* `Transform'  peekTransform* -- ^ body0_trans
, withTransform* `Transform'  peekTransform* -- ^ body1_trans
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btPoint2PointConstraint.h?r=2223#88>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btPoint2PointConstraint.cpp?r=2223>
-}
{#fun btPoint2PointConstraint_getInfo2NonVirtual as btPoint2PointConstraint_getInfo2NonVirtual'    `( BtPoint2PointConstraintClass bc , BtTypedConstraint_btConstraintInfo2Class p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ info
, allocaTransform-  `Transform'  peekTransform* -- ^ body0_trans
, allocaTransform-  `Transform'  peekTransform* -- ^ body1_trans
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btPoint2PointConstraint.h?r=2223#114>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btPoint2PointConstraint.cpp?r=2223>
-}
{#fun btPoint2PointConstraint_setParam as btPoint2PointConstraint_setParam    `( BtPoint2PointConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ num
,  `Float'  -- ^ value
,  `Int'  -- ^ axis
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btPoint2PointConstraint.h?r=2223#102>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btPoint2PointConstraint.cpp?r=2223>
-}
{#fun btPoint2PointConstraint_getPivotInA as btPoint2PointConstraint_getPivotInA    `( BtPoint2PointConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btPoint2PointConstraint.h?r=2223#107>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btPoint2PointConstraint.cpp?r=2223>
-}
{#fun btPoint2PointConstraint_getPivotInB as btPoint2PointConstraint_getPivotInB    `( BtPoint2PointConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btPoint2PointConstraint.h?r=2223#90>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btPoint2PointConstraint.cpp?r=2223>
-}
{#fun btPoint2PointConstraint_updateRHS as btPoint2PointConstraint_updateRHS    `( BtPoint2PointConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ timeStep
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btPoint2PointConstraint.h?r=2223#150>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btPoint2PointConstraint.cpp?r=2223>
-}
{#fun btPoint2PointConstraint_serialize as btPoint2PointConstraint_serialize    `( BtPoint2PointConstraintClass bc , BtSerializerClass p1 )' =>     { withBt* `bc'  -- ^ 
, withVoidPtr* `VoidPtr'  -- ^ dataBuffer
, withBt* `p1'  -- ^ serializer
 } ->  `String'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btPoint2PointConstraint.h?r=2223#80>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btPoint2PointConstraint.cpp?r=2223>
-}
{#fun btPoint2PointConstraint_buildJacobian as btPoint2PointConstraint_buildJacobian    `( BtPoint2PointConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btPoint2PointConstraint.h?r=2223#143>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btPoint2PointConstraint.cpp?r=2223>
-}
{#fun btPoint2PointConstraint_calculateSerializeBufferSize as btPoint2PointConstraint_calculateSerializeBufferSize    `( BtPoint2PointConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btPoint2PointConstraint.h?r=2223#116>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btPoint2PointConstraint.cpp?r=2223>
-}
{#fun btPoint2PointConstraint_getParam as btPoint2PointConstraint_getParam    `( BtPoint2PointConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ num
,  `Int'  -- ^ axis
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btPoint2PointConstraint.h?r=2223#82>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btPoint2PointConstraint.cpp?r=2223>
-}
{#fun btPoint2PointConstraint_getInfo1 as btPoint2PointConstraint_getInfo1    `( BtPoint2PointConstraintClass bc , BtTypedConstraint_btConstraintInfo1Class p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ info
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btPoint2PointConstraint.h?r=2223#86>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btPoint2PointConstraint.cpp?r=2223>
-}
{#fun btPoint2PointConstraint_getInfo2 as btPoint2PointConstraint_getInfo2    `( BtPoint2PointConstraintClass bc , BtTypedConstraint_btConstraintInfo2Class p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ info
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btPoint2PointConstraint.h?r=2223#92>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btPoint2PointConstraint.cpp?r=2223>
-}
{#fun btPoint2PointConstraint_setPivotA as btPoint2PointConstraint_setPivotA    `( BtPoint2PointConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ pivotA
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btPoint2PointConstraint.h?r=2223#92>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btPoint2PointConstraint.cpp?r=2223>
-}
{#fun btPoint2PointConstraint_setPivotA as btPoint2PointConstraint_setPivotA'    `( BtPoint2PointConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ pivotA
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btPoint2PointConstraint.h?r=2223#97>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btPoint2PointConstraint.cpp?r=2223>
-}
{#fun btPoint2PointConstraint_setPivotB as btPoint2PointConstraint_setPivotB    `( BtPoint2PointConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ pivotB
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btPoint2PointConstraint.h?r=2223#97>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btPoint2PointConstraint.cpp?r=2223>
-}
{#fun btPoint2PointConstraint_setPivotB as btPoint2PointConstraint_setPivotB'    `( BtPoint2PointConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ pivotB
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btPoint2PointConstraint.h?r=2223#61>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btPoint2PointConstraint.cpp?r=2223>
-}
{#fun btPoint2PointConstraint_m_pivotInA_set    `( BtPoint2PointConstraintClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btPoint2PointConstraint.h?r=2223#61>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btPoint2PointConstraint.cpp?r=2223>
-}
{#fun btPoint2PointConstraint_m_pivotInA_get    `( BtPoint2PointConstraintClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btPoint2PointConstraint.h?r=2223#62>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btPoint2PointConstraint.cpp?r=2223>
-}
{#fun btPoint2PointConstraint_m_pivotInB_set    `( BtPoint2PointConstraintClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btPoint2PointConstraint.h?r=2223#62>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btPoint2PointConstraint.cpp?r=2223>
-}
{#fun btPoint2PointConstraint_m_pivotInB_get    `( BtPoint2PointConstraintClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btPoint2PointConstraint.h?r=2223#64>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btPoint2PointConstraint.cpp?r=2223>
-}
{#fun btPoint2PointConstraint_m_flags_set    `( BtPoint2PointConstraintClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btPoint2PointConstraint.h?r=2223#64>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btPoint2PointConstraint.cpp?r=2223>
-}
{#fun btPoint2PointConstraint_m_flags_get    `( BtPoint2PointConstraintClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btPoint2PointConstraint.h?r=2223#65>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btPoint2PointConstraint.cpp?r=2223>
-}
{#fun btPoint2PointConstraint_m_erp_set    `( BtPoint2PointConstraintClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btPoint2PointConstraint.h?r=2223#65>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btPoint2PointConstraint.cpp?r=2223>
-}
{#fun btPoint2PointConstraint_m_erp_get    `( BtPoint2PointConstraintClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btPoint2PointConstraint.h?r=2223#66>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btPoint2PointConstraint.cpp?r=2223>
-}
{#fun btPoint2PointConstraint_m_cfm_set    `( BtPoint2PointConstraintClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btPoint2PointConstraint.h?r=2223#66>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btPoint2PointConstraint.cpp?r=2223>
-}
{#fun btPoint2PointConstraint_m_cfm_get    `( BtPoint2PointConstraintClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btPoint2PointConstraint.h?r=2223#71>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btPoint2PointConstraint.cpp?r=2223>
-}
{#fun btPoint2PointConstraint_m_useSolveConstraintObsolete_set    `( BtPoint2PointConstraintClass bc )' =>     { withBt* `bc' ,  `Bool'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btPoint2PointConstraint.h?r=2223#71>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btPoint2PointConstraint.cpp?r=2223>
-}
{#fun btPoint2PointConstraint_m_useSolveConstraintObsolete_get    `( BtPoint2PointConstraintClass bc )' =>     { withBt* `bc'  } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btPoint2PointConstraint.h?r=2223#73>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btPoint2PointConstraint.cpp?r=2223>
-}
{#fun btPoint2PointConstraint_m_setting_set    `( BtPoint2PointConstraintClass bc , BtConstraintSettingClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btPoint2PointConstraint.h?r=2223#73>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btPoint2PointConstraint.cpp?r=2223>
-}
{#fun btPoint2PointConstraint_m_setting_get    `( BtPoint2PointConstraintClass bc )' =>     { withBt* `bc'  } ->  `BtConstraintSetting'  mkBtConstraintSetting* #}
-- * btPoint2PointConstraintDoubleData
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btPoint2PointConstraint.h?r=2223#136>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btPoint2PointConstraint.cpp?r=2223>
-}
{#fun btPoint2PointConstraintDoubleData_new as btPoint2PointConstraintDoubleData    {  } -> `BtPoint2PointConstraintDoubleData' mkBtPoint2PointConstraintDoubleData* #}
{#fun btPoint2PointConstraintDoubleData_free    `( BtPoint2PointConstraintDoubleDataClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btPoint2PointConstraint.h?r=2223#137>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btPoint2PointConstraint.cpp?r=2223>
-}
{#fun btPoint2PointConstraintDoubleData_m_typeConstraintData_set    `( BtPoint2PointConstraintDoubleDataClass bc , BtTypedConstraintDataClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btPoint2PointConstraint.h?r=2223#137>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btPoint2PointConstraint.cpp?r=2223>
-}
{#fun btPoint2PointConstraintDoubleData_m_typeConstraintData_get    `( BtPoint2PointConstraintDoubleDataClass bc )' =>     { withBt* `bc'  } ->  `BtTypedConstraintData'  mkBtTypedConstraintData* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btPoint2PointConstraint.h?r=2223#138>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btPoint2PointConstraint.cpp?r=2223>
-}
{#fun btPoint2PointConstraintDoubleData_m_pivotInA_set    `( BtPoint2PointConstraintDoubleDataClass bc , BtVector3DoubleDataClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btPoint2PointConstraint.h?r=2223#138>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btPoint2PointConstraint.cpp?r=2223>
-}
{#fun btPoint2PointConstraintDoubleData_m_pivotInA_get    `( BtPoint2PointConstraintDoubleDataClass bc )' =>     { withBt* `bc'  } ->  `BtVector3DoubleData'  mkBtVector3DoubleData* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btPoint2PointConstraint.h?r=2223#139>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btPoint2PointConstraint.cpp?r=2223>
-}
{#fun btPoint2PointConstraintDoubleData_m_pivotInB_set    `( BtPoint2PointConstraintDoubleDataClass bc , BtVector3DoubleDataClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btPoint2PointConstraint.h?r=2223#139>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btPoint2PointConstraint.cpp?r=2223>
-}
{#fun btPoint2PointConstraintDoubleData_m_pivotInB_get    `( BtPoint2PointConstraintDoubleDataClass bc )' =>     { withBt* `bc'  } ->  `BtVector3DoubleData'  mkBtVector3DoubleData* #}
-- * btPoint2PointConstraintFloatData
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btPoint2PointConstraint.h?r=2223#128>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btPoint2PointConstraint.cpp?r=2223>
-}
{#fun btPoint2PointConstraintFloatData_new as btPoint2PointConstraintFloatData    {  } -> `BtPoint2PointConstraintFloatData' mkBtPoint2PointConstraintFloatData* #}
{#fun btPoint2PointConstraintFloatData_free    `( BtPoint2PointConstraintFloatDataClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btPoint2PointConstraint.h?r=2223#129>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btPoint2PointConstraint.cpp?r=2223>
-}
{#fun btPoint2PointConstraintFloatData_m_typeConstraintData_set    `( BtPoint2PointConstraintFloatDataClass bc , BtTypedConstraintDataClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btPoint2PointConstraint.h?r=2223#129>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btPoint2PointConstraint.cpp?r=2223>
-}
{#fun btPoint2PointConstraintFloatData_m_typeConstraintData_get    `( BtPoint2PointConstraintFloatDataClass bc )' =>     { withBt* `bc'  } ->  `BtTypedConstraintData'  mkBtTypedConstraintData* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btPoint2PointConstraint.h?r=2223#130>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btPoint2PointConstraint.cpp?r=2223>
-}
{#fun btPoint2PointConstraintFloatData_m_pivotInA_set    `( BtPoint2PointConstraintFloatDataClass bc , BtVector3FloatDataClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btPoint2PointConstraint.h?r=2223#130>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btPoint2PointConstraint.cpp?r=2223>
-}
{#fun btPoint2PointConstraintFloatData_m_pivotInA_get    `( BtPoint2PointConstraintFloatDataClass bc )' =>     { withBt* `bc'  } ->  `BtVector3FloatData'  mkBtVector3FloatData* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btPoint2PointConstraint.h?r=2223#131>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btPoint2PointConstraint.cpp?r=2223>
-}
{#fun btPoint2PointConstraintFloatData_m_pivotInB_set    `( BtPoint2PointConstraintFloatDataClass bc , BtVector3FloatDataClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btPoint2PointConstraint.h?r=2223#131>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btPoint2PointConstraint.cpp?r=2223>
-}
{#fun btPoint2PointConstraintFloatData_m_pivotInB_get    `( BtPoint2PointConstraintFloatDataClass bc )' =>     { withBt* `bc'  } ->  `BtVector3FloatData'  mkBtVector3FloatData* #}
-- * btRotationalLimitMotor
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#68>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btRotationalLimitMotor_new as btRotationalLimitMotor    {  } -> `BtRotationalLimitMotor' mkBtRotationalLimitMotor* #}
{#fun btRotationalLimitMotor_free    `( BtRotationalLimitMotorClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#123>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btRotationalLimitMotor_testLimitValue as btRotationalLimitMotor_testLimitValue    `( BtRotationalLimitMotorClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ test_value
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#126>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btRotationalLimitMotor_solveAngularLimits as btRotationalLimitMotor_solveAngularLimits    `( BtRotationalLimitMotorClass bc , BtRigidBodyClass p3 , BtRigidBodyClass p4 )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ timeStep
, withVec3* `Vec3'  peekVec3* -- ^ axis
,  `Float'  -- ^ jacDiagABInv
, withBt* `p3'  -- ^ body0
, withBt* `p4'  -- ^ body1
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#126>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btRotationalLimitMotor_solveAngularLimits as btRotationalLimitMotor_solveAngularLimits'    `( BtRotationalLimitMotorClass bc , BtRigidBodyClass p3 , BtRigidBodyClass p4 )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ timeStep
, allocaVec3-  `Vec3'  peekVec3* -- ^ axis
,  `Float'  -- ^ jacDiagABInv
, withBt* `p3'  -- ^ body0
, withBt* `p4'  -- ^ body1
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#113>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btRotationalLimitMotor_needApplyTorques as btRotationalLimitMotor_needApplyTorques    `( BtRotationalLimitMotorClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#106>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btRotationalLimitMotor_isLimited as btRotationalLimitMotor_isLimited    `( BtRotationalLimitMotorClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#65>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btRotationalLimitMotor_m_accumulatedImpulse_set    `( BtRotationalLimitMotorClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#65>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btRotationalLimitMotor_m_accumulatedImpulse_get    `( BtRotationalLimitMotorClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#55>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btRotationalLimitMotor_m_bounce_set    `( BtRotationalLimitMotorClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#55>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btRotationalLimitMotor_m_bounce_get    `( BtRotationalLimitMotorClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#64>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btRotationalLimitMotor_m_currentLimit_set    `( BtRotationalLimitMotorClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#64>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btRotationalLimitMotor_m_currentLimit_get    `( BtRotationalLimitMotorClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#62>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btRotationalLimitMotor_m_currentLimitError_set    `( BtRotationalLimitMotorClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#62>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btRotationalLimitMotor_m_currentLimitError_get    `( BtRotationalLimitMotorClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#63>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btRotationalLimitMotor_m_currentPosition_set    `( BtRotationalLimitMotorClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#63>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btRotationalLimitMotor_m_currentPosition_get    `( BtRotationalLimitMotorClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#50>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btRotationalLimitMotor_m_damping_set    `( BtRotationalLimitMotorClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#50>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btRotationalLimitMotor_m_damping_get    `( BtRotationalLimitMotorClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#56>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btRotationalLimitMotor_m_enableMotor_set    `( BtRotationalLimitMotorClass bc )' =>     { withBt* `bc' ,  `Bool'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#56>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btRotationalLimitMotor_m_enableMotor_get    `( BtRotationalLimitMotorClass bc )' =>     { withBt* `bc'  } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#46>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btRotationalLimitMotor_m_hiLimit_set    `( BtRotationalLimitMotorClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#46>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btRotationalLimitMotor_m_hiLimit_get    `( BtRotationalLimitMotorClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#51>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btRotationalLimitMotor_m_limitSoftness_set    `( BtRotationalLimitMotorClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#51>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btRotationalLimitMotor_m_limitSoftness_get    `( BtRotationalLimitMotorClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#45>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btRotationalLimitMotor_m_loLimit_set    `( BtRotationalLimitMotorClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#45>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btRotationalLimitMotor_m_loLimit_get    `( BtRotationalLimitMotorClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#49>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btRotationalLimitMotor_m_maxLimitForce_set    `( BtRotationalLimitMotorClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#49>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btRotationalLimitMotor_m_maxLimitForce_get    `( BtRotationalLimitMotorClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#48>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btRotationalLimitMotor_m_maxMotorForce_set    `( BtRotationalLimitMotorClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#48>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btRotationalLimitMotor_m_maxMotorForce_get    `( BtRotationalLimitMotorClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#52>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btRotationalLimitMotor_m_normalCFM_set    `( BtRotationalLimitMotorClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#52>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btRotationalLimitMotor_m_normalCFM_get    `( BtRotationalLimitMotorClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#54>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btRotationalLimitMotor_m_stopCFM_set    `( BtRotationalLimitMotorClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#54>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btRotationalLimitMotor_m_stopCFM_get    `( BtRotationalLimitMotorClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#53>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btRotationalLimitMotor_m_stopERP_set    `( BtRotationalLimitMotorClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#53>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btRotationalLimitMotor_m_stopERP_get    `( BtRotationalLimitMotorClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#47>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btRotationalLimitMotor_m_targetVelocity_set    `( BtRotationalLimitMotorClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#47>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btRotationalLimitMotor_m_targetVelocity_get    `( BtRotationalLimitMotorClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
-- * btSequentialImpulseConstraintSolver
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSequentialImpulseConstraintSolver.h?r=2223#97>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSequentialImpulseConstraintSolver.cpp?r=2223>
-}
{#fun btSequentialImpulseConstraintSolver_new as btSequentialImpulseConstraintSolver    {  } -> `BtSequentialImpulseConstraintSolver' mkBtSequentialImpulseConstraintSolver* #}
{#fun btSequentialImpulseConstraintSolver_free    `( BtSequentialImpulseConstraintSolverClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSequentialImpulseConstraintSolver.h?r=2223#59>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSequentialImpulseConstraintSolver.cpp?r=2223>
-}
{#fun btSequentialImpulseConstraintSolver_convertContact as btSequentialImpulseConstraintSolver_convertContact    `( BtSequentialImpulseConstraintSolverClass bc , BtPersistentManifoldClass p0 , BtContactSolverInfoClass p1 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ manifold
, withBt* `p1'  -- ^ infoGlobal
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSequentialImpulseConstraintSolver.h?r=2223#111>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSequentialImpulseConstraintSolver.cpp?r=2223>
-}
{#fun btSequentialImpulseConstraintSolver_setRandSeed as btSequentialImpulseConstraintSolver_setRandSeed    `( BtSequentialImpulseConstraintSolverClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Word64'  -- ^ seed
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSequentialImpulseConstraintSolver.h?r=2223#84>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSequentialImpulseConstraintSolver.cpp?r=2223>
-}
{#fun btSequentialImpulseConstraintSolver_getFixedBody as btSequentialImpulseConstraintSolver_getFixedBody    `( )' =>     {  } ->  `BtRigidBody'  mkBtRigidBody* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSequentialImpulseConstraintSolver.h?r=2223#81>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSequentialImpulseConstraintSolver.cpp?r=2223>
-}
{#fun btSequentialImpulseConstraintSolver_resolveSingleConstraintRowLowerLimitSIMD as btSequentialImpulseConstraintSolver_resolveSingleConstraintRowLowerLimitSIMD    `( BtSequentialImpulseConstraintSolverClass bc , BtRigidBodyClass p0 , BtRigidBodyClass p1 , BtSolverConstraintClass p2 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ body1
, withBt* `p1'  -- ^ body2
, withBt* `p2'  -- ^ contactConstraint
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSequentialImpulseConstraintSolver.h?r=2223#107>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSequentialImpulseConstraintSolver.cpp?r=2223>
-}
{#fun btSequentialImpulseConstraintSolver_btRand2 as btSequentialImpulseConstraintSolver_btRand2    `( BtSequentialImpulseConstraintSolverClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Word64'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSequentialImpulseConstraintSolver.h?r=2223#51>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSequentialImpulseConstraintSolver.cpp?r=2223>
-}
{#fun btSequentialImpulseConstraintSolver_setFrictionConstraintImpulse as btSequentialImpulseConstraintSolver_setFrictionConstraintImpulse    `( BtSequentialImpulseConstraintSolverClass bc , BtSolverConstraintClass p0 , BtRigidBodyClass p1 , BtRigidBodyClass p2 , BtManifoldPointClass p3 , BtContactSolverInfoClass p4 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ solverConstraint
, withBt* `p1'  -- ^ rb0
, withBt* `p2'  -- ^ rb1
, withBt* `p3'  -- ^ cp
, withBt* `p4'  -- ^ infoGlobal
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSequentialImpulseConstraintSolver.h?r=2223#73>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSequentialImpulseConstraintSolver.cpp?r=2223>
-}
{#fun btSequentialImpulseConstraintSolver_getOrInitSolverBody as btSequentialImpulseConstraintSolver_getOrInitSolverBody    `( BtSequentialImpulseConstraintSolverClass bc , BtCollisionObjectClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ body
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSequentialImpulseConstraintSolver.h?r=2223#77>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSequentialImpulseConstraintSolver.cpp?r=2223>
-}
{#fun btSequentialImpulseConstraintSolver_resolveSingleConstraintRowGenericSIMD as btSequentialImpulseConstraintSolver_resolveSingleConstraintRowGenericSIMD    `( BtSequentialImpulseConstraintSolverClass bc , BtRigidBodyClass p0 , BtRigidBodyClass p1 , BtSolverConstraintClass p2 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ body1
, withBt* `p1'  -- ^ body2
, withBt* `p2'  -- ^ contactConstraint
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSequentialImpulseConstraintSolver.h?r=2223#109>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSequentialImpulseConstraintSolver.cpp?r=2223>
-}
{#fun btSequentialImpulseConstraintSolver_btRandInt2 as btSequentialImpulseConstraintSolver_btRandInt2    `( BtSequentialImpulseConstraintSolverClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ n
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSequentialImpulseConstraintSolver.h?r=2223#79>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSequentialImpulseConstraintSolver.cpp?r=2223>
-}
{#fun btSequentialImpulseConstraintSolver_resolveSingleConstraintRowLowerLimit as btSequentialImpulseConstraintSolver_resolveSingleConstraintRowLowerLimit    `( BtSequentialImpulseConstraintSolverClass bc , BtRigidBodyClass p0 , BtRigidBodyClass p1 , BtSolverConstraintClass p2 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ body1
, withBt* `p1'  -- ^ body2
, withBt* `p2'  -- ^ contactConstraint
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSequentialImpulseConstraintSolver.h?r=2223#105>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSequentialImpulseConstraintSolver.cpp?r=2223>
-}
{#fun btSequentialImpulseConstraintSolver_reset as btSequentialImpulseConstraintSolver_reset    `( BtSequentialImpulseConstraintSolverClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSequentialImpulseConstraintSolver.h?r=2223#70>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSequentialImpulseConstraintSolver.cpp?r=2223>
-}
{#fun btSequentialImpulseConstraintSolver_resolveSplitPenetrationImpulseCacheFriendly as btSequentialImpulseConstraintSolver_resolveSplitPenetrationImpulseCacheFriendly    `( BtSequentialImpulseConstraintSolverClass bc , BtRigidBodyClass p0 , BtRigidBodyClass p1 , BtSolverConstraintClass p2 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ body1
, withBt* `p1'  -- ^ body2
, withBt* `p2'  -- ^ contactConstraint
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSequentialImpulseConstraintSolver.h?r=2223#42>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSequentialImpulseConstraintSolver.cpp?r=2223>
-}
{#fun btSequentialImpulseConstraintSolver_setupFrictionConstraint as btSequentialImpulseConstraintSolver_setupFrictionConstraint    `( BtSequentialImpulseConstraintSolverClass bc , BtSolverConstraintClass p0 , BtRigidBodyClass p2 , BtRigidBodyClass p3 , BtManifoldPointClass p4 , BtCollisionObjectClass p7 , BtCollisionObjectClass p8 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ solverConstraint
, withVec3* `Vec3'  peekVec3* -- ^ normalAxis
, withBt* `p2'  -- ^ solverBodyA
, withBt* `p3'  -- ^ solverBodyIdB
, withBt* `p4'  -- ^ cp
, withVec3* `Vec3'  peekVec3* -- ^ rel_pos1
, withVec3* `Vec3'  peekVec3* -- ^ rel_pos2
, withBt* `p7'  -- ^ colObj0
, withBt* `p8'  -- ^ colObj1
,  `Float'  -- ^ relaxation
,  `Float'  -- ^ desiredVelocity
,  `Float'  -- ^ cfmSlip
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSequentialImpulseConstraintSolver.h?r=2223#42>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSequentialImpulseConstraintSolver.cpp?r=2223>
-}
{#fun btSequentialImpulseConstraintSolver_setupFrictionConstraint as btSequentialImpulseConstraintSolver_setupFrictionConstraint'    `( BtSequentialImpulseConstraintSolverClass bc , BtSolverConstraintClass p0 , BtRigidBodyClass p2 , BtRigidBodyClass p3 , BtManifoldPointClass p4 , BtCollisionObjectClass p7 , BtCollisionObjectClass p8 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ solverConstraint
, allocaVec3-  `Vec3'  peekVec3* -- ^ normalAxis
, withBt* `p2'  -- ^ solverBodyA
, withBt* `p3'  -- ^ solverBodyIdB
, withBt* `p4'  -- ^ cp
, allocaVec3-  `Vec3'  peekVec3* -- ^ rel_pos1
, allocaVec3-  `Vec3'  peekVec3* -- ^ rel_pos2
, withBt* `p7'  -- ^ colObj0
, withBt* `p8'  -- ^ colObj1
,  `Float'  -- ^ relaxation
,  `Float'  -- ^ desiredVelocity
,  `Float'  -- ^ cfmSlip
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSequentialImpulseConstraintSolver.h?r=2223#115>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSequentialImpulseConstraintSolver.cpp?r=2223>
-}
{#fun btSequentialImpulseConstraintSolver_getRandSeed as btSequentialImpulseConstraintSolver_getRandSeed    `( BtSequentialImpulseConstraintSolverClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Word64'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSequentialImpulseConstraintSolver.h?r=2223#44>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSequentialImpulseConstraintSolver.cpp?r=2223>
-}
{#fun btSequentialImpulseConstraintSolver_addFrictionConstraint as btSequentialImpulseConstraintSolver_addFrictionConstraint    `( BtSequentialImpulseConstraintSolverClass bc , BtRigidBodyClass p1 , BtRigidBodyClass p2 , BtManifoldPointClass p4 , BtCollisionObjectClass p7 , BtCollisionObjectClass p8 )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ normalAxis
, withBt* `p1'  -- ^ solverBodyA
, withBt* `p2'  -- ^ solverBodyB
,  `Int'  -- ^ frictionIndex
, withBt* `p4'  -- ^ cp
, withVec3* `Vec3'  peekVec3* -- ^ rel_pos1
, withVec3* `Vec3'  peekVec3* -- ^ rel_pos2
, withBt* `p7'  -- ^ colObj0
, withBt* `p8'  -- ^ colObj1
,  `Float'  -- ^ relaxation
,  `Float'  -- ^ desiredVelocity
,  `Float'  -- ^ cfmSlip
 } ->  `BtSolverConstraint'  mkBtSolverConstraint* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSequentialImpulseConstraintSolver.h?r=2223#44>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSequentialImpulseConstraintSolver.cpp?r=2223>
-}
{#fun btSequentialImpulseConstraintSolver_addFrictionConstraint as btSequentialImpulseConstraintSolver_addFrictionConstraint'    `( BtSequentialImpulseConstraintSolverClass bc , BtRigidBodyClass p1 , BtRigidBodyClass p2 , BtManifoldPointClass p4 , BtCollisionObjectClass p7 , BtCollisionObjectClass p8 )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ normalAxis
, withBt* `p1'  -- ^ solverBodyA
, withBt* `p2'  -- ^ solverBodyB
,  `Int'  -- ^ frictionIndex
, withBt* `p4'  -- ^ cp
, allocaVec3-  `Vec3'  peekVec3* -- ^ rel_pos1
, allocaVec3-  `Vec3'  peekVec3* -- ^ rel_pos2
, withBt* `p7'  -- ^ colObj0
, withBt* `p8'  -- ^ colObj1
,  `Float'  -- ^ relaxation
,  `Float'  -- ^ desiredVelocity
,  `Float'  -- ^ cfmSlip
 } ->  `BtSolverConstraint'  mkBtSolverConstraint* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSequentialImpulseConstraintSolver.h?r=2223#57>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSequentialImpulseConstraintSolver.cpp?r=2223>
-}
{#fun btSequentialImpulseConstraintSolver_restitutionCurve as btSequentialImpulseConstraintSolver_restitutionCurve    `( BtSequentialImpulseConstraintSolverClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ rel_vel
,  `Float'  -- ^ restitution
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSequentialImpulseConstraintSolver.h?r=2223#75>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSequentialImpulseConstraintSolver.cpp?r=2223>
-}
{#fun btSequentialImpulseConstraintSolver_resolveSingleConstraintRowGeneric as btSequentialImpulseConstraintSolver_resolveSingleConstraintRowGeneric    `( BtSequentialImpulseConstraintSolverClass bc , BtRigidBodyClass p0 , BtRigidBodyClass p1 , BtSolverConstraintClass p2 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ body1
, withBt* `p1'  -- ^ body2
, withBt* `p2'  -- ^ contactConstraint
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSequentialImpulseConstraintSolver.h?r=2223#65>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSequentialImpulseConstraintSolver.cpp?r=2223>
-}
{#fun btSequentialImpulseConstraintSolver_resolveSplitPenetrationSIMD as btSequentialImpulseConstraintSolver_resolveSplitPenetrationSIMD    `( BtSequentialImpulseConstraintSolverClass bc , BtRigidBodyClass p0 , BtRigidBodyClass p1 , BtSolverConstraintClass p2 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ body1
, withBt* `p1'  -- ^ body2
, withBt* `p2'  -- ^ contactConstraint
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSequentialImpulseConstraintSolver.h?r=2223#32>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSequentialImpulseConstraintSolver.cpp?r=2223>
-}
{#fun btSequentialImpulseConstraintSolver_m_tmpSolverContactConstraintPool_set    `( BtSequentialImpulseConstraintSolverClass bc , BtAlignedObjectArray_btSolverConstraint_Class a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSequentialImpulseConstraintSolver.h?r=2223#32>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSequentialImpulseConstraintSolver.cpp?r=2223>
-}
{#fun btSequentialImpulseConstraintSolver_m_tmpSolverContactConstraintPool_get    `( BtSequentialImpulseConstraintSolverClass bc )' =>     { withBt* `bc'  } ->  `BtAlignedObjectArray_btSolverConstraint_'  mkBtAlignedObjectArray_btSolverConstraint_* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSequentialImpulseConstraintSolver.h?r=2223#33>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSequentialImpulseConstraintSolver.cpp?r=2223>
-}
{#fun btSequentialImpulseConstraintSolver_m_tmpSolverNonContactConstraintPool_set    `( BtSequentialImpulseConstraintSolverClass bc , BtAlignedObjectArray_btSolverConstraint_Class a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSequentialImpulseConstraintSolver.h?r=2223#33>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSequentialImpulseConstraintSolver.cpp?r=2223>
-}
{#fun btSequentialImpulseConstraintSolver_m_tmpSolverNonContactConstraintPool_get    `( BtSequentialImpulseConstraintSolverClass bc )' =>     { withBt* `bc'  } ->  `BtAlignedObjectArray_btSolverConstraint_'  mkBtAlignedObjectArray_btSolverConstraint_* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSequentialImpulseConstraintSolver.h?r=2223#34>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSequentialImpulseConstraintSolver.cpp?r=2223>
-}
{#fun btSequentialImpulseConstraintSolver_m_tmpSolverContactFrictionConstraintPool_set    `( BtSequentialImpulseConstraintSolverClass bc , BtAlignedObjectArray_btSolverConstraint_Class a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSequentialImpulseConstraintSolver.h?r=2223#34>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSequentialImpulseConstraintSolver.cpp?r=2223>
-}
{#fun btSequentialImpulseConstraintSolver_m_tmpSolverContactFrictionConstraintPool_get    `( BtSequentialImpulseConstraintSolverClass bc )' =>     { withBt* `bc'  } ->  `BtAlignedObjectArray_btSolverConstraint_'  mkBtAlignedObjectArray_btSolverConstraint_* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSequentialImpulseConstraintSolver.h?r=2223#35>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSequentialImpulseConstraintSolver.cpp?r=2223>
-}
{#fun btSequentialImpulseConstraintSolver_m_orderTmpConstraintPool_set    `( BtSequentialImpulseConstraintSolverClass bc , BtAlignedObjectArray_int_Class a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSequentialImpulseConstraintSolver.h?r=2223#35>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSequentialImpulseConstraintSolver.cpp?r=2223>
-}
{#fun btSequentialImpulseConstraintSolver_m_orderTmpConstraintPool_get    `( BtSequentialImpulseConstraintSolverClass bc )' =>     { withBt* `bc'  } ->  `BtAlignedObjectArray_int_'  mkBtAlignedObjectArray_int_* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSequentialImpulseConstraintSolver.h?r=2223#36>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSequentialImpulseConstraintSolver.cpp?r=2223>
-}
{#fun btSequentialImpulseConstraintSolver_m_orderFrictionConstraintPool_set    `( BtSequentialImpulseConstraintSolverClass bc , BtAlignedObjectArray_int_Class a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSequentialImpulseConstraintSolver.h?r=2223#36>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSequentialImpulseConstraintSolver.cpp?r=2223>
-}
{#fun btSequentialImpulseConstraintSolver_m_orderFrictionConstraintPool_get    `( BtSequentialImpulseConstraintSolverClass bc )' =>     { withBt* `bc'  } ->  `BtAlignedObjectArray_int_'  mkBtAlignedObjectArray_int_* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSequentialImpulseConstraintSolver.h?r=2223#37>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSequentialImpulseConstraintSolver.cpp?r=2223>
-}
{#fun btSequentialImpulseConstraintSolver_m_tmpConstraintSizesPool_set    `( BtSequentialImpulseConstraintSolverClass bc , BtAlignedObjectArray_btTypedConstraint_btConstraintInfo1_Class a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSequentialImpulseConstraintSolver.h?r=2223#37>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSequentialImpulseConstraintSolver.cpp?r=2223>
-}
{#fun btSequentialImpulseConstraintSolver_m_tmpConstraintSizesPool_get    `( BtSequentialImpulseConstraintSolverClass bc )' =>     { withBt* `bc'  } ->  `BtAlignedObjectArray_btTypedConstraint_btConstraintInfo1_'  mkBtAlignedObjectArray_btTypedConstraint_btConstraintInfo1_* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSequentialImpulseConstraintSolver.h?r=2223#54>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSequentialImpulseConstraintSolver.cpp?r=2223>
-}
{#fun btSequentialImpulseConstraintSolver_m_btSeed2_set    `( BtSequentialImpulseConstraintSolverClass bc )' =>     { withBt* `bc' ,  `Word64'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSequentialImpulseConstraintSolver.h?r=2223#54>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSequentialImpulseConstraintSolver.cpp?r=2223>
-}
{#fun btSequentialImpulseConstraintSolver_m_btSeed2_get    `( BtSequentialImpulseConstraintSolverClass bc )' =>     { withBt* `bc'  } ->  `Word64'   #}
-- * btSliderConstraint
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#159>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_new0 as btSliderConstraint0    `( BtRigidBodyClass p0 , BtRigidBodyClass p1 )' =>     {  withBt* `p0' , withBt* `p1' , withTransform* `Transform' , withTransform* `Transform' ,  `Bool'  } -> `BtSliderConstraint' mkBtSliderConstraint* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#160>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_new1 as btSliderConstraint1    `( BtRigidBodyClass p0 )' =>     {  withBt* `p0' , withTransform* `Transform' ,  `Bool'  } -> `BtSliderConstraint' mkBtSliderConstraint* #}
{#fun btSliderConstraint_free    `( BtSliderConstraintClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#175>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_getRigidBodyB as btSliderConstraint_getRigidBodyB    `( BtSliderConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtRigidBody'  mkBtRigidBody* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#174>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_getRigidBodyA as btSliderConstraint_getRigidBodyA    `( BtSliderConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtRigidBody'  mkBtRigidBody* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#249>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_getAngDepth as btSliderConstraint_getAngDepth    `( BtSliderConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#236>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_getTargetAngMotorVelocity as btSliderConstraint_getTargetAngMotorVelocity    `( BtSliderConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#241>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_getAngularPos as btSliderConstraint_getAngularPos    `( BtSliderConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#219>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_setRestitutionLimAng as btSliderConstraint_setRestitutionLimAng    `( BtSliderConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ restitutionLimAng
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#274>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_getParam as btSliderConstraint_getParam    `( BtSliderConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ num
,  `Int'  -- ^ axis
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#164>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_getInfo1 as btSliderConstraint_getInfo1    `( BtSliderConstraintClass bc , BtTypedConstraint_btConstraintInfo1Class p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ info
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#168>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_getInfo2 as btSliderConstraint_getInfo2    `( BtSliderConstraintClass bc , BtTypedConstraint_btConstraintInfo2Class p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ info
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#228>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_getPoweredLinMotor as btSliderConstraint_getPoweredLinMotor    `( BtSliderConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#259>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_setUseFrameOffset as btSliderConstraint_setUseFrameOffset    `( BtSliderConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Bool'  -- ^ frameOffsetOnOff
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#215>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_setSoftnessLimLin as btSliderConstraint_setSoftnessLimLin    `( BtSliderConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ softnessLimLin
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#255>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_getAncorInA as btSliderConstraint_getAncorInA    `( BtSliderConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#256>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_getAncorInB as btSliderConstraint_getAncorInB    `( BtSliderConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#214>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_setDampingDirAng as btSliderConstraint_setDampingDirAng    `( BtSliderConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ dampingDirAng
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#246>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_getSolveLinLimit as btSliderConstraint_getSolveLinLimit    `( BtSliderConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#258>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_getUseFrameOffset as btSliderConstraint_getUseFrameOffset    `( BtSliderConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#238>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_getMaxAngMotorForce as btSliderConstraint_getMaxAngMotorForce    `( BtSliderConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#213>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_setRestitutionDirAng as btSliderConstraint_setRestitutionDirAng    `( BtSliderConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ restitutionDirAng
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#232>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_getMaxLinMotorForce as btSliderConstraint_getMaxLinMotorForce    `( BtSliderConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#223>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_setDampingOrthoLin as btSliderConstraint_setDampingOrthoLin    `( BtSliderConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ dampingOrthoLin
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#248>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_getSolveAngLimit as btSliderConstraint_getSolveAngLimit    `( BtSliderConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#233>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_setPoweredAngMotor as btSliderConstraint_setPoweredAngMotor    `( BtSliderConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Bool'  -- ^ onOff
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#240>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_getLinearPos as btSliderConstraint_getLinearPos    `( BtSliderConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#177>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_getCalculatedTransformB as btSliderConstraint_getCalculatedTransformB    `( BtSliderConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaTransform-  `Transform'  peekTransform* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#176>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_getCalculatedTransformA as btSliderConstraint_getCalculatedTransformA    `( BtSliderConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaTransform-  `Transform'  peekTransform* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#253>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_testAngLimits as btSliderConstraint_testAngLimits    `( BtSliderConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#211>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_setDampingDirLin as btSliderConstraint_setDampingDirLin    `( BtSliderConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ dampingDirLin
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#188>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_getUpperAngLimit as btSliderConstraint_getUpperAngLimit    `( BtSliderConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#189>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_setUpperAngLimit as btSliderConstraint_setUpperAngLimit    `( BtSliderConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ upperLimit
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#201>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_getRestitutionLimAng as btSliderConstraint_getRestitutionLimAng    `( BtSliderConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#203>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_getSoftnessOrthoLin as btSliderConstraint_getSoftnessOrthoLin    `( BtSliderConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#183>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_setLowerLinLimit as btSliderConstraint_setLowerLinLimit    `( BtSliderConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ lowerLimit
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#192>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_getRestitutionDirLin as btSliderConstraint_getRestitutionDirLin    `( BtSliderConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#166>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_getInfo1NonVirtual as btSliderConstraint_getInfo1NonVirtual    `( BtSliderConstraintClass bc , BtTypedConstraint_btConstraintInfo1Class p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ info
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#216>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_setRestitutionLimLin as btSliderConstraint_setRestitutionLimLin    `( BtSliderConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ restitutionLimLin
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#229>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_setTargetLinMotorVelocity as btSliderConstraint_setTargetLinMotorVelocity    `( BtSliderConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ targetLinMotorVelocity
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#184>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_getUpperLinLimit as btSliderConstraint_getUpperLinLimit    `( BtSliderConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#231>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_setMaxLinMotorForce as btSliderConstraint_setMaxLinMotorForce    `( BtSliderConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ maxLinMotorForce
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#186>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_getLowerAngLimit as btSliderConstraint_getLowerAngLimit    `( BtSliderConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#209>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_setSoftnessDirLin as btSliderConstraint_setSoftnessDirLin    `( BtSliderConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ softnessDirLin
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#156>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_initParams as btSliderConstraint_initParams    `( BtSliderConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#170>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_getInfo2NonVirtual as btSliderConstraint_getInfo2NonVirtual    `( BtSliderConstraintClass bc , BtTypedConstraint_btConstraintInfo2Class p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ info
, withTransform* `Transform'  peekTransform* -- ^ transA
, withTransform* `Transform'  peekTransform* -- ^ transB
, withVec3* `Vec3'  peekVec3* -- ^ linVelA
, withVec3* `Vec3'  peekVec3* -- ^ linVelB
,  `Float'  -- ^ rbAinvMass
,  `Float'  -- ^ rbBinvMass
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#170>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_getInfo2NonVirtual as btSliderConstraint_getInfo2NonVirtual'    `( BtSliderConstraintClass bc , BtTypedConstraint_btConstraintInfo2Class p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ info
, allocaTransform-  `Transform'  peekTransform* -- ^ transA
, allocaTransform-  `Transform'  peekTransform* -- ^ transB
, allocaVec3-  `Vec3'  peekVec3* -- ^ linVelA
, allocaVec3-  `Vec3'  peekVec3* -- ^ linVelB
,  `Float'  -- ^ rbAinvMass
,  `Float'  -- ^ rbBinvMass
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#178>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_getFrameOffsetA0 as btSliderConstraint_getFrameOffsetA    `( BtSliderConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaTransform-  `Transform'  peekTransform* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#178>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_getFrameOffsetA0 as btSliderConstraint_getFrameOffsetA0    `( BtSliderConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaTransform-  `Transform'  peekTransform* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#180>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_getFrameOffsetA1 as btSliderConstraint_getFrameOffsetA1    `( BtSliderConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaTransform-  `Transform'  peekTransform* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#179>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_getFrameOffsetB0 as btSliderConstraint_getFrameOffsetB    `( BtSliderConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaTransform-  `Transform'  peekTransform* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#179>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_getFrameOffsetB0 as btSliderConstraint_getFrameOffsetB0    `( BtSliderConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaTransform-  `Transform'  peekTransform* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#181>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_getFrameOffsetB1 as btSliderConstraint_getFrameOffsetB1    `( BtSliderConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaTransform-  `Transform'  peekTransform* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#196>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_getDampingDirAng as btSliderConstraint_getDampingDirAng    `( BtSliderConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#198>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_getRestitutionLimLin as btSliderConstraint_getRestitutionLimLin    `( BtSliderConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#206>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_getSoftnessOrthoAng as btSliderConstraint_getSoftnessOrthoAng    `( BtSliderConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#221>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_setSoftnessOrthoLin as btSliderConstraint_setSoftnessOrthoLin    `( BtSliderConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ softnessOrthoLin
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#218>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_setSoftnessLimAng as btSliderConstraint_setSoftnessLimAng    `( BtSliderConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ softnessLimAng
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#193>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_getDampingDirLin as btSliderConstraint_getDampingDirLin    `( BtSliderConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#197>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_getSoftnessLimLin as btSliderConstraint_getSoftnessLimLin    `( BtSliderConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#227>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_setPoweredLinMotor as btSliderConstraint_setPoweredLinMotor    `( BtSliderConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Bool'  -- ^ onOff
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#251>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_calculateTransforms as btSliderConstraint_calculateTransforms    `( BtSliderConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
, withTransform* `Transform'  peekTransform* -- ^ transA
, withTransform* `Transform'  peekTransform* -- ^ transB
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#251>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_calculateTransforms as btSliderConstraint_calculateTransforms'    `( BtSliderConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaTransform-  `Transform'  peekTransform* -- ^ transA
, allocaTransform-  `Transform'  peekTransform* -- ^ transB
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#247>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_getLinDepth as btSliderConstraint_getLinDepth    `( BtSliderConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#309>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_serialize as btSliderConstraint_serialize    `( BtSliderConstraintClass bc , BtSerializerClass p1 )' =>     { withBt* `bc'  -- ^ 
, withVoidPtr* `VoidPtr'  -- ^ dataBuffer
, withBt* `p1'  -- ^ serializer
 } ->  `String'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#199>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_getDampingLimLin as btSliderConstraint_getDampingLimLin    `( BtSliderConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#195>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_getRestitutionDirAng as btSliderConstraint_getRestitutionDirAng    `( BtSliderConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#272>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_setParam as btSliderConstraint_setParam    `( BtSliderConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ num
,  `Float'  -- ^ value
,  `Int'  -- ^ axis
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#202>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_getDampingLimAng as btSliderConstraint_getDampingLimAng    `( BtSliderConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#222>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_setRestitutionOrthoLin as btSliderConstraint_setRestitutionOrthoLin    `( BtSliderConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ restitutionOrthoLin
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#210>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_setRestitutionDirLin as btSliderConstraint_setRestitutionDirLin    `( BtSliderConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ restitutionDirLin
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#220>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_setDampingLimAng as btSliderConstraint_setDampingLimAng    `( BtSliderConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ dampingLimAng
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#212>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_setSoftnessDirAng as btSliderConstraint_setSoftnessDirAng    `( BtSliderConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ softnessDirAng
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#185>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_setUpperLinLimit as btSliderConstraint_setUpperLinLimit    `( BtSliderConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ upperLimit
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#303>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_calculateSerializeBufferSize as btSliderConstraint_calculateSerializeBufferSize    `( BtSliderConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#235>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_setTargetAngMotorVelocity as btSliderConstraint_setTargetAngMotorVelocity    `( BtSliderConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ targetAngMotorVelocity
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#194>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_getSoftnessDirAng as btSliderConstraint_getSoftnessDirAng    `( BtSliderConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#237>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_setMaxAngMotorForce as btSliderConstraint_setMaxAngMotorForce    `( BtSliderConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ maxAngMotorForce
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#187>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_setLowerAngLimit as btSliderConstraint_setLowerAngLimit    `( BtSliderConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ lowerLimit
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#234>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_getPoweredAngMotor as btSliderConstraint_getPoweredAngMotor    `( BtSliderConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#208>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_getDampingOrthoAng as btSliderConstraint_getDampingOrthoAng    `( BtSliderConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#204>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_getRestitutionOrthoLin as btSliderConstraint_getRestitutionOrthoLin    `( BtSliderConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#230>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_getTargetLinMotorVelocity as btSliderConstraint_getTargetLinMotorVelocity    `( BtSliderConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#252>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_testLinLimits as btSliderConstraint_testLinLimits    `( BtSliderConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#182>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_getLowerLinLimit as btSliderConstraint_getLowerLinLimit    `( BtSliderConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#226>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_setDampingOrthoAng as btSliderConstraint_setDampingOrthoAng    `( BtSliderConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ dampingOrthoAng
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#225>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_setRestitutionOrthoAng as btSliderConstraint_setRestitutionOrthoAng    `( BtSliderConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ restitutionOrthoAng
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#207>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_getRestitutionOrthoAng as btSliderConstraint_getRestitutionOrthoAng    `( BtSliderConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#205>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_getDampingOrthoLin as btSliderConstraint_getDampingOrthoLin    `( BtSliderConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#200>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_getSoftnessLimAng as btSliderConstraint_getSoftnessLimAng    `( BtSliderConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#224>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_setSoftnessOrthoAng as btSliderConstraint_setSoftnessOrthoAng    `( BtSliderConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ softnessOrthoAng
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#217>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_setDampingLimLin as btSliderConstraint_setDampingLimLin    `( BtSliderConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ dampingLimLin
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#261>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_setFrames as btSliderConstraint_setFrames    `( BtSliderConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
, withTransform* `Transform'  peekTransform* -- ^ frameA
, withTransform* `Transform'  peekTransform* -- ^ frameB
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#261>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_setFrames as btSliderConstraint_setFrames'    `( BtSliderConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaTransform-  `Transform'  peekTransform* -- ^ frameA
, allocaTransform-  `Transform'  peekTransform* -- ^ frameB
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#191>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_getSoftnessDirLin as btSliderConstraint_getSoftnessDirLin    `( BtSliderConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#190>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_getUseLinearReferenceFrameA as btSliderConstraint_getUseLinearReferenceFrameA    `( BtSliderConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#67>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_m_useSolveConstraintObsolete_set    `( BtSliderConstraintClass bc )' =>     { withBt* `bc' ,  `Bool'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#67>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_m_useSolveConstraintObsolete_get    `( BtSliderConstraintClass bc )' =>     { withBt* `bc'  } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#68>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_m_useOffsetForConstraintFrame_set    `( BtSliderConstraintClass bc )' =>     { withBt* `bc' ,  `Bool'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#68>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_m_useOffsetForConstraintFrame_get    `( BtSliderConstraintClass bc )' =>     { withBt* `bc'  } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#69>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_m_frameInA_set    `( BtSliderConstraintClass bc )' =>     { withBt* `bc' , withTransform* `Transform'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#69>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_m_frameInA_get    `( BtSliderConstraintClass bc )' =>     { withBt* `bc' , allocaTransform-  `Transform'  peekTransform* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#70>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_m_frameInB_set    `( BtSliderConstraintClass bc )' =>     { withBt* `bc' , withTransform* `Transform'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#70>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_m_frameInB_get    `( BtSliderConstraintClass bc )' =>     { withBt* `bc' , allocaTransform-  `Transform'  peekTransform* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#72>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_m_useLinearReferenceFrameA_set    `( BtSliderConstraintClass bc )' =>     { withBt* `bc' ,  `Bool'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#72>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_m_useLinearReferenceFrameA_get    `( BtSliderConstraintClass bc )' =>     { withBt* `bc'  } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#74>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_m_lowerLinLimit_set    `( BtSliderConstraintClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#74>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_m_lowerLinLimit_get    `( BtSliderConstraintClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#75>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_m_upperLinLimit_set    `( BtSliderConstraintClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#75>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_m_upperLinLimit_get    `( BtSliderConstraintClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#77>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_m_lowerAngLimit_set    `( BtSliderConstraintClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#77>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_m_lowerAngLimit_get    `( BtSliderConstraintClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#78>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_m_upperAngLimit_set    `( BtSliderConstraintClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#78>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_m_upperAngLimit_get    `( BtSliderConstraintClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#85>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_m_softnessDirLin_set    `( BtSliderConstraintClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#85>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_m_softnessDirLin_get    `( BtSliderConstraintClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#86>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_m_restitutionDirLin_set    `( BtSliderConstraintClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#86>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_m_restitutionDirLin_get    `( BtSliderConstraintClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#87>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_m_dampingDirLin_set    `( BtSliderConstraintClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#87>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_m_dampingDirLin_get    `( BtSliderConstraintClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#88>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_m_cfmDirLin_set    `( BtSliderConstraintClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#88>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_m_cfmDirLin_get    `( BtSliderConstraintClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#90>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_m_softnessDirAng_set    `( BtSliderConstraintClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#90>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_m_softnessDirAng_get    `( BtSliderConstraintClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#91>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_m_restitutionDirAng_set    `( BtSliderConstraintClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#91>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_m_restitutionDirAng_get    `( BtSliderConstraintClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#92>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_m_dampingDirAng_set    `( BtSliderConstraintClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#92>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_m_dampingDirAng_get    `( BtSliderConstraintClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#93>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_m_cfmDirAng_set    `( BtSliderConstraintClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#93>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_m_cfmDirAng_get    `( BtSliderConstraintClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#95>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_m_softnessLimLin_set    `( BtSliderConstraintClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#95>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_m_softnessLimLin_get    `( BtSliderConstraintClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#96>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_m_restitutionLimLin_set    `( BtSliderConstraintClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#96>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_m_restitutionLimLin_get    `( BtSliderConstraintClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#97>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_m_dampingLimLin_set    `( BtSliderConstraintClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#97>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_m_dampingLimLin_get    `( BtSliderConstraintClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#98>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_m_cfmLimLin_set    `( BtSliderConstraintClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#98>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_m_cfmLimLin_get    `( BtSliderConstraintClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#100>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_m_softnessLimAng_set    `( BtSliderConstraintClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#100>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_m_softnessLimAng_get    `( BtSliderConstraintClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#101>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_m_restitutionLimAng_set    `( BtSliderConstraintClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#101>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_m_restitutionLimAng_get    `( BtSliderConstraintClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#102>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_m_dampingLimAng_set    `( BtSliderConstraintClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#102>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_m_dampingLimAng_get    `( BtSliderConstraintClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#103>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_m_cfmLimAng_set    `( BtSliderConstraintClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#103>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_m_cfmLimAng_get    `( BtSliderConstraintClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#105>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_m_softnessOrthoLin_set    `( BtSliderConstraintClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#105>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_m_softnessOrthoLin_get    `( BtSliderConstraintClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#106>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_m_restitutionOrthoLin_set    `( BtSliderConstraintClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#106>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_m_restitutionOrthoLin_get    `( BtSliderConstraintClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#107>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_m_dampingOrthoLin_set    `( BtSliderConstraintClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#107>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_m_dampingOrthoLin_get    `( BtSliderConstraintClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#108>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_m_cfmOrthoLin_set    `( BtSliderConstraintClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#108>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_m_cfmOrthoLin_get    `( BtSliderConstraintClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#110>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_m_softnessOrthoAng_set    `( BtSliderConstraintClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#110>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_m_softnessOrthoAng_get    `( BtSliderConstraintClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#111>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_m_restitutionOrthoAng_set    `( BtSliderConstraintClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#111>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_m_restitutionOrthoAng_get    `( BtSliderConstraintClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#112>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_m_dampingOrthoAng_set    `( BtSliderConstraintClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#112>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_m_dampingOrthoAng_get    `( BtSliderConstraintClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#113>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_m_cfmOrthoAng_set    `( BtSliderConstraintClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#113>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_m_cfmOrthoAng_get    `( BtSliderConstraintClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#116>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_m_solveLinLim_set    `( BtSliderConstraintClass bc )' =>     { withBt* `bc' ,  `Bool'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#116>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_m_solveLinLim_get    `( BtSliderConstraintClass bc )' =>     { withBt* `bc'  } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#117>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_m_solveAngLim_set    `( BtSliderConstraintClass bc )' =>     { withBt* `bc' ,  `Bool'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#117>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_m_solveAngLim_get    `( BtSliderConstraintClass bc )' =>     { withBt* `bc'  } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#119>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_m_flags_set    `( BtSliderConstraintClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#119>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_m_flags_get    `( BtSliderConstraintClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#126>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_m_timeStep_set    `( BtSliderConstraintClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#126>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_m_timeStep_get    `( BtSliderConstraintClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#127>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_m_calculatedTransformA_set    `( BtSliderConstraintClass bc )' =>     { withBt* `bc' , withTransform* `Transform'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#127>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_m_calculatedTransformA_get    `( BtSliderConstraintClass bc )' =>     { withBt* `bc' , allocaTransform-  `Transform'  peekTransform* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#128>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_m_calculatedTransformB_set    `( BtSliderConstraintClass bc )' =>     { withBt* `bc' , withTransform* `Transform'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#128>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_m_calculatedTransformB_get    `( BtSliderConstraintClass bc )' =>     { withBt* `bc' , allocaTransform-  `Transform'  peekTransform* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#130>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_m_sliderAxis_set    `( BtSliderConstraintClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#130>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_m_sliderAxis_get    `( BtSliderConstraintClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#131>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_m_realPivotAInW_set    `( BtSliderConstraintClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#131>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_m_realPivotAInW_get    `( BtSliderConstraintClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#132>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_m_realPivotBInW_set    `( BtSliderConstraintClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#132>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_m_realPivotBInW_get    `( BtSliderConstraintClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#133>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_m_projPivotInW_set    `( BtSliderConstraintClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#133>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_m_projPivotInW_get    `( BtSliderConstraintClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#134>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_m_delta_set    `( BtSliderConstraintClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#134>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_m_delta_get    `( BtSliderConstraintClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#135>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_m_depth_set    `( BtSliderConstraintClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#135>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_m_depth_get    `( BtSliderConstraintClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#136>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_m_relPosA_set    `( BtSliderConstraintClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#136>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_m_relPosA_get    `( BtSliderConstraintClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#137>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_m_relPosB_set    `( BtSliderConstraintClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#137>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_m_relPosB_get    `( BtSliderConstraintClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#139>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_m_linPos_set    `( BtSliderConstraintClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#139>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_m_linPos_get    `( BtSliderConstraintClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#140>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_m_angPos_set    `( BtSliderConstraintClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#140>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_m_angPos_get    `( BtSliderConstraintClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#142>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_m_angDepth_set    `( BtSliderConstraintClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#142>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_m_angDepth_get    `( BtSliderConstraintClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#143>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_m_kAngle_set    `( BtSliderConstraintClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#143>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_m_kAngle_get    `( BtSliderConstraintClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#145>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_m_poweredLinMotor_set    `( BtSliderConstraintClass bc )' =>     { withBt* `bc' ,  `Bool'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#145>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_m_poweredLinMotor_get    `( BtSliderConstraintClass bc )' =>     { withBt* `bc'  } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#146>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_m_targetLinMotorVelocity_set    `( BtSliderConstraintClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#146>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_m_targetLinMotorVelocity_get    `( BtSliderConstraintClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#147>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_m_maxLinMotorForce_set    `( BtSliderConstraintClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#147>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_m_maxLinMotorForce_get    `( BtSliderConstraintClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#148>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_m_accumulatedLinMotorImpulse_set    `( BtSliderConstraintClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#148>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_m_accumulatedLinMotorImpulse_get    `( BtSliderConstraintClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#150>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_m_poweredAngMotor_set    `( BtSliderConstraintClass bc )' =>     { withBt* `bc' ,  `Bool'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#150>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_m_poweredAngMotor_get    `( BtSliderConstraintClass bc )' =>     { withBt* `bc'  } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#151>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_m_targetAngMotorVelocity_set    `( BtSliderConstraintClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#151>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_m_targetAngMotorVelocity_get    `( BtSliderConstraintClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#152>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_m_maxAngMotorForce_set    `( BtSliderConstraintClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#152>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_m_maxAngMotorForce_get    `( BtSliderConstraintClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#153>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_m_accumulatedAngMotorImpulse_set    `( BtSliderConstraintClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#153>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraint_m_accumulatedAngMotorImpulse_get    `( BtSliderConstraintClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
-- * btSliderConstraintData
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#286>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraintData_new as btSliderConstraintData    {  } -> `BtSliderConstraintData' mkBtSliderConstraintData* #}
{#fun btSliderConstraintData_free    `( BtSliderConstraintDataClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#287>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraintData_m_typeConstraintData_set    `( BtSliderConstraintDataClass bc , BtTypedConstraintDataClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#287>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraintData_m_typeConstraintData_get    `( BtSliderConstraintDataClass bc )' =>     { withBt* `bc'  } ->  `BtTypedConstraintData'  mkBtTypedConstraintData* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#288>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraintData_m_rbAFrame_set    `( BtSliderConstraintDataClass bc , BtTransformFloatDataClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#288>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraintData_m_rbAFrame_get    `( BtSliderConstraintDataClass bc )' =>     { withBt* `bc'  } ->  `BtTransformFloatData'  mkBtTransformFloatData* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#289>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraintData_m_rbBFrame_set    `( BtSliderConstraintDataClass bc , BtTransformFloatDataClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#289>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraintData_m_rbBFrame_get    `( BtSliderConstraintDataClass bc )' =>     { withBt* `bc'  } ->  `BtTransformFloatData'  mkBtTransformFloatData* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#291>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraintData_m_linearUpperLimit_set    `( BtSliderConstraintDataClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#291>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraintData_m_linearUpperLimit_get    `( BtSliderConstraintDataClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#292>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraintData_m_linearLowerLimit_set    `( BtSliderConstraintDataClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#292>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraintData_m_linearLowerLimit_get    `( BtSliderConstraintDataClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#294>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraintData_m_angularUpperLimit_set    `( BtSliderConstraintDataClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#294>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraintData_m_angularUpperLimit_get    `( BtSliderConstraintDataClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#295>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraintData_m_angularLowerLimit_set    `( BtSliderConstraintDataClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#295>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraintData_m_angularLowerLimit_get    `( BtSliderConstraintDataClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#297>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraintData_m_useLinearReferenceFrameA_set    `( BtSliderConstraintDataClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#297>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraintData_m_useLinearReferenceFrameA_get    `( BtSliderConstraintDataClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#298>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraintData_m_useOffsetForConstraintFrame_set    `( BtSliderConstraintDataClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.h?r=2223#298>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp?r=2223>
-}
{#fun btSliderConstraintData_m_useOffsetForConstraintFrame_get    `( BtSliderConstraintDataClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
-- * btSolverBodyObsolete
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSolverBody.h?r=2223#109>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSolverBody.cpp?r=2223>
-}
{#fun btSolverBodyObsolete_new as btSolverBodyObsolete    {  } -> `BtSolverBodyObsolete' mkBtSolverBodyObsolete* #}
{#fun btSolverBodyObsolete_free    `( BtSolverBodyObsoleteClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSolverBody.h?r=2223#128>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSolverBody.cpp?r=2223>
-}
{#fun btSolverBodyObsolete_getAngularVelocity as btSolverBodyObsolete_getAngularVelocity    `( BtSolverBodyObsoleteClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ angVel
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSolverBody.h?r=2223#128>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSolverBody.cpp?r=2223>
-}
{#fun btSolverBodyObsolete_getAngularVelocity as btSolverBodyObsolete_getAngularVelocity'    `( BtSolverBodyObsoleteClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ angVel
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSolverBody.h?r=2223#156>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSolverBody.cpp?r=2223>
-}
{#fun btSolverBodyObsolete_writebackVelocity0 as btSolverBodyObsolete_writebackVelocity    `( BtSolverBodyObsoleteClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSolverBody.h?r=2223#156>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSolverBody.cpp?r=2223>
-}
{#fun btSolverBodyObsolete_writebackVelocity0 as btSolverBodyObsolete_writebackVelocity0    `( BtSolverBodyObsoleteClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSolverBody.h?r=2223#168>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSolverBody.cpp?r=2223>
-}
{#fun btSolverBodyObsolete_writebackVelocity1 as btSolverBodyObsolete_writebackVelocity1    `( BtSolverBodyObsoleteClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ timeStep
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSolverBody.h?r=2223#147>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSolverBody.cpp?r=2223>
-}
{#fun btSolverBodyObsolete_internalApplyPushImpulse as btSolverBodyObsolete_internalApplyPushImpulse    `( BtSolverBodyObsoleteClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ linearComponent
, withVec3* `Vec3'  peekVec3* -- ^ angularComponent
,  `Float'  -- ^ impulseMagnitude
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSolverBody.h?r=2223#147>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSolverBody.cpp?r=2223>
-}
{#fun btSolverBodyObsolete_internalApplyPushImpulse as btSolverBodyObsolete_internalApplyPushImpulse'    `( BtSolverBodyObsoleteClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ linearComponent
, allocaVec3-  `Vec3'  peekVec3* -- ^ angularComponent
,  `Float'  -- ^ impulseMagnitude
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSolverBody.h?r=2223#120>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSolverBody.cpp?r=2223>
-}
{#fun btSolverBodyObsolete_getVelocityInLocalPointObsolete as btSolverBodyObsolete_getVelocityInLocalPointObsolete    `( BtSolverBodyObsoleteClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ rel_pos
, withVec3* `Vec3'  peekVec3* -- ^ velocity
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSolverBody.h?r=2223#120>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSolverBody.cpp?r=2223>
-}
{#fun btSolverBodyObsolete_getVelocityInLocalPointObsolete as btSolverBodyObsolete_getVelocityInLocalPointObsolete'    `( BtSolverBodyObsoleteClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ rel_pos
, allocaVec3-  `Vec3'  peekVec3* -- ^ velocity
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSolverBody.h?r=2223#111>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSolverBody.cpp?r=2223>
-}
{#fun btSolverBodyObsolete_m_deltaLinearVelocity_set    `( BtSolverBodyObsoleteClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSolverBody.h?r=2223#111>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSolverBody.cpp?r=2223>
-}
{#fun btSolverBodyObsolete_m_deltaLinearVelocity_get    `( BtSolverBodyObsoleteClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSolverBody.h?r=2223#112>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSolverBody.cpp?r=2223>
-}
{#fun btSolverBodyObsolete_m_deltaAngularVelocity_set    `( BtSolverBodyObsoleteClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSolverBody.h?r=2223#112>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSolverBody.cpp?r=2223>
-}
{#fun btSolverBodyObsolete_m_deltaAngularVelocity_get    `( BtSolverBodyObsoleteClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSolverBody.h?r=2223#113>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSolverBody.cpp?r=2223>
-}
{#fun btSolverBodyObsolete_m_angularFactor_set    `( BtSolverBodyObsoleteClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSolverBody.h?r=2223#113>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSolverBody.cpp?r=2223>
-}
{#fun btSolverBodyObsolete_m_angularFactor_get    `( BtSolverBodyObsoleteClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSolverBody.h?r=2223#114>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSolverBody.cpp?r=2223>
-}
{#fun btSolverBodyObsolete_m_invMass_set    `( BtSolverBodyObsoleteClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSolverBody.h?r=2223#114>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSolverBody.cpp?r=2223>
-}
{#fun btSolverBodyObsolete_m_invMass_get    `( BtSolverBodyObsoleteClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSolverBody.h?r=2223#115>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSolverBody.cpp?r=2223>
-}
{#fun btSolverBodyObsolete_m_originalBody_set    `( BtSolverBodyObsoleteClass bc , BtRigidBodyClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSolverBody.h?r=2223#115>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSolverBody.cpp?r=2223>
-}
{#fun btSolverBodyObsolete_m_originalBody_get    `( BtSolverBodyObsoleteClass bc )' =>     { withBt* `bc'  } ->  `BtRigidBody'  mkBtRigidBody* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSolverBody.h?r=2223#116>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSolverBody.cpp?r=2223>
-}
{#fun btSolverBodyObsolete_m_pushVelocity_set    `( BtSolverBodyObsoleteClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSolverBody.h?r=2223#116>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSolverBody.cpp?r=2223>
-}
{#fun btSolverBodyObsolete_m_pushVelocity_get    `( BtSolverBodyObsoleteClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSolverBody.h?r=2223#117>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSolverBody.cpp?r=2223>
-}
{#fun btSolverBodyObsolete_m_turnVelocity_set    `( BtSolverBodyObsoleteClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSolverBody.h?r=2223#117>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSolverBody.cpp?r=2223>
-}
{#fun btSolverBodyObsolete_m_turnVelocity_get    `( BtSolverBodyObsoleteClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
-- * btSolverConstraint
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSolverConstraint.h?r=2223#30>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSolverConstraint.cpp?r=2223>
-}
{#fun btSolverConstraint_new as btSolverConstraint    {  } -> `BtSolverConstraint' mkBtSolverConstraint* #}
{#fun btSolverConstraint_free    `( BtSolverConstraintClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSolverConstraint.h?r=2223#39>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSolverConstraint.cpp?r=2223>
-}
{#fun btSolverConstraint_m_angularComponentA_set    `( BtSolverConstraintClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSolverConstraint.h?r=2223#39>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSolverConstraint.cpp?r=2223>
-}
{#fun btSolverConstraint_m_angularComponentA_get    `( BtSolverConstraintClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSolverConstraint.h?r=2223#40>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSolverConstraint.cpp?r=2223>
-}
{#fun btSolverConstraint_m_angularComponentB_set    `( BtSolverConstraintClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSolverConstraint.h?r=2223#40>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSolverConstraint.cpp?r=2223>
-}
{#fun btSolverConstraint_m_angularComponentB_get    `( BtSolverConstraintClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSolverConstraint.h?r=2223#43>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSolverConstraint.cpp?r=2223>
-}
{#fun btSolverConstraint_m_appliedImpulse_set    `( BtSolverConstraintClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSolverConstraint.h?r=2223#43>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSolverConstraint.cpp?r=2223>
-}
{#fun btSolverConstraint_m_appliedImpulse_get    `( BtSolverConstraintClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSolverConstraint.h?r=2223#42>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSolverConstraint.cpp?r=2223>
-}
{#fun btSolverConstraint_m_appliedPushImpulse_set    `( BtSolverConstraintClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSolverConstraint.h?r=2223#42>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSolverConstraint.cpp?r=2223>
-}
{#fun btSolverConstraint_m_appliedPushImpulse_get    `( BtSolverConstraintClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSolverConstraint.h?r=2223#77>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSolverConstraint.cpp?r=2223>
-}
{#fun btSolverConstraint_m_cfm_set    `( BtSolverConstraintClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSolverConstraint.h?r=2223#77>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSolverConstraint.cpp?r=2223>
-}
{#fun btSolverConstraint_m_cfm_get    `( BtSolverConstraintClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSolverConstraint.h?r=2223#34>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSolverConstraint.cpp?r=2223>
-}
{#fun btSolverConstraint_m_contactNormal_set    `( BtSolverConstraintClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSolverConstraint.h?r=2223#34>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSolverConstraint.cpp?r=2223>
-}
{#fun btSolverConstraint_m_contactNormal_get    `( BtSolverConstraintClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSolverConstraint.h?r=2223#46>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSolverConstraint.cpp?r=2223>
-}
{#fun btSolverConstraint_m_friction_set    `( BtSolverConstraintClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSolverConstraint.h?r=2223#46>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSolverConstraint.cpp?r=2223>
-}
{#fun btSolverConstraint_m_friction_get    `( BtSolverConstraintClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSolverConstraint.h?r=2223#47>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSolverConstraint.cpp?r=2223>
-}
{#fun btSolverConstraint_m_jacDiagABInv_set    `( BtSolverConstraintClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSolverConstraint.h?r=2223#47>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSolverConstraint.cpp?r=2223>
-}
{#fun btSolverConstraint_m_jacDiagABInv_get    `( BtSolverConstraintClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSolverConstraint.h?r=2223#78>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSolverConstraint.cpp?r=2223>
-}
{#fun btSolverConstraint_m_lowerLimit_set    `( BtSolverConstraintClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSolverConstraint.h?r=2223#78>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSolverConstraint.cpp?r=2223>
-}
{#fun btSolverConstraint_m_lowerLimit_get    `( BtSolverConstraintClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSolverConstraint.h?r=2223#33>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSolverConstraint.cpp?r=2223>
-}
{#fun btSolverConstraint_m_relpos1CrossNormal_set    `( BtSolverConstraintClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSolverConstraint.h?r=2223#33>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSolverConstraint.cpp?r=2223>
-}
{#fun btSolverConstraint_m_relpos1CrossNormal_get    `( BtSolverConstraintClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSolverConstraint.h?r=2223#36>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSolverConstraint.cpp?r=2223>
-}
{#fun btSolverConstraint_m_relpos2CrossNormal_set    `( BtSolverConstraintClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSolverConstraint.h?r=2223#36>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSolverConstraint.cpp?r=2223>
-}
{#fun btSolverConstraint_m_relpos2CrossNormal_get    `( BtSolverConstraintClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSolverConstraint.h?r=2223#76>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSolverConstraint.cpp?r=2223>
-}
{#fun btSolverConstraint_m_rhs_set    `( BtSolverConstraintClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSolverConstraint.h?r=2223#76>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSolverConstraint.cpp?r=2223>
-}
{#fun btSolverConstraint_m_rhs_get    `( BtSolverConstraintClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSolverConstraint.h?r=2223#81>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSolverConstraint.cpp?r=2223>
-}
{#fun btSolverConstraint_m_rhsPenetration_set    `( BtSolverConstraintClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSolverConstraint.h?r=2223#81>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSolverConstraint.cpp?r=2223>
-}
{#fun btSolverConstraint_m_rhsPenetration_get    `( BtSolverConstraintClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSolverConstraint.h?r=2223#79>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSolverConstraint.cpp?r=2223>
-}
{#fun btSolverConstraint_m_upperLimit_set    `( BtSolverConstraintClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSolverConstraint.h?r=2223#79>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btSolverConstraint.cpp?r=2223>
-}
{#fun btSolverConstraint_m_upperLimit_get    `( BtSolverConstraintClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
-- * btTranslationalLimitMotor
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#154>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btTranslationalLimitMotor_new as btTranslationalLimitMotor    {  } -> `BtTranslationalLimitMotor' mkBtTranslationalLimitMotor* #}
{#fun btTranslationalLimitMotor_free    `( BtTranslationalLimitMotorClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#211>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btTranslationalLimitMotor_testLimitValue as btTranslationalLimitMotor_testLimitValue    `( BtTranslationalLimitMotorClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ limitIndex
,  `Float'  -- ^ test_value
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#206>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btTranslationalLimitMotor_needApplyForce as btTranslationalLimitMotor_needApplyForce    `( BtTranslationalLimitMotorClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ limitIndex
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#221>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btTranslationalLimitMotor_solveLinearAxis as btTranslationalLimitMotor_solveLinearAxis    `( BtTranslationalLimitMotorClass bc , BtRigidBodyClass p2 , BtRigidBodyClass p4 )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ timeStep
,  `Float'  -- ^ jacDiagABInv
, withBt* `p2'  -- ^ body1
, withVec3* `Vec3'  peekVec3* -- ^ pointInA
, withBt* `p4'  -- ^ body2
, withVec3* `Vec3'  peekVec3* -- ^ pointInB
,  `Int'  -- ^ limit_index
, withVec3* `Vec3'  peekVec3* -- ^ axis_normal_on_a
, withVec3* `Vec3'  peekVec3* -- ^ anchorPos
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#221>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btTranslationalLimitMotor_solveLinearAxis as btTranslationalLimitMotor_solveLinearAxis'    `( BtTranslationalLimitMotorClass bc , BtRigidBodyClass p2 , BtRigidBodyClass p4 )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ timeStep
,  `Float'  -- ^ jacDiagABInv
, withBt* `p2'  -- ^ body1
, allocaVec3-  `Vec3'  peekVec3* -- ^ pointInA
, withBt* `p4'  -- ^ body2
, allocaVec3-  `Vec3'  peekVec3* -- ^ pointInB
,  `Int'  -- ^ limit_index
, allocaVec3-  `Vec3'  peekVec3* -- ^ axis_normal_on_a
, allocaVec3-  `Vec3'  peekVec3* -- ^ anchorPos
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#202>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btTranslationalLimitMotor_isLimited as btTranslationalLimitMotor_isLimited    `( BtTranslationalLimitMotorClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ limitIndex
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#137>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btTranslationalLimitMotor_m_accumulatedImpulse_set    `( BtTranslationalLimitMotorClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#137>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btTranslationalLimitMotor_m_accumulatedImpulse_get    `( BtTranslationalLimitMotorClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#150>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btTranslationalLimitMotor_m_currentLimitError_set    `( BtTranslationalLimitMotorClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#150>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btTranslationalLimitMotor_m_currentLimitError_get    `( BtTranslationalLimitMotorClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#151>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btTranslationalLimitMotor_m_currentLinearDiff_set    `( BtTranslationalLimitMotorClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#151>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btTranslationalLimitMotor_m_currentLinearDiff_get    `( BtTranslationalLimitMotorClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#141>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btTranslationalLimitMotor_m_damping_set    `( BtTranslationalLimitMotorClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#141>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btTranslationalLimitMotor_m_damping_get    `( BtTranslationalLimitMotorClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#140>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btTranslationalLimitMotor_m_limitSoftness_set    `( BtTranslationalLimitMotorClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#140>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btTranslationalLimitMotor_m_limitSoftness_get    `( BtTranslationalLimitMotorClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#135>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btTranslationalLimitMotor_m_lowerLimit_set    `( BtTranslationalLimitMotorClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#135>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btTranslationalLimitMotor_m_lowerLimit_get    `( BtTranslationalLimitMotorClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#149>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btTranslationalLimitMotor_m_maxMotorForce_set    `( BtTranslationalLimitMotorClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#149>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btTranslationalLimitMotor_m_maxMotorForce_get    `( BtTranslationalLimitMotorClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#143>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btTranslationalLimitMotor_m_normalCFM_set    `( BtTranslationalLimitMotorClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#143>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btTranslationalLimitMotor_m_normalCFM_get    `( BtTranslationalLimitMotorClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#142>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btTranslationalLimitMotor_m_restitution_set    `( BtTranslationalLimitMotorClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#142>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btTranslationalLimitMotor_m_restitution_get    `( BtTranslationalLimitMotorClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#145>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btTranslationalLimitMotor_m_stopCFM_set    `( BtTranslationalLimitMotorClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#145>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btTranslationalLimitMotor_m_stopCFM_get    `( BtTranslationalLimitMotorClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#144>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btTranslationalLimitMotor_m_stopERP_set    `( BtTranslationalLimitMotorClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#144>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btTranslationalLimitMotor_m_stopERP_get    `( BtTranslationalLimitMotorClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#148>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btTranslationalLimitMotor_m_targetVelocity_set    `( BtTranslationalLimitMotorClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#148>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btTranslationalLimitMotor_m_targetVelocity_get    `( BtTranslationalLimitMotorClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#136>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btTranslationalLimitMotor_m_upperLimit_set    `( BtTranslationalLimitMotorClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h?r=2223#136>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp?r=2223>
-}
{#fun btTranslationalLimitMotor_m_upperLimit_get    `( BtTranslationalLimitMotorClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
-- * btTypedConstraint
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.h?r=2223#192>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.cpp?r=2223>
-}
{#fun btTypedConstraint_getRigidBodyB0 as btTypedConstraint_getRigidBodyB    `( BtTypedConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtRigidBody'  mkBtRigidBody* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.h?r=2223#192>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.cpp?r=2223>
-}
{#fun btTypedConstraint_getRigidBodyB0 as btTypedConstraint_getRigidBodyB0    `( BtTypedConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtRigidBody'  mkBtRigidBody* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.h?r=2223#201>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.cpp?r=2223>
-}
{#fun btTypedConstraint_getRigidBodyB1 as btTypedConstraint_getRigidBodyB1    `( BtTypedConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtRigidBody'  mkBtRigidBody* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.h?r=2223#134>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.cpp?r=2223>
-}
{#fun btTypedConstraint_buildJacobian as btTypedConstraint_buildJacobian    `( BtTypedConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.h?r=2223#188>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.cpp?r=2223>
-}
{#fun btTypedConstraint_getRigidBodyA0 as btTypedConstraint_getRigidBodyA    `( BtTypedConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtRigidBody'  mkBtRigidBody* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.h?r=2223#188>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.cpp?r=2223>
-}
{#fun btTypedConstraint_getRigidBodyA0 as btTypedConstraint_getRigidBodyA0    `( BtTypedConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtRigidBody'  mkBtRigidBody* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.h?r=2223#197>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.cpp?r=2223>
-}
{#fun btTypedConstraint_getRigidBodyA1 as btTypedConstraint_getRigidBodyA1    `( BtTypedConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtRigidBody'  mkBtRigidBody* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.h?r=2223#285>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.cpp?r=2223>
-}
{#fun btTypedConstraint_serialize as btTypedConstraint_serialize    `( BtTypedConstraintClass bc , BtSerializerClass p1 )' =>     { withBt* `bc'  -- ^ 
, withVoidPtr* `VoidPtr'  -- ^ dataBuffer
, withBt* `p1'  -- ^ serializer
 } ->  `String'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.h?r=2223#248>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.cpp?r=2223>
-}
{#fun btTypedConstraint_enableFeedback as btTypedConstraint_enableFeedback    `( BtTypedConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Bool'  -- ^ needsFeedback
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.h?r=2223#221>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.cpp?r=2223>
-}
{#fun btTypedConstraint_getUserConstraintId as btTypedConstraint_getUserConstraintId    `( BtTypedConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.h?r=2223#277>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.cpp?r=2223>
-}
{#fun btTypedConstraint_setParam as btTypedConstraint_setParam    `( BtTypedConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ num
,  `Float'  -- ^ value
,  `Int'  -- ^ axis
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.h?r=2223#280>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.cpp?r=2223>
-}
{#fun btTypedConstraint_getParam as btTypedConstraint_getParam    `( BtTypedConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ num
,  `Int'  -- ^ axis
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.h?r=2223#146>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.cpp?r=2223>
-}
{#fun btTypedConstraint_getInfo1 as btTypedConstraint_getInfo1    `( BtTypedConstraintClass bc , BtTypedConstraint_btConstraintInfo1Class p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ info
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.h?r=2223#149>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.cpp?r=2223>
-}
{#fun btTypedConstraint_getInfo2 as btTypedConstraint_getInfo2    `( BtTypedConstraintClass bc , BtTypedConstraint_btConstraintInfo2Class p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ info
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.h?r=2223#168>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.cpp?r=2223>
-}
{#fun btTypedConstraint_setBreakingImpulseThreshold as btTypedConstraint_setBreakingImpulseThreshold    `( BtTypedConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ threshold
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.h?r=2223#87>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.cpp?r=2223>
-}
{#fun btTypedConstraint_getFixedBody as btTypedConstraint_getFixedBody    `( )' =>     {  } ->  `BtRigidBody'  mkBtRigidBody* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.h?r=2223#335>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.cpp?r=2223>
-}
{#fun btTypedConstraint_calculateSerializeBufferSize as btTypedConstraint_calculateSerializeBufferSize    `( BtTypedConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.h?r=2223#173>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.cpp?r=2223>
-}
{#fun btTypedConstraint_isEnabled as btTypedConstraint_isEnabled    `( BtTypedConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.h?r=2223#216>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.cpp?r=2223>
-}
{#fun btTypedConstraint_setUserConstraintId as btTypedConstraint_setUserConstraintId    `( BtTypedConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ uid
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.h?r=2223#85>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.cpp?r=2223>
-}
{#fun btTypedConstraint_getMotorFactor as btTypedConstraint_getMotorFactor    `( BtTypedConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ pos
,  `Float'  -- ^ lowLim
,  `Float'  -- ^ uppLim
,  `Float'  -- ^ vel
,  `Float'  -- ^ timeFact
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.h?r=2223#270>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.cpp?r=2223>
-}
{#fun btTypedConstraint_getDbgDrawSize as btTypedConstraint_getDbgDrawSize    `( BtTypedConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.h?r=2223#152>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.cpp?r=2223>
-}
{#fun btTypedConstraint_internalSetAppliedImpulse as btTypedConstraint_internalSetAppliedImpulse    `( BtTypedConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ appliedImpulse
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.h?r=2223#241>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.cpp?r=2223>
-}
{#fun btTypedConstraint_needsFeedback as btTypedConstraint_needsFeedback    `( BtTypedConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.h?r=2223#231>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.cpp?r=2223>
-}
{#fun btTypedConstraint_getUserConstraintPtr as btTypedConstraint_getUserConstraintPtr    `( BtTypedConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `VoidPtr'  mkVoidPtr* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.h?r=2223#178>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.cpp?r=2223>
-}
{#fun btTypedConstraint_setEnabled as btTypedConstraint_setEnabled    `( BtTypedConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Bool'  -- ^ enabled
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.h?r=2223#236>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.cpp?r=2223>
-}
{#fun btTypedConstraint_getUid as btTypedConstraint_getUid    `( BtTypedConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.h?r=2223#266>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.cpp?r=2223>
-}
{#fun btTypedConstraint_setDbgDrawSize as btTypedConstraint_setDbgDrawSize    `( BtTypedConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ dbgDrawSize
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.h?r=2223#211>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.cpp?r=2223>
-}
{#fun btTypedConstraint_setUserConstraintType as btTypedConstraint_setUserConstraintType    `( BtTypedConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ userConstraintType
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.h?r=2223#157>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.cpp?r=2223>
-}
{#fun btTypedConstraint_internalGetAppliedImpulse as btTypedConstraint_internalGetAppliedImpulse    `( BtTypedConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.h?r=2223#137>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.cpp?r=2223>
-}
{#fun btTypedConstraint_setupSolverConstraint as btTypedConstraint_setupSolverConstraint    `( BtTypedConstraintClass bc , BtAlignedObjectArray_btSolverConstraint_Class p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ ca
,  `Int'  -- ^ solverBodyA
,  `Int'  -- ^ solverBodyB
,  `Float'  -- ^ timeStep
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.h?r=2223#163>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.cpp?r=2223>
-}
{#fun btTypedConstraint_getBreakingImpulseThreshold as btTypedConstraint_getBreakingImpulseThreshold    `( BtTypedConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.h?r=2223#206>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.cpp?r=2223>
-}
{#fun btTypedConstraint_getUserConstraintType as btTypedConstraint_getUserConstraintType    `( BtTypedConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.h?r=2223#185>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.cpp?r=2223>
-}
{#fun btTypedConstraint_solveConstraintObsolete as btTypedConstraint_solveConstraintObsolete    `( BtTypedConstraintClass bc , BtRigidBodyClass p0 , BtRigidBodyClass p1 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ arg0
, withBt* `p1'  -- ^ arg1
,  `Float'  -- ^ arg2
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.h?r=2223#255>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.cpp?r=2223>
-}
{#fun btTypedConstraint_getAppliedImpulse as btTypedConstraint_getAppliedImpulse    `( BtTypedConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.h?r=2223#226>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.cpp?r=2223>
-}
{#fun btTypedConstraint_setUserConstraintPtr as btTypedConstraint_setUserConstraintPtr    `( BtTypedConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
, withVoidPtr* `VoidPtr'  -- ^ ptr
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.h?r=2223#81>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.cpp?r=2223>
-}
{#fun btTypedConstraint_m_appliedImpulse_set    `( BtTypedConstraintClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.h?r=2223#81>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.cpp?r=2223>
-}
{#fun btTypedConstraint_m_appliedImpulse_get    `( BtTypedConstraintClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.h?r=2223#65>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.cpp?r=2223>
-}
{#fun btTypedConstraint_m_breakingImpulseThreshold_set    `( BtTypedConstraintClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.h?r=2223#65>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.cpp?r=2223>
-}
{#fun btTypedConstraint_m_breakingImpulseThreshold_get    `( BtTypedConstraintClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.h?r=2223#82>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.cpp?r=2223>
-}
{#fun btTypedConstraint_m_dbgDrawSize_set    `( BtTypedConstraintClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.h?r=2223#82>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.cpp?r=2223>
-}
{#fun btTypedConstraint_m_dbgDrawSize_get    `( BtTypedConstraintClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.h?r=2223#66>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.cpp?r=2223>
-}
{#fun btTypedConstraint_m_isEnabled_set    `( BtTypedConstraintClass bc )' =>     { withBt* `bc' ,  `Bool'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.h?r=2223#66>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.cpp?r=2223>
-}
{#fun btTypedConstraint_m_isEnabled_get    `( BtTypedConstraintClass bc )' =>     { withBt* `bc'  } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.h?r=2223#69>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.cpp?r=2223>
-}
{#fun btTypedConstraint_m_needsFeedback_set    `( BtTypedConstraintClass bc )' =>     { withBt* `bc' ,  `Bool'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.h?r=2223#69>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.cpp?r=2223>
-}
{#fun btTypedConstraint_m_needsFeedback_get    `( BtTypedConstraintClass bc )' =>     { withBt* `bc'  } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.h?r=2223#79>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.cpp?r=2223>
-}
{#fun btTypedConstraint_m_rbA_set    `( BtTypedConstraintClass bc , BtRigidBodyClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.h?r=2223#79>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.cpp?r=2223>
-}
{#fun btTypedConstraint_m_rbA_get    `( BtTypedConstraintClass bc )' =>     { withBt* `bc'  } ->  `BtRigidBody'  mkBtRigidBody* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.h?r=2223#80>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.cpp?r=2223>
-}
{#fun btTypedConstraint_m_rbB_set    `( BtTypedConstraintClass bc , BtRigidBodyClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.h?r=2223#80>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.cpp?r=2223>
-}
{#fun btTypedConstraint_m_rbB_get    `( BtTypedConstraintClass bc )' =>     { withBt* `bc'  } ->  `BtRigidBody'  mkBtRigidBody* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.h?r=2223#57>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.cpp?r=2223>
-}
{#fun btTypedConstraint_m_userConstraintType_set    `( BtTypedConstraintClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.h?r=2223#57>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.cpp?r=2223>
-}
{#fun btTypedConstraint_m_userConstraintType_get    `( BtTypedConstraintClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
-- * btTypedConstraintData
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.h?r=2223#317>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.cpp?r=2223>
-}
{#fun btTypedConstraintData_new as btTypedConstraintData    {  } -> `BtTypedConstraintData' mkBtTypedConstraintData* #}
{#fun btTypedConstraintData_free    `( BtTypedConstraintDataClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.h?r=2223#327>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.cpp?r=2223>
-}
{#fun btTypedConstraintData_m_appliedImpulse_set    `( BtTypedConstraintDataClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.h?r=2223#327>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.cpp?r=2223>
-}
{#fun btTypedConstraintData_m_appliedImpulse_get    `( BtTypedConstraintDataClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.h?r=2223#328>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.cpp?r=2223>
-}
{#fun btTypedConstraintData_m_dbgDrawSize_set    `( BtTypedConstraintDataClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.h?r=2223#328>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.cpp?r=2223>
-}
{#fun btTypedConstraintData_m_dbgDrawSize_get    `( BtTypedConstraintDataClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.h?r=2223#330>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.cpp?r=2223>
-}
{#fun btTypedConstraintData_m_disableCollisionsBetweenLinkedBodies_set    `( BtTypedConstraintDataClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.h?r=2223#330>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.cpp?r=2223>
-}
{#fun btTypedConstraintData_m_disableCollisionsBetweenLinkedBodies_get    `( BtTypedConstraintDataClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.h?r=2223#320>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.cpp?r=2223>
-}
{#fun btTypedConstraintData_m_name_set    `( BtTypedConstraintDataClass bc )' =>     { withBt* `bc' ,  `String'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.h?r=2223#320>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.cpp?r=2223>
-}
{#fun btTypedConstraintData_m_name_get    `( BtTypedConstraintDataClass bc )' =>     { withBt* `bc'  } ->  `String'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.h?r=2223#325>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.cpp?r=2223>
-}
{#fun btTypedConstraintData_m_needsFeedback_set    `( BtTypedConstraintDataClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.h?r=2223#325>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.cpp?r=2223>
-}
{#fun btTypedConstraintData_m_needsFeedback_get    `( BtTypedConstraintDataClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.h?r=2223#322>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.cpp?r=2223>
-}
{#fun btTypedConstraintData_m_objectType_set    `( BtTypedConstraintDataClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.h?r=2223#322>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.cpp?r=2223>
-}
{#fun btTypedConstraintData_m_objectType_get    `( BtTypedConstraintDataClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.h?r=2223#318>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.cpp?r=2223>
-}
{#fun btTypedConstraintData_m_rbA_set    `( BtTypedConstraintDataClass bc , BtRigidBodyFloatDataClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.h?r=2223#318>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.cpp?r=2223>
-}
{#fun btTypedConstraintData_m_rbA_get    `( BtTypedConstraintDataClass bc )' =>     { withBt* `bc'  } ->  `BtRigidBodyFloatData'  mkBtRigidBodyFloatData* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.h?r=2223#319>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.cpp?r=2223>
-}
{#fun btTypedConstraintData_m_rbB_set    `( BtTypedConstraintDataClass bc , BtRigidBodyFloatDataClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.h?r=2223#319>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.cpp?r=2223>
-}
{#fun btTypedConstraintData_m_rbB_get    `( BtTypedConstraintDataClass bc )' =>     { withBt* `bc'  } ->  `BtRigidBodyFloatData'  mkBtRigidBodyFloatData* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.h?r=2223#324>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.cpp?r=2223>
-}
{#fun btTypedConstraintData_m_userConstraintId_set    `( BtTypedConstraintDataClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.h?r=2223#324>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.cpp?r=2223>
-}
{#fun btTypedConstraintData_m_userConstraintId_get    `( BtTypedConstraintDataClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.h?r=2223#323>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.cpp?r=2223>
-}
{#fun btTypedConstraintData_m_userConstraintType_set    `( BtTypedConstraintDataClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.h?r=2223#323>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btTypedConstraint.cpp?r=2223>
-}
{#fun btTypedConstraintData_m_userConstraintType_get    `( BtTypedConstraintDataClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
-- * btUniversalConstraint
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btUniversalConstraint.h?r=2223#44>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btUniversalConstraint.cpp?r=2223>
-}
{#fun btUniversalConstraint_new as btUniversalConstraint    `( BtRigidBodyClass p0 , BtRigidBodyClass p1 )' =>     {  withBt* `p0' , withBt* `p1' , withVec3* `Vec3' , withVec3* `Vec3' , withVec3* `Vec3'  } -> `BtUniversalConstraint' mkBtUniversalConstraint* #}
{#fun btUniversalConstraint_free    `( BtUniversalConstraintClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btUniversalConstraint.h?r=2223#54>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btUniversalConstraint.cpp?r=2223>
-}
{#fun btUniversalConstraint_setLowerLimit as btUniversalConstraint_setLowerLimit    `( BtUniversalConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ ang1min
,  `Float'  -- ^ ang2min
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btUniversalConstraint.h?r=2223#47>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btUniversalConstraint.cpp?r=2223>
-}
{#fun btUniversalConstraint_getAnchor2 as btUniversalConstraint_getAnchor2    `( BtUniversalConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btUniversalConstraint.h?r=2223#56>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btUniversalConstraint.cpp?r=2223>
-}
{#fun btUniversalConstraint_setAxis as btUniversalConstraint_setAxis    `( BtUniversalConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ axis1
, withVec3* `Vec3'  peekVec3* -- ^ axis2
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btUniversalConstraint.h?r=2223#56>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btUniversalConstraint.cpp?r=2223>
-}
{#fun btUniversalConstraint_setAxis as btUniversalConstraint_setAxis'    `( BtUniversalConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ axis1
, allocaVec3-  `Vec3'  peekVec3* -- ^ axis2
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btUniversalConstraint.h?r=2223#48>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btUniversalConstraint.cpp?r=2223>
-}
{#fun btUniversalConstraint_getAxis1 as btUniversalConstraint_getAxis1    `( BtUniversalConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btUniversalConstraint.h?r=2223#46>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btUniversalConstraint.cpp?r=2223>
-}
{#fun btUniversalConstraint_getAnchor as btUniversalConstraint_getAnchor    `( BtUniversalConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btUniversalConstraint.h?r=2223#49>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btUniversalConstraint.cpp?r=2223>
-}
{#fun btUniversalConstraint_getAxis2 as btUniversalConstraint_getAxis2    `( BtUniversalConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btUniversalConstraint.h?r=2223#53>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btUniversalConstraint.cpp?r=2223>
-}
{#fun btUniversalConstraint_setUpperLimit as btUniversalConstraint_setUpperLimit    `( BtUniversalConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ ang1max
,  `Float'  -- ^ ang2max
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btUniversalConstraint.h?r=2223#51>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btUniversalConstraint.cpp?r=2223>
-}
{#fun btUniversalConstraint_getAngle2 as btUniversalConstraint_getAngle2    `( BtUniversalConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btUniversalConstraint.h?r=2223#50>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btUniversalConstraint.cpp?r=2223>
-}
{#fun btUniversalConstraint_getAngle1 as btUniversalConstraint_getAngle1    `( BtUniversalConstraintClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btUniversalConstraint.h?r=2223#37>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btUniversalConstraint.cpp?r=2223>
-}
{#fun btUniversalConstraint_m_anchor_set    `( BtUniversalConstraintClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btUniversalConstraint.h?r=2223#37>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btUniversalConstraint.cpp?r=2223>
-}
{#fun btUniversalConstraint_m_anchor_get    `( BtUniversalConstraintClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btUniversalConstraint.h?r=2223#38>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btUniversalConstraint.cpp?r=2223>
-}
{#fun btUniversalConstraint_m_axis1_set    `( BtUniversalConstraintClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btUniversalConstraint.h?r=2223#38>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btUniversalConstraint.cpp?r=2223>
-}
{#fun btUniversalConstraint_m_axis1_get    `( BtUniversalConstraintClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btUniversalConstraint.h?r=2223#39>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btUniversalConstraint.cpp?r=2223>
-}
{#fun btUniversalConstraint_m_axis2_set    `( BtUniversalConstraintClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btUniversalConstraint.h?r=2223#39>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletDynamics/ConstraintSolver/btUniversalConstraint.cpp?r=2223>
-}
{#fun btUniversalConstraint_m_axis2_get    `( BtUniversalConstraintClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
