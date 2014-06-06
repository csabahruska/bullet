{-#LANGUAGE ForeignFunctionInterface#-}
#include "Bullet.h"
module Physics.Bullet.Raw.BulletCollision.NarrowPhaseCollision (
module Physics.Bullet.Raw.BulletCollision.NarrowPhaseCollision
) where
import Control.Monad
import Foreign.Marshal.Alloc
import Foreign.ForeignPtr.Unsafe
import Foreign.Ptr
import Physics.Bullet.Raw.C2HS
import Physics.Bullet.Raw.Types
import Physics.Bullet.Raw.Class
-- * ClosestPointInput
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btDiscreteCollisionDetectorInterface.h?r=2223#45>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btDiscreteCollisionDetectorInterface.cpp?r=2223>
-}
{#fun btDiscreteCollisionDetectorInterface_ClosestPointInput_new as btDiscreteCollisionDetectorInterface_ClosestPointInput    {  } -> `BtDiscreteCollisionDetectorInterface_ClosestPointInput' mkBtDiscreteCollisionDetectorInterface_ClosestPointInput* #}
{#fun btDiscreteCollisionDetectorInterface_ClosestPointInput_free    `( BtDiscreteCollisionDetectorInterface_ClosestPointInputClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btDiscreteCollisionDetectorInterface.h?r=2223#51>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btDiscreteCollisionDetectorInterface.cpp?r=2223>
-}
{#fun btDiscreteCollisionDetectorInterface_ClosestPointInput_m_transformA_set    `( BtDiscreteCollisionDetectorInterface_ClosestPointInputClass bc )' =>     { withBt* `bc' , withTransform* `Transform'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btDiscreteCollisionDetectorInterface.h?r=2223#51>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btDiscreteCollisionDetectorInterface.cpp?r=2223>
-}
{#fun btDiscreteCollisionDetectorInterface_ClosestPointInput_m_transformA_get    `( BtDiscreteCollisionDetectorInterface_ClosestPointInputClass bc )' =>     { withBt* `bc' , allocaTransform-  `Transform'  peekTransform* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btDiscreteCollisionDetectorInterface.h?r=2223#52>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btDiscreteCollisionDetectorInterface.cpp?r=2223>
-}
{#fun btDiscreteCollisionDetectorInterface_ClosestPointInput_m_transformB_set    `( BtDiscreteCollisionDetectorInterface_ClosestPointInputClass bc )' =>     { withBt* `bc' , withTransform* `Transform'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btDiscreteCollisionDetectorInterface.h?r=2223#52>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btDiscreteCollisionDetectorInterface.cpp?r=2223>
-}
{#fun btDiscreteCollisionDetectorInterface_ClosestPointInput_m_transformB_get    `( BtDiscreteCollisionDetectorInterface_ClosestPointInputClass bc )' =>     { withBt* `bc' , allocaTransform-  `Transform'  peekTransform* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btDiscreteCollisionDetectorInterface.h?r=2223#53>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btDiscreteCollisionDetectorInterface.cpp?r=2223>
-}
{#fun btDiscreteCollisionDetectorInterface_ClosestPointInput_m_maximumDistanceSquared_set    `( BtDiscreteCollisionDetectorInterface_ClosestPointInputClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btDiscreteCollisionDetectorInterface.h?r=2223#53>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btDiscreteCollisionDetectorInterface.cpp?r=2223>
-}
{#fun btDiscreteCollisionDetectorInterface_ClosestPointInput_m_maximumDistanceSquared_get    `( BtDiscreteCollisionDetectorInterface_ClosestPointInputClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btDiscreteCollisionDetectorInterface.h?r=2223#54>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btDiscreteCollisionDetectorInterface.cpp?r=2223>
-}
{#fun btDiscreteCollisionDetectorInterface_ClosestPointInput_m_stackAlloc_set    `( BtDiscreteCollisionDetectorInterface_ClosestPointInputClass bc , BtStackAllocClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btDiscreteCollisionDetectorInterface.h?r=2223#54>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btDiscreteCollisionDetectorInterface.cpp?r=2223>
-}
{#fun btDiscreteCollisionDetectorInterface_ClosestPointInput_m_stackAlloc_get    `( BtDiscreteCollisionDetectorInterface_ClosestPointInputClass bc )' =>     { withBt* `bc'  } ->  `BtStackAlloc'  mkBtStackAlloc* #}
-- * Result
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btDiscreteCollisionDetectorInterface.h?r=2223#39>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btDiscreteCollisionDetectorInterface.cpp?r=2223>
-}
{#fun btDiscreteCollisionDetectorInterface_Result_setShapeIdentifiersB as btDiscreteCollisionDetectorInterface_Result_setShapeIdentifiersB    `( BtDiscreteCollisionDetectorInterface_ResultClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ partId1
,  `Int'  -- ^ index1
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btDiscreteCollisionDetectorInterface.h?r=2223#38>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btDiscreteCollisionDetectorInterface.cpp?r=2223>
-}
{#fun btDiscreteCollisionDetectorInterface_Result_setShapeIdentifiersA as btDiscreteCollisionDetectorInterface_Result_setShapeIdentifiersA    `( BtDiscreteCollisionDetectorInterface_ResultClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ partId0
,  `Int'  -- ^ index0
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btDiscreteCollisionDetectorInterface.h?r=2223#40>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btDiscreteCollisionDetectorInterface.cpp?r=2223>
-}
{#fun btDiscreteCollisionDetectorInterface_Result_addContactPoint as btDiscreteCollisionDetectorInterface_Result_addContactPoint    `( BtDiscreteCollisionDetectorInterface_ResultClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ normalOnBInWorld
, withVec3* `Vec3'  peekVec3* -- ^ pointInWorld
,  `Float'  -- ^ depth
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btDiscreteCollisionDetectorInterface.h?r=2223#40>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btDiscreteCollisionDetectorInterface.cpp?r=2223>
-}
{#fun btDiscreteCollisionDetectorInterface_Result_addContactPoint as btDiscreteCollisionDetectorInterface_Result_addContactPoint'    `( BtDiscreteCollisionDetectorInterface_ResultClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ normalOnBInWorld
, allocaVec3-  `Vec3'  peekVec3* -- ^ pointInWorld
,  `Float'  -- ^ depth
 } ->  `()'   #}
-- * btConstraintRow
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btManifoldPoint.h?r=2223#27>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btManifoldPoint.cpp?r=2223>
-}
{#fun btConstraintRow_new as btConstraintRow    {  } -> `BtConstraintRow' mkBtConstraintRow* #}
{#fun btConstraintRow_free    `( BtConstraintRowClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btManifoldPoint.h?r=2223#29>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btManifoldPoint.cpp?r=2223>
-}
{#fun btConstraintRow_m_rhs_set    `( BtConstraintRowClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btManifoldPoint.h?r=2223#29>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btManifoldPoint.cpp?r=2223>
-}
{#fun btConstraintRow_m_rhs_get    `( BtConstraintRowClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btManifoldPoint.h?r=2223#30>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btManifoldPoint.cpp?r=2223>
-}
{#fun btConstraintRow_m_jacDiagInv_set    `( BtConstraintRowClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btManifoldPoint.h?r=2223#30>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btManifoldPoint.cpp?r=2223>
-}
{#fun btConstraintRow_m_jacDiagInv_get    `( BtConstraintRowClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btManifoldPoint.h?r=2223#31>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btManifoldPoint.cpp?r=2223>
-}
{#fun btConstraintRow_m_lowerLimit_set    `( BtConstraintRowClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btManifoldPoint.h?r=2223#31>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btManifoldPoint.cpp?r=2223>
-}
{#fun btConstraintRow_m_lowerLimit_get    `( BtConstraintRowClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btManifoldPoint.h?r=2223#32>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btManifoldPoint.cpp?r=2223>
-}
{#fun btConstraintRow_m_upperLimit_set    `( BtConstraintRowClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btManifoldPoint.h?r=2223#32>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btManifoldPoint.cpp?r=2223>
-}
{#fun btConstraintRow_m_upperLimit_get    `( BtConstraintRowClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btManifoldPoint.h?r=2223#33>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btManifoldPoint.cpp?r=2223>
-}
{#fun btConstraintRow_m_accumImpulse_set    `( BtConstraintRowClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btManifoldPoint.h?r=2223#33>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btManifoldPoint.cpp?r=2223>
-}
{#fun btConstraintRow_m_accumImpulse_get    `( BtConstraintRowClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
-- * btDiscreteCollisionDetectorInterface
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btDiscreteCollisionDetectorInterface.h?r=2223#63>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btDiscreteCollisionDetectorInterface.cpp?r=2223>
-}
{#fun btDiscreteCollisionDetectorInterface_getClosestPoints as btDiscreteCollisionDetectorInterface_getClosestPoints    `( BtDiscreteCollisionDetectorInterfaceClass bc , BtDiscreteCollisionDetectorInterface_ClosestPointInputClass p0 , BtDiscreteCollisionDetectorInterface_ResultClass p1 , BtIDebugDrawClass p2 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ input
, withBt* `p1'  -- ^ output
, withBt* `p2'  -- ^ debugDraw
,  `Bool'  -- ^ swapResults
 } ->  `()'   #}
-- * btGjkEpaSolver2
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btGjkEpa2.h?r=2223#32>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btGjkEpa2.cpp?r=2223>
-}
{#fun btGjkEpaSolver2_new as btGjkEpaSolver2    {  } -> `BtGjkEpaSolver2' mkBtGjkEpaSolver2* #}
{#fun btGjkEpaSolver2_free    `( BtGjkEpaSolver2Class bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btGjkEpa2.h?r=2223#47>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btGjkEpa2.cpp?r=2223>
-}
{#fun btGjkEpaSolver2_StackSizeRequirement as btGjkEpaSolver2_StackSizeRequirement    `( )' =>     {  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btGjkEpa2.h?r=2223#52>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btGjkEpa2.cpp?r=2223>
-}
{#fun btGjkEpaSolver2_Distance as btGjkEpaSolver2_Distance    `(  BtConvexShapeClass p0 , BtConvexShapeClass p2 , BtGjkEpaSolver2_sResultsClass p5 )' =>     {  withBt* `p0'  -- ^ shape0
, withTransform* `Transform'  peekTransform* -- ^ wtrs0
, withBt* `p2'  -- ^ shape1
, withTransform* `Transform'  peekTransform* -- ^ wtrs1
, withVec3* `Vec3'  peekVec3* -- ^ guess
, withBt* `p5'  -- ^ results
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btGjkEpa2.h?r=2223#52>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btGjkEpa2.cpp?r=2223>
-}
{#fun btGjkEpaSolver2_Distance as btGjkEpaSolver2_Distance'    `(  BtConvexShapeClass p0 , BtConvexShapeClass p2 , BtGjkEpaSolver2_sResultsClass p5 )' =>     {  withBt* `p0'  -- ^ shape0
, allocaTransform-  `Transform'  peekTransform* -- ^ wtrs0
, withBt* `p2'  -- ^ shape1
, allocaTransform-  `Transform'  peekTransform* -- ^ wtrs1
, allocaVec3-  `Vec3'  peekVec3* -- ^ guess
, withBt* `p5'  -- ^ results
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btGjkEpa2.h?r=2223#58>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btGjkEpa2.cpp?r=2223>
-}
{#fun btGjkEpaSolver2_Penetration as btGjkEpaSolver2_Penetration    `(  BtConvexShapeClass p0 , BtConvexShapeClass p2 , BtGjkEpaSolver2_sResultsClass p5 )' =>     {  withBt* `p0'  -- ^ shape0
, withTransform* `Transform'  peekTransform* -- ^ wtrs0
, withBt* `p2'  -- ^ shape1
, withTransform* `Transform'  peekTransform* -- ^ wtrs1
, withVec3* `Vec3'  peekVec3* -- ^ guess
, withBt* `p5'  -- ^ results
,  `Bool'  -- ^ usemargins
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btGjkEpa2.h?r=2223#58>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btGjkEpa2.cpp?r=2223>
-}
{#fun btGjkEpaSolver2_Penetration as btGjkEpaSolver2_Penetration'    `(  BtConvexShapeClass p0 , BtConvexShapeClass p2 , BtGjkEpaSolver2_sResultsClass p5 )' =>     {  withBt* `p0'  -- ^ shape0
, allocaTransform-  `Transform'  peekTransform* -- ^ wtrs0
, withBt* `p2'  -- ^ shape1
, allocaTransform-  `Transform'  peekTransform* -- ^ wtrs1
, allocaVec3-  `Vec3'  peekVec3* -- ^ guess
, withBt* `p5'  -- ^ results
,  `Bool'  -- ^ usemargins
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btGjkEpa2.h?r=2223#64>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btGjkEpa2.cpp?r=2223>
-}
{#fun btGjkEpaSolver2_SignedDistance0 as btGjkEpaSolver2_SignedDistance    `(  BtConvexShapeClass p2 , BtGjkEpaSolver2_sResultsClass p4 )' =>     {  withVec3* `Vec3'  peekVec3* -- ^ position
,  `Float'  -- ^ margin
, withBt* `p2'  -- ^ shape
, withTransform* `Transform'  peekTransform* -- ^ wtrs
, withBt* `p4'  -- ^ results
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btGjkEpa2.h?r=2223#64>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btGjkEpa2.cpp?r=2223>
-}
{#fun btGjkEpaSolver2_SignedDistance0 as btGjkEpaSolver2_SignedDistance'    `(  BtConvexShapeClass p2 , BtGjkEpaSolver2_sResultsClass p4 )' =>     {  allocaVec3-  `Vec3'  peekVec3* -- ^ position
,  `Float'  -- ^ margin
, withBt* `p2'  -- ^ shape
, allocaTransform-  `Transform'  peekTransform* -- ^ wtrs
, withBt* `p4'  -- ^ results
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btGjkEpa2.h?r=2223#64>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btGjkEpa2.cpp?r=2223>
-}
{#fun btGjkEpaSolver2_SignedDistance0 as btGjkEpaSolver2_SignedDistance0    `(  BtConvexShapeClass p2 , BtGjkEpaSolver2_sResultsClass p4 )' =>     {  withVec3* `Vec3'  peekVec3* -- ^ position
,  `Float'  -- ^ margin
, withBt* `p2'  -- ^ shape
, withTransform* `Transform'  peekTransform* -- ^ wtrs
, withBt* `p4'  -- ^ results
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btGjkEpa2.h?r=2223#64>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btGjkEpa2.cpp?r=2223>
-}
{#fun btGjkEpaSolver2_SignedDistance0 as btGjkEpaSolver2_SignedDistance0'    `(  BtConvexShapeClass p2 , BtGjkEpaSolver2_sResultsClass p4 )' =>     {  allocaVec3-  `Vec3'  peekVec3* -- ^ position
,  `Float'  -- ^ margin
, withBt* `p2'  -- ^ shape
, allocaTransform-  `Transform'  peekTransform* -- ^ wtrs
, withBt* `p4'  -- ^ results
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btGjkEpa2.h?r=2223#69>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btGjkEpa2.cpp?r=2223>
-}
{#fun btGjkEpaSolver2_SignedDistance1 as btGjkEpaSolver2_SignedDistance1    `(  BtConvexShapeClass p0 , BtConvexShapeClass p2 , BtGjkEpaSolver2_sResultsClass p5 )' =>     {  withBt* `p0'  -- ^ shape0
, withTransform* `Transform'  peekTransform* -- ^ wtrs0
, withBt* `p2'  -- ^ shape1
, withTransform* `Transform'  peekTransform* -- ^ wtrs1
, withVec3* `Vec3'  peekVec3* -- ^ guess
, withBt* `p5'  -- ^ results
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btGjkEpa2.h?r=2223#69>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btGjkEpa2.cpp?r=2223>
-}
{#fun btGjkEpaSolver2_SignedDistance1 as btGjkEpaSolver2_SignedDistance1'    `(  BtConvexShapeClass p0 , BtConvexShapeClass p2 , BtGjkEpaSolver2_sResultsClass p5 )' =>     {  withBt* `p0'  -- ^ shape0
, allocaTransform-  `Transform'  peekTransform* -- ^ wtrs0
, withBt* `p2'  -- ^ shape1
, allocaTransform-  `Transform'  peekTransform* -- ^ wtrs1
, allocaVec3-  `Vec3'  peekVec3* -- ^ guess
, withBt* `p5'  -- ^ results
 } ->  `Bool'   #}
-- * btGjkPairDetector
{#fun btGjkPairDetector_free    `( BtGjkPairDetectorClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btGjkPairDetector.h?r=2223#75>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btGjkPairDetector.cpp?r=2223>
-}
{#fun btGjkPairDetector_setCachedSeperatingAxis as btGjkPairDetector_setCachedSeperatingAxis    `( BtGjkPairDetectorClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ seperatingAxis
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btGjkPairDetector.h?r=2223#75>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btGjkPairDetector.cpp?r=2223>
-}
{#fun btGjkPairDetector_setCachedSeperatingAxis as btGjkPairDetector_setCachedSeperatingAxis'    `( BtGjkPairDetectorClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ seperatingAxis
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btGjkPairDetector.h?r=2223#80>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btGjkPairDetector.cpp?r=2223>
-}
{#fun btGjkPairDetector_getCachedSeparatingAxis as btGjkPairDetector_getCachedSeparatingAxis    `( BtGjkPairDetectorClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btGjkPairDetector.h?r=2223#61>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btGjkPairDetector.cpp?r=2223>
-}
{#fun btGjkPairDetector_getClosestPoints as btGjkPairDetector_getClosestPoints    `( BtGjkPairDetectorClass bc , BtDiscreteCollisionDetectorInterface_ClosestPointInputClass p0 , BtDiscreteCollisionDetectorInterface_ResultClass p1 , BtIDebugDrawClass p2 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ input
, withBt* `p1'  -- ^ output
, withBt* `p2'  -- ^ debugDraw
,  `Bool'  -- ^ swapResults
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btGjkPairDetector.h?r=2223#66>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btGjkPairDetector.cpp?r=2223>
-}
{#fun btGjkPairDetector_setMinkowskiA as btGjkPairDetector_setMinkowskiA    `( BtGjkPairDetectorClass bc , BtConvexShapeClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ minkA
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btGjkPairDetector.h?r=2223#71>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btGjkPairDetector.cpp?r=2223>
-}
{#fun btGjkPairDetector_setMinkowskiB as btGjkPairDetector_setMinkowskiB    `( BtGjkPairDetectorClass bc , BtConvexShapeClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ minkB
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btGjkPairDetector.h?r=2223#95>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btGjkPairDetector.cpp?r=2223>
-}
{#fun btGjkPairDetector_setIgnoreMargin as btGjkPairDetector_setIgnoreMargin    `( BtGjkPairDetectorClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Bool'  -- ^ ignoreMargin
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btGjkPairDetector.h?r=2223#63>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btGjkPairDetector.cpp?r=2223>
-}
{#fun btGjkPairDetector_getClosestPointsNonVirtual as btGjkPairDetector_getClosestPointsNonVirtual    `( BtGjkPairDetectorClass bc , BtDiscreteCollisionDetectorInterface_ClosestPointInputClass p0 , BtDiscreteCollisionDetectorInterface_ResultClass p1 , BtIDebugDrawClass p2 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ input
, withBt* `p1'  -- ^ output
, withBt* `p2'  -- ^ debugDraw
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btGjkPairDetector.h?r=2223#84>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btGjkPairDetector.cpp?r=2223>
-}
{#fun btGjkPairDetector_getCachedSeparatingDistance as btGjkPairDetector_getCachedSeparatingDistance    `( BtGjkPairDetectorClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btGjkPairDetector.h?r=2223#34>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btGjkPairDetector.cpp?r=2223>
-}
{#fun btGjkPairDetector_m_cachedSeparatingAxis_set    `( BtGjkPairDetectorClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btGjkPairDetector.h?r=2223#34>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btGjkPairDetector.cpp?r=2223>
-}
{#fun btGjkPairDetector_m_cachedSeparatingAxis_get    `( BtGjkPairDetectorClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btGjkPairDetector.h?r=2223#36>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btGjkPairDetector.cpp?r=2223>
-}
{#fun btGjkPairDetector_m_simplexSolver_set    `( BtGjkPairDetectorClass bc , BtVoronoiSimplexSolverClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btGjkPairDetector.h?r=2223#36>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btGjkPairDetector.cpp?r=2223>
-}
{#fun btGjkPairDetector_m_simplexSolver_get    `( BtGjkPairDetectorClass bc )' =>     { withBt* `bc'  } ->  `BtVoronoiSimplexSolver'  mkBtVoronoiSimplexSolver* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btGjkPairDetector.h?r=2223#37>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btGjkPairDetector.cpp?r=2223>
-}
{#fun btGjkPairDetector_m_minkowskiA_set    `( BtGjkPairDetectorClass bc , BtConvexShapeClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btGjkPairDetector.h?r=2223#37>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btGjkPairDetector.cpp?r=2223>
-}
{#fun btGjkPairDetector_m_minkowskiA_get    `( BtGjkPairDetectorClass bc )' =>     { withBt* `bc'  } ->  `BtConvexShape'  mkBtConvexShape* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btGjkPairDetector.h?r=2223#38>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btGjkPairDetector.cpp?r=2223>
-}
{#fun btGjkPairDetector_m_minkowskiB_set    `( BtGjkPairDetectorClass bc , BtConvexShapeClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btGjkPairDetector.h?r=2223#38>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btGjkPairDetector.cpp?r=2223>
-}
{#fun btGjkPairDetector_m_minkowskiB_get    `( BtGjkPairDetectorClass bc )' =>     { withBt* `bc'  } ->  `BtConvexShape'  mkBtConvexShape* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btGjkPairDetector.h?r=2223#39>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btGjkPairDetector.cpp?r=2223>
-}
{#fun btGjkPairDetector_m_shapeTypeA_set    `( BtGjkPairDetectorClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btGjkPairDetector.h?r=2223#39>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btGjkPairDetector.cpp?r=2223>
-}
{#fun btGjkPairDetector_m_shapeTypeA_get    `( BtGjkPairDetectorClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btGjkPairDetector.h?r=2223#40>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btGjkPairDetector.cpp?r=2223>
-}
{#fun btGjkPairDetector_m_shapeTypeB_set    `( BtGjkPairDetectorClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btGjkPairDetector.h?r=2223#40>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btGjkPairDetector.cpp?r=2223>
-}
{#fun btGjkPairDetector_m_shapeTypeB_get    `( BtGjkPairDetectorClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btGjkPairDetector.h?r=2223#41>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btGjkPairDetector.cpp?r=2223>
-}
{#fun btGjkPairDetector_m_marginA_set    `( BtGjkPairDetectorClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btGjkPairDetector.h?r=2223#41>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btGjkPairDetector.cpp?r=2223>
-}
{#fun btGjkPairDetector_m_marginA_get    `( BtGjkPairDetectorClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btGjkPairDetector.h?r=2223#42>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btGjkPairDetector.cpp?r=2223>
-}
{#fun btGjkPairDetector_m_marginB_set    `( BtGjkPairDetectorClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btGjkPairDetector.h?r=2223#42>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btGjkPairDetector.cpp?r=2223>
-}
{#fun btGjkPairDetector_m_marginB_get    `( BtGjkPairDetectorClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btGjkPairDetector.h?r=2223#44>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btGjkPairDetector.cpp?r=2223>
-}
{#fun btGjkPairDetector_m_ignoreMargin_set    `( BtGjkPairDetectorClass bc )' =>     { withBt* `bc' ,  `Bool'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btGjkPairDetector.h?r=2223#44>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btGjkPairDetector.cpp?r=2223>
-}
{#fun btGjkPairDetector_m_ignoreMargin_get    `( BtGjkPairDetectorClass bc )' =>     { withBt* `bc'  } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btGjkPairDetector.h?r=2223#45>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btGjkPairDetector.cpp?r=2223>
-}
{#fun btGjkPairDetector_m_cachedSeparatingDistance_set    `( BtGjkPairDetectorClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btGjkPairDetector.h?r=2223#45>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btGjkPairDetector.cpp?r=2223>
-}
{#fun btGjkPairDetector_m_cachedSeparatingDistance_get    `( BtGjkPairDetectorClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btGjkPairDetector.h?r=2223#51>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btGjkPairDetector.cpp?r=2223>
-}
{#fun btGjkPairDetector_m_lastUsedMethod_set    `( BtGjkPairDetectorClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btGjkPairDetector.h?r=2223#51>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btGjkPairDetector.cpp?r=2223>
-}
{#fun btGjkPairDetector_m_lastUsedMethod_get    `( BtGjkPairDetectorClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btGjkPairDetector.h?r=2223#52>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btGjkPairDetector.cpp?r=2223>
-}
{#fun btGjkPairDetector_m_curIter_set    `( BtGjkPairDetectorClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btGjkPairDetector.h?r=2223#52>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btGjkPairDetector.cpp?r=2223>
-}
{#fun btGjkPairDetector_m_curIter_get    `( BtGjkPairDetectorClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btGjkPairDetector.h?r=2223#53>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btGjkPairDetector.cpp?r=2223>
-}
{#fun btGjkPairDetector_m_degenerateSimplex_set    `( BtGjkPairDetectorClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btGjkPairDetector.h?r=2223#53>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btGjkPairDetector.cpp?r=2223>
-}
{#fun btGjkPairDetector_m_degenerateSimplex_get    `( BtGjkPairDetectorClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btGjkPairDetector.h?r=2223#54>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btGjkPairDetector.cpp?r=2223>
-}
{#fun btGjkPairDetector_m_catchDegeneracies_set    `( BtGjkPairDetectorClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btGjkPairDetector.h?r=2223#54>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btGjkPairDetector.cpp?r=2223>
-}
{#fun btGjkPairDetector_m_catchDegeneracies_get    `( BtGjkPairDetectorClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
-- * btManifoldPoint
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btManifoldPoint.h?r=2223#45>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btManifoldPoint.cpp?r=2223>
-}
{#fun btManifoldPoint_new0 as btManifoldPoint0    {  } -> `BtManifoldPoint' mkBtManifoldPoint* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btManifoldPoint.h?r=2223#61>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btManifoldPoint.cpp?r=2223>
-}
{#fun btManifoldPoint_new1 as btManifoldPoint1    {  withVec3* `Vec3' , withVec3* `Vec3' , withVec3* `Vec3' ,  `Float'  } -> `BtManifoldPoint' mkBtManifoldPoint* #}
{#fun btManifoldPoint_free    `( BtManifoldPointClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btManifoldPoint.h?r=2223#143>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btManifoldPoint.cpp?r=2223>
-}
{#fun btManifoldPoint_setDistance as btManifoldPoint_setDistance    `( BtManifoldPointClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ dist
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btManifoldPoint.h?r=2223#128>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btManifoldPoint.cpp?r=2223>
-}
{#fun btManifoldPoint_getLifeTime as btManifoldPoint_getLifeTime    `( BtManifoldPointClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btManifoldPoint.h?r=2223#124>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btManifoldPoint.cpp?r=2223>
-}
{#fun btManifoldPoint_getDistance as btManifoldPoint_getDistance    `( BtManifoldPointClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btManifoldPoint.h?r=2223#138>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btManifoldPoint.cpp?r=2223>
-}
{#fun btManifoldPoint_getPositionWorldOnB as btManifoldPoint_getPositionWorldOnB    `( BtManifoldPointClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btManifoldPoint.h?r=2223#149>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btManifoldPoint.cpp?r=2223>
-}
{#fun btManifoldPoint_getAppliedImpulse as btManifoldPoint_getAppliedImpulse    `( BtManifoldPointClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btManifoldPoint.h?r=2223#133>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btManifoldPoint.cpp?r=2223>
-}
{#fun btManifoldPoint_getPositionWorldOnA as btManifoldPoint_getPositionWorldOnA    `( BtManifoldPointClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btManifoldPoint.h?r=2223#104>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btManifoldPoint.cpp?r=2223>
-}
{#fun btManifoldPoint_m_appliedImpulse_set    `( BtManifoldPointClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btManifoldPoint.h?r=2223#104>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btManifoldPoint.cpp?r=2223>
-}
{#fun btManifoldPoint_m_appliedImpulse_get    `( BtManifoldPointClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btManifoldPoint.h?r=2223#107>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btManifoldPoint.cpp?r=2223>
-}
{#fun btManifoldPoint_m_appliedImpulseLateral1_set    `( BtManifoldPointClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btManifoldPoint.h?r=2223#107>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btManifoldPoint.cpp?r=2223>
-}
{#fun btManifoldPoint_m_appliedImpulseLateral1_get    `( BtManifoldPointClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btManifoldPoint.h?r=2223#108>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btManifoldPoint.cpp?r=2223>
-}
{#fun btManifoldPoint_m_appliedImpulseLateral2_set    `( BtManifoldPointClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btManifoldPoint.h?r=2223#108>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btManifoldPoint.cpp?r=2223>
-}
{#fun btManifoldPoint_m_appliedImpulseLateral2_get    `( BtManifoldPointClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btManifoldPoint.h?r=2223#94>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btManifoldPoint.cpp?r=2223>
-}
{#fun btManifoldPoint_m_combinedFriction_set    `( BtManifoldPointClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btManifoldPoint.h?r=2223#94>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btManifoldPoint.cpp?r=2223>
-}
{#fun btManifoldPoint_m_combinedFriction_get    `( BtManifoldPointClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btManifoldPoint.h?r=2223#95>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btManifoldPoint.cpp?r=2223>
-}
{#fun btManifoldPoint_m_combinedRestitution_set    `( BtManifoldPointClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btManifoldPoint.h?r=2223#95>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btManifoldPoint.cpp?r=2223>
-}
{#fun btManifoldPoint_m_combinedRestitution_get    `( BtManifoldPointClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btManifoldPoint.h?r=2223#111>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btManifoldPoint.cpp?r=2223>
-}
{#fun btManifoldPoint_m_contactCFM1_set    `( BtManifoldPointClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btManifoldPoint.h?r=2223#111>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btManifoldPoint.cpp?r=2223>
-}
{#fun btManifoldPoint_m_contactCFM1_get    `( BtManifoldPointClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btManifoldPoint.h?r=2223#112>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btManifoldPoint.cpp?r=2223>
-}
{#fun btManifoldPoint_m_contactCFM2_set    `( BtManifoldPointClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btManifoldPoint.h?r=2223#112>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btManifoldPoint.cpp?r=2223>
-}
{#fun btManifoldPoint_m_contactCFM2_get    `( BtManifoldPointClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btManifoldPoint.h?r=2223#109>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btManifoldPoint.cpp?r=2223>
-}
{#fun btManifoldPoint_m_contactMotion1_set    `( BtManifoldPointClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btManifoldPoint.h?r=2223#109>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btManifoldPoint.cpp?r=2223>
-}
{#fun btManifoldPoint_m_contactMotion1_get    `( BtManifoldPointClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btManifoldPoint.h?r=2223#110>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btManifoldPoint.cpp?r=2223>
-}
{#fun btManifoldPoint_m_contactMotion2_set    `( BtManifoldPointClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btManifoldPoint.h?r=2223#110>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btManifoldPoint.cpp?r=2223>
-}
{#fun btManifoldPoint_m_contactMotion2_get    `( BtManifoldPointClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btManifoldPoint.h?r=2223#93>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btManifoldPoint.cpp?r=2223>
-}
{#fun btManifoldPoint_m_distance1_set    `( BtManifoldPointClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btManifoldPoint.h?r=2223#93>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btManifoldPoint.cpp?r=2223>
-}
{#fun btManifoldPoint_m_distance1_get    `( BtManifoldPointClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btManifoldPoint.h?r=2223#100>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btManifoldPoint.cpp?r=2223>
-}
{#fun btManifoldPoint_m_index0_set    `( BtManifoldPointClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btManifoldPoint.h?r=2223#100>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btManifoldPoint.cpp?r=2223>
-}
{#fun btManifoldPoint_m_index0_get    `( BtManifoldPointClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btManifoldPoint.h?r=2223#101>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btManifoldPoint.cpp?r=2223>
-}
{#fun btManifoldPoint_m_index1_set    `( BtManifoldPointClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btManifoldPoint.h?r=2223#101>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btManifoldPoint.cpp?r=2223>
-}
{#fun btManifoldPoint_m_index1_get    `( BtManifoldPointClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btManifoldPoint.h?r=2223#116>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btManifoldPoint.cpp?r=2223>
-}
{#fun btManifoldPoint_m_lateralFrictionDir1_set    `( BtManifoldPointClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btManifoldPoint.h?r=2223#116>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btManifoldPoint.cpp?r=2223>
-}
{#fun btManifoldPoint_m_lateralFrictionDir1_get    `( BtManifoldPointClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btManifoldPoint.h?r=2223#117>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btManifoldPoint.cpp?r=2223>
-}
{#fun btManifoldPoint_m_lateralFrictionDir2_set    `( BtManifoldPointClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btManifoldPoint.h?r=2223#117>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btManifoldPoint.cpp?r=2223>
-}
{#fun btManifoldPoint_m_lateralFrictionDir2_get    `( BtManifoldPointClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btManifoldPoint.h?r=2223#106>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btManifoldPoint.cpp?r=2223>
-}
{#fun btManifoldPoint_m_lateralFrictionInitialized_set    `( BtManifoldPointClass bc )' =>     { withBt* `bc' ,  `Bool'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btManifoldPoint.h?r=2223#106>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btManifoldPoint.cpp?r=2223>
-}
{#fun btManifoldPoint_m_lateralFrictionInitialized_get    `( BtManifoldPointClass bc )' =>     { withBt* `bc'  } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btManifoldPoint.h?r=2223#114>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btManifoldPoint.cpp?r=2223>
-}
{#fun btManifoldPoint_m_lifeTime_set    `( BtManifoldPointClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btManifoldPoint.h?r=2223#114>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btManifoldPoint.cpp?r=2223>
-}
{#fun btManifoldPoint_m_lifeTime_get    `( BtManifoldPointClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btManifoldPoint.h?r=2223#86>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btManifoldPoint.cpp?r=2223>
-}
{#fun btManifoldPoint_m_localPointA_set    `( BtManifoldPointClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btManifoldPoint.h?r=2223#86>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btManifoldPoint.cpp?r=2223>
-}
{#fun btManifoldPoint_m_localPointA_get    `( BtManifoldPointClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btManifoldPoint.h?r=2223#87>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btManifoldPoint.cpp?r=2223>
-}
{#fun btManifoldPoint_m_localPointB_set    `( BtManifoldPointClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btManifoldPoint.h?r=2223#87>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btManifoldPoint.cpp?r=2223>
-}
{#fun btManifoldPoint_m_localPointB_get    `( BtManifoldPointClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btManifoldPoint.h?r=2223#91>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btManifoldPoint.cpp?r=2223>
-}
{#fun btManifoldPoint_m_normalWorldOnB_set    `( BtManifoldPointClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btManifoldPoint.h?r=2223#91>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btManifoldPoint.cpp?r=2223>
-}
{#fun btManifoldPoint_m_normalWorldOnB_get    `( BtManifoldPointClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btManifoldPoint.h?r=2223#98>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btManifoldPoint.cpp?r=2223>
-}
{#fun btManifoldPoint_m_partId0_set    `( BtManifoldPointClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btManifoldPoint.h?r=2223#98>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btManifoldPoint.cpp?r=2223>
-}
{#fun btManifoldPoint_m_partId0_get    `( BtManifoldPointClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btManifoldPoint.h?r=2223#99>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btManifoldPoint.cpp?r=2223>
-}
{#fun btManifoldPoint_m_partId1_set    `( BtManifoldPointClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btManifoldPoint.h?r=2223#99>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btManifoldPoint.cpp?r=2223>
-}
{#fun btManifoldPoint_m_partId1_get    `( BtManifoldPointClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btManifoldPoint.h?r=2223#90>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btManifoldPoint.cpp?r=2223>
-}
{#fun btManifoldPoint_m_positionWorldOnA_set    `( BtManifoldPointClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btManifoldPoint.h?r=2223#90>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btManifoldPoint.cpp?r=2223>
-}
{#fun btManifoldPoint_m_positionWorldOnA_get    `( BtManifoldPointClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btManifoldPoint.h?r=2223#88>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btManifoldPoint.cpp?r=2223>
-}
{#fun btManifoldPoint_m_positionWorldOnB_set    `( BtManifoldPointClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btManifoldPoint.h?r=2223#88>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btManifoldPoint.cpp?r=2223>
-}
{#fun btManifoldPoint_m_positionWorldOnB_get    `( BtManifoldPointClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btManifoldPoint.h?r=2223#103>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btManifoldPoint.cpp?r=2223>
-}
{#fun btManifoldPoint_m_userPersistentData_set    `( BtManifoldPointClass bc )' =>     { withBt* `bc' , withVoidPtr* `VoidPtr'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btManifoldPoint.h?r=2223#103>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btManifoldPoint.cpp?r=2223>
-}
{#fun btManifoldPoint_m_userPersistentData_get    `( BtManifoldPointClass bc )' =>     { withBt* `bc'  } ->  `VoidPtr'  mkVoidPtr* #}
-- * btPersistentManifold
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btPersistentManifold.h?r=2223#84>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btPersistentManifold.cpp?r=2223>
-}
{#fun btPersistentManifold_new0 as btPersistentManifold0    {  } -> `BtPersistentManifold' mkBtPersistentManifold* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btPersistentManifold.h?r=2223#86>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btPersistentManifold.cpp?r=2223>
-}
{#fun btPersistentManifold_new1 as btPersistentManifold1    {  withVoidPtr* `VoidPtr' , withVoidPtr* `VoidPtr' ,  `Int' ,  `Float' ,  `Float'  } -> `BtPersistentManifold' mkBtPersistentManifold* #}
{#fun btPersistentManifold_free    `( BtPersistentManifoldClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btPersistentManifold.h?r=2223#100>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btPersistentManifold.cpp?r=2223>
-}
{#fun btPersistentManifold_setBodies as btPersistentManifold_setBodies    `( BtPersistentManifoldClass bc )' =>     { withBt* `bc'  -- ^ 
, withVoidPtr* `VoidPtr'  -- ^ body0
, withVoidPtr* `VoidPtr'  -- ^ body1
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btPersistentManifold.h?r=2223#163>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btPersistentManifold.cpp?r=2223>
-}
{#fun btPersistentManifold_replaceContactPoint as btPersistentManifold_replaceContactPoint    `( BtPersistentManifoldClass bc , BtManifoldPointClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ newPoint
,  `Int'  -- ^ insertIndex
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btPersistentManifold.h?r=2223#106>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btPersistentManifold.cpp?r=2223>
-}
{#fun btPersistentManifold_clearUserCache as btPersistentManifold_clearUserCache    `( BtPersistentManifoldClass bc , BtManifoldPointClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ pt
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btPersistentManifold.h?r=2223#95>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btPersistentManifold.cpp?r=2223>
-}
{#fun btPersistentManifold_getBody10 as btPersistentManifold_getBody1    `( BtPersistentManifoldClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `VoidPtr'  mkVoidPtr* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btPersistentManifold.h?r=2223#95>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btPersistentManifold.cpp?r=2223>
-}
{#fun btPersistentManifold_getBody10 as btPersistentManifold_getBody10    `( BtPersistentManifoldClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `VoidPtr'  mkVoidPtr* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btPersistentManifold.h?r=2223#129>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btPersistentManifold.cpp?r=2223>
-}
{#fun btPersistentManifold_getContactProcessingThreshold as btPersistentManifold_getContactProcessingThreshold    `( BtPersistentManifoldClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btPersistentManifold.h?r=2223#209>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btPersistentManifold.cpp?r=2223>
-}
{#fun btPersistentManifold_clearManifold as btPersistentManifold_clearManifold    `( BtPersistentManifoldClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btPersistentManifold.h?r=2223#112>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btPersistentManifold.cpp?r=2223>
-}
{#fun btPersistentManifold_getNumContacts as btPersistentManifold_getNumContacts    `( BtPersistentManifoldClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btPersistentManifold.h?r=2223#94>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btPersistentManifold.cpp?r=2223>
-}
{#fun btPersistentManifold_getBody00 as btPersistentManifold_getBody0    `( BtPersistentManifoldClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `VoidPtr'  mkVoidPtr* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btPersistentManifold.h?r=2223#94>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btPersistentManifold.cpp?r=2223>
-}
{#fun btPersistentManifold_getBody00 as btPersistentManifold_getBody00    `( BtPersistentManifoldClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `VoidPtr'  mkVoidPtr* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btPersistentManifold.h?r=2223#136>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btPersistentManifold.cpp?r=2223>
-}
{#fun btPersistentManifold_addManifoldPoint as btPersistentManifold_addManifoldPoint    `( BtPersistentManifoldClass bc , BtManifoldPointClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ newPoint
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btPersistentManifold.h?r=2223#134>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btPersistentManifold.cpp?r=2223>
-}
{#fun btPersistentManifold_getCacheEntry as btPersistentManifold_getCacheEntry    `( BtPersistentManifoldClass bc , BtManifoldPointClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ newPoint
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btPersistentManifold.h?r=2223#201>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btPersistentManifold.cpp?r=2223>
-}
{#fun btPersistentManifold_validContactDistance as btPersistentManifold_validContactDistance    `( BtPersistentManifoldClass bc , BtManifoldPointClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ pt
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btPersistentManifold.h?r=2223#138>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btPersistentManifold.cpp?r=2223>
-}
{#fun btPersistentManifold_removeContactPoint as btPersistentManifold_removeContactPoint    `( BtPersistentManifoldClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ index
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btPersistentManifold.h?r=2223#114>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btPersistentManifold.cpp?r=2223>
-}
{#fun btPersistentManifold_getContactPoint0 as btPersistentManifold_getContactPoint    `( BtPersistentManifoldClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ index
 } ->  `BtManifoldPoint'  mkBtManifoldPoint* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btPersistentManifold.h?r=2223#114>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btPersistentManifold.cpp?r=2223>
-}
{#fun btPersistentManifold_getContactPoint0 as btPersistentManifold_getContactPoint0    `( BtPersistentManifoldClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ index
 } ->  `BtManifoldPoint'  mkBtManifoldPoint* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btPersistentManifold.h?r=2223#120>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btPersistentManifold.cpp?r=2223>
-}
{#fun btPersistentManifold_getContactPoint1 as btPersistentManifold_getContactPoint1    `( BtPersistentManifoldClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ index
 } ->  `BtManifoldPoint'  mkBtManifoldPoint* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btPersistentManifold.h?r=2223#206>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btPersistentManifold.cpp?r=2223>
-}
{#fun btPersistentManifold_refreshContactPoints as btPersistentManifold_refreshContactPoints    `( BtPersistentManifoldClass bc )' =>     { withBt* `bc'  -- ^ 
, withTransform* `Transform'  peekTransform* -- ^ trA
, withTransform* `Transform'  peekTransform* -- ^ trB
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btPersistentManifold.h?r=2223#206>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btPersistentManifold.cpp?r=2223>
-}
{#fun btPersistentManifold_refreshContactPoints as btPersistentManifold_refreshContactPoints'    `( BtPersistentManifoldClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaTransform-  `Transform'  peekTransform* -- ^ trA
, allocaTransform-  `Transform'  peekTransform* -- ^ trB
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btPersistentManifold.h?r=2223#127>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btPersistentManifold.cpp?r=2223>
-}
{#fun btPersistentManifold_getContactBreakingThreshold as btPersistentManifold_getContactBreakingThreshold    `( BtPersistentManifoldClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btPersistentManifold.h?r=2223#79>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btPersistentManifold.cpp?r=2223>
-}
{#fun btPersistentManifold_m_companionIdA_set    `( BtPersistentManifoldClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btPersistentManifold.h?r=2223#79>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btPersistentManifold.cpp?r=2223>
-}
{#fun btPersistentManifold_m_companionIdA_get    `( BtPersistentManifoldClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btPersistentManifold.h?r=2223#80>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btPersistentManifold.cpp?r=2223>
-}
{#fun btPersistentManifold_m_companionIdB_set    `( BtPersistentManifoldClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btPersistentManifold.h?r=2223#80>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btPersistentManifold.cpp?r=2223>
-}
{#fun btPersistentManifold_m_companionIdB_get    `( BtPersistentManifoldClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btPersistentManifold.h?r=2223#82>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btPersistentManifold.cpp?r=2223>
-}
{#fun btPersistentManifold_m_index1a_set    `( BtPersistentManifoldClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btPersistentManifold.h?r=2223#82>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btPersistentManifold.cpp?r=2223>
-}
{#fun btPersistentManifold_m_index1a_get    `( BtPersistentManifoldClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
-- * btStorageResult
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btDiscreteCollisionDetectorInterface.h?r=2223#79>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btDiscreteCollisionDetectorInterface.cpp?r=2223>
-}
{#fun btStorageResult_addContactPoint as btStorageResult_addContactPoint    `( BtStorageResultClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ normalOnBInWorld
, withVec3* `Vec3'  peekVec3* -- ^ pointInWorld
,  `Float'  -- ^ depth
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btDiscreteCollisionDetectorInterface.h?r=2223#79>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btDiscreteCollisionDetectorInterface.cpp?r=2223>
-}
{#fun btStorageResult_addContactPoint as btStorageResult_addContactPoint'    `( BtStorageResultClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ normalOnBInWorld
, allocaVec3-  `Vec3'  peekVec3* -- ^ pointInWorld
,  `Float'  -- ^ depth
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btDiscreteCollisionDetectorInterface.h?r=2223#69>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btDiscreteCollisionDetectorInterface.cpp?r=2223>
-}
{#fun btStorageResult_m_normalOnSurfaceB_set    `( BtStorageResultClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btDiscreteCollisionDetectorInterface.h?r=2223#69>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btDiscreteCollisionDetectorInterface.cpp?r=2223>
-}
{#fun btStorageResult_m_normalOnSurfaceB_get    `( BtStorageResultClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btDiscreteCollisionDetectorInterface.h?r=2223#70>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btDiscreteCollisionDetectorInterface.cpp?r=2223>
-}
{#fun btStorageResult_m_closestPointInB_set    `( BtStorageResultClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btDiscreteCollisionDetectorInterface.h?r=2223#70>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btDiscreteCollisionDetectorInterface.cpp?r=2223>
-}
{#fun btStorageResult_m_closestPointInB_get    `( BtStorageResultClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btDiscreteCollisionDetectorInterface.h?r=2223#71>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btDiscreteCollisionDetectorInterface.cpp?r=2223>
-}
{#fun btStorageResult_m_distance_set    `( BtStorageResultClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btDiscreteCollisionDetectorInterface.h?r=2223#71>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btDiscreteCollisionDetectorInterface.cpp?r=2223>
-}
{#fun btStorageResult_m_distance_get    `( BtStorageResultClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
-- * btSubSimplexClosestResult
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.h?r=2223#57>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.cpp?r=2223>
-}
{#fun btSubSimplexClosestResult_new as btSubSimplexClosestResult    {  } -> `BtSubSimplexClosestResult' mkBtSubSimplexClosestResult* #}
{#fun btSubSimplexClosestResult_free    `( BtSubSimplexClosestResultClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.h?r=2223#66>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.cpp?r=2223>
-}
{#fun btSubSimplexClosestResult_reset as btSubSimplexClosestResult_reset    `( BtSubSimplexClosestResultClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.h?r=2223#72>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.cpp?r=2223>
-}
{#fun btSubSimplexClosestResult_isValid as btSubSimplexClosestResult_isValid    `( BtSubSimplexClosestResultClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.h?r=2223#82>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.cpp?r=2223>
-}
{#fun btSubSimplexClosestResult_setBarycentricCoordinates as btSubSimplexClosestResult_setBarycentricCoordinates    `( BtSubSimplexClosestResultClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ a
,  `Float'  -- ^ b
,  `Float'  -- ^ c
,  `Float'  -- ^ d
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.h?r=2223#58>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.cpp?r=2223>
-}
{#fun btSubSimplexClosestResult_m_closestPointOnSimplex_set    `( BtSubSimplexClosestResultClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.h?r=2223#58>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.cpp?r=2223>
-}
{#fun btSubSimplexClosestResult_m_closestPointOnSimplex_get    `( BtSubSimplexClosestResultClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.h?r=2223#62>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.cpp?r=2223>
-}
{#fun btSubSimplexClosestResult_m_usedVertices_set    `( BtSubSimplexClosestResultClass bc , BtUsageBitfieldClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.h?r=2223#62>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.cpp?r=2223>
-}
{#fun btSubSimplexClosestResult_m_usedVertices_get    `( BtSubSimplexClosestResultClass bc )' =>     { withBt* `bc'  } ->  `BtUsageBitfield'  mkBtUsageBitfield* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.h?r=2223#64>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.cpp?r=2223>
-}
{#fun btSubSimplexClosestResult_m_degenerate_set    `( BtSubSimplexClosestResultClass bc )' =>     { withBt* `bc' ,  `Bool'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.h?r=2223#64>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.cpp?r=2223>
-}
{#fun btSubSimplexClosestResult_m_degenerate_get    `( BtSubSimplexClosestResultClass bc )' =>     { withBt* `bc'  } ->  `Bool'   #}
-- * btUsageBitfield
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.h?r=2223#33>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.cpp?r=2223>
-}
{#fun btUsageBitfield_new as btUsageBitfield    {  } -> `BtUsageBitfield' mkBtUsageBitfield* #}
{#fun btUsageBitfield_free    `( BtUsageBitfieldClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.h?r=2223#38>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.cpp?r=2223>
-}
{#fun btUsageBitfield_reset as btUsageBitfield_reset    `( BtUsageBitfieldClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.h?r=2223#49>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.cpp?r=2223>
-}
{#fun btUsageBitfield_unused1_set    `( BtUsageBitfieldClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.h?r=2223#49>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.cpp?r=2223>
-}
{#fun btUsageBitfield_unused1_get    `( BtUsageBitfieldClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.h?r=2223#50>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.cpp?r=2223>
-}
{#fun btUsageBitfield_unused2_set    `( BtUsageBitfieldClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.h?r=2223#50>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.cpp?r=2223>
-}
{#fun btUsageBitfield_unused2_get    `( BtUsageBitfieldClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.h?r=2223#51>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.cpp?r=2223>
-}
{#fun btUsageBitfield_unused3_set    `( BtUsageBitfieldClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.h?r=2223#51>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.cpp?r=2223>
-}
{#fun btUsageBitfield_unused3_get    `( BtUsageBitfieldClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.h?r=2223#52>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.cpp?r=2223>
-}
{#fun btUsageBitfield_unused4_set    `( BtUsageBitfieldClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.h?r=2223#52>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.cpp?r=2223>
-}
{#fun btUsageBitfield_unused4_get    `( BtUsageBitfieldClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.h?r=2223#45>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.cpp?r=2223>
-}
{#fun btUsageBitfield_usedVertexA_set    `( BtUsageBitfieldClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.h?r=2223#45>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.cpp?r=2223>
-}
{#fun btUsageBitfield_usedVertexA_get    `( BtUsageBitfieldClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.h?r=2223#46>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.cpp?r=2223>
-}
{#fun btUsageBitfield_usedVertexB_set    `( BtUsageBitfieldClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.h?r=2223#46>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.cpp?r=2223>
-}
{#fun btUsageBitfield_usedVertexB_get    `( BtUsageBitfieldClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.h?r=2223#47>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.cpp?r=2223>
-}
{#fun btUsageBitfield_usedVertexC_set    `( BtUsageBitfieldClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.h?r=2223#47>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.cpp?r=2223>
-}
{#fun btUsageBitfield_usedVertexC_get    `( BtUsageBitfieldClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.h?r=2223#48>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.cpp?r=2223>
-}
{#fun btUsageBitfield_usedVertexD_set    `( BtUsageBitfieldClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.h?r=2223#48>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.cpp?r=2223>
-}
{#fun btUsageBitfield_usedVertexD_get    `( BtUsageBitfieldClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
-- * btVoronoiSimplexSolver
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.h?r=2223#133>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.cpp?r=2223>
-}
{#fun btVoronoiSimplexSolver_new as btVoronoiSimplexSolver    {  } -> `BtVoronoiSimplexSolver' mkBtVoronoiSimplexSolver* #}
{#fun btVoronoiSimplexSolver_free    `( BtVoronoiSimplexSolverClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.h?r=2223#137>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.cpp?r=2223>
-}
{#fun btVoronoiSimplexSolver_reset as btVoronoiSimplexSolver_reset    `( BtVoronoiSimplexSolverClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.h?r=2223#125>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.cpp?r=2223>
-}
{#fun btVoronoiSimplexSolver_updateClosestVectorAndPoints as btVoronoiSimplexSolver_updateClosestVectorAndPoints    `( BtVoronoiSimplexSolverClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.h?r=2223#141>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.cpp?r=2223>
-}
{#fun btVoronoiSimplexSolver_setEqualVertexThreshold as btVoronoiSimplexSolver_setEqualVertexThreshold    `( BtVoronoiSimplexSolverClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ threshold
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.h?r=2223#162>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.cpp?r=2223>
-}
{#fun btVoronoiSimplexSolver_inSimplex as btVoronoiSimplexSolver_inSimplex    `( BtVoronoiSimplexSolverClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ w
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.h?r=2223#162>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.cpp?r=2223>
-}
{#fun btVoronoiSimplexSolver_inSimplex as btVoronoiSimplexSolver_inSimplex'    `( BtVoronoiSimplexSolverClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ w
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.h?r=2223#151>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.cpp?r=2223>
-}
{#fun btVoronoiSimplexSolver_closest as btVoronoiSimplexSolver_closest    `( BtVoronoiSimplexSolverClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ v
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.h?r=2223#151>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.cpp?r=2223>
-}
{#fun btVoronoiSimplexSolver_closest as btVoronoiSimplexSolver_closest'    `( BtVoronoiSimplexSolverClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ v
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.h?r=2223#127>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.cpp?r=2223>
-}
{#fun btVoronoiSimplexSolver_closestPtPointTetrahedron as btVoronoiSimplexSolver_closestPtPointTetrahedron    `( BtVoronoiSimplexSolverClass bc , BtSubSimplexClosestResultClass p5 )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ p
, withVec3* `Vec3'  peekVec3* -- ^ a
, withVec3* `Vec3'  peekVec3* -- ^ b
, withVec3* `Vec3'  peekVec3* -- ^ c
, withVec3* `Vec3'  peekVec3* -- ^ d
, withBt* `p5'  -- ^ finalResult
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.h?r=2223#127>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.cpp?r=2223>
-}
{#fun btVoronoiSimplexSolver_closestPtPointTetrahedron as btVoronoiSimplexSolver_closestPtPointTetrahedron'    `( BtVoronoiSimplexSolverClass bc , BtSubSimplexClosestResultClass p5 )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ p
, allocaVec3-  `Vec3'  peekVec3* -- ^ a
, allocaVec3-  `Vec3'  peekVec3* -- ^ b
, allocaVec3-  `Vec3'  peekVec3* -- ^ c
, allocaVec3-  `Vec3'  peekVec3* -- ^ d
, withBt* `p5'  -- ^ finalResult
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.h?r=2223#129>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.cpp?r=2223>
-}
{#fun btVoronoiSimplexSolver_closestPtPointTriangle as btVoronoiSimplexSolver_closestPtPointTriangle    `( BtVoronoiSimplexSolverClass bc , BtSubSimplexClosestResultClass p4 )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ p
, withVec3* `Vec3'  peekVec3* -- ^ a
, withVec3* `Vec3'  peekVec3* -- ^ b
, withVec3* `Vec3'  peekVec3* -- ^ c
, withBt* `p4'  -- ^ result
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.h?r=2223#129>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.cpp?r=2223>
-}
{#fun btVoronoiSimplexSolver_closestPtPointTriangle as btVoronoiSimplexSolver_closestPtPointTriangle'    `( BtVoronoiSimplexSolverClass bc , BtSubSimplexClosestResultClass p4 )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ p
, allocaVec3-  `Vec3'  peekVec3* -- ^ a
, allocaVec3-  `Vec3'  peekVec3* -- ^ b
, allocaVec3-  `Vec3'  peekVec3* -- ^ c
, withBt* `p4'  -- ^ result
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.h?r=2223#128>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.cpp?r=2223>
-}
{#fun btVoronoiSimplexSolver_pointOutsideOfPlane as btVoronoiSimplexSolver_pointOutsideOfPlane    `( BtVoronoiSimplexSolverClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ p
, withVec3* `Vec3'  peekVec3* -- ^ a
, withVec3* `Vec3'  peekVec3* -- ^ b
, withVec3* `Vec3'  peekVec3* -- ^ c
, withVec3* `Vec3'  peekVec3* -- ^ d
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.h?r=2223#128>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.cpp?r=2223>
-}
{#fun btVoronoiSimplexSolver_pointOutsideOfPlane as btVoronoiSimplexSolver_pointOutsideOfPlane'    `( BtVoronoiSimplexSolverClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ p
, allocaVec3-  `Vec3'  peekVec3* -- ^ a
, allocaVec3-  `Vec3'  peekVec3* -- ^ b
, allocaVec3-  `Vec3'  peekVec3* -- ^ c
, allocaVec3-  `Vec3'  peekVec3* -- ^ d
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.h?r=2223#166>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.cpp?r=2223>
-}
{#fun btVoronoiSimplexSolver_emptySimplex as btVoronoiSimplexSolver_emptySimplex    `( BtVoronoiSimplexSolverClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.h?r=2223#153>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.cpp?r=2223>
-}
{#fun btVoronoiSimplexSolver_maxVertex as btVoronoiSimplexSolver_maxVertex    `( BtVoronoiSimplexSolverClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.h?r=2223#139>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.cpp?r=2223>
-}
{#fun btVoronoiSimplexSolver_addVertex as btVoronoiSimplexSolver_addVertex    `( BtVoronoiSimplexSolverClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ w
, withVec3* `Vec3'  peekVec3* -- ^ p
, withVec3* `Vec3'  peekVec3* -- ^ q
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.h?r=2223#139>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.cpp?r=2223>
-}
{#fun btVoronoiSimplexSolver_addVertex as btVoronoiSimplexSolver_addVertex'    `( BtVoronoiSimplexSolverClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ w
, allocaVec3-  `Vec3'  peekVec3* -- ^ p
, allocaVec3-  `Vec3'  peekVec3* -- ^ q
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.h?r=2223#124>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.cpp?r=2223>
-}
{#fun btVoronoiSimplexSolver_reduceVertices as btVoronoiSimplexSolver_reduceVertices    `( BtVoronoiSimplexSolverClass bc , BtUsageBitfieldClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ usedVerts
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.h?r=2223#164>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.cpp?r=2223>
-}
{#fun btVoronoiSimplexSolver_backup_closest as btVoronoiSimplexSolver_backup_closest    `( BtVoronoiSimplexSolverClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ v
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.h?r=2223#164>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.cpp?r=2223>
-}
{#fun btVoronoiSimplexSolver_backup_closest as btVoronoiSimplexSolver_backup_closest'    `( BtVoronoiSimplexSolverClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ v
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.h?r=2223#123>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.cpp?r=2223>
-}
{#fun btVoronoiSimplexSolver_removeVertex as btVoronoiSimplexSolver_removeVertex    `( BtVoronoiSimplexSolverClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ index
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.h?r=2223#146>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.cpp?r=2223>
-}
{#fun btVoronoiSimplexSolver_getEqualVertexThreshold as btVoronoiSimplexSolver_getEqualVertexThreshold    `( BtVoronoiSimplexSolverClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.h?r=2223#168>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.cpp?r=2223>
-}
{#fun btVoronoiSimplexSolver_compute_points as btVoronoiSimplexSolver_compute_points    `( BtVoronoiSimplexSolverClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ p1
, withVec3* `Vec3'  peekVec3* -- ^ p2
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.h?r=2223#168>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.cpp?r=2223>
-}
{#fun btVoronoiSimplexSolver_compute_points as btVoronoiSimplexSolver_compute_points'    `( BtVoronoiSimplexSolverClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ p1
, allocaVec3-  `Vec3'  peekVec3* -- ^ p2
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.h?r=2223#155>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.cpp?r=2223>
-}
{#fun btVoronoiSimplexSolver_fullSimplex as btVoronoiSimplexSolver_fullSimplex    `( BtVoronoiSimplexSolverClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.h?r=2223#170>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.cpp?r=2223>
-}
{#fun btVoronoiSimplexSolver_numVertices as btVoronoiSimplexSolver_numVertices    `( BtVoronoiSimplexSolverClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.h?r=2223#119>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.cpp?r=2223>
-}
{#fun btVoronoiSimplexSolver_m_cachedBC_set    `( BtVoronoiSimplexSolverClass bc , BtSubSimplexClosestResultClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.h?r=2223#119>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.cpp?r=2223>
-}
{#fun btVoronoiSimplexSolver_m_cachedBC_get    `( BtVoronoiSimplexSolverClass bc )' =>     { withBt* `bc'  } ->  `BtSubSimplexClosestResult'  mkBtSubSimplexClosestResult* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.h?r=2223#110>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.cpp?r=2223>
-}
{#fun btVoronoiSimplexSolver_m_cachedP1_set    `( BtVoronoiSimplexSolverClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.h?r=2223#110>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.cpp?r=2223>
-}
{#fun btVoronoiSimplexSolver_m_cachedP1_get    `( BtVoronoiSimplexSolverClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.h?r=2223#111>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.cpp?r=2223>
-}
{#fun btVoronoiSimplexSolver_m_cachedP2_set    `( BtVoronoiSimplexSolverClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.h?r=2223#111>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.cpp?r=2223>
-}
{#fun btVoronoiSimplexSolver_m_cachedP2_get    `( BtVoronoiSimplexSolverClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.h?r=2223#112>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.cpp?r=2223>
-}
{#fun btVoronoiSimplexSolver_m_cachedV_set    `( BtVoronoiSimplexSolverClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.h?r=2223#112>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.cpp?r=2223>
-}
{#fun btVoronoiSimplexSolver_m_cachedV_get    `( BtVoronoiSimplexSolverClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.h?r=2223#116>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.cpp?r=2223>
-}
{#fun btVoronoiSimplexSolver_m_cachedValidClosest_set    `( BtVoronoiSimplexSolverClass bc )' =>     { withBt* `bc' ,  `Bool'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.h?r=2223#116>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.cpp?r=2223>
-}
{#fun btVoronoiSimplexSolver_m_cachedValidClosest_get    `( BtVoronoiSimplexSolverClass bc )' =>     { withBt* `bc'  } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.h?r=2223#115>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.cpp?r=2223>
-}
{#fun btVoronoiSimplexSolver_m_equalVertexThreshold_set    `( BtVoronoiSimplexSolverClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.h?r=2223#115>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.cpp?r=2223>
-}
{#fun btVoronoiSimplexSolver_m_equalVertexThreshold_get    `( BtVoronoiSimplexSolverClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.h?r=2223#113>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.cpp?r=2223>
-}
{#fun btVoronoiSimplexSolver_m_lastW_set    `( BtVoronoiSimplexSolverClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.h?r=2223#113>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.cpp?r=2223>
-}
{#fun btVoronoiSimplexSolver_m_lastW_get    `( BtVoronoiSimplexSolverClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.h?r=2223#121>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.cpp?r=2223>
-}
{#fun btVoronoiSimplexSolver_m_needsUpdate_set    `( BtVoronoiSimplexSolverClass bc )' =>     { withBt* `bc' ,  `Bool'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.h?r=2223#121>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.cpp?r=2223>
-}
{#fun btVoronoiSimplexSolver_m_needsUpdate_get    `( BtVoronoiSimplexSolverClass bc )' =>     { withBt* `bc'  } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.h?r=2223#102>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.cpp?r=2223>
-}
{#fun btVoronoiSimplexSolver_m_numVertices_set    `( BtVoronoiSimplexSolverClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.h?r=2223#102>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.cpp?r=2223>
-}
{#fun btVoronoiSimplexSolver_m_numVertices_get    `( BtVoronoiSimplexSolverClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
-- * sResults
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btGjkEpa2.h?r=2223#34>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btGjkEpa2.cpp?r=2223>
-}
{#fun btGjkEpaSolver2_sResults_new as btGjkEpaSolver2_sResults    {  } -> `BtGjkEpaSolver2_sResults' mkBtGjkEpaSolver2_sResults* #}
{#fun btGjkEpaSolver2_sResults_free    `( BtGjkEpaSolver2_sResultsClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btGjkEpa2.h?r=2223#44>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btGjkEpa2.cpp?r=2223>
-}
{#fun btGjkEpaSolver2_sResults_distance_set    `( BtGjkEpaSolver2_sResultsClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btGjkEpa2.h?r=2223#44>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btGjkEpa2.cpp?r=2223>
-}
{#fun btGjkEpaSolver2_sResults_distance_get    `( BtGjkEpaSolver2_sResultsClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btGjkEpa2.h?r=2223#43>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btGjkEpa2.cpp?r=2223>
-}
{#fun btGjkEpaSolver2_sResults_normal_set    `( BtGjkEpaSolver2_sResultsClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btGjkEpa2.h?r=2223#43>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/NarrowPhaseCollision/btGjkEpa2.cpp?r=2223>
-}
{#fun btGjkEpaSolver2_sResults_normal_get    `( BtGjkEpaSolver2_sResultsClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
