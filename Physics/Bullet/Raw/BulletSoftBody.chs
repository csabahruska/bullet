{-#LANGUAGE ForeignFunctionInterface#-}
#include "Bullet.h"
module Physics.Bullet.Raw.BulletSoftBody (
module Physics.Bullet.Raw.BulletSoftBody
) where
import Control.Monad
import Foreign.Marshal.Alloc
import Foreign.ForeignPtr.Unsafe
import Foreign.Ptr
import Physics.Bullet.Raw.C2HS
import Physics.Bullet.Raw.Types
import Physics.Bullet.Raw.Class
-- * AJoint
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#526>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_AJoint_new as btSoftBody_AJoint    {  } -> `BtSoftBody_AJoint' mkBtSoftBody_AJoint* #}
{#fun btSoftBody_AJoint_free    `( BtSoftBody_AJointClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#543>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_AJoint_Terminate as btSoftBody_AJoint_Terminate    `( BtSoftBody_AJointClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ dt
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#542>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_AJoint_Solve as btSoftBody_AJoint_Solve    `( BtSoftBody_AJointClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ dt
,  `Float'  -- ^ sor
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#541>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_AJoint_Prepare as btSoftBody_AJoint_Prepare    `( BtSoftBody_AJointClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ dt
,  `Int'  -- ^ iterations
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#540>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_AJoint_m_icontrol_set    `( BtSoftBody_AJointClass bc , BtSoftBody_AJoint_IControlClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#540>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_AJoint_m_icontrol_get    `( BtSoftBody_AJointClass bc )' =>     { withBt* `bc'  } ->  `BtSoftBody_AJoint_IControl'  mkBtSoftBody_AJoint_IControl* #}
-- * Anchor
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#284>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Anchor_new as btSoftBody_Anchor    {  } -> `BtSoftBody_Anchor' mkBtSoftBody_Anchor* #}
{#fun btSoftBody_Anchor_free    `( BtSoftBody_AnchorClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#285>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Anchor_m_node_set    `( BtSoftBody_AnchorClass bc , BtSoftBody_NodeClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#285>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Anchor_m_node_get    `( BtSoftBody_AnchorClass bc )' =>     { withBt* `bc'  } ->  `BtSoftBody_Node'  mkBtSoftBody_Node* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#286>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Anchor_m_local_set    `( BtSoftBody_AnchorClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#286>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Anchor_m_local_get    `( BtSoftBody_AnchorClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#287>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Anchor_m_body_set    `( BtSoftBody_AnchorClass bc , BtRigidBodyClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#287>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Anchor_m_body_get    `( BtSoftBody_AnchorClass bc )' =>     { withBt* `bc'  } ->  `BtRigidBody'  mkBtRigidBody* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#288>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Anchor_m_influence_set    `( BtSoftBody_AnchorClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#288>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Anchor_m_influence_get    `( BtSoftBody_AnchorClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#289>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Anchor_m_c0_set    `( BtSoftBody_AnchorClass bc )' =>     { withBt* `bc' , withMat3* `Mat3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#289>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Anchor_m_c0_get    `( BtSoftBody_AnchorClass bc )' =>     { withBt* `bc' , allocaMat3-  `Mat3'  peekMat3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#290>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Anchor_m_c1_set    `( BtSoftBody_AnchorClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#290>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Anchor_m_c1_get    `( BtSoftBody_AnchorClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#291>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Anchor_m_c2_set    `( BtSoftBody_AnchorClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#291>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Anchor_m_c2_get    `( BtSoftBody_AnchorClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
-- * Body
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#379>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Body_new0 as btSoftBody_Body0    {  } -> `BtSoftBody_Body' mkBtSoftBody_Body* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#380>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Body_new1 as btSoftBody_Body1    `( BtSoftBody_ClusterClass p0 )' =>     {  withBt* `p0'  } -> `BtSoftBody_Body' mkBtSoftBody_Body* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#381>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Body_new2 as btSoftBody_Body2    `( BtCollisionObjectClass p0 )' =>     {  withBt* `p0'  } -> `BtSoftBody_Body' mkBtSoftBody_Body* #}
{#fun btSoftBody_Body_free    `( BtSoftBody_BodyClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#394>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Body_invWorldInertia as btSoftBody_Body_invWorldInertia    `( BtSoftBody_BodyClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaMat3-  `Mat3'  peekMat3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#386>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Body_activate as btSoftBody_Body_activate    `( BtSoftBody_BodyClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#414>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Body_linearVelocity as btSoftBody_Body_linearVelocity    `( BtSoftBody_BodyClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#436>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Body_applyVImpulse as btSoftBody_Body_applyVImpulse    `( BtSoftBody_BodyClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ impulse
, withVec3* `Vec3'  peekVec3* -- ^ rpos
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#436>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Body_applyVImpulse as btSoftBody_Body_applyVImpulse'    `( BtSoftBody_BodyClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ impulse
, allocaVec3-  `Vec3'  peekVec3* -- ^ rpos
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#441>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Body_applyDImpulse as btSoftBody_Body_applyDImpulse    `( BtSoftBody_BodyClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ impulse
, withVec3* `Vec3'  peekVec3* -- ^ rpos
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#441>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Body_applyDImpulse as btSoftBody_Body_applyDImpulse'    `( BtSoftBody_BodyClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ impulse
, allocaVec3-  `Vec3'  peekVec3* -- ^ rpos
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#474>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Body_applyDCImpulse as btSoftBody_Body_applyDCImpulse    `( BtSoftBody_BodyClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ impulse
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#474>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Body_applyDCImpulse as btSoftBody_Body_applyDCImpulse'    `( BtSoftBody_BodyClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ impulse
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#469>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Body_applyAImpulse as btSoftBody_Body_applyAImpulse    `( BtSoftBody_BodyClass bc , BtSoftBody_ImpulseClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ impulse
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#420>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Body_angularVelocity0 as btSoftBody_Body_angularVelocity    `( BtSoftBody_BodyClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ rpos
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#420>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Body_angularVelocity0 as btSoftBody_Body_angularVelocity'    `( BtSoftBody_BodyClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ rpos
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#420>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Body_angularVelocity0 as btSoftBody_Body_angularVelocity0    `( BtSoftBody_BodyClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ rpos
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#420>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Body_angularVelocity0 as btSoftBody_Body_angularVelocity0'    `( BtSoftBody_BodyClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ rpos
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#426>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Body_angularVelocity1 as btSoftBody_Body_angularVelocity1    `( BtSoftBody_BodyClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#459>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Body_applyVAImpulse as btSoftBody_Body_applyVAImpulse    `( BtSoftBody_BodyClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ impulse
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#459>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Body_applyVAImpulse as btSoftBody_Body_applyVAImpulse'    `( BtSoftBody_BodyClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ impulse
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#446>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Body_applyImpulse as btSoftBody_Body_applyImpulse    `( BtSoftBody_BodyClass bc , BtSoftBody_ImpulseClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ impulse
, withVec3* `Vec3'  peekVec3* -- ^ rpos
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#446>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Body_applyImpulse as btSoftBody_Body_applyImpulse'    `( BtSoftBody_BodyClass bc , BtSoftBody_ImpulseClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ impulse
, allocaVec3-  `Vec3'  peekVec3* -- ^ rpos
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#464>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Body_applyDAImpulse as btSoftBody_Body_applyDAImpulse    `( BtSoftBody_BodyClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ impulse
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#464>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Body_applyDAImpulse as btSoftBody_Body_applyDAImpulse'    `( BtSoftBody_BodyClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ impulse
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#432>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Body_velocity as btSoftBody_Body_velocity    `( BtSoftBody_BodyClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ rpos
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#432>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Body_velocity as btSoftBody_Body_velocity'    `( BtSoftBody_BodyClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ rpos
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#401>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Body_invMass as btSoftBody_Body_invMass    `( BtSoftBody_BodyClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#407>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Body_xform as btSoftBody_Body_xform    `( BtSoftBody_BodyClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaTransform-  `Transform'  peekTransform* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#375>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Body_m_soft_set    `( BtSoftBody_BodyClass bc , BtSoftBody_ClusterClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#375>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Body_m_soft_get    `( BtSoftBody_BodyClass bc )' =>     { withBt* `bc'  } ->  `BtSoftBody_Cluster'  mkBtSoftBody_Cluster* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#376>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Body_m_rigid_set    `( BtSoftBody_BodyClass bc , BtRigidBodyClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#376>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Body_m_rigid_get    `( BtSoftBody_BodyClass bc )' =>     { withBt* `bc'  } ->  `BtRigidBody'  mkBtRigidBody* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#377>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Body_m_collisionObject_set    `( BtSoftBody_BodyClass bc , BtCollisionObjectClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#377>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Body_m_collisionObject_get    `( BtSoftBody_BodyClass bc )' =>     { withBt* `bc'  } ->  `BtCollisionObject'  mkBtCollisionObject* #}
-- * CJoint
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#548>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_CJoint_new as btSoftBody_CJoint    {  } -> `BtSoftBody_CJoint' mkBtSoftBody_CJoint* #}
{#fun btSoftBody_CJoint_free    `( BtSoftBody_CJointClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#556>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_CJoint_Terminate as btSoftBody_CJoint_Terminate    `( BtSoftBody_CJointClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ dt
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#555>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_CJoint_Solve as btSoftBody_CJoint_Solve    `( BtSoftBody_CJointClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ dt
,  `Float'  -- ^ sor
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#554>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_CJoint_Prepare as btSoftBody_CJoint_Prepare    `( BtSoftBody_CJointClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ dt
,  `Int'  -- ^ iterations
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#549>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_CJoint_m_life_set    `( BtSoftBody_CJointClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#549>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_CJoint_m_life_get    `( BtSoftBody_CJointClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#550>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_CJoint_m_maxlife_set    `( BtSoftBody_CJointClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#550>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_CJoint_m_maxlife_get    `( BtSoftBody_CJointClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#552>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_CJoint_m_normal_set    `( BtSoftBody_CJointClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#552>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_CJoint_m_normal_get    `( BtSoftBody_CJointClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#553>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_CJoint_m_friction_set    `( BtSoftBody_CJointClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#553>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_CJoint_m_friction_get    `( BtSoftBody_CJointClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
-- * Cluster
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#343>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Cluster_new as btSoftBody_Cluster    {  } -> `BtSoftBody_Cluster' mkBtSoftBody_Cluster* #}
{#fun btSoftBody_Cluster_free    `( BtSoftBody_ClusterClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#336>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Cluster_m_adamping_set    `( BtSoftBody_ClusterClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#336>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Cluster_m_adamping_get    `( BtSoftBody_ClusterClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#332>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Cluster_m_av_set    `( BtSoftBody_ClusterClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#332>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Cluster_m_av_get    `( BtSoftBody_ClusterClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#342>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Cluster_m_clusterIndex_set    `( BtSoftBody_ClusterClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#342>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Cluster_m_clusterIndex_get    `( BtSoftBody_ClusterClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#341>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Cluster_m_collide_set    `( BtSoftBody_ClusterClass bc )' =>     { withBt* `bc' ,  `Bool'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#341>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Cluster_m_collide_get    `( BtSoftBody_ClusterClass bc )' =>     { withBt* `bc'  } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#326>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Cluster_m_com_set    `( BtSoftBody_ClusterClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#326>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Cluster_m_com_get    `( BtSoftBody_ClusterClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#340>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Cluster_m_containsAnchor_set    `( BtSoftBody_ClusterClass bc )' =>     { withBt* `bc' ,  `Bool'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#340>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Cluster_m_containsAnchor_get    `( BtSoftBody_ClusterClass bc )' =>     { withBt* `bc'  } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#320>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Cluster_m_framerefs_set    `( BtSoftBody_ClusterClass bc , BtAlignedObjectArray_btVector3_Class a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#320>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Cluster_m_framerefs_get    `( BtSoftBody_ClusterClass bc )' =>     { withBt* `bc'  } ->  `BtAlignedObjectArray_btVector3_'  mkBtAlignedObjectArray_btVector3_* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#321>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Cluster_m_framexform_set    `( BtSoftBody_ClusterClass bc )' =>     { withBt* `bc' , withTransform* `Transform'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#321>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Cluster_m_framexform_get    `( BtSoftBody_ClusterClass bc )' =>     { withBt* `bc' , allocaTransform-  `Transform'  peekTransform* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#322>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Cluster_m_idmass_set    `( BtSoftBody_ClusterClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#322>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Cluster_m_idmass_get    `( BtSoftBody_ClusterClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#323>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Cluster_m_imass_set    `( BtSoftBody_ClusterClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#323>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Cluster_m_imass_get    `( BtSoftBody_ClusterClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#325>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Cluster_m_invwi_set    `( BtSoftBody_ClusterClass bc )' =>     { withBt* `bc' , withMat3* `Mat3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#325>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Cluster_m_invwi_get    `( BtSoftBody_ClusterClass bc )' =>     { withBt* `bc' , allocaMat3-  `Mat3'  peekMat3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#335>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Cluster_m_ldamping_set    `( BtSoftBody_ClusterClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#335>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Cluster_m_ldamping_get    `( BtSoftBody_ClusterClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#333>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Cluster_m_leaf_set    `( BtSoftBody_ClusterClass bc , BtDbvtNodeClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#333>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Cluster_m_leaf_get    `( BtSoftBody_ClusterClass bc )' =>     { withBt* `bc'  } ->  `BtDbvtNode'  mkBtDbvtNode* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#324>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Cluster_m_locii_set    `( BtSoftBody_ClusterClass bc )' =>     { withBt* `bc' , withMat3* `Mat3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#324>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Cluster_m_locii_get    `( BtSoftBody_ClusterClass bc )' =>     { withBt* `bc' , allocaMat3-  `Mat3'  peekMat3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#331>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Cluster_m_lv_set    `( BtSoftBody_ClusterClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#331>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Cluster_m_lv_get    `( BtSoftBody_ClusterClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#318>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Cluster_m_masses_set    `( BtSoftBody_ClusterClass bc , BtAlignedObjectArray_float_Class a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#318>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Cluster_m_masses_get    `( BtSoftBody_ClusterClass bc )' =>     { withBt* `bc'  } ->  `BtAlignedObjectArray_float_'  mkBtAlignedObjectArray_float_* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#337>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Cluster_m_matching_set    `( BtSoftBody_ClusterClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#337>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Cluster_m_matching_get    `( BtSoftBody_ClusterClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#338>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Cluster_m_maxSelfCollisionImpulse_set    `( BtSoftBody_ClusterClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#338>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Cluster_m_maxSelfCollisionImpulse_get    `( BtSoftBody_ClusterClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#334>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Cluster_m_ndamping_set    `( BtSoftBody_ClusterClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#334>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Cluster_m_ndamping_get    `( BtSoftBody_ClusterClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#330>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Cluster_m_ndimpulses_set    `( BtSoftBody_ClusterClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#330>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Cluster_m_ndimpulses_get    `( BtSoftBody_ClusterClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#319>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Cluster_m_nodes_set    `( BtSoftBody_ClusterClass bc , BtAlignedObjectArray_btSoftBody_Node_ptr_Class a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#319>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Cluster_m_nodes_get    `( BtSoftBody_ClusterClass bc )' =>     { withBt* `bc'  } ->  `BtAlignedObjectArray_btSoftBody_Node_ptr_'  mkBtAlignedObjectArray_btSoftBody_Node_ptr_* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#329>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Cluster_m_nvimpulses_set    `( BtSoftBody_ClusterClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#329>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Cluster_m_nvimpulses_get    `( BtSoftBody_ClusterClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#339>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Cluster_m_selfCollisionImpulseFactor_set    `( BtSoftBody_ClusterClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#339>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Cluster_m_selfCollisionImpulseFactor_get    `( BtSoftBody_ClusterClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
-- * Config
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#561>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Config_new as btSoftBody_Config    {  } -> `BtSoftBody_Config' mkBtSoftBody_Config* #}
{#fun btSoftBody_Config_free    `( BtSoftBody_ConfigClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#563>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Config_kVCF_set    `( BtSoftBody_ConfigClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#563>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Config_kVCF_get    `( BtSoftBody_ConfigClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#564>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Config_kDP_set    `( BtSoftBody_ConfigClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#564>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Config_kDP_get    `( BtSoftBody_ConfigClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#565>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Config_kDG_set    `( BtSoftBody_ConfigClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#565>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Config_kDG_get    `( BtSoftBody_ConfigClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#566>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Config_kLF_set    `( BtSoftBody_ConfigClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#566>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Config_kLF_get    `( BtSoftBody_ConfigClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#567>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Config_kPR_set    `( BtSoftBody_ConfigClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#567>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Config_kPR_get    `( BtSoftBody_ConfigClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#568>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Config_kVC_set    `( BtSoftBody_ConfigClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#568>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Config_kVC_get    `( BtSoftBody_ConfigClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#569>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Config_kDF_set    `( BtSoftBody_ConfigClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#569>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Config_kDF_get    `( BtSoftBody_ConfigClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#570>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Config_kMT_set    `( BtSoftBody_ConfigClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#570>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Config_kMT_get    `( BtSoftBody_ConfigClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#571>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Config_kCHR_set    `( BtSoftBody_ConfigClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#571>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Config_kCHR_get    `( BtSoftBody_ConfigClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#572>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Config_kKHR_set    `( BtSoftBody_ConfigClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#572>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Config_kKHR_get    `( BtSoftBody_ConfigClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#573>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Config_kSHR_set    `( BtSoftBody_ConfigClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#573>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Config_kSHR_get    `( BtSoftBody_ConfigClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#574>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Config_kAHR_set    `( BtSoftBody_ConfigClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#574>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Config_kAHR_get    `( BtSoftBody_ConfigClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#575>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Config_kSRHR_CL_set    `( BtSoftBody_ConfigClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#575>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Config_kSRHR_CL_get    `( BtSoftBody_ConfigClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#576>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Config_kSKHR_CL_set    `( BtSoftBody_ConfigClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#576>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Config_kSKHR_CL_get    `( BtSoftBody_ConfigClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#577>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Config_kSSHR_CL_set    `( BtSoftBody_ConfigClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#577>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Config_kSSHR_CL_get    `( BtSoftBody_ConfigClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#578>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Config_kSR_SPLT_CL_set    `( BtSoftBody_ConfigClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#578>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Config_kSR_SPLT_CL_get    `( BtSoftBody_ConfigClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#579>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Config_kSK_SPLT_CL_set    `( BtSoftBody_ConfigClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#579>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Config_kSK_SPLT_CL_get    `( BtSoftBody_ConfigClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#580>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Config_kSS_SPLT_CL_set    `( BtSoftBody_ConfigClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#580>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Config_kSS_SPLT_CL_get    `( BtSoftBody_ConfigClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#581>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Config_maxvolume_set    `( BtSoftBody_ConfigClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#581>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Config_maxvolume_get    `( BtSoftBody_ConfigClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#582>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Config_timescale_set    `( BtSoftBody_ConfigClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#582>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Config_timescale_get    `( BtSoftBody_ConfigClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#583>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Config_viterations_set    `( BtSoftBody_ConfigClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#583>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Config_viterations_get    `( BtSoftBody_ConfigClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#584>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Config_piterations_set    `( BtSoftBody_ConfigClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#584>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Config_piterations_get    `( BtSoftBody_ConfigClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#585>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Config_diterations_set    `( BtSoftBody_ConfigClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#585>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Config_diterations_get    `( BtSoftBody_ConfigClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#586>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Config_citerations_set    `( BtSoftBody_ConfigClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#586>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Config_citerations_get    `( BtSoftBody_ConfigClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#587>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Config_collisions_set    `( BtSoftBody_ConfigClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#587>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Config_collisions_get    `( BtSoftBody_ConfigClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#588>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Config_m_vsequence_set    `( BtSoftBody_ConfigClass bc , BtAlignedObjectArray_btSoftBody_eVSolver___Class a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#588>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Config_m_vsequence_get    `( BtSoftBody_ConfigClass bc )' =>     { withBt* `bc'  } ->  `BtAlignedObjectArray_btSoftBody_eVSolver___'  mkBtAlignedObjectArray_btSoftBody_eVSolver___* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#589>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Config_m_psequence_set    `( BtSoftBody_ConfigClass bc , BtAlignedObjectArray_btSoftBody_ePSolver___Class a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#589>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Config_m_psequence_get    `( BtSoftBody_ConfigClass bc )' =>     { withBt* `bc'  } ->  `BtAlignedObjectArray_btSoftBody_ePSolver___'  mkBtAlignedObjectArray_btSoftBody_ePSolver___* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#590>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Config_m_dsequence_set    `( BtSoftBody_ConfigClass bc , BtAlignedObjectArray_btSoftBody_ePSolver___Class a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#590>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Config_m_dsequence_get    `( BtSoftBody_ConfigClass bc )' =>     { withBt* `bc'  } ->  `BtAlignedObjectArray_btSoftBody_ePSolver___'  mkBtAlignedObjectArray_btSoftBody_ePSolver___* #}
-- * Element
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#202>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Element_new as btSoftBody_Element    {  } -> `BtSoftBody_Element' mkBtSoftBody_Element* #}
{#fun btSoftBody_Element_free    `( BtSoftBody_ElementClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#201>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Element_m_tag_set    `( BtSoftBody_ElementClass bc )' =>     { withBt* `bc' , withVoidPtr* `VoidPtr'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#201>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Element_m_tag_get    `( BtSoftBody_ElementClass bc )' =>     { withBt* `bc'  } ->  `VoidPtr'  mkVoidPtr* #}
-- * Face
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#244>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Face_new as btSoftBody_Face    {  } -> `BtSoftBody_Face' mkBtSoftBody_Face* #}
{#fun btSoftBody_Face_free    `( BtSoftBody_FaceClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#246>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Face_m_normal_set    `( BtSoftBody_FaceClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#246>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Face_m_normal_get    `( BtSoftBody_FaceClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#247>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Face_m_ra_set    `( BtSoftBody_FaceClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#247>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Face_m_ra_get    `( BtSoftBody_FaceClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#248>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Face_m_leaf_set    `( BtSoftBody_FaceClass bc , BtDbvtNodeClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#248>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Face_m_leaf_get    `( BtSoftBody_FaceClass bc )' =>     { withBt* `bc'  } ->  `BtDbvtNode'  mkBtDbvtNode* #}
-- * Feature
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#215>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Feature_new as btSoftBody_Feature    {  } -> `BtSoftBody_Feature' mkBtSoftBody_Feature* #}
{#fun btSoftBody_Feature_free    `( BtSoftBody_FeatureClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#216>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Feature_m_material_set    `( BtSoftBody_FeatureClass bc , BtSoftBody_MaterialClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#216>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Feature_m_material_get    `( BtSoftBody_FeatureClass bc )' =>     { withBt* `bc'  } ->  `BtSoftBody_Material'  mkBtSoftBody_Material* #}
-- * IControl
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#528>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_AJoint_IControl_new as btSoftBody_AJoint_IControl    {  } -> `BtSoftBody_AJoint_IControl' mkBtSoftBody_AJoint_IControl* #}
{#fun btSoftBody_AJoint_IControl_free    `( BtSoftBody_AJoint_IControlClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#531>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_AJoint_IControl_Default as btSoftBody_AJoint_IControl_Default    `( )' =>     {  } ->  `BtSoftBody_AJoint_IControl'  mkBtSoftBody_AJoint_IControl* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#530>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_AJoint_IControl_Speed as btSoftBody_AJoint_IControl_Speed    `( BtSoftBody_AJoint_IControlClass bc , BtSoftBody_AJointClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ arg0
,  `Float'  -- ^ current
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#529>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_AJoint_IControl_Prepare as btSoftBody_AJoint_IControl_Prepare    `( BtSoftBody_AJoint_IControlClass bc , BtSoftBody_AJointClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ arg0
 } ->  `()'   #}
-- * ImplicitFn
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#172>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_ImplicitFn_Eval as btSoftBody_ImplicitFn_Eval    `( BtSoftBody_ImplicitFnClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ x
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#172>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_ImplicitFn_Eval as btSoftBody_ImplicitFn_Eval'    `( BtSoftBody_ImplicitFnClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ x
 } ->  `Float'   #}
-- * Impulse
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#356>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Impulse_new as btSoftBody_Impulse    {  } -> `BtSoftBody_Impulse' mkBtSoftBody_Impulse* #}
{#fun btSoftBody_Impulse_free    `( BtSoftBody_ImpulseClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#355>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Impulse_m_asDrift_set    `( BtSoftBody_ImpulseClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#355>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Impulse_m_asDrift_get    `( BtSoftBody_ImpulseClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#354>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Impulse_m_asVelocity_set    `( BtSoftBody_ImpulseClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#354>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Impulse_m_asVelocity_get    `( BtSoftBody_ImpulseClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#353>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Impulse_m_drift_set    `( BtSoftBody_ImpulseClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#353>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Impulse_m_drift_get    `( BtSoftBody_ImpulseClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#352>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Impulse_m_velocity_set    `( BtSoftBody_ImpulseClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#352>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Impulse_m_velocity_get    `( BtSoftBody_ImpulseClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
-- * Joint
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#508>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Joint_Terminate as btSoftBody_Joint_Terminate    `( BtSoftBody_JointClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ dt
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#507>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Joint_Solve as btSoftBody_Joint_Solve    `( BtSoftBody_JointClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ dt
,  `Float'  -- ^ sor
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#506>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Joint_Prepare as btSoftBody_Joint_Prepare    `( BtSoftBody_JointClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ dt
,  `Int'  -- ^ iterations
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#497>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Joint_m_cfm_set    `( BtSoftBody_JointClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#497>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Joint_m_cfm_get    `( BtSoftBody_JointClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#498>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Joint_m_erp_set    `( BtSoftBody_JointClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#498>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Joint_m_erp_get    `( BtSoftBody_JointClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#499>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Joint_m_split_set    `( BtSoftBody_JointClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#499>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Joint_m_split_get    `( BtSoftBody_JointClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#500>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Joint_m_drift_set    `( BtSoftBody_JointClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#500>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Joint_m_drift_get    `( BtSoftBody_JointClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#501>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Joint_m_sdrift_set    `( BtSoftBody_JointClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#501>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Joint_m_sdrift_get    `( BtSoftBody_JointClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#502>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Joint_m_massmatrix_set    `( BtSoftBody_JointClass bc )' =>     { withBt* `bc' , withMat3* `Mat3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#502>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Joint_m_massmatrix_get    `( BtSoftBody_JointClass bc )' =>     { withBt* `bc' , allocaMat3-  `Mat3'  peekMat3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#503>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Joint_m_delete_set    `( BtSoftBody_JointClass bc )' =>     { withBt* `bc' ,  `Bool'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#503>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Joint_m_delete_get    `( BtSoftBody_JointClass bc )' =>     { withBt* `bc'  } ->  `Bool'   #}
-- * LJoint
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#513>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_LJoint_new as btSoftBody_LJoint    {  } -> `BtSoftBody_LJoint' mkBtSoftBody_LJoint* #}
{#fun btSoftBody_LJoint_free    `( BtSoftBody_LJointClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#521>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_LJoint_Terminate as btSoftBody_LJoint_Terminate    `( BtSoftBody_LJointClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ dt
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#520>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_LJoint_Solve as btSoftBody_LJoint_Solve    `( BtSoftBody_LJointClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ dt
,  `Float'  -- ^ sor
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#519>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_LJoint_Prepare as btSoftBody_LJoint_Prepare    `( BtSoftBody_LJointClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ dt
,  `Int'  -- ^ iterations
 } ->  `()'   #}
-- * Link
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#233>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Link_new as btSoftBody_Link    {  } -> `BtSoftBody_Link' mkBtSoftBody_Link* #}
{#fun btSoftBody_Link_free    `( BtSoftBody_LinkClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#235>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Link_m_rl_set    `( BtSoftBody_LinkClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#235>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Link_m_rl_get    `( BtSoftBody_LinkClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#236>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Link_m_bbending_set    `( BtSoftBody_LinkClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#236>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Link_m_bbending_get    `( BtSoftBody_LinkClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#237>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Link_m_c0_set    `( BtSoftBody_LinkClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#237>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Link_m_c0_get    `( BtSoftBody_LinkClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#238>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Link_m_c1_set    `( BtSoftBody_LinkClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#238>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Link_m_c1_get    `( BtSoftBody_LinkClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#239>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Link_m_c2_set    `( BtSoftBody_LinkClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#239>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Link_m_c2_get    `( BtSoftBody_LinkClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#240>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Link_m_c3_set    `( BtSoftBody_LinkClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#240>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Link_m_c3_get    `( BtSoftBody_LinkClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
-- * Material
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#206>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Material_new as btSoftBody_Material    {  } -> `BtSoftBody_Material' mkBtSoftBody_Material* #}
{#fun btSoftBody_Material_free    `( BtSoftBody_MaterialClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#210>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Material_m_flags_set    `( BtSoftBody_MaterialClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#210>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Material_m_flags_get    `( BtSoftBody_MaterialClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#208>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Material_m_kAST_set    `( BtSoftBody_MaterialClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#208>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Material_m_kAST_get    `( BtSoftBody_MaterialClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#207>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Material_m_kLST_set    `( BtSoftBody_MaterialClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#207>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Material_m_kLST_get    `( BtSoftBody_MaterialClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#209>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Material_m_kVST_set    `( BtSoftBody_MaterialClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#209>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Material_m_kVST_get    `( BtSoftBody_MaterialClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
-- * Node
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#220>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Node_new as btSoftBody_Node    {  } -> `BtSoftBody_Node' mkBtSoftBody_Node* #}
{#fun btSoftBody_Node_free    `( BtSoftBody_NodeClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#227>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Node_m_area_set    `( BtSoftBody_NodeClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#227>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Node_m_area_get    `( BtSoftBody_NodeClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#229>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Node_m_battach_set    `( BtSoftBody_NodeClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#229>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Node_m_battach_get    `( BtSoftBody_NodeClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#224>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Node_m_f_set    `( BtSoftBody_NodeClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#224>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Node_m_f_get    `( BtSoftBody_NodeClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#226>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Node_m_im_set    `( BtSoftBody_NodeClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#226>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Node_m_im_get    `( BtSoftBody_NodeClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#228>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Node_m_leaf_set    `( BtSoftBody_NodeClass bc , BtDbvtNodeClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#228>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Node_m_leaf_get    `( BtSoftBody_NodeClass bc )' =>     { withBt* `bc'  } ->  `BtDbvtNode'  mkBtDbvtNode* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#225>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Node_m_n_set    `( BtSoftBody_NodeClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#225>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Node_m_n_get    `( BtSoftBody_NodeClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#222>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Node_m_q_set    `( BtSoftBody_NodeClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#222>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Node_m_q_get    `( BtSoftBody_NodeClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#223>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Node_m_v_set    `( BtSoftBody_NodeClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#223>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Node_m_v_get    `( BtSoftBody_NodeClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#221>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Node_m_x_set    `( BtSoftBody_NodeClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#221>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Node_m_x_get    `( BtSoftBody_NodeClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
-- * Note
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#295>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Note_new as btSoftBody_Note    {  } -> `BtSoftBody_Note' mkBtSoftBody_Note* #}
{#fun btSoftBody_Note_free    `( BtSoftBody_NoteClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#296>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Note_m_text_set    `( BtSoftBody_NoteClass bc )' =>     { withBt* `bc' ,  `String'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#296>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Note_m_text_get    `( BtSoftBody_NoteClass bc )' =>     { withBt* `bc'  } ->  `String'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#297>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Note_m_offset_set    `( BtSoftBody_NoteClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#297>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Note_m_offset_get    `( BtSoftBody_NoteClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#298>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Note_m_rank_set    `( BtSoftBody_NoteClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#298>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Note_m_rank_get    `( BtSoftBody_NoteClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
-- * Pose
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#304>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Pose_new as btSoftBody_Pose    {  } -> `BtSoftBody_Pose' mkBtSoftBody_Pose* #}
{#fun btSoftBody_Pose_free    `( BtSoftBody_PoseClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#305>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Pose_m_bvolume_set    `( BtSoftBody_PoseClass bc )' =>     { withBt* `bc' ,  `Bool'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#305>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Pose_m_bvolume_get    `( BtSoftBody_PoseClass bc )' =>     { withBt* `bc'  } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#306>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Pose_m_bframe_set    `( BtSoftBody_PoseClass bc )' =>     { withBt* `bc' ,  `Bool'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#306>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Pose_m_bframe_get    `( BtSoftBody_PoseClass bc )' =>     { withBt* `bc'  } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#307>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Pose_m_volume_set    `( BtSoftBody_PoseClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#307>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Pose_m_volume_get    `( BtSoftBody_PoseClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#308>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Pose_m_pos_set    `( BtSoftBody_PoseClass bc , BtAlignedObjectArray_btVector3_Class a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#308>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Pose_m_pos_get    `( BtSoftBody_PoseClass bc )' =>     { withBt* `bc'  } ->  `BtAlignedObjectArray_btVector3_'  mkBtAlignedObjectArray_btVector3_* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#309>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Pose_m_wgh_set    `( BtSoftBody_PoseClass bc , BtAlignedObjectArray_float_Class a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#309>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Pose_m_wgh_get    `( BtSoftBody_PoseClass bc )' =>     { withBt* `bc'  } ->  `BtAlignedObjectArray_float_'  mkBtAlignedObjectArray_float_* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#310>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Pose_m_com_set    `( BtSoftBody_PoseClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#310>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Pose_m_com_get    `( BtSoftBody_PoseClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#311>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Pose_m_rot_set    `( BtSoftBody_PoseClass bc )' =>     { withBt* `bc' , withMat3* `Mat3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#311>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Pose_m_rot_get    `( BtSoftBody_PoseClass bc )' =>     { withBt* `bc' , allocaMat3-  `Mat3'  peekMat3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#312>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Pose_m_scl_set    `( BtSoftBody_PoseClass bc )' =>     { withBt* `bc' , withMat3* `Mat3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#312>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Pose_m_scl_get    `( BtSoftBody_PoseClass bc )' =>     { withBt* `bc' , allocaMat3-  `Mat3'  peekMat3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#313>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Pose_m_aqq_set    `( BtSoftBody_PoseClass bc )' =>     { withBt* `bc' , withMat3* `Mat3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#313>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Pose_m_aqq_get    `( BtSoftBody_PoseClass bc )' =>     { withBt* `bc' , allocaMat3-  `Mat3'  peekMat3* } -> `()' #}
-- * RContact
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#262>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_RContact_new as btSoftBody_RContact    {  } -> `BtSoftBody_RContact' mkBtSoftBody_RContact* #}
{#fun btSoftBody_RContact_free    `( BtSoftBody_RContactClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#263>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_RContact_m_cti_set    `( BtSoftBody_RContactClass bc , BtSoftBody_sCtiClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#263>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_RContact_m_cti_get    `( BtSoftBody_RContactClass bc )' =>     { withBt* `bc'  } ->  `BtSoftBody_sCti'  mkBtSoftBody_sCti* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#264>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_RContact_m_node_set    `( BtSoftBody_RContactClass bc , BtSoftBody_NodeClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#264>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_RContact_m_node_get    `( BtSoftBody_RContactClass bc )' =>     { withBt* `bc'  } ->  `BtSoftBody_Node'  mkBtSoftBody_Node* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#265>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_RContact_m_c0_set    `( BtSoftBody_RContactClass bc )' =>     { withBt* `bc' , withMat3* `Mat3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#265>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_RContact_m_c0_get    `( BtSoftBody_RContactClass bc )' =>     { withBt* `bc' , allocaMat3-  `Mat3'  peekMat3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#266>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_RContact_m_c1_set    `( BtSoftBody_RContactClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#266>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_RContact_m_c1_get    `( BtSoftBody_RContactClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#267>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_RContact_m_c2_set    `( BtSoftBody_RContactClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#267>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_RContact_m_c2_get    `( BtSoftBody_RContactClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#268>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_RContact_m_c3_set    `( BtSoftBody_RContactClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#268>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_RContact_m_c3_get    `( BtSoftBody_RContactClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#269>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_RContact_m_c4_set    `( BtSoftBody_RContactClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#269>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_RContact_m_c4_get    `( BtSoftBody_RContactClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
-- * RayFromToCaster
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#610>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_RayFromToCaster_new as btSoftBody_RayFromToCaster    {  withVec3* `Vec3' , withVec3* `Vec3' ,  `Float'  } -> `BtSoftBody_RayFromToCaster' mkBtSoftBody_RayFromToCaster* #}
{#fun btSoftBody_RayFromToCaster_free    `( BtSoftBody_RayFromToCasterClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#611>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_RayFromToCaster_Process as btSoftBody_RayFromToCaster_Process    `( BtSoftBody_RayFromToCasterClass bc , BtDbvtNodeClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ leaf
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#604>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_RayFromToCaster_m_rayFrom_set    `( BtSoftBody_RayFromToCasterClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#604>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_RayFromToCaster_m_rayFrom_get    `( BtSoftBody_RayFromToCasterClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#605>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_RayFromToCaster_m_rayTo_set    `( BtSoftBody_RayFromToCasterClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#605>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_RayFromToCaster_m_rayTo_get    `( BtSoftBody_RayFromToCasterClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#606>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_RayFromToCaster_m_rayNormalizedDirection_set    `( BtSoftBody_RayFromToCasterClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#606>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_RayFromToCaster_m_rayNormalizedDirection_get    `( BtSoftBody_RayFromToCasterClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#607>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_RayFromToCaster_m_mint_set    `( BtSoftBody_RayFromToCasterClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#607>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_RayFromToCaster_m_mint_get    `( BtSoftBody_RayFromToCasterClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#608>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_RayFromToCaster_m_face_set    `( BtSoftBody_RayFromToCasterClass bc , BtSoftBody_FaceClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#608>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_RayFromToCaster_m_face_get    `( BtSoftBody_RayFromToCasterClass bc )' =>     { withBt* `bc'  } ->  `BtSoftBody_Face'  mkBtSoftBody_Face* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#609>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_RayFromToCaster_m_tests_set    `( BtSoftBody_RayFromToCasterClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#609>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_RayFromToCaster_m_tests_get    `( BtSoftBody_RayFromToCasterClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
-- * SContact
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#273>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_SContact_new as btSoftBody_SContact    {  } -> `BtSoftBody_SContact' mkBtSoftBody_SContact* #}
{#fun btSoftBody_SContact_free    `( BtSoftBody_SContactClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#274>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_SContact_m_node_set    `( BtSoftBody_SContactClass bc , BtSoftBody_NodeClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#274>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_SContact_m_node_get    `( BtSoftBody_SContactClass bc )' =>     { withBt* `bc'  } ->  `BtSoftBody_Node'  mkBtSoftBody_Node* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#275>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_SContact_m_face_set    `( BtSoftBody_SContactClass bc , BtSoftBody_FaceClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#275>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_SContact_m_face_get    `( BtSoftBody_SContactClass bc )' =>     { withBt* `bc'  } ->  `BtSoftBody_Face'  mkBtSoftBody_Face* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#276>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_SContact_m_weights_set    `( BtSoftBody_SContactClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#276>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_SContact_m_weights_get    `( BtSoftBody_SContactClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#277>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_SContact_m_normal_set    `( BtSoftBody_SContactClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#277>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_SContact_m_normal_get    `( BtSoftBody_SContactClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#278>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_SContact_m_margin_set    `( BtSoftBody_SContactClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#278>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_SContact_m_margin_get    `( BtSoftBody_SContactClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#279>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_SContact_m_friction_set    `( BtSoftBody_SContactClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#279>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_SContact_m_friction_get    `( BtSoftBody_SContactClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
-- * SolverState
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#594>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_SolverState_new as btSoftBody_SolverState    {  } -> `BtSoftBody_SolverState' mkBtSoftBody_SolverState* #}
{#fun btSoftBody_SolverState_free    `( BtSoftBody_SolverStateClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#595>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_SolverState_sdt_set    `( BtSoftBody_SolverStateClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#595>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_SolverState_sdt_get    `( BtSoftBody_SolverStateClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#596>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_SolverState_isdt_set    `( BtSoftBody_SolverStateClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#596>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_SolverState_isdt_get    `( BtSoftBody_SolverStateClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#597>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_SolverState_velmrg_set    `( BtSoftBody_SolverStateClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#597>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_SolverState_velmrg_get    `( BtSoftBody_SolverStateClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#598>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_SolverState_radmrg_set    `( BtSoftBody_SolverStateClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#598>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_SolverState_radmrg_get    `( BtSoftBody_SolverStateClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#599>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_SolverState_updmrg_set    `( BtSoftBody_SolverStateClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#599>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_SolverState_updmrg_get    `( BtSoftBody_SolverStateClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
-- * Specs
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#490>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Joint_Specs_new as btSoftBody_Joint_Specs    {  } -> `BtSoftBody_Joint_Specs' mkBtSoftBody_Joint_Specs* #}
{#fun btSoftBody_Joint_Specs_free    `( BtSoftBody_Joint_SpecsClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#491>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Joint_Specs_erp_set    `( BtSoftBody_Joint_SpecsClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#491>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Joint_Specs_erp_get    `( BtSoftBody_Joint_SpecsClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#492>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Joint_Specs_cfm_set    `( BtSoftBody_Joint_SpecsClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#492>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Joint_Specs_cfm_get    `( BtSoftBody_Joint_SpecsClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#493>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Joint_Specs_split_set    `( BtSoftBody_Joint_SpecsClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#493>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Joint_Specs_split_get    `( BtSoftBody_Joint_SpecsClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
-- * Specs
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#515>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_LJoint_Specs_new as btSoftBody_LJoint_Specs    {  } -> `BtSoftBody_LJoint_Specs' mkBtSoftBody_LJoint_Specs* #}
{#fun btSoftBody_LJoint_Specs_free    `( BtSoftBody_LJoint_SpecsClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#516>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_LJoint_Specs_position_set    `( BtSoftBody_LJoint_SpecsClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#516>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_LJoint_Specs_position_get    `( BtSoftBody_LJoint_SpecsClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
-- * Specs
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#535>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_AJoint_Specs_new as btSoftBody_AJoint_Specs    {  } -> `BtSoftBody_AJoint_Specs' mkBtSoftBody_AJoint_Specs* #}
{#fun btSoftBody_AJoint_Specs_free    `( BtSoftBody_AJoint_SpecsClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#536>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_AJoint_Specs_axis_set    `( BtSoftBody_AJoint_SpecsClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#536>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_AJoint_Specs_axis_get    `( BtSoftBody_AJoint_SpecsClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#537>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_AJoint_Specs_icontrol_set    `( BtSoftBody_AJoint_SpecsClass bc , BtSoftBody_AJoint_IControlClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#537>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_AJoint_Specs_icontrol_get    `( BtSoftBody_AJoint_SpecsClass bc )' =>     { withBt* `bc'  } ->  `BtSoftBody_AJoint_IControl'  mkBtSoftBody_AJoint_IControl* #}
-- * Tetra
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#252>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Tetra_new as btSoftBody_Tetra    {  } -> `BtSoftBody_Tetra' mkBtSoftBody_Tetra* #}
{#fun btSoftBody_Tetra_free    `( BtSoftBody_TetraClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#254>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Tetra_m_rv_set    `( BtSoftBody_TetraClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#254>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Tetra_m_rv_get    `( BtSoftBody_TetraClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#255>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Tetra_m_leaf_set    `( BtSoftBody_TetraClass bc , BtDbvtNodeClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#255>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Tetra_m_leaf_get    `( BtSoftBody_TetraClass bc )' =>     { withBt* `bc'  } ->  `BtDbvtNode'  mkBtDbvtNode* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#257>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Tetra_m_c1_set    `( BtSoftBody_TetraClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#257>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Tetra_m_c1_get    `( BtSoftBody_TetraClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#258>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Tetra_m_c2_set    `( BtSoftBody_TetraClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#258>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Tetra_m_c2_get    `( BtSoftBody_TetraClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
-- * btSoftBody
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#682>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_new1 as btSoftBody1    `( BtSoftBodyWorldInfoClass p0 )' =>     {  withBt* `p0'  } -> `BtSoftBody' mkBtSoftBody* #}
{#fun btSoftBody_free    `( BtSoftBodyClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#811>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_getVolume as btSoftBody_getVolume    `( BtSoftBodyClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#842>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_cutLink0 as btSoftBody_cutLink    `( BtSoftBodyClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ node0
,  `Int'  -- ^ node1
,  `Float'  -- ^ position
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#842>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_cutLink0 as btSoftBody_cutLink0    `( BtSoftBodyClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ node0
,  `Int'  -- ^ node1
,  `Float'  -- ^ position
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#843>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_cutLink1 as btSoftBody_cutLink1    `( BtSoftBodyClass bc , BtSoftBody_NodeClass p0 , BtSoftBody_NodeClass p1 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ node0
, withBt* `p1'  -- ^ node1
,  `Float'  -- ^ position
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#962>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_PSolve_Links as btSoftBody_PSolve_Links    `(  BtSoftBodyClass p0 )' =>     {  withBt* `p0'  -- ^ psb
,  `Float'  -- ^ kst
,  `Float'  -- ^ ti
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#838>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_generateClusters as btSoftBody_generateClusters    `( BtSoftBodyClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ k
,  `Int'  -- ^ maxiterations
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#698>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_setCollisionShape as btSoftBody_setCollisionShape    `( BtSoftBodyClass bc , BtCollisionShapeClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ collisionShape
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#951>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_initializeClusters as btSoftBody_initializeClusters    `( BtSoftBodyClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#823>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_clusterVAImpulse as btSoftBody_clusterVAImpulse    `(  BtSoftBody_ClusterClass p0 )' =>     {  withBt* `p0'  -- ^ cluster
, withVec3* `Vec3'  peekVec3* -- ^ impulse
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#823>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_clusterVAImpulse as btSoftBody_clusterVAImpulse'    `(  BtSoftBody_ClusterClass p0 )' =>     {  withBt* `p0'  -- ^ cluster
, allocaVec3-  `Vec3'  peekVec3* -- ^ impulse
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#770>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_addForce0 as btSoftBody_addForce    `( BtSoftBodyClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ force
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#770>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_addForce0 as btSoftBody_addForce'    `( BtSoftBodyClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ force
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#770>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_addForce0 as btSoftBody_addForce0    `( BtSoftBodyClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ force
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#770>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_addForce0 as btSoftBody_addForce0'    `( BtSoftBodyClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ force
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#773>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_addForce1 as btSoftBody_addForce1    `( BtSoftBodyClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ force
,  `Int'  -- ^ node
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#773>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_addForce1 as btSoftBody_addForce1'    `( BtSoftBodyClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ force
,  `Int'  -- ^ node
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#971>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_serialize as btSoftBody_serialize    `( BtSoftBodyClass bc , BtSerializerClass p1 )' =>     { withBt* `bc'  -- ^ 
, withVoidPtr* `VoidPtr'  -- ^ dataBuffer
, withBt* `p1'  -- ^ serializer
 } ->  `String'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#948>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_updateBounds as btSoftBody_updateBounds    `( BtSoftBodyClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#804>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_rotate as btSoftBody_rotate    `( BtSoftBodyClass bc )' =>     { withBt* `bc'  -- ^ 
, withUnitQuaternion* `UnitQuaternion'  peekUnitQuaternion* -- ^ rot
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#804>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_rotate as btSoftBody_rotate'    `( BtSoftBodyClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaUnitQuaternion-  `UnitQuaternion'  peekUnitQuaternion* -- ^ rot
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#833>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_releaseCluster as btSoftBody_releaseCluster    `( BtSoftBodyClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ index
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#947>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_updateNormals as btSoftBody_updateNormals    `( BtSoftBodyClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#954>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_prepareClusters as btSoftBody_prepareClusters    `( BtSoftBodyClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ iterations
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#834>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_releaseClusters as btSoftBody_releaseClusters    `( BtSoftBodyClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#789>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_getTotalMass as btSoftBody_getTotalMass    `( BtSoftBodyClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#946>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_checkContact as btSoftBody_checkContact    `( BtSoftBodyClass bc , BtCollisionObjectClass p0 , BtSoftBody_sCtiClass p3 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ colObj
, withVec3* `Vec3'  peekVec3* -- ^ x
,  `Float'  -- ^ margin
, withBt* `p3'  -- ^ cti
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#946>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_checkContact as btSoftBody_checkContact'    `( BtSoftBodyClass bc , BtCollisionObjectClass p0 , BtSoftBody_sCtiClass p3 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ colObj
, allocaVec3-  `Vec3'  peekVec3* -- ^ x
,  `Float'  -- ^ margin
, withBt* `p3'  -- ^ cti
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#821>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_clusterDImpulse as btSoftBody_clusterDImpulse    `(  BtSoftBody_ClusterClass p0 )' =>     {  withBt* `p0'  -- ^ cluster
, withVec3* `Vec3'  peekVec3* -- ^ rpos
, withVec3* `Vec3'  peekVec3* -- ^ impulse
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#821>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_clusterDImpulse as btSoftBody_clusterDImpulse'    `(  BtSoftBody_ClusterClass p0 )' =>     {  withBt* `p0'  -- ^ cluster
, allocaVec3-  `Vec3'  peekVec3* -- ^ rpos
, allocaVec3-  `Vec3'  peekVec3* -- ^ impulse
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#684>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_initDefaults as btSoftBody_initDefaults    `( BtSoftBodyClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#704>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_checkLink0 as btSoftBody_checkLink    `( BtSoftBodyClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ node0
,  `Int'  -- ^ node1
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#704>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_checkLink0 as btSoftBody_checkLink0    `( BtSoftBodyClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ node0
,  `Int'  -- ^ node1
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#706>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_checkLink1 as btSoftBody_checkLink1    `( BtSoftBodyClass bc , BtSoftBody_NodeClass p0 , BtSoftBody_NodeClass p1 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ node0
, withBt* `p1'  -- ^ node1
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#796>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_setVolumeMass as btSoftBody_setVolumeMass    `( BtSoftBodyClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ mass
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#822>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_clusterImpulse as btSoftBody_clusterImpulse    `(  BtSoftBody_ClusterClass p0 , BtSoftBody_ImpulseClass p2 )' =>     {  withBt* `p0'  -- ^ cluster
, withVec3* `Vec3'  peekVec3* -- ^ rpos
, withBt* `p2'  -- ^ impulse
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#822>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_clusterImpulse as btSoftBody_clusterImpulse'    `(  BtSoftBody_ClusterClass p0 , BtSoftBody_ImpulseClass p2 )' =>     {  withBt* `p0'  -- ^ cluster
, allocaVec3-  `Vec3'  peekVec3* -- ^ rpos
, withBt* `p2'  -- ^ impulse
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#710>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_checkFace as btSoftBody_checkFace    `( BtSoftBodyClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ node0
,  `Int'  -- ^ node1
,  `Int'  -- ^ node2
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#945>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_evaluateCom as btSoftBody_evaluateCom    `( BtSoftBodyClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#824>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_clusterDAImpulse as btSoftBody_clusterDAImpulse    `(  BtSoftBody_ClusterClass p0 )' =>     {  withBt* `p0'  -- ^ cluster
, withVec3* `Vec3'  peekVec3* -- ^ impulse
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#824>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_clusterDAImpulse as btSoftBody_clusterDAImpulse'    `(  BtSoftBody_ClusterClass p0 )' =>     {  withBt* `p0'  -- ^ cluster
, allocaVec3-  `Vec3'  peekVec3* -- ^ impulse
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#963>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_VSolve_Links as btSoftBody_VSolve_Links    `(  BtSoftBodyClass p0 )' =>     {  withBt* `p0'  -- ^ psb
,  `Float'  -- ^ kst
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#792>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_setTotalMass as btSoftBody_setTotalMass    `( BtSoftBodyClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ mass
,  `Bool'  -- ^ fromfaces
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#826>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_clusterDCImpulse as btSoftBody_clusterDCImpulse    `(  BtSoftBody_ClusterClass p0 )' =>     {  withBt* `p0'  -- ^ cluster
, withVec3* `Vec3'  peekVec3* -- ^ impulse
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#826>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_clusterDCImpulse as btSoftBody_clusterDCImpulse'    `(  BtSoftBody_ClusterClass p0 )' =>     {  withBt* `p0'  -- ^ cluster
, allocaVec3-  `Vec3'  peekVec3* -- ^ impulse
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#818>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_clusterVelocity as btSoftBody_clusterVelocity    `(  BtSoftBody_ClusterClass p0 )' =>     {  withBt* `p0'  -- ^ cluster
, withVec3* `Vec3'  peekVec3* -- ^ rpos
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#818>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_clusterVelocity as btSoftBody_clusterVelocity'    `(  BtSoftBody_ClusterClass p0 )' =>     {  withBt* `p0'  -- ^ cluster
, allocaVec3-  `Vec3'  peekVec3* -- ^ rpos
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#829>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_generateBendingConstraints as btSoftBody_generateBendingConstraints    `( BtSoftBodyClass bc , BtSoftBody_MaterialClass p1 )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ distance
, withBt* `p1'  -- ^ mat
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#952>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_updateClusters as btSoftBody_updateClusters    `( BtSoftBodyClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#759>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_appendAnchor0 as btSoftBody_appendAnchor    `( BtSoftBodyClass bc , BtRigidBodyClass p1 )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ node
, withBt* `p1'  -- ^ body
,  `Bool'  -- ^ disableCollisionBetweenLinkedBodies
,  `Float'  -- ^ influence
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#759>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_appendAnchor0 as btSoftBody_appendAnchor0    `( BtSoftBodyClass bc , BtRigidBodyClass p1 )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ node
, withBt* `p1'  -- ^ body
,  `Bool'  -- ^ disableCollisionBetweenLinkedBodies
,  `Float'  -- ^ influence
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#760>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_appendAnchor1 as btSoftBody_appendAnchor1    `( BtSoftBodyClass bc , BtRigidBodyClass p1 )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ node
, withBt* `p1'  -- ^ body
, withVec3* `Vec3'  peekVec3* -- ^ localPivot
,  `Bool'  -- ^ disableCollisionBetweenLinkedBodies
,  `Float'  -- ^ influence
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#760>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_appendAnchor1 as btSoftBody_appendAnchor1'    `( BtSoftBodyClass bc , BtRigidBodyClass p1 )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ node
, withBt* `p1'  -- ^ body
, allocaVec3-  `Vec3'  peekVec3* -- ^ localPivot
,  `Bool'  -- ^ disableCollisionBetweenLinkedBodies
,  `Float'  -- ^ influence
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#956>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_applyClusters as btSoftBody_applyClusters    `( BtSoftBodyClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Bool'  -- ^ drift
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#778>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_setVelocity as btSoftBody_setVelocity    `( BtSoftBodyClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ velocity
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#778>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_setVelocity as btSoftBody_setVelocity'    `( BtSoftBodyClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ velocity
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#813>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_clusterCount as btSoftBody_clusterCount    `( BtSoftBodyClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#914>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_upcast0 as btSoftBody_upcast    `(  BtCollisionObjectClass p0 )' =>     {  withBt* `p0'  -- ^ colObj
 } ->  `BtSoftBody'  mkBtSoftBody* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#914>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_upcast0 as btSoftBody_upcast0    `(  BtCollisionObjectClass p0 )' =>     {  withBt* `p0'  -- ^ colObj
 } ->  `BtSoftBody'  mkBtSoftBody* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#920>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_upcast1 as btSoftBody_upcast1    `(  BtCollisionObjectClass p0 )' =>     {  withBt* `p0'  -- ^ colObj
 } ->  `BtSoftBody'  mkBtSoftBody* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#882>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_getWindVelocity as btSoftBody_getWindVelocity    `( BtSoftBodyClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#852>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_predictMotion as btSoftBody_predictMotion    `( BtSoftBodyClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ dt
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#939>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_pointersToIndices as btSoftBody_pointersToIndices    `( BtSoftBodyClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#787>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_getMass as btSoftBody_getMass    `( BtSoftBodyClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ node
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#960>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_PSolve_RContacts as btSoftBody_PSolve_RContacts    `(  BtSoftBodyClass p0 )' =>     {  withBt* `p0'  -- ^ psb
,  `Float'  -- ^ kst
,  `Float'  -- ^ ti
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#944>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_initializeFaceTree as btSoftBody_initializeFaceTree    `( BtSoftBodyClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#775>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_addVelocity0 as btSoftBody_addVelocity    `( BtSoftBodyClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ velocity
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#775>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_addVelocity0 as btSoftBody_addVelocity'    `( BtSoftBodyClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ velocity
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#775>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_addVelocity0 as btSoftBody_addVelocity0    `( BtSoftBodyClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ velocity
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#775>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_addVelocity0 as btSoftBody_addVelocity0'    `( BtSoftBodyClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ velocity
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#782>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_addVelocity1 as btSoftBody_addVelocity1    `( BtSoftBodyClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ velocity
,  `Int'  -- ^ node
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#782>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_addVelocity1 as btSoftBody_addVelocity1'    `( BtSoftBodyClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ velocity
,  `Int'  -- ^ node
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#959>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_PSolve_Anchors as btSoftBody_PSolve_Anchors    `(  BtSoftBodyClass p0 )' =>     {  withBt* `p0'  -- ^ psb
,  `Float'  -- ^ kst
,  `Float'  -- ^ ti
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#953>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_cleanupClusters as btSoftBody_cleanupClusters    `( BtSoftBodyClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#800>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_transform as btSoftBody_transform    `( BtSoftBodyClass bc )' =>     { withBt* `bc'  -- ^ 
, withTransform* `Transform'  peekTransform* -- ^ trs
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#800>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_transform as btSoftBody_transform'    `( BtSoftBodyClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaTransform-  `Transform'  peekTransform* -- ^ trs
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#764>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_appendLinearJoint2 as btSoftBody_appendLinearJoint2    `( BtSoftBodyClass bc , BtSoftBody_LJoint_SpecsClass p0 , BtSoftBodyClass p1 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ specs
, withBt* `p1'  -- ^ body
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#831>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_randomizeConstraints as btSoftBody_randomizeConstraints    `( BtSoftBodyClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#949>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_updatePose as btSoftBody_updatePose    `( BtSoftBodyClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#802>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_translate as btSoftBody_translate    `( BtSoftBodyClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ trs
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#802>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_translate as btSoftBody_translate'    `( BtSoftBodyClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ trs
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#931>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_getAabb as btSoftBody_getAabb    `( BtSoftBodyClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ aabbMin
, withVec3* `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#931>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_getAabb as btSoftBody_getAabb'    `( BtSoftBodyClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMin
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#961>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_PSolve_SContacts as btSoftBody_PSolve_SContacts    `(  BtSoftBodyClass p0 )' =>     {  withBt* `p0'  -- ^ psb
,  `Float'  -- ^ arg1
,  `Float'  -- ^ ti
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#712>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_appendMaterial as btSoftBody_appendMaterial    `( BtSoftBodyClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtSoftBody_Material'  mkBtSoftBody_Material* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#731>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_appendNode as btSoftBody_appendNode    `( BtSoftBodyClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ x
,  `Float'  -- ^ m
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#731>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_appendNode as btSoftBody_appendNode'    `( BtSoftBodyClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ x
,  `Float'  -- ^ m
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#785>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_setMass as btSoftBody_setMass    `( BtSoftBodyClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ node
,  `Float'  -- ^ mass
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#862>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_integrateMotion as btSoftBody_integrateMotion    `( BtSoftBodyClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#864>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_defaultCollisionHandler0 as btSoftBody_defaultCollisionHandler    `( BtSoftBodyClass bc , BtCollisionObjectClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ pco
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#864>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_defaultCollisionHandler0 as btSoftBody_defaultCollisionHandler0    `( BtSoftBodyClass bc , BtCollisionObjectClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ pco
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#865>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_defaultCollisionHandler1 as btSoftBody_defaultCollisionHandler1    `( BtSoftBodyClass bc , BtSoftBodyClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ psb
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#854>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_solveConstraints as btSoftBody_solveConstraints    `( BtSoftBodyClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#794>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_setTotalDensity as btSoftBody_setTotalDensity    `( BtSoftBodyClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ density
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#720>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_appendNote0 as btSoftBody_appendNote    `( BtSoftBodyClass bc , BtSoftBody_NodeClass p3 , BtSoftBody_NodeClass p4 , BtSoftBody_NodeClass p5 , BtSoftBody_NodeClass p6 )' =>     { withBt* `bc'  -- ^ 
,  `String'  -- ^ text
, withVec3* `Vec3'  peekVec3* -- ^ o
, withVec4* `Vec4'  peekVec4* -- ^ c
, withBt* `p3'  -- ^ n0
, withBt* `p4'  -- ^ n1
, withBt* `p5'  -- ^ n2
, withBt* `p6'  -- ^ n3
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#720>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_appendNote0 as btSoftBody_appendNote'    `( BtSoftBodyClass bc , BtSoftBody_NodeClass p3 , BtSoftBody_NodeClass p4 , BtSoftBody_NodeClass p5 , BtSoftBody_NodeClass p6 )' =>     { withBt* `bc'  -- ^ 
,  `String'  -- ^ text
, allocaVec3-  `Vec3'  peekVec3* -- ^ o
, allocaVec4-  `Vec4'  peekVec4* -- ^ c
, withBt* `p3'  -- ^ n0
, withBt* `p4'  -- ^ n1
, withBt* `p5'  -- ^ n2
, withBt* `p6'  -- ^ n3
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#720>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_appendNote0 as btSoftBody_appendNote0    `( BtSoftBodyClass bc , BtSoftBody_NodeClass p3 , BtSoftBody_NodeClass p4 , BtSoftBody_NodeClass p5 , BtSoftBody_NodeClass p6 )' =>     { withBt* `bc'  -- ^ 
,  `String'  -- ^ text
, withVec3* `Vec3'  peekVec3* -- ^ o
, withVec4* `Vec4'  peekVec4* -- ^ c
, withBt* `p3'  -- ^ n0
, withBt* `p4'  -- ^ n1
, withBt* `p5'  -- ^ n2
, withBt* `p6'  -- ^ n3
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#720>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_appendNote0 as btSoftBody_appendNote0'    `( BtSoftBodyClass bc , BtSoftBody_NodeClass p3 , BtSoftBody_NodeClass p4 , BtSoftBody_NodeClass p5 , BtSoftBody_NodeClass p6 )' =>     { withBt* `bc'  -- ^ 
,  `String'  -- ^ text
, allocaVec3-  `Vec3'  peekVec3* -- ^ o
, allocaVec4-  `Vec4'  peekVec4* -- ^ c
, withBt* `p3'  -- ^ n0
, withBt* `p4'  -- ^ n1
, withBt* `p5'  -- ^ n2
, withBt* `p6'  -- ^ n3
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#723>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_appendNote1 as btSoftBody_appendNote1    `( BtSoftBodyClass bc , BtSoftBody_NodeClass p2 )' =>     { withBt* `bc'  -- ^ 
,  `String'  -- ^ text
, withVec3* `Vec3'  peekVec3* -- ^ o
, withBt* `p2'  -- ^ feature
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#723>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_appendNote1 as btSoftBody_appendNote1'    `( BtSoftBodyClass bc , BtSoftBody_NodeClass p2 )' =>     { withBt* `bc'  -- ^ 
,  `String'  -- ^ text
, allocaVec3-  `Vec3'  peekVec3* -- ^ o
, withBt* `p2'  -- ^ feature
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#726>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_appendNote2 as btSoftBody_appendNote2    `( BtSoftBodyClass bc , BtSoftBody_LinkClass p2 )' =>     { withBt* `bc'  -- ^ 
,  `String'  -- ^ text
, withVec3* `Vec3'  peekVec3* -- ^ o
, withBt* `p2'  -- ^ feature
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#726>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_appendNote2 as btSoftBody_appendNote2'    `( BtSoftBodyClass bc , BtSoftBody_LinkClass p2 )' =>     { withBt* `bc'  -- ^ 
,  `String'  -- ^ text
, allocaVec3-  `Vec3'  peekVec3* -- ^ o
, withBt* `p2'  -- ^ feature
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#729>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_appendNote3 as btSoftBody_appendNote3    `( BtSoftBodyClass bc , BtSoftBody_FaceClass p2 )' =>     { withBt* `bc'  -- ^ 
,  `String'  -- ^ text
, withVec3* `Vec3'  peekVec3* -- ^ o
, withBt* `p2'  -- ^ feature
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#729>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_appendNote3 as btSoftBody_appendNote3'    `( BtSoftBodyClass bc , BtSoftBody_FaceClass p2 )' =>     { withBt* `bc'  -- ^ 
,  `String'  -- ^ text
, allocaVec3-  `Vec3'  peekVec3* -- ^ o
, withBt* `p2'  -- ^ feature
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#798>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_setVolumeDensity as btSoftBody_setVolumeDensity    `( BtSoftBodyClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ density
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#950>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_updateConstants as btSoftBody_updateConstants    `( BtSoftBodyClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#856>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_staticSolve as btSoftBody_staticSolve    `( BtSoftBodyClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ iterations
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#840>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_refine as btSoftBody_refine    `( BtSoftBodyClass bc , BtSoftBody_ImplicitFnClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ ifn
,  `Float'  -- ^ accurary
,  `Bool'  -- ^ cut
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#733>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_appendLink0 as btSoftBody_appendLink    `( BtSoftBodyClass bc , BtSoftBody_MaterialClass p1 )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ model
, withBt* `p1'  -- ^ mat
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#733>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_appendLink0 as btSoftBody_appendLink0    `( BtSoftBodyClass bc , BtSoftBody_MaterialClass p1 )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ model
, withBt* `p1'  -- ^ mat
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#737>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_appendLink1 as btSoftBody_appendLink1    `( BtSoftBodyClass bc , BtSoftBody_MaterialClass p2 )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ node0
,  `Int'  -- ^ node1
, withBt* `p2'  -- ^ mat
,  `Bool'  -- ^ bcheckexist
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#741>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_appendLink2 as btSoftBody_appendLink2    `( BtSoftBodyClass bc , BtSoftBody_NodeClass p0 , BtSoftBody_NodeClass p1 , BtSoftBody_MaterialClass p2 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ node0
, withBt* `p1'  -- ^ node1
, withBt* `p2'  -- ^ mat
,  `Bool'  -- ^ bcheckexist
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#968>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_calculateSerializeBufferSize as btSoftBody_calculateSerializeBufferSize    `( BtSoftBodyClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#860>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_solveClusters0 as btSoftBody_solveClusters    `(  BtAlignedObjectArray_btSoftBody_ptr_Class p0 )' =>     {  withBt* `p0'  -- ^ bodies
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#860>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_solveClusters0 as btSoftBody_solveClusters0    `(  BtAlignedObjectArray_btSoftBody_ptr_Class p0 )' =>     {  withBt* `p0'  -- ^ bodies
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#955>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_solveClusters1 as btSoftBody_solveClusters1    `( BtSoftBodyClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ sor
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#848>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_rayTest0 as btSoftBody_rayTest    `( BtSoftBodyClass bc , BtSoftBody_sRayCastClass p2 )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ rayFrom
, withVec3* `Vec3'  peekVec3* -- ^ rayTo
, withBt* `p2'  -- ^ results
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#848>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_rayTest0 as btSoftBody_rayTest'    `( BtSoftBodyClass bc , BtSoftBody_sRayCastClass p2 )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ rayFrom
, allocaVec3-  `Vec3'  peekVec3* -- ^ rayTo
, withBt* `p2'  -- ^ results
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#848>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_rayTest0 as btSoftBody_rayTest0    `( BtSoftBodyClass bc , BtSoftBody_sRayCastClass p2 )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ rayFrom
, withVec3* `Vec3'  peekVec3* -- ^ rayTo
, withBt* `p2'  -- ^ results
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#848>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_rayTest0 as btSoftBody_rayTest0'    `( BtSoftBodyClass bc , BtSoftBody_sRayCastClass p2 )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ rayFrom
, allocaVec3-  `Vec3'  peekVec3* -- ^ rayTo
, withBt* `p2'  -- ^ results
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#809>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_setPose as btSoftBody_setPose    `( BtSoftBodyClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Bool'  -- ^ bvolume
,  `Bool'  -- ^ bframe
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#743>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_appendFace0 as btSoftBody_appendFace    `( BtSoftBodyClass bc , BtSoftBody_MaterialClass p1 )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ model
, withBt* `p1'  -- ^ mat
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#743>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_appendFace0 as btSoftBody_appendFace0    `( BtSoftBodyClass bc , BtSoftBody_MaterialClass p1 )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ model
, withBt* `p1'  -- ^ mat
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#747>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_appendFace1 as btSoftBody_appendFace1    `( BtSoftBodyClass bc , BtSoftBody_MaterialClass p3 )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ node0
,  `Int'  -- ^ node1
,  `Int'  -- ^ node2
, withBt* `p3'  -- ^ mat
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#957>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_dampClusters as btSoftBody_dampClusters    `( BtSoftBodyClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#692>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_getWorldInfo as btSoftBody_getWorldInfo    `( BtSoftBodyClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtSoftBodyWorldInfo'  mkBtSoftBodyWorldInfo* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#768>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_appendAngularJoint2 as btSoftBody_appendAngularJoint2    `( BtSoftBodyClass bc , BtSoftBody_AJoint_SpecsClass p0 , BtSoftBodyClass p1 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ specs
, withBt* `p1'  -- ^ body
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#820>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_clusterVImpulse as btSoftBody_clusterVImpulse    `(  BtSoftBody_ClusterClass p0 )' =>     {  withBt* `p0'  -- ^ cluster
, withVec3* `Vec3'  peekVec3* -- ^ rpos
, withVec3* `Vec3'  peekVec3* -- ^ impulse
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#820>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_clusterVImpulse as btSoftBody_clusterVImpulse'    `(  BtSoftBody_ClusterClass p0 )' =>     {  withBt* `p0'  -- ^ cluster
, allocaVec3-  `Vec3'  peekVec3* -- ^ rpos
, allocaVec3-  `Vec3'  peekVec3* -- ^ impulse
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#806>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_scale as btSoftBody_scale    `( BtSoftBodyClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ scl
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#806>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_scale as btSoftBody_scale'    `( BtSoftBodyClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ scl
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#825>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_clusterAImpulse as btSoftBody_clusterAImpulse    `(  BtSoftBody_ClusterClass p0 , BtSoftBody_ImpulseClass p1 )' =>     {  withBt* `p0'  -- ^ cluster
, withBt* `p1'  -- ^ impulse
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#815>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_clusterCom0 as btSoftBody_clusterCom    `(  BtSoftBody_ClusterClass p0 )' =>     {  withBt* `p0'  -- ^ cluster
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#815>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_clusterCom0 as btSoftBody_clusterCom0    `(  BtSoftBody_ClusterClass p0 )' =>     {  withBt* `p0'  -- ^ cluster
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#816>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_clusterCom1 as btSoftBody_clusterCom1    `( BtSoftBodyClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ cluster
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#876>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_setWindVelocity as btSoftBody_setWindVelocity    `( BtSoftBodyClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ velocity
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#876>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_setWindVelocity as btSoftBody_setWindVelocity'    `( BtSoftBodyClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ velocity
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#958>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_applyForces as btSoftBody_applyForces    `( BtSoftBodyClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#748>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_appendTetra0 as btSoftBody_appendTetra    `( BtSoftBodyClass bc , BtSoftBody_MaterialClass p1 )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ model
, withBt* `p1'  -- ^ mat
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#748>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_appendTetra0 as btSoftBody_appendTetra0    `( BtSoftBodyClass bc , BtSoftBody_MaterialClass p1 )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ model
, withBt* `p1'  -- ^ mat
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#754>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_appendTetra1 as btSoftBody_appendTetra1    `( BtSoftBodyClass bc , BtSoftBody_MaterialClass p4 )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ node0
,  `Int'  -- ^ node1
,  `Int'  -- ^ node2
,  `Int'  -- ^ node3
, withBt* `p4'  -- ^ mat
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#656>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_m_anchors_set    `( BtSoftBodyClass bc , BtAlignedObjectArray_btSoftBody_Anchor_Class a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#656>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_m_anchors_get    `( BtSoftBodyClass bc )' =>     { withBt* `bc'  } ->  `BtAlignedObjectArray_btSoftBody_Anchor_'  mkBtAlignedObjectArray_btSoftBody_Anchor_* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#663>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_m_bUpdateRtCst_set    `( BtSoftBodyClass bc )' =>     { withBt* `bc' ,  `Bool'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#663>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_m_bUpdateRtCst_get    `( BtSoftBodyClass bc )' =>     { withBt* `bc'  } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#666>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_m_cdbvt_set    `( BtSoftBodyClass bc , BtDbvtClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#666>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_m_cdbvt_get    `( BtSoftBodyClass bc )' =>     { withBt* `bc'  } ->  `BtDbvt'  mkBtDbvt* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#646>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_m_cfg_set    `( BtSoftBodyClass bc , BtSoftBody_ConfigClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#646>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_m_cfg_get    `( BtSoftBodyClass bc )' =>     { withBt* `bc'  } ->  `BtSoftBody_Config'  mkBtSoftBody_Config* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#669>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_m_clusterConnectivity_set    `( BtSoftBodyClass bc , BtAlignedObjectArray_bool_Class a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#669>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_m_clusterConnectivity_get    `( BtSoftBodyClass bc )' =>     { withBt* `bc'  } ->  `BtAlignedObjectArray_bool_'  mkBtAlignedObjectArray_bool_* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#667>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_m_clusters_set    `( BtSoftBodyClass bc , BtAlignedObjectArray_btSoftBody_Cluster_ptr_Class a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#667>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_m_clusters_get    `( BtSoftBodyClass bc )' =>     { withBt* `bc'  } ->  `BtAlignedObjectArray_btSoftBody_Cluster_ptr_'  mkBtAlignedObjectArray_btSoftBody_Cluster_ptr_* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#72>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_m_collisionDisabledObjects_set    `( BtSoftBodyClass bc , BtAlignedObjectArray_btCollisionObject_ptr_Class a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#72>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_m_collisionDisabledObjects_get    `( BtSoftBodyClass bc )' =>     { withBt* `bc'  } ->  `BtAlignedObjectArray_btCollisionObject_ptr_'  mkBtAlignedObjectArray_btCollisionObject_ptr_* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#654>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_m_faces_set    `( BtSoftBodyClass bc , BtAlignedObjectArray_btSoftBody_Face_Class a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#654>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_m_faces_get    `( BtSoftBodyClass bc )' =>     { withBt* `bc'  } ->  `BtAlignedObjectArray_btSoftBody_Face_'  mkBtAlignedObjectArray_btSoftBody_Face_* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#665>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_m_fdbvt_set    `( BtSoftBodyClass bc , BtDbvtClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#665>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_m_fdbvt_get    `( BtSoftBodyClass bc )' =>     { withBt* `bc'  } ->  `BtDbvt'  mkBtDbvt* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#671>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_m_initialWorldTransform_set    `( BtSoftBodyClass bc )' =>     { withBt* `bc' , withTransform* `Transform'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#671>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_m_initialWorldTransform_get    `( BtSoftBodyClass bc )' =>     { withBt* `bc' , allocaTransform-  `Transform'  peekTransform* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#659>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_m_joints_set    `( BtSoftBodyClass bc , BtAlignedObjectArray_btSoftBody_Joint_ptr_Class a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#659>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_m_joints_get    `( BtSoftBodyClass bc )' =>     { withBt* `bc'  } ->  `BtAlignedObjectArray_btSoftBody_Joint_ptr_'  mkBtAlignedObjectArray_btSoftBody_Joint_ptr_* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#653>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_m_links_set    `( BtSoftBodyClass bc , BtAlignedObjectArray_btSoftBody_Link_Class a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#653>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_m_links_get    `( BtSoftBodyClass bc )' =>     { withBt* `bc'  } ->  `BtAlignedObjectArray_btSoftBody_Link_'  mkBtAlignedObjectArray_btSoftBody_Link_* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#660>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_m_materials_set    `( BtSoftBodyClass bc , BtAlignedObjectArray_btSoftBody_Material_ptr_Class a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#660>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_m_materials_get    `( BtSoftBodyClass bc )' =>     { withBt* `bc'  } ->  `BtAlignedObjectArray_btSoftBody_Material_ptr_'  mkBtAlignedObjectArray_btSoftBody_Material_ptr_* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#664>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_m_ndbvt_set    `( BtSoftBodyClass bc , BtDbvtClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#664>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_m_ndbvt_get    `( BtSoftBodyClass bc )' =>     { withBt* `bc'  } ->  `BtDbvt'  mkBtDbvt* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#652>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_m_nodes_set    `( BtSoftBodyClass bc , BtAlignedObjectArray_btSoftBody_Node_Class a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#652>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_m_nodes_get    `( BtSoftBodyClass bc )' =>     { withBt* `bc'  } ->  `BtAlignedObjectArray_btSoftBody_Node_'  mkBtAlignedObjectArray_btSoftBody_Node_* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#651>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_m_notes_set    `( BtSoftBodyClass bc , BtAlignedObjectArray_btSoftBody_Note_Class a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#651>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_m_notes_get    `( BtSoftBodyClass bc )' =>     { withBt* `bc'  } ->  `BtAlignedObjectArray_btSoftBody_Note_'  mkBtAlignedObjectArray_btSoftBody_Note_* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#648>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_m_pose_set    `( BtSoftBodyClass bc , BtSoftBody_PoseClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#648>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_m_pose_get    `( BtSoftBodyClass bc )' =>     { withBt* `bc'  } ->  `BtSoftBody_Pose'  mkBtSoftBody_Pose* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#657>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_m_rcontacts_set    `( BtSoftBodyClass bc , BtAlignedObjectArray_btSoftBody_RContact_Class a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#657>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_m_rcontacts_get    `( BtSoftBodyClass bc )' =>     { withBt* `bc'  } ->  `BtAlignedObjectArray_btSoftBody_RContact_'  mkBtAlignedObjectArray_btSoftBody_RContact_* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#658>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_m_scontacts_set    `( BtSoftBodyClass bc , BtAlignedObjectArray_btSoftBody_SContact_Class a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#658>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_m_scontacts_get    `( BtSoftBodyClass bc )' =>     { withBt* `bc'  } ->  `BtAlignedObjectArray_btSoftBody_SContact_'  mkBtAlignedObjectArray_btSoftBody_SContact_* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#647>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_m_sst_set    `( BtSoftBodyClass bc , BtSoftBody_SolverStateClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#647>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_m_sst_get    `( BtSoftBodyClass bc )' =>     { withBt* `bc'  } ->  `BtSoftBody_SolverState'  mkBtSoftBody_SolverState* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#649>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_m_tag_set    `( BtSoftBodyClass bc )' =>     { withBt* `bc' , withVoidPtr* `VoidPtr'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#649>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_m_tag_get    `( BtSoftBodyClass bc )' =>     { withBt* `bc'  } ->  `VoidPtr'  mkVoidPtr* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#655>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_m_tetras_set    `( BtSoftBodyClass bc , BtAlignedObjectArray_btSoftBody_Tetra_Class a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#655>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_m_tetras_get    `( BtSoftBodyClass bc )' =>     { withBt* `bc'  } ->  `BtAlignedObjectArray_btSoftBody_Tetra_'  mkBtAlignedObjectArray_btSoftBody_Tetra_* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#661>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_m_timeacc_set    `( BtSoftBodyClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#661>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_m_timeacc_get    `( BtSoftBodyClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#690>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_m_userIndexMapping_set    `( BtSoftBodyClass bc , BtAlignedObjectArray_int_Class a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#690>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_m_userIndexMapping_get    `( BtSoftBodyClass bc )' =>     { withBt* `bc'  } ->  `BtAlignedObjectArray_int_'  mkBtAlignedObjectArray_int_* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#673>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_m_windVelocity_set    `( BtSoftBodyClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#673>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_m_windVelocity_get    `( BtSoftBodyClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#650>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_m_worldInfo_set    `( BtSoftBodyClass bc , BtSoftBodyWorldInfoClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#650>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_m_worldInfo_get    `( BtSoftBodyClass bc )' =>     { withBt* `bc'  } ->  `BtSoftBodyWorldInfo'  mkBtSoftBodyWorldInfo* #}
-- * btSoftBodyHelpers
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBodyHelpers.h?r=2223#46>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBodyHelpers.cpp?r=2223>
-}
{#fun btSoftBodyHelpers_new as btSoftBodyHelpers    {  } -> `BtSoftBodyHelpers' mkBtSoftBodyHelpers* #}
{#fun btSoftBodyHelpers_free    `( BtSoftBodyHelpersClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBodyHelpers.h?r=2223#56>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBodyHelpers.cpp?r=2223>
-}
{#fun btSoftBodyHelpers_DrawInfos as btSoftBodyHelpers_DrawInfos    `(  BtSoftBodyClass p0 , BtIDebugDrawClass p1 )' =>     {  withBt* `p0'  -- ^ psb
, withBt* `p1'  -- ^ idraw
,  `Bool'  -- ^ masses
,  `Bool'  -- ^ areas
,  `Bool'  -- ^ stress
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBodyHelpers.h?r=2223#50>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBodyHelpers.cpp?r=2223>
-}
{#fun btSoftBodyHelpers_Draw as btSoftBodyHelpers_Draw    `(  BtSoftBodyClass p0 , BtIDebugDrawClass p1 )' =>     {  withBt* `p0'  -- ^ psb
, withBt* `p1'  -- ^ idraw
,  `Int'  -- ^ drawflags
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBodyHelpers.h?r=2223#107>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBodyHelpers.cpp?r=2223>
-}
{#fun btSoftBodyHelpers_CreateEllipsoid as btSoftBodyHelpers_CreateEllipsoid    `(  BtSoftBodyWorldInfoClass p0 )' =>     {  withBt* `p0'  -- ^ worldInfo
, withVec3* `Vec3'  peekVec3* -- ^ center
, withVec3* `Vec3'  peekVec3* -- ^ radius
,  `Int'  -- ^ res
 } ->  `BtSoftBody'  mkBtSoftBody* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBodyHelpers.h?r=2223#107>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBodyHelpers.cpp?r=2223>
-}
{#fun btSoftBodyHelpers_CreateEllipsoid as btSoftBodyHelpers_CreateEllipsoid'    `(  BtSoftBodyWorldInfoClass p0 )' =>     {  withBt* `p0'  -- ^ worldInfo
, allocaVec3-  `Vec3'  peekVec3* -- ^ center
, allocaVec3-  `Vec3'  peekVec3* -- ^ radius
,  `Int'  -- ^ res
 } ->  `BtSoftBody'  mkBtSoftBody* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBodyHelpers.h?r=2223#139>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBodyHelpers.cpp?r=2223>
-}
{#fun btSoftBodyHelpers_CreateFromTetGenData as btSoftBodyHelpers_CreateFromTetGenData    `(  BtSoftBodyWorldInfoClass p0 )' =>     {  withBt* `p0'  -- ^ worldInfo
,  `String'  -- ^ ele
,  `String'  -- ^ face
,  `String'  -- ^ node
,  `Bool'  -- ^ bfacelinks
,  `Bool'  -- ^ btetralinks
,  `Bool'  -- ^ bfacesfromtetras
 } ->  `BtSoftBody'  mkBtSoftBody* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBodyHelpers.h?r=2223#74>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBodyHelpers.cpp?r=2223>
-}
{#fun btSoftBodyHelpers_DrawFrame as btSoftBodyHelpers_DrawFrame    `(  BtSoftBodyClass p0 , BtIDebugDrawClass p1 )' =>     {  withBt* `p0'  -- ^ psb
, withBt* `p1'  -- ^ idraw
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBodyHelpers.h?r=2223#80>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBodyHelpers.cpp?r=2223>
-}
{#fun btSoftBodyHelpers_CreateRope as btSoftBodyHelpers_CreateRope    `(  BtSoftBodyWorldInfoClass p0 )' =>     {  withBt* `p0'  -- ^ worldInfo
, withVec3* `Vec3'  peekVec3* -- ^ from
, withVec3* `Vec3'  peekVec3* -- ^ to
,  `Int'  -- ^ res
,  `Int'  -- ^ fixeds
 } ->  `BtSoftBody'  mkBtSoftBody* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBodyHelpers.h?r=2223#80>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBodyHelpers.cpp?r=2223>
-}
{#fun btSoftBodyHelpers_CreateRope as btSoftBodyHelpers_CreateRope'    `(  BtSoftBodyWorldInfoClass p0 )' =>     {  withBt* `p0'  -- ^ worldInfo
, allocaVec3-  `Vec3'  peekVec3* -- ^ from
, allocaVec3-  `Vec3'  peekVec3* -- ^ to
,  `Int'  -- ^ res
,  `Int'  -- ^ fixeds
 } ->  `BtSoftBody'  mkBtSoftBody* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBodyHelpers.h?r=2223#102>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBodyHelpers.cpp?r=2223>
-}
{#fun btSoftBodyHelpers_CalculateUV as btSoftBodyHelpers_CalculateUV    `( )' =>     {   `Int'  -- ^ resx
,  `Int'  -- ^ resy
,  `Int'  -- ^ ix
,  `Int'  -- ^ iy
,  `Int'  -- ^ id
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBodyHelpers.h?r=2223#66>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBodyHelpers.cpp?r=2223>
-}
{#fun btSoftBodyHelpers_DrawFaceTree as btSoftBodyHelpers_DrawFaceTree    `(  BtSoftBodyClass p0 , BtIDebugDrawClass p1 )' =>     {  withBt* `p0'  -- ^ psb
, withBt* `p1'  -- ^ idraw
,  `Int'  -- ^ mindepth
,  `Int'  -- ^ maxdepth
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBodyHelpers.h?r=2223#71>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBodyHelpers.cpp?r=2223>
-}
{#fun btSoftBodyHelpers_DrawClusterTree as btSoftBodyHelpers_DrawClusterTree    `(  BtSoftBodyClass p0 , BtIDebugDrawClass p1 )' =>     {  withBt* `p0'  -- ^ psb
, withBt* `p1'  -- ^ idraw
,  `Int'  -- ^ mindepth
,  `Int'  -- ^ maxdepth
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBodyHelpers.h?r=2223#61>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBodyHelpers.cpp?r=2223>
-}
{#fun btSoftBodyHelpers_DrawNodeTree as btSoftBodyHelpers_DrawNodeTree    `(  BtSoftBodyClass p0 , BtIDebugDrawClass p1 )' =>     {  withBt* `p0'  -- ^ psb
, withBt* `p1'  -- ^ idraw
,  `Int'  -- ^ mindepth
,  `Int'  -- ^ maxdepth
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBodyHelpers.h?r=2223#90>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBodyHelpers.cpp?r=2223>
-}
{#fun btSoftBodyHelpers_CreatePatch as btSoftBodyHelpers_CreatePatch    `(  BtSoftBodyWorldInfoClass p0 )' =>     {  withBt* `p0'  -- ^ worldInfo
, withVec3* `Vec3'  peekVec3* -- ^ corner00
, withVec3* `Vec3'  peekVec3* -- ^ corner10
, withVec3* `Vec3'  peekVec3* -- ^ corner01
, withVec3* `Vec3'  peekVec3* -- ^ corner11
,  `Int'  -- ^ resx
,  `Int'  -- ^ resy
,  `Int'  -- ^ fixeds
,  `Bool'  -- ^ gendiags
 } ->  `BtSoftBody'  mkBtSoftBody* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBodyHelpers.h?r=2223#90>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBodyHelpers.cpp?r=2223>
-}
{#fun btSoftBodyHelpers_CreatePatch as btSoftBodyHelpers_CreatePatch'    `(  BtSoftBodyWorldInfoClass p0 )' =>     {  withBt* `p0'  -- ^ worldInfo
, allocaVec3-  `Vec3'  peekVec3* -- ^ corner00
, allocaVec3-  `Vec3'  peekVec3* -- ^ corner10
, allocaVec3-  `Vec3'  peekVec3* -- ^ corner01
, allocaVec3-  `Vec3'  peekVec3* -- ^ corner11
,  `Int'  -- ^ resx
,  `Int'  -- ^ resy
,  `Int'  -- ^ fixeds
,  `Bool'  -- ^ gendiags
 } ->  `BtSoftBody'  mkBtSoftBody* #}
-- * btSoftBodyRigidBodyCollisionConfiguration
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBodyRigidBodyCollisionConfiguration.h?r=2223#38>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBodyRigidBodyCollisionConfiguration.cpp?r=2223>
-}
{#fun btSoftBodyRigidBodyCollisionConfiguration_new as btSoftBodyRigidBodyCollisionConfiguration    `( BtDefaultCollisionConstructionInfoClass p0 )' =>     {  withBt* `p0'  } -> `BtSoftBodyRigidBodyCollisionConfiguration' mkBtSoftBodyRigidBodyCollisionConfiguration* #}
{#fun btSoftBodyRigidBodyCollisionConfiguration_free    `( BtSoftBodyRigidBodyCollisionConfigurationClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBodyRigidBodyCollisionConfiguration.h?r=2223#43>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBodyRigidBodyCollisionConfiguration.cpp?r=2223>
-}
{#fun btSoftBodyRigidBodyCollisionConfiguration_getCollisionAlgorithmCreateFunc as btSoftBodyRigidBodyCollisionConfiguration_getCollisionAlgorithmCreateFunc    `( BtSoftBodyRigidBodyCollisionConfigurationClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ proxyType0
,  `Int'  -- ^ proxyType1
 } ->  `BtCollisionAlgorithmCreateFunc'  mkBtCollisionAlgorithmCreateFunc* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBodyRigidBodyCollisionConfiguration.h?r=2223#30>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBodyRigidBodyCollisionConfiguration.cpp?r=2223>
-}
{#fun btSoftBodyRigidBodyCollisionConfiguration_m_softSoftCreateFunc_set    `( BtSoftBodyRigidBodyCollisionConfigurationClass bc , BtCollisionAlgorithmCreateFuncClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBodyRigidBodyCollisionConfiguration.h?r=2223#30>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBodyRigidBodyCollisionConfiguration.cpp?r=2223>
-}
{#fun btSoftBodyRigidBodyCollisionConfiguration_m_softSoftCreateFunc_get    `( BtSoftBodyRigidBodyCollisionConfigurationClass bc )' =>     { withBt* `bc'  } ->  `BtCollisionAlgorithmCreateFunc'  mkBtCollisionAlgorithmCreateFunc* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBodyRigidBodyCollisionConfiguration.h?r=2223#31>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBodyRigidBodyCollisionConfiguration.cpp?r=2223>
-}
{#fun btSoftBodyRigidBodyCollisionConfiguration_m_softRigidConvexCreateFunc_set    `( BtSoftBodyRigidBodyCollisionConfigurationClass bc , BtCollisionAlgorithmCreateFuncClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBodyRigidBodyCollisionConfiguration.h?r=2223#31>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBodyRigidBodyCollisionConfiguration.cpp?r=2223>
-}
{#fun btSoftBodyRigidBodyCollisionConfiguration_m_softRigidConvexCreateFunc_get    `( BtSoftBodyRigidBodyCollisionConfigurationClass bc )' =>     { withBt* `bc'  } ->  `BtCollisionAlgorithmCreateFunc'  mkBtCollisionAlgorithmCreateFunc* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBodyRigidBodyCollisionConfiguration.h?r=2223#32>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBodyRigidBodyCollisionConfiguration.cpp?r=2223>
-}
{#fun btSoftBodyRigidBodyCollisionConfiguration_m_swappedSoftRigidConvexCreateFunc_set    `( BtSoftBodyRigidBodyCollisionConfigurationClass bc , BtCollisionAlgorithmCreateFuncClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBodyRigidBodyCollisionConfiguration.h?r=2223#32>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBodyRigidBodyCollisionConfiguration.cpp?r=2223>
-}
{#fun btSoftBodyRigidBodyCollisionConfiguration_m_swappedSoftRigidConvexCreateFunc_get    `( BtSoftBodyRigidBodyCollisionConfigurationClass bc )' =>     { withBt* `bc'  } ->  `BtCollisionAlgorithmCreateFunc'  mkBtCollisionAlgorithmCreateFunc* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBodyRigidBodyCollisionConfiguration.h?r=2223#33>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBodyRigidBodyCollisionConfiguration.cpp?r=2223>
-}
{#fun btSoftBodyRigidBodyCollisionConfiguration_m_softRigidConcaveCreateFunc_set    `( BtSoftBodyRigidBodyCollisionConfigurationClass bc , BtCollisionAlgorithmCreateFuncClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBodyRigidBodyCollisionConfiguration.h?r=2223#33>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBodyRigidBodyCollisionConfiguration.cpp?r=2223>
-}
{#fun btSoftBodyRigidBodyCollisionConfiguration_m_softRigidConcaveCreateFunc_get    `( BtSoftBodyRigidBodyCollisionConfigurationClass bc )' =>     { withBt* `bc'  } ->  `BtCollisionAlgorithmCreateFunc'  mkBtCollisionAlgorithmCreateFunc* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBodyRigidBodyCollisionConfiguration.h?r=2223#34>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBodyRigidBodyCollisionConfiguration.cpp?r=2223>
-}
{#fun btSoftBodyRigidBodyCollisionConfiguration_m_swappedSoftRigidConcaveCreateFunc_set    `( BtSoftBodyRigidBodyCollisionConfigurationClass bc , BtCollisionAlgorithmCreateFuncClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBodyRigidBodyCollisionConfiguration.h?r=2223#34>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBodyRigidBodyCollisionConfiguration.cpp?r=2223>
-}
{#fun btSoftBodyRigidBodyCollisionConfiguration_m_swappedSoftRigidConcaveCreateFunc_get    `( BtSoftBodyRigidBodyCollisionConfigurationClass bc )' =>     { withBt* `bc'  } ->  `BtCollisionAlgorithmCreateFunc'  mkBtCollisionAlgorithmCreateFunc* #}
-- * btSoftBodyWorldInfo
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#54>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBodyWorldInfo_new as btSoftBodyWorldInfo    {  } -> `BtSoftBodyWorldInfo' mkBtSoftBodyWorldInfo* #}
{#fun btSoftBodyWorldInfo_free    `( BtSoftBodyWorldInfoClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#45>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBodyWorldInfo_air_density_set    `( BtSoftBodyWorldInfoClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#45>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBodyWorldInfo_air_density_get    `( BtSoftBodyWorldInfoClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#49>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBodyWorldInfo_m_broadphase_set    `( BtSoftBodyWorldInfoClass bc , BtBroadphaseInterfaceClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#49>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBodyWorldInfo_m_broadphase_get    `( BtSoftBodyWorldInfoClass bc )' =>     { withBt* `bc'  } ->  `BtBroadphaseInterface'  mkBtBroadphaseInterface* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#50>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBodyWorldInfo_m_dispatcher_set    `( BtSoftBodyWorldInfoClass bc , BtDispatcherClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#50>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBodyWorldInfo_m_dispatcher_get    `( BtSoftBodyWorldInfoClass bc )' =>     { withBt* `bc'  } ->  `BtDispatcher'  mkBtDispatcher* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#51>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBodyWorldInfo_m_gravity_set    `( BtSoftBodyWorldInfoClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#51>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBodyWorldInfo_m_gravity_get    `( BtSoftBodyWorldInfoClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#52>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBodyWorldInfo_m_sparsesdf_set    `( BtSoftBodyWorldInfoClass bc , BtSparseSdf_3_Class a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#52>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBodyWorldInfo_m_sparsesdf_get    `( BtSoftBodyWorldInfoClass bc )' =>     { withBt* `bc'  } ->  `BtSparseSdf_3_'  mkBtSparseSdf_3_* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#46>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBodyWorldInfo_water_density_set    `( BtSoftBodyWorldInfoClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#46>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBodyWorldInfo_water_density_get    `( BtSoftBodyWorldInfoClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#48>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBodyWorldInfo_water_normal_set    `( BtSoftBodyWorldInfoClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#48>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBodyWorldInfo_water_normal_get    `( BtSoftBodyWorldInfoClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#47>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBodyWorldInfo_water_offset_set    `( BtSoftBodyWorldInfoClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#47>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBodyWorldInfo_water_offset_get    `( BtSoftBodyWorldInfoClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
-- * btSoftRigidDynamicsWorld
{#fun btSoftRigidDynamicsWorld_free    `( BtSoftRigidDynamicsWorldClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftRigidDynamicsWorld.h?r=2223#41>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftRigidDynamicsWorld.cpp?r=2223>
-}
{#fun btSoftRigidDynamicsWorld_predictUnconstraintMotion as btSoftRigidDynamicsWorld_predictUnconstraintMotion    `( BtSoftRigidDynamicsWorldClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ timeStep
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftRigidDynamicsWorld.h?r=2223#67>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftRigidDynamicsWorld.cpp?r=2223>
-}
{#fun btSoftRigidDynamicsWorld_getWorldInfo0 as btSoftRigidDynamicsWorld_getWorldInfo    `( BtSoftRigidDynamicsWorldClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtSoftBodyWorldInfo'  mkBtSoftBodyWorldInfo* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftRigidDynamicsWorld.h?r=2223#67>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftRigidDynamicsWorld.cpp?r=2223>
-}
{#fun btSoftRigidDynamicsWorld_getWorldInfo0 as btSoftRigidDynamicsWorld_getWorldInfo0    `( BtSoftRigidDynamicsWorldClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtSoftBodyWorldInfo'  mkBtSoftBodyWorldInfo* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftRigidDynamicsWorld.h?r=2223#71>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftRigidDynamicsWorld.cpp?r=2223>
-}
{#fun btSoftRigidDynamicsWorld_getWorldInfo1 as btSoftRigidDynamicsWorld_getWorldInfo1    `( BtSoftRigidDynamicsWorldClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtSoftBodyWorldInfo'  mkBtSoftBodyWorldInfo* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftRigidDynamicsWorld.h?r=2223#65>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftRigidDynamicsWorld.cpp?r=2223>
-}
{#fun btSoftRigidDynamicsWorld_setDrawFlags as btSoftRigidDynamicsWorld_setDrawFlags    `( BtSoftRigidDynamicsWorldClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ f
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftRigidDynamicsWorld.h?r=2223#81>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftRigidDynamicsWorld.cpp?r=2223>
-}
{#fun btSoftRigidDynamicsWorld_getSoftBodyArray0 as btSoftRigidDynamicsWorld_getSoftBodyArray    `( BtSoftRigidDynamicsWorldClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtAlignedObjectArray_btSoftBody_ptr_'  mkBtAlignedObjectArray_btSoftBody_ptr_* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftRigidDynamicsWorld.h?r=2223#81>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftRigidDynamicsWorld.cpp?r=2223>
-}
{#fun btSoftRigidDynamicsWorld_getSoftBodyArray0 as btSoftRigidDynamicsWorld_getSoftBodyArray0    `( BtSoftRigidDynamicsWorldClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtAlignedObjectArray_btSoftBody_ptr_'  mkBtAlignedObjectArray_btSoftBody_ptr_* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftRigidDynamicsWorld.h?r=2223#86>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftRigidDynamicsWorld.cpp?r=2223>
-}
{#fun btSoftRigidDynamicsWorld_getSoftBodyArray1 as btSoftRigidDynamicsWorld_getSoftBodyArray1    `( BtSoftRigidDynamicsWorldClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtAlignedObjectArray_btSoftBody_ptr_'  mkBtAlignedObjectArray_btSoftBody_ptr_* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftRigidDynamicsWorld.h?r=2223#103>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftRigidDynamicsWorld.cpp?r=2223>
-}
{#fun btSoftRigidDynamicsWorld_serialize as btSoftRigidDynamicsWorld_serialize    `( BtSoftRigidDynamicsWorldClass bc , BtSerializerClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ serializer
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftRigidDynamicsWorld.h?r=2223#92>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftRigidDynamicsWorld.cpp?r=2223>
-}
{#fun btSoftRigidDynamicsWorld_rayTest as btSoftRigidDynamicsWorld_rayTest    `( BtSoftRigidDynamicsWorldClass bc , BtCollisionWorld_RayResultCallbackClass p2 )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ rayFromWorld
, withVec3* `Vec3'  peekVec3* -- ^ rayToWorld
, withBt* `p2'  -- ^ resultCallback
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftRigidDynamicsWorld.h?r=2223#92>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftRigidDynamicsWorld.cpp?r=2223>
-}
{#fun btSoftRigidDynamicsWorld_rayTest as btSoftRigidDynamicsWorld_rayTest'    `( BtSoftRigidDynamicsWorldClass bc , BtCollisionWorld_RayResultCallbackClass p2 )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ rayFromWorld
, allocaVec3-  `Vec3'  peekVec3* -- ^ rayToWorld
, withBt* `p2'  -- ^ resultCallback
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftRigidDynamicsWorld.h?r=2223#45>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftRigidDynamicsWorld.cpp?r=2223>
-}
{#fun btSoftRigidDynamicsWorld_solveSoftBodiesConstraints as btSoftRigidDynamicsWorld_solveSoftBodiesConstraints    `( BtSoftRigidDynamicsWorldClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ timeStep
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftRigidDynamicsWorld.h?r=2223#62>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftRigidDynamicsWorld.cpp?r=2223>
-}
{#fun btSoftRigidDynamicsWorld_removeCollisionObject as btSoftRigidDynamicsWorld_removeCollisionObject    `( BtSoftRigidDynamicsWorldClass bc , BtCollisionObjectClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ collisionObject
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftRigidDynamicsWorld.h?r=2223#57>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftRigidDynamicsWorld.cpp?r=2223>
-}
{#fun btSoftRigidDynamicsWorld_addSoftBody as btSoftRigidDynamicsWorld_addSoftBody    `( BtSoftRigidDynamicsWorldClass bc , BtSoftBodyClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ body
,  `Int'  -- ^ collisionFilterGroup
,  `Int'  -- ^ collisionFilterMask
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftRigidDynamicsWorld.h?r=2223#101>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftRigidDynamicsWorld.cpp?r=2223>
-}
{#fun btSoftRigidDynamicsWorld_rayTestSingle as btSoftRigidDynamicsWorld_rayTestSingle    `(  BtCollisionObjectClass p2 , BtCollisionShapeClass p3 , BtCollisionWorld_RayResultCallbackClass p5 )' =>     {  withTransform* `Transform'  peekTransform* -- ^ rayFromTrans
, withTransform* `Transform'  peekTransform* -- ^ rayToTrans
, withBt* `p2'  -- ^ collisionObject
, withBt* `p3'  -- ^ collisionShape
, withTransform* `Transform'  peekTransform* -- ^ colObjWorldTransform
, withBt* `p5'  -- ^ resultCallback
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftRigidDynamicsWorld.h?r=2223#101>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftRigidDynamicsWorld.cpp?r=2223>
-}
{#fun btSoftRigidDynamicsWorld_rayTestSingle as btSoftRigidDynamicsWorld_rayTestSingle'    `(  BtCollisionObjectClass p2 , BtCollisionShapeClass p3 , BtCollisionWorld_RayResultCallbackClass p5 )' =>     {  allocaTransform-  `Transform'  peekTransform* -- ^ rayFromTrans
, allocaTransform-  `Transform'  peekTransform* -- ^ rayToTrans
, withBt* `p2'  -- ^ collisionObject
, withBt* `p3'  -- ^ collisionShape
, allocaTransform-  `Transform'  peekTransform* -- ^ colObjWorldTransform
, withBt* `p5'  -- ^ resultCallback
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftRigidDynamicsWorld.h?r=2223#43>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftRigidDynamicsWorld.cpp?r=2223>
-}
{#fun btSoftRigidDynamicsWorld_internalSingleStepSimulation as btSoftRigidDynamicsWorld_internalSingleStepSimulation    `( BtSoftRigidDynamicsWorldClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ timeStep
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftRigidDynamicsWorld.h?r=2223#47>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftRigidDynamicsWorld.cpp?r=2223>
-}
{#fun btSoftRigidDynamicsWorld_serializeSoftBodies as btSoftRigidDynamicsWorld_serializeSoftBodies    `( BtSoftRigidDynamicsWorldClass bc , BtSerializerClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ serializer
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftRigidDynamicsWorld.h?r=2223#59>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftRigidDynamicsWorld.cpp?r=2223>
-}
{#fun btSoftRigidDynamicsWorld_removeSoftBody as btSoftRigidDynamicsWorld_removeSoftBody    `( BtSoftRigidDynamicsWorldClass bc , BtSoftBodyClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ body
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftRigidDynamicsWorld.h?r=2223#64>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftRigidDynamicsWorld.cpp?r=2223>
-}
{#fun btSoftRigidDynamicsWorld_getDrawFlags as btSoftRigidDynamicsWorld_getDrawFlags    `( BtSoftRigidDynamicsWorldClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftRigidDynamicsWorld.h?r=2223#55>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftRigidDynamicsWorld.cpp?r=2223>
-}
{#fun btSoftRigidDynamicsWorld_debugDrawWorld as btSoftRigidDynamicsWorld_debugDrawWorld    `( BtSoftRigidDynamicsWorldClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftRigidDynamicsWorld.h?r=2223#29>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftRigidDynamicsWorld.cpp?r=2223>
-}
{#fun btSoftRigidDynamicsWorld_m_softBodies_set    `( BtSoftRigidDynamicsWorldClass bc , BtAlignedObjectArray_btSoftBody_ptr_Class a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftRigidDynamicsWorld.h?r=2223#29>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftRigidDynamicsWorld.cpp?r=2223>
-}
{#fun btSoftRigidDynamicsWorld_m_softBodies_get    `( BtSoftRigidDynamicsWorldClass bc )' =>     { withBt* `bc'  } ->  `BtAlignedObjectArray_btSoftBody_ptr_'  mkBtAlignedObjectArray_btSoftBody_ptr_* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftRigidDynamicsWorld.h?r=2223#30>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftRigidDynamicsWorld.cpp?r=2223>
-}
{#fun btSoftRigidDynamicsWorld_m_drawFlags_set    `( BtSoftRigidDynamicsWorldClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftRigidDynamicsWorld.h?r=2223#30>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftRigidDynamicsWorld.cpp?r=2223>
-}
{#fun btSoftRigidDynamicsWorld_m_drawFlags_get    `( BtSoftRigidDynamicsWorldClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftRigidDynamicsWorld.h?r=2223#31>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftRigidDynamicsWorld.cpp?r=2223>
-}
{#fun btSoftRigidDynamicsWorld_m_drawNodeTree_set    `( BtSoftRigidDynamicsWorldClass bc )' =>     { withBt* `bc' ,  `Bool'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftRigidDynamicsWorld.h?r=2223#31>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftRigidDynamicsWorld.cpp?r=2223>
-}
{#fun btSoftRigidDynamicsWorld_m_drawNodeTree_get    `( BtSoftRigidDynamicsWorldClass bc )' =>     { withBt* `bc'  } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftRigidDynamicsWorld.h?r=2223#32>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftRigidDynamicsWorld.cpp?r=2223>
-}
{#fun btSoftRigidDynamicsWorld_m_drawFaceTree_set    `( BtSoftRigidDynamicsWorldClass bc )' =>     { withBt* `bc' ,  `Bool'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftRigidDynamicsWorld.h?r=2223#32>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftRigidDynamicsWorld.cpp?r=2223>
-}
{#fun btSoftRigidDynamicsWorld_m_drawFaceTree_get    `( BtSoftRigidDynamicsWorldClass bc )' =>     { withBt* `bc'  } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftRigidDynamicsWorld.h?r=2223#33>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftRigidDynamicsWorld.cpp?r=2223>
-}
{#fun btSoftRigidDynamicsWorld_m_drawClusterTree_set    `( BtSoftRigidDynamicsWorldClass bc )' =>     { withBt* `bc' ,  `Bool'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftRigidDynamicsWorld.h?r=2223#33>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftRigidDynamicsWorld.cpp?r=2223>
-}
{#fun btSoftRigidDynamicsWorld_m_drawClusterTree_get    `( BtSoftRigidDynamicsWorldClass bc )' =>     { withBt* `bc'  } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftRigidDynamicsWorld.h?r=2223#34>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftRigidDynamicsWorld.cpp?r=2223>
-}
{#fun btSoftRigidDynamicsWorld_m_sbi_set    `( BtSoftRigidDynamicsWorldClass bc , BtSoftBodyWorldInfoClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftRigidDynamicsWorld.h?r=2223#34>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftRigidDynamicsWorld.cpp?r=2223>
-}
{#fun btSoftRigidDynamicsWorld_m_sbi_get    `( BtSoftRigidDynamicsWorldClass bc )' =>     { withBt* `bc'  } ->  `BtSoftBodyWorldInfo'  mkBtSoftBodyWorldInfo* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftRigidDynamicsWorld.h?r=2223#37>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftRigidDynamicsWorld.cpp?r=2223>
-}
{#fun btSoftRigidDynamicsWorld_m_ownsSolver_set    `( BtSoftRigidDynamicsWorldClass bc )' =>     { withBt* `bc' ,  `Bool'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftRigidDynamicsWorld.h?r=2223#37>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftRigidDynamicsWorld.cpp?r=2223>
-}
{#fun btSoftRigidDynamicsWorld_m_ownsSolver_get    `( BtSoftRigidDynamicsWorldClass bc )' =>     { withBt* `bc'  } ->  `Bool'   #}
-- * btSparseSdf<3>
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSparseSDF.h?r=2223#45>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSparseSDF.cpp?r=2223>
-}
{#fun btSparseSdf_3__new as btSparseSdf_3_    {  } -> `BtSparseSdf_3_' mkBtSparseSdf_3_* #}
{#fun btSparseSdf_3__free    `( BtSparseSdf_3_Class bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSparseSDF.h?r=2223#86>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSparseSDF.cpp?r=2223>
-}
{#fun btSparseSdf_3__Reset as btSparseSdf_3__Reset    `( BtSparseSdf_3_Class bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSparseSDF.h?r=2223#285>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSparseSDF.cpp?r=2223>
-}
{#fun btSparseSdf_3__Hash as btSparseSdf_3__Hash    `(  BtCollisionShapeClass p3 )' =>     {   `Int'  -- ^ x
,  `Int'  -- ^ y
,  `Int'  -- ^ z
, withBt* `p3'  -- ^ shape
 } ->  `Word32'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSparseSDF.h?r=2223#132>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSparseSDF.cpp?r=2223>
-}
{#fun btSparseSdf_3__RemoveReferences as btSparseSdf_3__RemoveReferences    `( BtSparseSdf_3_Class bc , BtCollisionShapeClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ pcs
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSparseSDF.h?r=2223#277>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSparseSDF.cpp?r=2223>
-}
{#fun btSparseSdf_3__Lerp as btSparseSdf_3__Lerp    `( )' =>     {   `Float'  -- ^ a
,  `Float'  -- ^ b
,  `Float'  -- ^ t
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSparseSDF.h?r=2223#157>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSparseSDF.cpp?r=2223>
-}
{#fun btSparseSdf_3__Evaluate as btSparseSdf_3__Evaluate    `( BtSparseSdf_3_Class bc , BtCollisionShapeClass p1 )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ x
, withBt* `p1'  -- ^ shape
, withVec3* `Vec3'  peekVec3* -- ^ normal
,  `Float'  -- ^ margin
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSparseSDF.h?r=2223#157>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSparseSDF.cpp?r=2223>
-}
{#fun btSparseSdf_3__Evaluate as btSparseSdf_3__Evaluate'    `( BtSparseSdf_3_Class bc , BtCollisionShapeClass p1 )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ x
, withBt* `p1'  -- ^ shape
, allocaVec3-  `Vec3'  peekVec3* -- ^ normal
,  `Float'  -- ^ margin
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSparseSDF.h?r=2223#106>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSparseSDF.cpp?r=2223>
-}
{#fun btSparseSdf_3__GarbageCollect as btSparseSdf_3__GarbageCollect    `( BtSparseSdf_3_Class bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ lifetime
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSparseSDF.h?r=2223#251>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSparseSDF.cpp?r=2223>
-}
{#fun btSparseSdf_3__DistanceToShape as btSparseSdf_3__DistanceToShape    `(  BtCollisionShapeClass p1 )' =>     {  withVec3* `Vec3'  peekVec3* -- ^ x
, withBt* `p1'  -- ^ shape
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSparseSDF.h?r=2223#251>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSparseSDF.cpp?r=2223>
-}
{#fun btSparseSdf_3__DistanceToShape as btSparseSdf_3__DistanceToShape'    `(  BtCollisionShapeClass p1 )' =>     {  allocaVec3-  `Vec3'  peekVec3* -- ^ x
, withBt* `p1'  -- ^ shape
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSparseSDF.h?r=2223#80>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSparseSDF.cpp?r=2223>
-}
{#fun btSparseSdf_3__Initialize as btSparseSdf_3__Initialize    `( BtSparseSdf_3_Class bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ hashsize
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSparseSDF.h?r=2223#68>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSparseSDF.cpp?r=2223>
-}
{#fun btSparseSdf_3__cells_set    `( BtSparseSdf_3_Class bc , BtAlignedObjectArray_btSparseSdf_3__Cell_ptr_Class a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSparseSDF.h?r=2223#68>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSparseSDF.cpp?r=2223>
-}
{#fun btSparseSdf_3__cells_get    `( BtSparseSdf_3_Class bc )' =>     { withBt* `bc'  } ->  `BtAlignedObjectArray_btSparseSdf_3__Cell_ptr_'  mkBtAlignedObjectArray_btSparseSdf_3__Cell_ptr_* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSparseSDF.h?r=2223#71>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSparseSDF.cpp?r=2223>
-}
{#fun btSparseSdf_3__ncells_set    `( BtSparseSdf_3_Class bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSparseSDF.h?r=2223#71>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSparseSDF.cpp?r=2223>
-}
{#fun btSparseSdf_3__ncells_get    `( BtSparseSdf_3_Class bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSparseSDF.h?r=2223#72>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSparseSDF.cpp?r=2223>
-}
{#fun btSparseSdf_3__nprobes_set    `( BtSparseSdf_3_Class bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSparseSDF.h?r=2223#72>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSparseSDF.cpp?r=2223>
-}
{#fun btSparseSdf_3__nprobes_get    `( BtSparseSdf_3_Class bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSparseSDF.h?r=2223#73>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSparseSDF.cpp?r=2223>
-}
{#fun btSparseSdf_3__nqueries_set    `( BtSparseSdf_3_Class bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSparseSDF.h?r=2223#73>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSparseSDF.cpp?r=2223>
-}
{#fun btSparseSdf_3__nqueries_get    `( BtSparseSdf_3_Class bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSparseSDF.h?r=2223#70>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSparseSDF.cpp?r=2223>
-}
{#fun btSparseSdf_3__puid_set    `( BtSparseSdf_3_Class bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSparseSDF.h?r=2223#70>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSparseSDF.cpp?r=2223>
-}
{#fun btSparseSdf_3__puid_get    `( BtSparseSdf_3_Class bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSparseSDF.h?r=2223#69>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSparseSDF.cpp?r=2223>
-}
{#fun btSparseSdf_3__voxelsz_set    `( BtSparseSdf_3_Class bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSparseSDF.h?r=2223#69>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSparseSDF.cpp?r=2223>
-}
{#fun btSparseSdf_3__voxelsz_get    `( BtSparseSdf_3_Class bc )' =>     { withBt* `bc'  } ->  `Float'   #}
-- * eAeroModel
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#82>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_eAeroModel_new as btSoftBody_eAeroModel    {  } -> `BtSoftBody_eAeroModel' mkBtSoftBody_eAeroModel* #}
{#fun btSoftBody_eAeroModel_free    `( BtSoftBody_eAeroModelClass bc )' =>     { withBt* `bc'  } -> `()' #}
-- * eFeature
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#117>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_eFeature_new as btSoftBody_eFeature    {  } -> `BtSoftBody_eFeature' mkBtSoftBody_eFeature* #}
{#fun btSoftBody_eFeature_free    `( BtSoftBody_eFeatureClass bc )' =>     { withBt* `bc'  } -> `()' #}
-- * ePSolver
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#100>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_ePSolver_new as btSoftBody_ePSolver    {  } -> `BtSoftBody_ePSolver' mkBtSoftBody_ePSolver* #}
{#fun btSoftBody_ePSolver_free    `( BtSoftBody_ePSolverClass bc )' =>     { withBt* `bc'  } -> `()' #}
-- * eSolverPresets
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#109>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_eSolverPresets_new as btSoftBody_eSolverPresets    {  } -> `BtSoftBody_eSolverPresets' mkBtSoftBody_eSolverPresets* #}
{#fun btSoftBody_eSolverPresets_free    `( BtSoftBody_eSolverPresetsClass bc )' =>     { withBt* `bc'  } -> `()' #}
-- * eType
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#483>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_Joint_eType_new as btSoftBody_Joint_eType    {  } -> `BtSoftBody_Joint_eType' mkBtSoftBody_Joint_eType* #}
{#fun btSoftBody_Joint_eType_free    `( BtSoftBody_Joint_eTypeClass bc )' =>     { withBt* `bc'  } -> `()' #}
-- * eVSolver
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#94>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_eVSolver_new as btSoftBody_eVSolver    {  } -> `BtSoftBody_eVSolver' mkBtSoftBody_eVSolver* #}
{#fun btSoftBody_eVSolver_free    `( BtSoftBody_eVSolverClass bc )' =>     { withBt* `bc'  } -> `()' #}
-- * fCollision
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#134>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_fCollision_new as btSoftBody_fCollision    {  } -> `BtSoftBody_fCollision' mkBtSoftBody_fCollision* #}
{#fun btSoftBody_fCollision_free    `( BtSoftBody_fCollisionClass bc )' =>     { withBt* `bc'  } -> `()' #}
-- * fDrawFlags
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBodyHelpers.h?r=2223#26>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBodyHelpers.cpp?r=2223>
-}
{#fun fDrawFlags_new as fDrawFlags    {  } -> `FDrawFlags' mkFDrawFlags* #}
{#fun fDrawFlags_free    `( FDrawFlagsClass bc )' =>     { withBt* `bc'  } -> `()' #}
-- * fMaterial
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#149>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_fMaterial_new as btSoftBody_fMaterial    {  } -> `BtSoftBody_fMaterial' mkBtSoftBody_fMaterial* #}
{#fun btSoftBody_fMaterial_free    `( BtSoftBody_fMaterialClass bc )' =>     { withBt* `bc'  } -> `()' #}
-- * sCti
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#184>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_sCti_new as btSoftBody_sCti    {  } -> `BtSoftBody_sCti' mkBtSoftBody_sCti* #}
{#fun btSoftBody_sCti_free    `( BtSoftBody_sCtiClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#185>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_sCti_m_colObj_set    `( BtSoftBody_sCtiClass bc , BtCollisionObjectClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#185>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_sCti_m_colObj_get    `( BtSoftBody_sCtiClass bc )' =>     { withBt* `bc'  } ->  `BtCollisionObject'  mkBtCollisionObject* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#186>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_sCti_m_normal_set    `( BtSoftBody_sCtiClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#186>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_sCti_m_normal_get    `( BtSoftBody_sCtiClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#187>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_sCti_m_offset_set    `( BtSoftBody_sCtiClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#187>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_sCti_m_offset_get    `( BtSoftBody_sCtiClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
-- * sMedium
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#192>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_sMedium_new as btSoftBody_sMedium    {  } -> `BtSoftBody_sMedium' mkBtSoftBody_sMedium* #}
{#fun btSoftBody_sMedium_free    `( BtSoftBody_sMediumClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#195>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_sMedium_m_density_set    `( BtSoftBody_sMediumClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#195>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_sMedium_m_density_get    `( BtSoftBody_sMediumClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#194>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_sMedium_m_pressure_set    `( BtSoftBody_sMediumClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#194>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_sMedium_m_pressure_get    `( BtSoftBody_sMediumClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#193>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_sMedium_m_velocity_set    `( BtSoftBody_sMediumClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#193>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_sMedium_m_velocity_get    `( BtSoftBody_sMediumClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
-- * sRayCast
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#162>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_sRayCast_new as btSoftBody_sRayCast    {  } -> `BtSoftBody_sRayCast' mkBtSoftBody_sRayCast* #}
{#fun btSoftBody_sRayCast_free    `( BtSoftBody_sRayCastClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#163>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_sRayCast_body_set    `( BtSoftBody_sRayCastClass bc , BtSoftBodyClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#163>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_sRayCast_body_get    `( BtSoftBody_sRayCastClass bc )' =>     { withBt* `bc'  } ->  `BtSoftBody'  mkBtSoftBody* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#166>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_sRayCast_fraction_set    `( BtSoftBody_sRayCastClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#166>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_sRayCast_fraction_get    `( BtSoftBody_sRayCastClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#165>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_sRayCast_index_set    `( BtSoftBody_sRayCastClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.h?r=2223#165>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletSoftBody/btSoftBody.cpp?r=2223>
-}
{#fun btSoftBody_sRayCast_index_get    `( BtSoftBody_sRayCastClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
