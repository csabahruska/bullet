{-#LANGUAGE ForeignFunctionInterface, GeneralizedNewtypeDeriving#-}
#include "Bullet.h"
module Physics.Bullet.Raw.Class where
import Control.Monad
import Foreign.Marshal.Alloc
import Foreign.ForeignPtr.Unsafe
import Foreign.Ptr
import Physics.Bullet.Raw.C2HS
import Physics.Bullet.Raw.Types
type VoidPtr = Ptr ()
withVoidPtr p f = f p
peekVoidPtr p = return p
mkVoidPtr p = return p
-- * Class Pointer Types
{#pointer O_btSoftBody_AJoint as BtSoftBody_AJoint foreign newtype nocode#}
newtype BtSoftBody_AJoint = BtSoftBody_AJoint (ForeignPtr (BtSoftBody_AJoint)) deriving (Eq,Ord,Show)
withBtSoftBody_AJoint (BtSoftBody_AJoint fptr) = withForeignPtr fptr
mkBtSoftBody_AJoint p = liftM BtSoftBody_AJoint $ newForeignPtr_ $ castPtr p
{#pointer O_btCollisionWorld_AllHitsRayResultCallback as BtCollisionWorld_AllHitsRayResultCallback foreign newtype nocode#}
newtype BtCollisionWorld_AllHitsRayResultCallback = BtCollisionWorld_AllHitsRayResultCallback (ForeignPtr (BtCollisionWorld_AllHitsRayResultCallback)) deriving (Eq,Ord,Show)
withBtCollisionWorld_AllHitsRayResultCallback (BtCollisionWorld_AllHitsRayResultCallback fptr) = withForeignPtr fptr
mkBtCollisionWorld_AllHitsRayResultCallback p = liftM BtCollisionWorld_AllHitsRayResultCallback $ newForeignPtr_ $ castPtr p
{#pointer O_btSoftBody_Anchor as BtSoftBody_Anchor foreign newtype nocode#}
newtype BtSoftBody_Anchor = BtSoftBody_Anchor (ForeignPtr (BtSoftBody_Anchor)) deriving (Eq,Ord,Show)
withBtSoftBody_Anchor (BtSoftBody_Anchor fptr) = withForeignPtr fptr
mkBtSoftBody_Anchor p = liftM BtSoftBody_Anchor $ newForeignPtr_ $ castPtr p
{#pointer O_bT_BOX_BOX_TRANSFORM_CACHE as BT_BOX_BOX_TRANSFORM_CACHE foreign newtype nocode#}
newtype BT_BOX_BOX_TRANSFORM_CACHE = BT_BOX_BOX_TRANSFORM_CACHE (ForeignPtr (BT_BOX_BOX_TRANSFORM_CACHE)) deriving (Eq,Ord,Show)
withBT_BOX_BOX_TRANSFORM_CACHE (BT_BOX_BOX_TRANSFORM_CACHE fptr) = withForeignPtr fptr
mkBT_BOX_BOX_TRANSFORM_CACHE p = liftM BT_BOX_BOX_TRANSFORM_CACHE $ newForeignPtr_ $ castPtr p
{#pointer O_bT_QUANTIZED_BVH_NODE as BT_QUANTIZED_BVH_NODE foreign newtype nocode#}
newtype BT_QUANTIZED_BVH_NODE = BT_QUANTIZED_BVH_NODE (ForeignPtr (BT_QUANTIZED_BVH_NODE)) deriving (Eq,Ord,Show)
withBT_QUANTIZED_BVH_NODE (BT_QUANTIZED_BVH_NODE fptr) = withForeignPtr fptr
mkBT_QUANTIZED_BVH_NODE p = liftM BT_QUANTIZED_BVH_NODE $ newForeignPtr_ $ castPtr p
{#pointer O_btSoftBody_Body as BtSoftBody_Body foreign newtype nocode#}
newtype BtSoftBody_Body = BtSoftBody_Body (ForeignPtr (BtSoftBody_Body)) deriving (Eq,Ord,Show)
withBtSoftBody_Body (BtSoftBody_Body fptr) = withForeignPtr fptr
mkBtSoftBody_Body p = liftM BtSoftBody_Body $ newForeignPtr_ $ castPtr p
{#pointer O_btSoftBody_CJoint as BtSoftBody_CJoint foreign newtype nocode#}
newtype BtSoftBody_CJoint = BtSoftBody_CJoint (ForeignPtr (BtSoftBody_CJoint)) deriving (Eq,Ord,Show)
withBtSoftBody_CJoint (BtSoftBody_CJoint fptr) = withForeignPtr fptr
mkBtSoftBody_CJoint p = liftM BtSoftBody_CJoint $ newForeignPtr_ $ castPtr p
{#pointer O_cProfileIterator as CProfileIterator foreign newtype nocode#}
newtype CProfileIterator = CProfileIterator (ForeignPtr (CProfileIterator)) deriving (Eq,Ord,Show)
withCProfileIterator (CProfileIterator fptr) = withForeignPtr fptr
mkCProfileIterator p = liftM CProfileIterator $ newForeignPtr_ $ castPtr p
{#pointer O_cProfileManager as CProfileManager foreign newtype nocode#}
newtype CProfileManager = CProfileManager (ForeignPtr (CProfileManager)) deriving (Eq,Ord,Show)
withCProfileManager (CProfileManager fptr) = withForeignPtr fptr
mkCProfileManager p = liftM CProfileManager $ newForeignPtr_ $ castPtr p
{#pointer O_cProfileNode as CProfileNode foreign newtype nocode#}
newtype CProfileNode = CProfileNode (ForeignPtr (CProfileNode)) deriving (Eq,Ord,Show)
withCProfileNode (CProfileNode fptr) = withForeignPtr fptr
mkCProfileNode p = liftM CProfileNode $ newForeignPtr_ $ castPtr p
{#pointer O_cProfileSample as CProfileSample foreign newtype nocode#}
newtype CProfileSample = CProfileSample (ForeignPtr (CProfileSample)) deriving (Eq,Ord,Show)
withCProfileSample (CProfileSample fptr) = withForeignPtr fptr
mkCProfileSample p = liftM CProfileSample $ newForeignPtr_ $ castPtr p
{#pointer O_btCollisionWorld_ClosestConvexResultCallback as BtCollisionWorld_ClosestConvexResultCallback foreign newtype nocode#}
newtype BtCollisionWorld_ClosestConvexResultCallback = BtCollisionWorld_ClosestConvexResultCallback (ForeignPtr (BtCollisionWorld_ClosestConvexResultCallback)) deriving (Eq,Ord,Show)
withBtCollisionWorld_ClosestConvexResultCallback (BtCollisionWorld_ClosestConvexResultCallback fptr) = withForeignPtr fptr
mkBtCollisionWorld_ClosestConvexResultCallback p = liftM BtCollisionWorld_ClosestConvexResultCallback $ newForeignPtr_ $ castPtr p
{#pointer O_btDiscreteCollisionDetectorInterface_ClosestPointInput as BtDiscreteCollisionDetectorInterface_ClosestPointInput foreign newtype nocode#}
newtype BtDiscreteCollisionDetectorInterface_ClosestPointInput = BtDiscreteCollisionDetectorInterface_ClosestPointInput (ForeignPtr (BtDiscreteCollisionDetectorInterface_ClosestPointInput)) deriving (Eq,Ord,Show)
withBtDiscreteCollisionDetectorInterface_ClosestPointInput (BtDiscreteCollisionDetectorInterface_ClosestPointInput fptr) = withForeignPtr fptr
mkBtDiscreteCollisionDetectorInterface_ClosestPointInput p = liftM BtDiscreteCollisionDetectorInterface_ClosestPointInput $ newForeignPtr_ $ castPtr p
{#pointer O_btCollisionWorld_ClosestRayResultCallback as BtCollisionWorld_ClosestRayResultCallback foreign newtype nocode#}
newtype BtCollisionWorld_ClosestRayResultCallback = BtCollisionWorld_ClosestRayResultCallback (ForeignPtr (BtCollisionWorld_ClosestRayResultCallback)) deriving (Eq,Ord,Show)
withBtCollisionWorld_ClosestRayResultCallback (BtCollisionWorld_ClosestRayResultCallback fptr) = withForeignPtr fptr
mkBtCollisionWorld_ClosestRayResultCallback p = liftM BtCollisionWorld_ClosestRayResultCallback $ newForeignPtr_ $ castPtr p
{#pointer O_btSoftBody_Cluster as BtSoftBody_Cluster foreign newtype nocode#}
newtype BtSoftBody_Cluster = BtSoftBody_Cluster (ForeignPtr (BtSoftBody_Cluster)) deriving (Eq,Ord,Show)
withBtSoftBody_Cluster (BtSoftBody_Cluster fptr) = withForeignPtr fptr
mkBtSoftBody_Cluster p = liftM BtSoftBody_Cluster $ newForeignPtr_ $ castPtr p
{#pointer O_btGImpactCompoundShape_CompoundPrimitiveManager as BtGImpactCompoundShape_CompoundPrimitiveManager foreign newtype nocode#}
newtype BtGImpactCompoundShape_CompoundPrimitiveManager = BtGImpactCompoundShape_CompoundPrimitiveManager (ForeignPtr (BtGImpactCompoundShape_CompoundPrimitiveManager)) deriving (Eq,Ord,Show)
withBtGImpactCompoundShape_CompoundPrimitiveManager (BtGImpactCompoundShape_CompoundPrimitiveManager fptr) = withForeignPtr fptr
mkBtGImpactCompoundShape_CompoundPrimitiveManager p = liftM BtGImpactCompoundShape_CompoundPrimitiveManager $ newForeignPtr_ $ castPtr p
{#pointer O_btSoftBody_Config as BtSoftBody_Config foreign newtype nocode#}
newtype BtSoftBody_Config = BtSoftBody_Config (ForeignPtr (BtSoftBody_Config)) deriving (Eq,Ord,Show)
withBtSoftBody_Config (BtSoftBody_Config fptr) = withForeignPtr fptr
mkBtSoftBody_Config p = liftM BtSoftBody_Config $ newForeignPtr_ $ castPtr p
{#pointer O_btCollisionWorld_ContactResultCallback as BtCollisionWorld_ContactResultCallback foreign newtype nocode#}
newtype BtCollisionWorld_ContactResultCallback = BtCollisionWorld_ContactResultCallback (ForeignPtr (BtCollisionWorld_ContactResultCallback)) deriving (Eq,Ord,Show)
withBtCollisionWorld_ContactResultCallback (BtCollisionWorld_ContactResultCallback fptr) = withForeignPtr fptr
mkBtCollisionWorld_ContactResultCallback p = liftM BtCollisionWorld_ContactResultCallback $ newForeignPtr_ $ castPtr p
{#pointer O_btCollisionWorld_ConvexResultCallback as BtCollisionWorld_ConvexResultCallback foreign newtype nocode#}
newtype BtCollisionWorld_ConvexResultCallback = BtCollisionWorld_ConvexResultCallback (ForeignPtr (BtCollisionWorld_ConvexResultCallback)) deriving (Eq,Ord,Show)
withBtCollisionWorld_ConvexResultCallback (BtCollisionWorld_ConvexResultCallback fptr) = withForeignPtr fptr
mkBtCollisionWorld_ConvexResultCallback p = liftM BtCollisionWorld_ConvexResultCallback $ newForeignPtr_ $ castPtr p
{#pointer O_btGImpactCollisionAlgorithm_CreateFunc as BtGImpactCollisionAlgorithm_CreateFunc foreign newtype nocode#}
newtype BtGImpactCollisionAlgorithm_CreateFunc = BtGImpactCollisionAlgorithm_CreateFunc (ForeignPtr (BtGImpactCollisionAlgorithm_CreateFunc)) deriving (Eq,Ord,Show)
withBtGImpactCollisionAlgorithm_CreateFunc (BtGImpactCollisionAlgorithm_CreateFunc fptr) = withForeignPtr fptr
mkBtGImpactCollisionAlgorithm_CreateFunc p = liftM BtGImpactCollisionAlgorithm_CreateFunc $ newForeignPtr_ $ castPtr p
{#pointer O_btSphereSphereCollisionAlgorithm_CreateFunc as BtSphereSphereCollisionAlgorithm_CreateFunc foreign newtype nocode#}
newtype BtSphereSphereCollisionAlgorithm_CreateFunc = BtSphereSphereCollisionAlgorithm_CreateFunc (ForeignPtr (BtSphereSphereCollisionAlgorithm_CreateFunc)) deriving (Eq,Ord,Show)
withBtSphereSphereCollisionAlgorithm_CreateFunc (BtSphereSphereCollisionAlgorithm_CreateFunc fptr) = withForeignPtr fptr
mkBtSphereSphereCollisionAlgorithm_CreateFunc p = liftM BtSphereSphereCollisionAlgorithm_CreateFunc $ newForeignPtr_ $ castPtr p
{#pointer O_btConvexConvexAlgorithm_CreateFunc as BtConvexConvexAlgorithm_CreateFunc foreign newtype nocode#}
newtype BtConvexConvexAlgorithm_CreateFunc = BtConvexConvexAlgorithm_CreateFunc (ForeignPtr (BtConvexConvexAlgorithm_CreateFunc)) deriving (Eq,Ord,Show)
withBtConvexConvexAlgorithm_CreateFunc (BtConvexConvexAlgorithm_CreateFunc fptr) = withForeignPtr fptr
mkBtConvexConvexAlgorithm_CreateFunc p = liftM BtConvexConvexAlgorithm_CreateFunc $ newForeignPtr_ $ castPtr p
{#pointer O_btSoftBody_Element as BtSoftBody_Element foreign newtype nocode#}
newtype BtSoftBody_Element = BtSoftBody_Element (ForeignPtr (BtSoftBody_Element)) deriving (Eq,Ord,Show)
withBtSoftBody_Element (BtSoftBody_Element fptr) = withForeignPtr fptr
mkBtSoftBody_Element p = liftM BtSoftBody_Element $ newForeignPtr_ $ castPtr p
{#pointer O_btSoftBody_Face as BtSoftBody_Face foreign newtype nocode#}
newtype BtSoftBody_Face = BtSoftBody_Face (ForeignPtr (BtSoftBody_Face)) deriving (Eq,Ord,Show)
withBtSoftBody_Face (BtSoftBody_Face fptr) = withForeignPtr fptr
mkBtSoftBody_Face p = liftM BtSoftBody_Face $ newForeignPtr_ $ castPtr p
{#pointer O_btSoftBody_Feature as BtSoftBody_Feature foreign newtype nocode#}
newtype BtSoftBody_Feature = BtSoftBody_Feature (ForeignPtr (BtSoftBody_Feature)) deriving (Eq,Ord,Show)
withBtSoftBody_Feature (BtSoftBody_Feature fptr) = withForeignPtr fptr
mkBtSoftBody_Feature p = liftM BtSoftBody_Feature $ newForeignPtr_ $ castPtr p
{#pointer O_gIM_BVH_DATA as GIM_BVH_DATA foreign newtype nocode#}
newtype GIM_BVH_DATA = GIM_BVH_DATA (ForeignPtr (GIM_BVH_DATA)) deriving (Eq,Ord,Show)
withGIM_BVH_DATA (GIM_BVH_DATA fptr) = withForeignPtr fptr
mkGIM_BVH_DATA p = liftM GIM_BVH_DATA $ newForeignPtr_ $ castPtr p
{#pointer O_gIM_BVH_DATA_ARRAY as GIM_BVH_DATA_ARRAY foreign newtype nocode#}
newtype GIM_BVH_DATA_ARRAY = GIM_BVH_DATA_ARRAY (ForeignPtr (GIM_BVH_DATA_ARRAY)) deriving (Eq,Ord,Show)
withGIM_BVH_DATA_ARRAY (GIM_BVH_DATA_ARRAY fptr) = withForeignPtr fptr
mkGIM_BVH_DATA_ARRAY p = liftM GIM_BVH_DATA_ARRAY $ newForeignPtr_ $ castPtr p
{#pointer O_gIM_BVH_TREE_NODE as GIM_BVH_TREE_NODE foreign newtype nocode#}
newtype GIM_BVH_TREE_NODE = GIM_BVH_TREE_NODE (ForeignPtr (GIM_BVH_TREE_NODE)) deriving (Eq,Ord,Show)
withGIM_BVH_TREE_NODE (GIM_BVH_TREE_NODE fptr) = withForeignPtr fptr
mkGIM_BVH_TREE_NODE p = liftM GIM_BVH_TREE_NODE $ newForeignPtr_ $ castPtr p
{#pointer O_gIM_BVH_TREE_NODE_ARRAY as GIM_BVH_TREE_NODE_ARRAY foreign newtype nocode#}
newtype GIM_BVH_TREE_NODE_ARRAY = GIM_BVH_TREE_NODE_ARRAY (ForeignPtr (GIM_BVH_TREE_NODE_ARRAY)) deriving (Eq,Ord,Show)
withGIM_BVH_TREE_NODE_ARRAY (GIM_BVH_TREE_NODE_ARRAY fptr) = withForeignPtr fptr
mkGIM_BVH_TREE_NODE_ARRAY p = liftM GIM_BVH_TREE_NODE_ARRAY $ newForeignPtr_ $ castPtr p
{#pointer O_gIM_PAIR as GIM_PAIR foreign newtype nocode#}
newtype GIM_PAIR = GIM_PAIR (ForeignPtr (GIM_PAIR)) deriving (Eq,Ord,Show)
withGIM_PAIR (GIM_PAIR fptr) = withForeignPtr fptr
mkGIM_PAIR p = liftM GIM_PAIR $ newForeignPtr_ $ castPtr p
{#pointer O_gIM_QUANTIZED_BVH_NODE_ARRAY as GIM_QUANTIZED_BVH_NODE_ARRAY foreign newtype nocode#}
newtype GIM_QUANTIZED_BVH_NODE_ARRAY = GIM_QUANTIZED_BVH_NODE_ARRAY (ForeignPtr (GIM_QUANTIZED_BVH_NODE_ARRAY)) deriving (Eq,Ord,Show)
withGIM_QUANTIZED_BVH_NODE_ARRAY (GIM_QUANTIZED_BVH_NODE_ARRAY fptr) = withForeignPtr fptr
mkGIM_QUANTIZED_BVH_NODE_ARRAY p = liftM GIM_QUANTIZED_BVH_NODE_ARRAY $ newForeignPtr_ $ castPtr p
{#pointer O_gIM_TRIANGLE_CONTACT as GIM_TRIANGLE_CONTACT foreign newtype nocode#}
newtype GIM_TRIANGLE_CONTACT = GIM_TRIANGLE_CONTACT (ForeignPtr (GIM_TRIANGLE_CONTACT)) deriving (Eq,Ord,Show)
withGIM_TRIANGLE_CONTACT (GIM_TRIANGLE_CONTACT fptr) = withForeignPtr fptr
mkGIM_TRIANGLE_CONTACT p = liftM GIM_TRIANGLE_CONTACT $ newForeignPtr_ $ castPtr p
{#pointer O_btDbvt_IClone as BtDbvt_IClone foreign newtype nocode#}
newtype BtDbvt_IClone = BtDbvt_IClone (ForeignPtr (BtDbvt_IClone)) deriving (Eq,Ord,Show)
withBtDbvt_IClone (BtDbvt_IClone fptr) = withForeignPtr fptr
mkBtDbvt_IClone p = liftM BtDbvt_IClone $ newForeignPtr_ $ castPtr p
{#pointer O_btDbvt_ICollide as BtDbvt_ICollide foreign newtype nocode#}
newtype BtDbvt_ICollide = BtDbvt_ICollide (ForeignPtr (BtDbvt_ICollide)) deriving (Eq,Ord,Show)
withBtDbvt_ICollide (BtDbvt_ICollide fptr) = withForeignPtr fptr
mkBtDbvt_ICollide p = liftM BtDbvt_ICollide $ newForeignPtr_ $ castPtr p
{#pointer O_btSoftBody_AJoint_IControl as BtSoftBody_AJoint_IControl foreign newtype nocode#}
newtype BtSoftBody_AJoint_IControl = BtSoftBody_AJoint_IControl (ForeignPtr (BtSoftBody_AJoint_IControl)) deriving (Eq,Ord,Show)
withBtSoftBody_AJoint_IControl (BtSoftBody_AJoint_IControl fptr) = withForeignPtr fptr
mkBtSoftBody_AJoint_IControl p = liftM BtSoftBody_AJoint_IControl $ newForeignPtr_ $ castPtr p
{#pointer O_btDbvt_IWriter as BtDbvt_IWriter foreign newtype nocode#}
newtype BtDbvt_IWriter = BtDbvt_IWriter (ForeignPtr (BtDbvt_IWriter)) deriving (Eq,Ord,Show)
withBtDbvt_IWriter (BtDbvt_IWriter fptr) = withForeignPtr fptr
mkBtDbvt_IWriter p = liftM BtDbvt_IWriter $ newForeignPtr_ $ castPtr p
{#pointer O_btSoftBody_ImplicitFn as BtSoftBody_ImplicitFn foreign newtype nocode#}
newtype BtSoftBody_ImplicitFn = BtSoftBody_ImplicitFn (ForeignPtr (BtSoftBody_ImplicitFn)) deriving (Eq,Ord,Show)
withBtSoftBody_ImplicitFn (BtSoftBody_ImplicitFn fptr) = withForeignPtr fptr
mkBtSoftBody_ImplicitFn p = liftM BtSoftBody_ImplicitFn $ newForeignPtr_ $ castPtr p
{#pointer O_btSoftBody_Impulse as BtSoftBody_Impulse foreign newtype nocode#}
newtype BtSoftBody_Impulse = BtSoftBody_Impulse (ForeignPtr (BtSoftBody_Impulse)) deriving (Eq,Ord,Show)
withBtSoftBody_Impulse (BtSoftBody_Impulse fptr) = withForeignPtr fptr
mkBtSoftBody_Impulse p = liftM BtSoftBody_Impulse $ newForeignPtr_ $ castPtr p
{#pointer O_btSoftBody_Joint as BtSoftBody_Joint foreign newtype nocode#}
newtype BtSoftBody_Joint = BtSoftBody_Joint (ForeignPtr (BtSoftBody_Joint)) deriving (Eq,Ord,Show)
withBtSoftBody_Joint (BtSoftBody_Joint fptr) = withForeignPtr fptr
mkBtSoftBody_Joint p = liftM BtSoftBody_Joint $ newForeignPtr_ $ castPtr p
{#pointer O_btSoftBody_LJoint as BtSoftBody_LJoint foreign newtype nocode#}
newtype BtSoftBody_LJoint = BtSoftBody_LJoint (ForeignPtr (BtSoftBody_LJoint)) deriving (Eq,Ord,Show)
withBtSoftBody_LJoint (BtSoftBody_LJoint fptr) = withForeignPtr fptr
mkBtSoftBody_LJoint p = liftM BtSoftBody_LJoint $ newForeignPtr_ $ castPtr p
{#pointer O_btSoftBody_Link as BtSoftBody_Link foreign newtype nocode#}
newtype BtSoftBody_Link = BtSoftBody_Link (ForeignPtr (BtSoftBody_Link)) deriving (Eq,Ord,Show)
withBtSoftBody_Link (BtSoftBody_Link fptr) = withForeignPtr fptr
mkBtSoftBody_Link p = liftM BtSoftBody_Link $ newForeignPtr_ $ castPtr p
{#pointer O_btCollisionWorld_LocalConvexResult as BtCollisionWorld_LocalConvexResult foreign newtype nocode#}
newtype BtCollisionWorld_LocalConvexResult = BtCollisionWorld_LocalConvexResult (ForeignPtr (BtCollisionWorld_LocalConvexResult)) deriving (Eq,Ord,Show)
withBtCollisionWorld_LocalConvexResult (BtCollisionWorld_LocalConvexResult fptr) = withForeignPtr fptr
mkBtCollisionWorld_LocalConvexResult p = liftM BtCollisionWorld_LocalConvexResult $ newForeignPtr_ $ castPtr p
{#pointer O_btCollisionWorld_LocalRayResult as BtCollisionWorld_LocalRayResult foreign newtype nocode#}
newtype BtCollisionWorld_LocalRayResult = BtCollisionWorld_LocalRayResult (ForeignPtr (BtCollisionWorld_LocalRayResult)) deriving (Eq,Ord,Show)
withBtCollisionWorld_LocalRayResult (BtCollisionWorld_LocalRayResult fptr) = withForeignPtr fptr
mkBtCollisionWorld_LocalRayResult p = liftM BtCollisionWorld_LocalRayResult $ newForeignPtr_ $ castPtr p
{#pointer O_btCollisionWorld_LocalShapeInfo as BtCollisionWorld_LocalShapeInfo foreign newtype nocode#}
newtype BtCollisionWorld_LocalShapeInfo = BtCollisionWorld_LocalShapeInfo (ForeignPtr (BtCollisionWorld_LocalShapeInfo)) deriving (Eq,Ord,Show)
withBtCollisionWorld_LocalShapeInfo (BtCollisionWorld_LocalShapeInfo fptr) = withForeignPtr fptr
mkBtCollisionWorld_LocalShapeInfo p = liftM BtCollisionWorld_LocalShapeInfo $ newForeignPtr_ $ castPtr p
{#pointer O_btSoftBody_Material as BtSoftBody_Material foreign newtype nocode#}
newtype BtSoftBody_Material = BtSoftBody_Material (ForeignPtr (BtSoftBody_Material)) deriving (Eq,Ord,Show)
withBtSoftBody_Material (BtSoftBody_Material fptr) = withForeignPtr fptr
mkBtSoftBody_Material p = liftM BtSoftBody_Material $ newForeignPtr_ $ castPtr p
{#pointer O_btSoftBody_Node as BtSoftBody_Node foreign newtype nocode#}
newtype BtSoftBody_Node = BtSoftBody_Node (ForeignPtr (BtSoftBody_Node)) deriving (Eq,Ord,Show)
withBtSoftBody_Node (BtSoftBody_Node fptr) = withForeignPtr fptr
mkBtSoftBody_Node p = liftM BtSoftBody_Node $ newForeignPtr_ $ castPtr p
{#pointer O_btSoftBody_Note as BtSoftBody_Note foreign newtype nocode#}
newtype BtSoftBody_Note = BtSoftBody_Note (ForeignPtr (BtSoftBody_Note)) deriving (Eq,Ord,Show)
withBtSoftBody_Note (BtSoftBody_Note fptr) = withForeignPtr fptr
mkBtSoftBody_Note p = liftM BtSoftBody_Note $ newForeignPtr_ $ castPtr p
{#pointer O_btSoftBody_Pose as BtSoftBody_Pose foreign newtype nocode#}
newtype BtSoftBody_Pose = BtSoftBody_Pose (ForeignPtr (BtSoftBody_Pose)) deriving (Eq,Ord,Show)
withBtSoftBody_Pose (BtSoftBody_Pose fptr) = withForeignPtr fptr
mkBtSoftBody_Pose p = liftM BtSoftBody_Pose $ newForeignPtr_ $ castPtr p
{#pointer O_btSoftBody_RContact as BtSoftBody_RContact foreign newtype nocode#}
newtype BtSoftBody_RContact = BtSoftBody_RContact (ForeignPtr (BtSoftBody_RContact)) deriving (Eq,Ord,Show)
withBtSoftBody_RContact (BtSoftBody_RContact fptr) = withForeignPtr fptr
mkBtSoftBody_RContact p = liftM BtSoftBody_RContact $ newForeignPtr_ $ castPtr p
{#pointer O_btSoftBody_RayFromToCaster as BtSoftBody_RayFromToCaster foreign newtype nocode#}
newtype BtSoftBody_RayFromToCaster = BtSoftBody_RayFromToCaster (ForeignPtr (BtSoftBody_RayFromToCaster)) deriving (Eq,Ord,Show)
withBtSoftBody_RayFromToCaster (BtSoftBody_RayFromToCaster fptr) = withForeignPtr fptr
mkBtSoftBody_RayFromToCaster p = liftM BtSoftBody_RayFromToCaster $ newForeignPtr_ $ castPtr p
{#pointer O_btCollisionWorld_RayResultCallback as BtCollisionWorld_RayResultCallback foreign newtype nocode#}
newtype BtCollisionWorld_RayResultCallback = BtCollisionWorld_RayResultCallback (ForeignPtr (BtCollisionWorld_RayResultCallback)) deriving (Eq,Ord,Show)
withBtCollisionWorld_RayResultCallback (BtCollisionWorld_RayResultCallback fptr) = withForeignPtr fptr
mkBtCollisionWorld_RayResultCallback p = liftM BtCollisionWorld_RayResultCallback $ newForeignPtr_ $ castPtr p
{#pointer O_btWheelInfo_RaycastInfo as BtWheelInfo_RaycastInfo foreign newtype nocode#}
newtype BtWheelInfo_RaycastInfo = BtWheelInfo_RaycastInfo (ForeignPtr (BtWheelInfo_RaycastInfo)) deriving (Eq,Ord,Show)
withBtWheelInfo_RaycastInfo (BtWheelInfo_RaycastInfo fptr) = withForeignPtr fptr
mkBtWheelInfo_RaycastInfo p = liftM BtWheelInfo_RaycastInfo $ newForeignPtr_ $ castPtr p
{#pointer O_btDiscreteCollisionDetectorInterface_Result as BtDiscreteCollisionDetectorInterface_Result foreign newtype nocode#}
newtype BtDiscreteCollisionDetectorInterface_Result = BtDiscreteCollisionDetectorInterface_Result (ForeignPtr (BtDiscreteCollisionDetectorInterface_Result)) deriving (Eq,Ord,Show)
withBtDiscreteCollisionDetectorInterface_Result (BtDiscreteCollisionDetectorInterface_Result fptr) = withForeignPtr fptr
mkBtDiscreteCollisionDetectorInterface_Result p = liftM BtDiscreteCollisionDetectorInterface_Result $ newForeignPtr_ $ castPtr p
{#pointer O_btSoftBody_SContact as BtSoftBody_SContact foreign newtype nocode#}
newtype BtSoftBody_SContact = BtSoftBody_SContact (ForeignPtr (BtSoftBody_SContact)) deriving (Eq,Ord,Show)
withBtSoftBody_SContact (BtSoftBody_SContact fptr) = withForeignPtr fptr
mkBtSoftBody_SContact p = liftM BtSoftBody_SContact $ newForeignPtr_ $ castPtr p
{#pointer O_btSoftBody_SolverState as BtSoftBody_SolverState foreign newtype nocode#}
newtype BtSoftBody_SolverState = BtSoftBody_SolverState (ForeignPtr (BtSoftBody_SolverState)) deriving (Eq,Ord,Show)
withBtSoftBody_SolverState (BtSoftBody_SolverState fptr) = withForeignPtr fptr
mkBtSoftBody_SolverState p = liftM BtSoftBody_SolverState $ newForeignPtr_ $ castPtr p
{#pointer O_btSoftBody_Joint_Specs as BtSoftBody_Joint_Specs foreign newtype nocode#}
newtype BtSoftBody_Joint_Specs = BtSoftBody_Joint_Specs (ForeignPtr (BtSoftBody_Joint_Specs)) deriving (Eq,Ord,Show)
withBtSoftBody_Joint_Specs (BtSoftBody_Joint_Specs fptr) = withForeignPtr fptr
mkBtSoftBody_Joint_Specs p = liftM BtSoftBody_Joint_Specs $ newForeignPtr_ $ castPtr p
{#pointer O_btSoftBody_LJoint_Specs as BtSoftBody_LJoint_Specs foreign newtype nocode#}
newtype BtSoftBody_LJoint_Specs = BtSoftBody_LJoint_Specs (ForeignPtr (BtSoftBody_LJoint_Specs)) deriving (Eq,Ord,Show)
withBtSoftBody_LJoint_Specs (BtSoftBody_LJoint_Specs fptr) = withForeignPtr fptr
mkBtSoftBody_LJoint_Specs p = liftM BtSoftBody_LJoint_Specs $ newForeignPtr_ $ castPtr p
{#pointer O_btSoftBody_AJoint_Specs as BtSoftBody_AJoint_Specs foreign newtype nocode#}
newtype BtSoftBody_AJoint_Specs = BtSoftBody_AJoint_Specs (ForeignPtr (BtSoftBody_AJoint_Specs)) deriving (Eq,Ord,Show)
withBtSoftBody_AJoint_Specs (BtSoftBody_AJoint_Specs fptr) = withForeignPtr fptr
mkBtSoftBody_AJoint_Specs p = liftM BtSoftBody_AJoint_Specs $ newForeignPtr_ $ castPtr p
{#pointer O_btSoftBody_Tetra as BtSoftBody_Tetra foreign newtype nocode#}
newtype BtSoftBody_Tetra = BtSoftBody_Tetra (ForeignPtr (BtSoftBody_Tetra)) deriving (Eq,Ord,Show)
withBtSoftBody_Tetra (BtSoftBody_Tetra fptr) = withForeignPtr fptr
mkBtSoftBody_Tetra p = liftM BtSoftBody_Tetra $ newForeignPtr_ $ castPtr p
{#pointer O_btGImpactMeshShapePart_TrimeshPrimitiveManager as BtGImpactMeshShapePart_TrimeshPrimitiveManager foreign newtype nocode#}
newtype BtGImpactMeshShapePart_TrimeshPrimitiveManager = BtGImpactMeshShapePart_TrimeshPrimitiveManager (ForeignPtr (BtGImpactMeshShapePart_TrimeshPrimitiveManager)) deriving (Eq,Ord,Show)
withBtGImpactMeshShapePart_TrimeshPrimitiveManager (BtGImpactMeshShapePart_TrimeshPrimitiveManager fptr) = withForeignPtr fptr
mkBtGImpactMeshShapePart_TrimeshPrimitiveManager p = liftM BtGImpactMeshShapePart_TrimeshPrimitiveManager $ newForeignPtr_ $ castPtr p
{#pointer O_bt32BitAxisSweep3 as Bt32BitAxisSweep3 foreign newtype nocode#}
newtype Bt32BitAxisSweep3 = Bt32BitAxisSweep3 (ForeignPtr (Bt32BitAxisSweep3)) deriving (Eq,Ord,Show)
withBt32BitAxisSweep3 (Bt32BitAxisSweep3 fptr) = withForeignPtr fptr
mkBt32BitAxisSweep3 p = liftM Bt32BitAxisSweep3 $ newForeignPtr_ $ castPtr p
{#pointer O_btAABB as BtAABB foreign newtype nocode#}
newtype BtAABB = BtAABB (ForeignPtr (BtAABB)) deriving (Eq,Ord,Show)
withBtAABB (BtAABB fptr) = withForeignPtr fptr
mkBtAABB p = liftM BtAABB $ newForeignPtr_ $ castPtr p
{#pointer O_btActionInterface as BtActionInterface foreign newtype nocode#}
newtype BtActionInterface = BtActionInterface (ForeignPtr (BtActionInterface)) deriving (Eq,Ord,Show)
withBtActionInterface (BtActionInterface fptr) = withForeignPtr fptr
mkBtActionInterface p = liftM BtActionInterface $ newForeignPtr_ $ castPtr p
{#pointer O_btActivatingCollisionAlgorithm as BtActivatingCollisionAlgorithm foreign newtype nocode#}
newtype BtActivatingCollisionAlgorithm = BtActivatingCollisionAlgorithm (ForeignPtr (BtActivatingCollisionAlgorithm)) deriving (Eq,Ord,Show)
withBtActivatingCollisionAlgorithm (BtActivatingCollisionAlgorithm fptr) = withForeignPtr fptr
mkBtActivatingCollisionAlgorithm p = liftM BtActivatingCollisionAlgorithm $ newForeignPtr_ $ castPtr p
{#pointer O_btAlignedAllocator_BT_QUANTIZED_BVH_NODE_16u_ as BtAlignedAllocator_BT_QUANTIZED_BVH_NODE_16u_ foreign newtype nocode#}
newtype BtAlignedAllocator_BT_QUANTIZED_BVH_NODE_16u_ = BtAlignedAllocator_BT_QUANTIZED_BVH_NODE_16u_ (ForeignPtr (BtAlignedAllocator_BT_QUANTIZED_BVH_NODE_16u_)) deriving (Eq,Ord,Show)
withBtAlignedAllocator_BT_QUANTIZED_BVH_NODE_16u_ (BtAlignedAllocator_BT_QUANTIZED_BVH_NODE_16u_ fptr) = withForeignPtr fptr
mkBtAlignedAllocator_BT_QUANTIZED_BVH_NODE_16u_ p = liftM BtAlignedAllocator_BT_QUANTIZED_BVH_NODE_16u_ $ newForeignPtr_ $ castPtr p
{#pointer O_btAlignedAllocator_GIM_BVH_DATA_16u_ as BtAlignedAllocator_GIM_BVH_DATA_16u_ foreign newtype nocode#}
newtype BtAlignedAllocator_GIM_BVH_DATA_16u_ = BtAlignedAllocator_GIM_BVH_DATA_16u_ (ForeignPtr (BtAlignedAllocator_GIM_BVH_DATA_16u_)) deriving (Eq,Ord,Show)
withBtAlignedAllocator_GIM_BVH_DATA_16u_ (BtAlignedAllocator_GIM_BVH_DATA_16u_ fptr) = withForeignPtr fptr
mkBtAlignedAllocator_GIM_BVH_DATA_16u_ p = liftM BtAlignedAllocator_GIM_BVH_DATA_16u_ $ newForeignPtr_ $ castPtr p
{#pointer O_btAlignedAllocator_GIM_BVH_TREE_NODE_16u_ as BtAlignedAllocator_GIM_BVH_TREE_NODE_16u_ foreign newtype nocode#}
newtype BtAlignedAllocator_GIM_BVH_TREE_NODE_16u_ = BtAlignedAllocator_GIM_BVH_TREE_NODE_16u_ (ForeignPtr (BtAlignedAllocator_GIM_BVH_TREE_NODE_16u_)) deriving (Eq,Ord,Show)
withBtAlignedAllocator_GIM_BVH_TREE_NODE_16u_ (BtAlignedAllocator_GIM_BVH_TREE_NODE_16u_ fptr) = withForeignPtr fptr
mkBtAlignedAllocator_GIM_BVH_TREE_NODE_16u_ p = liftM BtAlignedAllocator_GIM_BVH_TREE_NODE_16u_ $ newForeignPtr_ $ castPtr p
{#pointer O_btAlignedAllocator_GIM_PAIR_16u_ as BtAlignedAllocator_GIM_PAIR_16u_ foreign newtype nocode#}
newtype BtAlignedAllocator_GIM_PAIR_16u_ = BtAlignedAllocator_GIM_PAIR_16u_ (ForeignPtr (BtAlignedAllocator_GIM_PAIR_16u_)) deriving (Eq,Ord,Show)
withBtAlignedAllocator_GIM_PAIR_16u_ (BtAlignedAllocator_GIM_PAIR_16u_ fptr) = withForeignPtr fptr
mkBtAlignedAllocator_GIM_PAIR_16u_ p = liftM BtAlignedAllocator_GIM_PAIR_16u_ $ newForeignPtr_ $ castPtr p
{#pointer O_btAlignedAllocator_bool_16u_ as BtAlignedAllocator_bool_16u_ foreign newtype nocode#}
newtype BtAlignedAllocator_bool_16u_ = BtAlignedAllocator_bool_16u_ (ForeignPtr (BtAlignedAllocator_bool_16u_)) deriving (Eq,Ord,Show)
withBtAlignedAllocator_bool_16u_ (BtAlignedAllocator_bool_16u_ fptr) = withForeignPtr fptr
mkBtAlignedAllocator_bool_16u_ p = liftM BtAlignedAllocator_bool_16u_ $ newForeignPtr_ $ castPtr p
{#pointer O_btAlignedAllocator_btActionInterface_ptr_16u_ as BtAlignedAllocator_btActionInterface_ptr_16u_ foreign newtype nocode#}
newtype BtAlignedAllocator_btActionInterface_ptr_16u_ = BtAlignedAllocator_btActionInterface_ptr_16u_ (ForeignPtr (BtAlignedAllocator_btActionInterface_ptr_16u_)) deriving (Eq,Ord,Show)
withBtAlignedAllocator_btActionInterface_ptr_16u_ (BtAlignedAllocator_btActionInterface_ptr_16u_ fptr) = withForeignPtr fptr
mkBtAlignedAllocator_btActionInterface_ptr_16u_ p = liftM BtAlignedAllocator_btActionInterface_ptr_16u_ $ newForeignPtr_ $ castPtr p
{#pointer O_btAlignedAllocator_btBroadphaseInterface_ptr_16u_ as BtAlignedAllocator_btBroadphaseInterface_ptr_16u_ foreign newtype nocode#}
newtype BtAlignedAllocator_btBroadphaseInterface_ptr_16u_ = BtAlignedAllocator_btBroadphaseInterface_ptr_16u_ (ForeignPtr (BtAlignedAllocator_btBroadphaseInterface_ptr_16u_)) deriving (Eq,Ord,Show)
withBtAlignedAllocator_btBroadphaseInterface_ptr_16u_ (BtAlignedAllocator_btBroadphaseInterface_ptr_16u_ fptr) = withForeignPtr fptr
mkBtAlignedAllocator_btBroadphaseInterface_ptr_16u_ p = liftM BtAlignedAllocator_btBroadphaseInterface_ptr_16u_ $ newForeignPtr_ $ castPtr p
{#pointer O_btAlignedAllocator_btBroadphasePair_16u_ as BtAlignedAllocator_btBroadphasePair_16u_ foreign newtype nocode#}
newtype BtAlignedAllocator_btBroadphasePair_16u_ = BtAlignedAllocator_btBroadphasePair_16u_ (ForeignPtr (BtAlignedAllocator_btBroadphasePair_16u_)) deriving (Eq,Ord,Show)
withBtAlignedAllocator_btBroadphasePair_16u_ (BtAlignedAllocator_btBroadphasePair_16u_ fptr) = withForeignPtr fptr
mkBtAlignedAllocator_btBroadphasePair_16u_ p = liftM BtAlignedAllocator_btBroadphasePair_16u_ $ newForeignPtr_ $ castPtr p
{#pointer O_btAlignedAllocator_btBvhSubtreeInfo_16u_ as BtAlignedAllocator_btBvhSubtreeInfo_16u_ foreign newtype nocode#}
newtype BtAlignedAllocator_btBvhSubtreeInfo_16u_ = BtAlignedAllocator_btBvhSubtreeInfo_16u_ (ForeignPtr (BtAlignedAllocator_btBvhSubtreeInfo_16u_)) deriving (Eq,Ord,Show)
withBtAlignedAllocator_btBvhSubtreeInfo_16u_ (BtAlignedAllocator_btBvhSubtreeInfo_16u_ fptr) = withForeignPtr fptr
mkBtAlignedAllocator_btBvhSubtreeInfo_16u_ p = liftM BtAlignedAllocator_btBvhSubtreeInfo_16u_ $ newForeignPtr_ $ castPtr p
{#pointer O_btAlignedAllocator_btChunk_ptr_16u_ as BtAlignedAllocator_btChunk_ptr_16u_ foreign newtype nocode#}
newtype BtAlignedAllocator_btChunk_ptr_16u_ = BtAlignedAllocator_btChunk_ptr_16u_ (ForeignPtr (BtAlignedAllocator_btChunk_ptr_16u_)) deriving (Eq,Ord,Show)
withBtAlignedAllocator_btChunk_ptr_16u_ (BtAlignedAllocator_btChunk_ptr_16u_ fptr) = withForeignPtr fptr
mkBtAlignedAllocator_btChunk_ptr_16u_ p = liftM BtAlignedAllocator_btChunk_ptr_16u_ $ newForeignPtr_ $ castPtr p
{#pointer O_btAlignedAllocator_btCollisionObject_ptr_16u_ as BtAlignedAllocator_btCollisionObject_ptr_16u_ foreign newtype nocode#}
newtype BtAlignedAllocator_btCollisionObject_ptr_16u_ = BtAlignedAllocator_btCollisionObject_ptr_16u_ (ForeignPtr (BtAlignedAllocator_btCollisionObject_ptr_16u_)) deriving (Eq,Ord,Show)
withBtAlignedAllocator_btCollisionObject_ptr_16u_ (BtAlignedAllocator_btCollisionObject_ptr_16u_ fptr) = withForeignPtr fptr
mkBtAlignedAllocator_btCollisionObject_ptr_16u_ p = liftM BtAlignedAllocator_btCollisionObject_ptr_16u_ $ newForeignPtr_ $ castPtr p
{#pointer O_btAlignedAllocator_btCollisionShape_ptr_16u_ as BtAlignedAllocator_btCollisionShape_ptr_16u_ foreign newtype nocode#}
newtype BtAlignedAllocator_btCollisionShape_ptr_16u_ = BtAlignedAllocator_btCollisionShape_ptr_16u_ (ForeignPtr (BtAlignedAllocator_btCollisionShape_ptr_16u_)) deriving (Eq,Ord,Show)
withBtAlignedAllocator_btCollisionShape_ptr_16u_ (BtAlignedAllocator_btCollisionShape_ptr_16u_ fptr) = withForeignPtr fptr
mkBtAlignedAllocator_btCollisionShape_ptr_16u_ p = liftM BtAlignedAllocator_btCollisionShape_ptr_16u_ $ newForeignPtr_ $ castPtr p
{#pointer O_btAlignedAllocator_btCompoundShapeChild_16u_ as BtAlignedAllocator_btCompoundShapeChild_16u_ foreign newtype nocode#}
newtype BtAlignedAllocator_btCompoundShapeChild_16u_ = BtAlignedAllocator_btCompoundShapeChild_16u_ (ForeignPtr (BtAlignedAllocator_btCompoundShapeChild_16u_)) deriving (Eq,Ord,Show)
withBtAlignedAllocator_btCompoundShapeChild_16u_ (BtAlignedAllocator_btCompoundShapeChild_16u_ fptr) = withForeignPtr fptr
mkBtAlignedAllocator_btCompoundShapeChild_16u_ p = liftM BtAlignedAllocator_btCompoundShapeChild_16u_ $ newForeignPtr_ $ castPtr p
{#pointer O_btAlignedAllocator_btDbvt_sStkNN_16u_ as BtAlignedAllocator_btDbvt_sStkNN_16u_ foreign newtype nocode#}
newtype BtAlignedAllocator_btDbvt_sStkNN_16u_ = BtAlignedAllocator_btDbvt_sStkNN_16u_ (ForeignPtr (BtAlignedAllocator_btDbvt_sStkNN_16u_)) deriving (Eq,Ord,Show)
withBtAlignedAllocator_btDbvt_sStkNN_16u_ (BtAlignedAllocator_btDbvt_sStkNN_16u_ fptr) = withForeignPtr fptr
mkBtAlignedAllocator_btDbvt_sStkNN_16u_ p = liftM BtAlignedAllocator_btDbvt_sStkNN_16u_ $ newForeignPtr_ $ castPtr p
{#pointer O_btAlignedAllocator_btDbvt_sStkNP_16u_ as BtAlignedAllocator_btDbvt_sStkNP_16u_ foreign newtype nocode#}
newtype BtAlignedAllocator_btDbvt_sStkNP_16u_ = BtAlignedAllocator_btDbvt_sStkNP_16u_ (ForeignPtr (BtAlignedAllocator_btDbvt_sStkNP_16u_)) deriving (Eq,Ord,Show)
withBtAlignedAllocator_btDbvt_sStkNP_16u_ (BtAlignedAllocator_btDbvt_sStkNP_16u_ fptr) = withForeignPtr fptr
mkBtAlignedAllocator_btDbvt_sStkNP_16u_ p = liftM BtAlignedAllocator_btDbvt_sStkNP_16u_ $ newForeignPtr_ $ castPtr p
{#pointer O_btAlignedAllocator_btDbvt_sStkNPS_16u_ as BtAlignedAllocator_btDbvt_sStkNPS_16u_ foreign newtype nocode#}
newtype BtAlignedAllocator_btDbvt_sStkNPS_16u_ = BtAlignedAllocator_btDbvt_sStkNPS_16u_ (ForeignPtr (BtAlignedAllocator_btDbvt_sStkNPS_16u_)) deriving (Eq,Ord,Show)
withBtAlignedAllocator_btDbvt_sStkNPS_16u_ (BtAlignedAllocator_btDbvt_sStkNPS_16u_ fptr) = withForeignPtr fptr
mkBtAlignedAllocator_btDbvt_sStkNPS_16u_ p = liftM BtAlignedAllocator_btDbvt_sStkNPS_16u_ $ newForeignPtr_ $ castPtr p
{#pointer O_btAlignedAllocator_btDbvtNodeconst_ptr_16u_ as BtAlignedAllocator_btDbvtNodeconst_ptr_16u_ foreign newtype nocode#}
newtype BtAlignedAllocator_btDbvtNodeconst_ptr_16u_ = BtAlignedAllocator_btDbvtNodeconst_ptr_16u_ (ForeignPtr (BtAlignedAllocator_btDbvtNodeconst_ptr_16u_)) deriving (Eq,Ord,Show)
withBtAlignedAllocator_btDbvtNodeconst_ptr_16u_ (BtAlignedAllocator_btDbvtNodeconst_ptr_16u_ fptr) = withForeignPtr fptr
mkBtAlignedAllocator_btDbvtNodeconst_ptr_16u_ p = liftM BtAlignedAllocator_btDbvtNodeconst_ptr_16u_ $ newForeignPtr_ $ castPtr p
{#pointer O_btAlignedAllocator_btGImpactMeshShapePart_ptr_16u_ as BtAlignedAllocator_btGImpactMeshShapePart_ptr_16u_ foreign newtype nocode#}
newtype BtAlignedAllocator_btGImpactMeshShapePart_ptr_16u_ = BtAlignedAllocator_btGImpactMeshShapePart_ptr_16u_ (ForeignPtr (BtAlignedAllocator_btGImpactMeshShapePart_ptr_16u_)) deriving (Eq,Ord,Show)
withBtAlignedAllocator_btGImpactMeshShapePart_ptr_16u_ (BtAlignedAllocator_btGImpactMeshShapePart_ptr_16u_ fptr) = withForeignPtr fptr
mkBtAlignedAllocator_btGImpactMeshShapePart_ptr_16u_ p = liftM BtAlignedAllocator_btGImpactMeshShapePart_ptr_16u_ $ newForeignPtr_ $ castPtr p
{#pointer O_btAlignedAllocator_btHashInt_16u_ as BtAlignedAllocator_btHashInt_16u_ foreign newtype nocode#}
newtype BtAlignedAllocator_btHashInt_16u_ = BtAlignedAllocator_btHashInt_16u_ (ForeignPtr (BtAlignedAllocator_btHashInt_16u_)) deriving (Eq,Ord,Show)
withBtAlignedAllocator_btHashInt_16u_ (BtAlignedAllocator_btHashInt_16u_ fptr) = withForeignPtr fptr
mkBtAlignedAllocator_btHashInt_16u_ p = liftM BtAlignedAllocator_btHashInt_16u_ $ newForeignPtr_ $ castPtr p
{#pointer O_btAlignedAllocator_btHashPtr_16u_ as BtAlignedAllocator_btHashPtr_16u_ foreign newtype nocode#}
newtype BtAlignedAllocator_btHashPtr_16u_ = BtAlignedAllocator_btHashPtr_16u_ (ForeignPtr (BtAlignedAllocator_btHashPtr_16u_)) deriving (Eq,Ord,Show)
withBtAlignedAllocator_btHashPtr_16u_ (BtAlignedAllocator_btHashPtr_16u_ fptr) = withForeignPtr fptr
mkBtAlignedAllocator_btHashPtr_16u_ p = liftM BtAlignedAllocator_btHashPtr_16u_ $ newForeignPtr_ $ castPtr p
{#pointer O_btAlignedAllocator_btHashString_16u_ as BtAlignedAllocator_btHashString_16u_ foreign newtype nocode#}
newtype BtAlignedAllocator_btHashString_16u_ = BtAlignedAllocator_btHashString_16u_ (ForeignPtr (BtAlignedAllocator_btHashString_16u_)) deriving (Eq,Ord,Show)
withBtAlignedAllocator_btHashString_16u_ (BtAlignedAllocator_btHashString_16u_ fptr) = withForeignPtr fptr
mkBtAlignedAllocator_btHashString_16u_ p = liftM BtAlignedAllocator_btHashString_16u_ $ newForeignPtr_ $ castPtr p
{#pointer O_btAlignedAllocator_btIndexedMesh_16u_ as BtAlignedAllocator_btIndexedMesh_16u_ foreign newtype nocode#}
newtype BtAlignedAllocator_btIndexedMesh_16u_ = BtAlignedAllocator_btIndexedMesh_16u_ (ForeignPtr (BtAlignedAllocator_btIndexedMesh_16u_)) deriving (Eq,Ord,Show)
withBtAlignedAllocator_btIndexedMesh_16u_ (BtAlignedAllocator_btIndexedMesh_16u_ fptr) = withForeignPtr fptr
mkBtAlignedAllocator_btIndexedMesh_16u_ p = liftM BtAlignedAllocator_btIndexedMesh_16u_ $ newForeignPtr_ $ castPtr p
{#pointer O_btAlignedAllocator_btMultiSapBroadphase_btBridgeProxy_ptr_16u_ as BtAlignedAllocator_btMultiSapBroadphase_btBridgeProxy_ptr_16u_ foreign newtype nocode#}
newtype BtAlignedAllocator_btMultiSapBroadphase_btBridgeProxy_ptr_16u_ = BtAlignedAllocator_btMultiSapBroadphase_btBridgeProxy_ptr_16u_ (ForeignPtr (BtAlignedAllocator_btMultiSapBroadphase_btBridgeProxy_ptr_16u_)) deriving (Eq,Ord,Show)
withBtAlignedAllocator_btMultiSapBroadphase_btBridgeProxy_ptr_16u_ (BtAlignedAllocator_btMultiSapBroadphase_btBridgeProxy_ptr_16u_ fptr) = withForeignPtr fptr
mkBtAlignedAllocator_btMultiSapBroadphase_btBridgeProxy_ptr_16u_ p = liftM BtAlignedAllocator_btMultiSapBroadphase_btBridgeProxy_ptr_16u_ $ newForeignPtr_ $ castPtr p
{#pointer O_btAlignedAllocator_btMultiSapBroadphase_btMultiSapProxy_ptr_16u_ as BtAlignedAllocator_btMultiSapBroadphase_btMultiSapProxy_ptr_16u_ foreign newtype nocode#}
newtype BtAlignedAllocator_btMultiSapBroadphase_btMultiSapProxy_ptr_16u_ = BtAlignedAllocator_btMultiSapBroadphase_btMultiSapProxy_ptr_16u_ (ForeignPtr (BtAlignedAllocator_btMultiSapBroadphase_btMultiSapProxy_ptr_16u_)) deriving (Eq,Ord,Show)
withBtAlignedAllocator_btMultiSapBroadphase_btMultiSapProxy_ptr_16u_ (BtAlignedAllocator_btMultiSapBroadphase_btMultiSapProxy_ptr_16u_ fptr) = withForeignPtr fptr
mkBtAlignedAllocator_btMultiSapBroadphase_btMultiSapProxy_ptr_16u_ p = liftM BtAlignedAllocator_btMultiSapBroadphase_btMultiSapProxy_ptr_16u_ $ newForeignPtr_ $ castPtr p
{#pointer O_btAlignedAllocator_btOptimizedBvhNode_16u_ as BtAlignedAllocator_btOptimizedBvhNode_16u_ foreign newtype nocode#}
newtype BtAlignedAllocator_btOptimizedBvhNode_16u_ = BtAlignedAllocator_btOptimizedBvhNode_16u_ (ForeignPtr (BtAlignedAllocator_btOptimizedBvhNode_16u_)) deriving (Eq,Ord,Show)
withBtAlignedAllocator_btOptimizedBvhNode_16u_ (BtAlignedAllocator_btOptimizedBvhNode_16u_ fptr) = withForeignPtr fptr
mkBtAlignedAllocator_btOptimizedBvhNode_16u_ p = liftM BtAlignedAllocator_btOptimizedBvhNode_16u_ $ newForeignPtr_ $ castPtr p
{#pointer O_btAlignedAllocator_btPersistentManifold_ptr_16u_ as BtAlignedAllocator_btPersistentManifold_ptr_16u_ foreign newtype nocode#}
newtype BtAlignedAllocator_btPersistentManifold_ptr_16u_ = BtAlignedAllocator_btPersistentManifold_ptr_16u_ (ForeignPtr (BtAlignedAllocator_btPersistentManifold_ptr_16u_)) deriving (Eq,Ord,Show)
withBtAlignedAllocator_btPersistentManifold_ptr_16u_ (BtAlignedAllocator_btPersistentManifold_ptr_16u_ fptr) = withForeignPtr fptr
mkBtAlignedAllocator_btPersistentManifold_ptr_16u_ p = liftM BtAlignedAllocator_btPersistentManifold_ptr_16u_ $ newForeignPtr_ $ castPtr p
{#pointer O_btAlignedAllocator_btPointerUid_16u_ as BtAlignedAllocator_btPointerUid_16u_ foreign newtype nocode#}
newtype BtAlignedAllocator_btPointerUid_16u_ = BtAlignedAllocator_btPointerUid_16u_ (ForeignPtr (BtAlignedAllocator_btPointerUid_16u_)) deriving (Eq,Ord,Show)
withBtAlignedAllocator_btPointerUid_16u_ (BtAlignedAllocator_btPointerUid_16u_ fptr) = withForeignPtr fptr
mkBtAlignedAllocator_btPointerUid_16u_ p = liftM BtAlignedAllocator_btPointerUid_16u_ $ newForeignPtr_ $ castPtr p
{#pointer O_btAlignedAllocator_btQuantizedBvhNode_16u_ as BtAlignedAllocator_btQuantizedBvhNode_16u_ foreign newtype nocode#}
newtype BtAlignedAllocator_btQuantizedBvhNode_16u_ = BtAlignedAllocator_btQuantizedBvhNode_16u_ (ForeignPtr (BtAlignedAllocator_btQuantizedBvhNode_16u_)) deriving (Eq,Ord,Show)
withBtAlignedAllocator_btQuantizedBvhNode_16u_ (BtAlignedAllocator_btQuantizedBvhNode_16u_ fptr) = withForeignPtr fptr
mkBtAlignedAllocator_btQuantizedBvhNode_16u_ p = liftM BtAlignedAllocator_btQuantizedBvhNode_16u_ $ newForeignPtr_ $ castPtr p
{#pointer O_btAlignedAllocator_btRigidBody_ptr_16u_ as BtAlignedAllocator_btRigidBody_ptr_16u_ foreign newtype nocode#}
newtype BtAlignedAllocator_btRigidBody_ptr_16u_ = BtAlignedAllocator_btRigidBody_ptr_16u_ (ForeignPtr (BtAlignedAllocator_btRigidBody_ptr_16u_)) deriving (Eq,Ord,Show)
withBtAlignedAllocator_btRigidBody_ptr_16u_ (BtAlignedAllocator_btRigidBody_ptr_16u_ fptr) = withForeignPtr fptr
mkBtAlignedAllocator_btRigidBody_ptr_16u_ p = liftM BtAlignedAllocator_btRigidBody_ptr_16u_ $ newForeignPtr_ $ castPtr p
{#pointer O_btAlignedAllocator_btSoftBody_ptr_16u_ as BtAlignedAllocator_btSoftBody_ptr_16u_ foreign newtype nocode#}
newtype BtAlignedAllocator_btSoftBody_ptr_16u_ = BtAlignedAllocator_btSoftBody_ptr_16u_ (ForeignPtr (BtAlignedAllocator_btSoftBody_ptr_16u_)) deriving (Eq,Ord,Show)
withBtAlignedAllocator_btSoftBody_ptr_16u_ (BtAlignedAllocator_btSoftBody_ptr_16u_ fptr) = withForeignPtr fptr
mkBtAlignedAllocator_btSoftBody_ptr_16u_ p = liftM BtAlignedAllocator_btSoftBody_ptr_16u_ $ newForeignPtr_ $ castPtr p
{#pointer O_btAlignedAllocator_btSoftBody_Anchor_16u_ as BtAlignedAllocator_btSoftBody_Anchor_16u_ foreign newtype nocode#}
newtype BtAlignedAllocator_btSoftBody_Anchor_16u_ = BtAlignedAllocator_btSoftBody_Anchor_16u_ (ForeignPtr (BtAlignedAllocator_btSoftBody_Anchor_16u_)) deriving (Eq,Ord,Show)
withBtAlignedAllocator_btSoftBody_Anchor_16u_ (BtAlignedAllocator_btSoftBody_Anchor_16u_ fptr) = withForeignPtr fptr
mkBtAlignedAllocator_btSoftBody_Anchor_16u_ p = liftM BtAlignedAllocator_btSoftBody_Anchor_16u_ $ newForeignPtr_ $ castPtr p
{#pointer O_btAlignedAllocator_btSoftBody_Cluster_ptr_16u_ as BtAlignedAllocator_btSoftBody_Cluster_ptr_16u_ foreign newtype nocode#}
newtype BtAlignedAllocator_btSoftBody_Cluster_ptr_16u_ = BtAlignedAllocator_btSoftBody_Cluster_ptr_16u_ (ForeignPtr (BtAlignedAllocator_btSoftBody_Cluster_ptr_16u_)) deriving (Eq,Ord,Show)
withBtAlignedAllocator_btSoftBody_Cluster_ptr_16u_ (BtAlignedAllocator_btSoftBody_Cluster_ptr_16u_ fptr) = withForeignPtr fptr
mkBtAlignedAllocator_btSoftBody_Cluster_ptr_16u_ p = liftM BtAlignedAllocator_btSoftBody_Cluster_ptr_16u_ $ newForeignPtr_ $ castPtr p
{#pointer O_btAlignedAllocator_btSoftBody_Face_16u_ as BtAlignedAllocator_btSoftBody_Face_16u_ foreign newtype nocode#}
newtype BtAlignedAllocator_btSoftBody_Face_16u_ = BtAlignedAllocator_btSoftBody_Face_16u_ (ForeignPtr (BtAlignedAllocator_btSoftBody_Face_16u_)) deriving (Eq,Ord,Show)
withBtAlignedAllocator_btSoftBody_Face_16u_ (BtAlignedAllocator_btSoftBody_Face_16u_ fptr) = withForeignPtr fptr
mkBtAlignedAllocator_btSoftBody_Face_16u_ p = liftM BtAlignedAllocator_btSoftBody_Face_16u_ $ newForeignPtr_ $ castPtr p
{#pointer O_btAlignedAllocator_btSoftBody_Joint_ptr_16u_ as BtAlignedAllocator_btSoftBody_Joint_ptr_16u_ foreign newtype nocode#}
newtype BtAlignedAllocator_btSoftBody_Joint_ptr_16u_ = BtAlignedAllocator_btSoftBody_Joint_ptr_16u_ (ForeignPtr (BtAlignedAllocator_btSoftBody_Joint_ptr_16u_)) deriving (Eq,Ord,Show)
withBtAlignedAllocator_btSoftBody_Joint_ptr_16u_ (BtAlignedAllocator_btSoftBody_Joint_ptr_16u_ fptr) = withForeignPtr fptr
mkBtAlignedAllocator_btSoftBody_Joint_ptr_16u_ p = liftM BtAlignedAllocator_btSoftBody_Joint_ptr_16u_ $ newForeignPtr_ $ castPtr p
{#pointer O_btAlignedAllocator_btSoftBody_Link_16u_ as BtAlignedAllocator_btSoftBody_Link_16u_ foreign newtype nocode#}
newtype BtAlignedAllocator_btSoftBody_Link_16u_ = BtAlignedAllocator_btSoftBody_Link_16u_ (ForeignPtr (BtAlignedAllocator_btSoftBody_Link_16u_)) deriving (Eq,Ord,Show)
withBtAlignedAllocator_btSoftBody_Link_16u_ (BtAlignedAllocator_btSoftBody_Link_16u_ fptr) = withForeignPtr fptr
mkBtAlignedAllocator_btSoftBody_Link_16u_ p = liftM BtAlignedAllocator_btSoftBody_Link_16u_ $ newForeignPtr_ $ castPtr p
{#pointer O_btAlignedAllocator_btSoftBody_Material_ptr_16u_ as BtAlignedAllocator_btSoftBody_Material_ptr_16u_ foreign newtype nocode#}
newtype BtAlignedAllocator_btSoftBody_Material_ptr_16u_ = BtAlignedAllocator_btSoftBody_Material_ptr_16u_ (ForeignPtr (BtAlignedAllocator_btSoftBody_Material_ptr_16u_)) deriving (Eq,Ord,Show)
withBtAlignedAllocator_btSoftBody_Material_ptr_16u_ (BtAlignedAllocator_btSoftBody_Material_ptr_16u_ fptr) = withForeignPtr fptr
mkBtAlignedAllocator_btSoftBody_Material_ptr_16u_ p = liftM BtAlignedAllocator_btSoftBody_Material_ptr_16u_ $ newForeignPtr_ $ castPtr p
{#pointer O_btAlignedAllocator_btSoftBody_Node_ptr_16u_ as BtAlignedAllocator_btSoftBody_Node_ptr_16u_ foreign newtype nocode#}
newtype BtAlignedAllocator_btSoftBody_Node_ptr_16u_ = BtAlignedAllocator_btSoftBody_Node_ptr_16u_ (ForeignPtr (BtAlignedAllocator_btSoftBody_Node_ptr_16u_)) deriving (Eq,Ord,Show)
withBtAlignedAllocator_btSoftBody_Node_ptr_16u_ (BtAlignedAllocator_btSoftBody_Node_ptr_16u_ fptr) = withForeignPtr fptr
mkBtAlignedAllocator_btSoftBody_Node_ptr_16u_ p = liftM BtAlignedAllocator_btSoftBody_Node_ptr_16u_ $ newForeignPtr_ $ castPtr p
{#pointer O_btAlignedAllocator_btSoftBody_Node_16u_ as BtAlignedAllocator_btSoftBody_Node_16u_ foreign newtype nocode#}
newtype BtAlignedAllocator_btSoftBody_Node_16u_ = BtAlignedAllocator_btSoftBody_Node_16u_ (ForeignPtr (BtAlignedAllocator_btSoftBody_Node_16u_)) deriving (Eq,Ord,Show)
withBtAlignedAllocator_btSoftBody_Node_16u_ (BtAlignedAllocator_btSoftBody_Node_16u_ fptr) = withForeignPtr fptr
mkBtAlignedAllocator_btSoftBody_Node_16u_ p = liftM BtAlignedAllocator_btSoftBody_Node_16u_ $ newForeignPtr_ $ castPtr p
{#pointer O_btAlignedAllocator_btSoftBody_Note_16u_ as BtAlignedAllocator_btSoftBody_Note_16u_ foreign newtype nocode#}
newtype BtAlignedAllocator_btSoftBody_Note_16u_ = BtAlignedAllocator_btSoftBody_Note_16u_ (ForeignPtr (BtAlignedAllocator_btSoftBody_Note_16u_)) deriving (Eq,Ord,Show)
withBtAlignedAllocator_btSoftBody_Note_16u_ (BtAlignedAllocator_btSoftBody_Note_16u_ fptr) = withForeignPtr fptr
mkBtAlignedAllocator_btSoftBody_Note_16u_ p = liftM BtAlignedAllocator_btSoftBody_Note_16u_ $ newForeignPtr_ $ castPtr p
{#pointer O_btAlignedAllocator_btSoftBody_RContact_16u_ as BtAlignedAllocator_btSoftBody_RContact_16u_ foreign newtype nocode#}
newtype BtAlignedAllocator_btSoftBody_RContact_16u_ = BtAlignedAllocator_btSoftBody_RContact_16u_ (ForeignPtr (BtAlignedAllocator_btSoftBody_RContact_16u_)) deriving (Eq,Ord,Show)
withBtAlignedAllocator_btSoftBody_RContact_16u_ (BtAlignedAllocator_btSoftBody_RContact_16u_ fptr) = withForeignPtr fptr
mkBtAlignedAllocator_btSoftBody_RContact_16u_ p = liftM BtAlignedAllocator_btSoftBody_RContact_16u_ $ newForeignPtr_ $ castPtr p
{#pointer O_btAlignedAllocator_btSoftBody_SContact_16u_ as BtAlignedAllocator_btSoftBody_SContact_16u_ foreign newtype nocode#}
newtype BtAlignedAllocator_btSoftBody_SContact_16u_ = BtAlignedAllocator_btSoftBody_SContact_16u_ (ForeignPtr (BtAlignedAllocator_btSoftBody_SContact_16u_)) deriving (Eq,Ord,Show)
withBtAlignedAllocator_btSoftBody_SContact_16u_ (BtAlignedAllocator_btSoftBody_SContact_16u_ fptr) = withForeignPtr fptr
mkBtAlignedAllocator_btSoftBody_SContact_16u_ p = liftM BtAlignedAllocator_btSoftBody_SContact_16u_ $ newForeignPtr_ $ castPtr p
{#pointer O_btAlignedAllocator_btSoftBody_Tetra_16u_ as BtAlignedAllocator_btSoftBody_Tetra_16u_ foreign newtype nocode#}
newtype BtAlignedAllocator_btSoftBody_Tetra_16u_ = BtAlignedAllocator_btSoftBody_Tetra_16u_ (ForeignPtr (BtAlignedAllocator_btSoftBody_Tetra_16u_)) deriving (Eq,Ord,Show)
withBtAlignedAllocator_btSoftBody_Tetra_16u_ (BtAlignedAllocator_btSoftBody_Tetra_16u_ fptr) = withForeignPtr fptr
mkBtAlignedAllocator_btSoftBody_Tetra_16u_ p = liftM BtAlignedAllocator_btSoftBody_Tetra_16u_ $ newForeignPtr_ $ castPtr p
{#pointer O_btAlignedAllocator_btSoftBody_ePSolver___16u_ as BtAlignedAllocator_btSoftBody_ePSolver___16u_ foreign newtype nocode#}
newtype BtAlignedAllocator_btSoftBody_ePSolver___16u_ = BtAlignedAllocator_btSoftBody_ePSolver___16u_ (ForeignPtr (BtAlignedAllocator_btSoftBody_ePSolver___16u_)) deriving (Eq,Ord,Show)
withBtAlignedAllocator_btSoftBody_ePSolver___16u_ (BtAlignedAllocator_btSoftBody_ePSolver___16u_ fptr) = withForeignPtr fptr
mkBtAlignedAllocator_btSoftBody_ePSolver___16u_ p = liftM BtAlignedAllocator_btSoftBody_ePSolver___16u_ $ newForeignPtr_ $ castPtr p
{#pointer O_btAlignedAllocator_btSoftBody_eVSolver___16u_ as BtAlignedAllocator_btSoftBody_eVSolver___16u_ foreign newtype nocode#}
newtype BtAlignedAllocator_btSoftBody_eVSolver___16u_ = BtAlignedAllocator_btSoftBody_eVSolver___16u_ (ForeignPtr (BtAlignedAllocator_btSoftBody_eVSolver___16u_)) deriving (Eq,Ord,Show)
withBtAlignedAllocator_btSoftBody_eVSolver___16u_ (BtAlignedAllocator_btSoftBody_eVSolver___16u_ fptr) = withForeignPtr fptr
mkBtAlignedAllocator_btSoftBody_eVSolver___16u_ p = liftM BtAlignedAllocator_btSoftBody_eVSolver___16u_ $ newForeignPtr_ $ castPtr p
{#pointer O_btAlignedAllocator_btSolverConstraint_16u_ as BtAlignedAllocator_btSolverConstraint_16u_ foreign newtype nocode#}
newtype BtAlignedAllocator_btSolverConstraint_16u_ = BtAlignedAllocator_btSolverConstraint_16u_ (ForeignPtr (BtAlignedAllocator_btSolverConstraint_16u_)) deriving (Eq,Ord,Show)
withBtAlignedAllocator_btSolverConstraint_16u_ (BtAlignedAllocator_btSolverConstraint_16u_ fptr) = withForeignPtr fptr
mkBtAlignedAllocator_btSolverConstraint_16u_ p = liftM BtAlignedAllocator_btSolverConstraint_16u_ $ newForeignPtr_ $ castPtr p
{#pointer O_btAlignedAllocator_btSparseSdf_3__Cell_ptr_16u_ as BtAlignedAllocator_btSparseSdf_3__Cell_ptr_16u_ foreign newtype nocode#}
newtype BtAlignedAllocator_btSparseSdf_3__Cell_ptr_16u_ = BtAlignedAllocator_btSparseSdf_3__Cell_ptr_16u_ (ForeignPtr (BtAlignedAllocator_btSparseSdf_3__Cell_ptr_16u_)) deriving (Eq,Ord,Show)
withBtAlignedAllocator_btSparseSdf_3__Cell_ptr_16u_ (BtAlignedAllocator_btSparseSdf_3__Cell_ptr_16u_ fptr) = withForeignPtr fptr
mkBtAlignedAllocator_btSparseSdf_3__Cell_ptr_16u_ p = liftM BtAlignedAllocator_btSparseSdf_3__Cell_ptr_16u_ $ newForeignPtr_ $ castPtr p
{#pointer O_btAlignedAllocator_btTransform_16u_ as BtAlignedAllocator_btTransform_16u_ foreign newtype nocode#}
newtype BtAlignedAllocator_btTransform_16u_ = BtAlignedAllocator_btTransform_16u_ (ForeignPtr (BtAlignedAllocator_btTransform_16u_)) deriving (Eq,Ord,Show)
withBtAlignedAllocator_btTransform_16u_ (BtAlignedAllocator_btTransform_16u_ fptr) = withForeignPtr fptr
mkBtAlignedAllocator_btTransform_16u_ p = liftM BtAlignedAllocator_btTransform_16u_ $ newForeignPtr_ $ castPtr p
{#pointer O_btAlignedAllocator_btTriangleInfo_16u_ as BtAlignedAllocator_btTriangleInfo_16u_ foreign newtype nocode#}
newtype BtAlignedAllocator_btTriangleInfo_16u_ = BtAlignedAllocator_btTriangleInfo_16u_ (ForeignPtr (BtAlignedAllocator_btTriangleInfo_16u_)) deriving (Eq,Ord,Show)
withBtAlignedAllocator_btTriangleInfo_16u_ (BtAlignedAllocator_btTriangleInfo_16u_ fptr) = withForeignPtr fptr
mkBtAlignedAllocator_btTriangleInfo_16u_ p = liftM BtAlignedAllocator_btTriangleInfo_16u_ $ newForeignPtr_ $ castPtr p
{#pointer O_btAlignedAllocator_btTypedConstraint_ptr_16u_ as BtAlignedAllocator_btTypedConstraint_ptr_16u_ foreign newtype nocode#}
newtype BtAlignedAllocator_btTypedConstraint_ptr_16u_ = BtAlignedAllocator_btTypedConstraint_ptr_16u_ (ForeignPtr (BtAlignedAllocator_btTypedConstraint_ptr_16u_)) deriving (Eq,Ord,Show)
withBtAlignedAllocator_btTypedConstraint_ptr_16u_ (BtAlignedAllocator_btTypedConstraint_ptr_16u_ fptr) = withForeignPtr fptr
mkBtAlignedAllocator_btTypedConstraint_ptr_16u_ p = liftM BtAlignedAllocator_btTypedConstraint_ptr_16u_ $ newForeignPtr_ $ castPtr p
{#pointer O_btAlignedAllocator_btTypedConstraint_btConstraintInfo1_16u_ as BtAlignedAllocator_btTypedConstraint_btConstraintInfo1_16u_ foreign newtype nocode#}
newtype BtAlignedAllocator_btTypedConstraint_btConstraintInfo1_16u_ = BtAlignedAllocator_btTypedConstraint_btConstraintInfo1_16u_ (ForeignPtr (BtAlignedAllocator_btTypedConstraint_btConstraintInfo1_16u_)) deriving (Eq,Ord,Show)
withBtAlignedAllocator_btTypedConstraint_btConstraintInfo1_16u_ (BtAlignedAllocator_btTypedConstraint_btConstraintInfo1_16u_ fptr) = withForeignPtr fptr
mkBtAlignedAllocator_btTypedConstraint_btConstraintInfo1_16u_ p = liftM BtAlignedAllocator_btTypedConstraint_btConstraintInfo1_16u_ $ newForeignPtr_ $ castPtr p
{#pointer O_btAlignedAllocator_btVector3_16u_ as BtAlignedAllocator_btVector3_16u_ foreign newtype nocode#}
newtype BtAlignedAllocator_btVector3_16u_ = BtAlignedAllocator_btVector3_16u_ (ForeignPtr (BtAlignedAllocator_btVector3_16u_)) deriving (Eq,Ord,Show)
withBtAlignedAllocator_btVector3_16u_ (BtAlignedAllocator_btVector3_16u_ fptr) = withForeignPtr fptr
mkBtAlignedAllocator_btVector3_16u_ p = liftM BtAlignedAllocator_btVector3_16u_ $ newForeignPtr_ $ castPtr p
{#pointer O_btAlignedAllocator_btWheelInfo_16u_ as BtAlignedAllocator_btWheelInfo_16u_ foreign newtype nocode#}
newtype BtAlignedAllocator_btWheelInfo_16u_ = BtAlignedAllocator_btWheelInfo_16u_ (ForeignPtr (BtAlignedAllocator_btWheelInfo_16u_)) deriving (Eq,Ord,Show)
withBtAlignedAllocator_btWheelInfo_16u_ (BtAlignedAllocator_btWheelInfo_16u_ fptr) = withForeignPtr fptr
mkBtAlignedAllocator_btWheelInfo_16u_ p = liftM BtAlignedAllocator_btWheelInfo_16u_ $ newForeignPtr_ $ castPtr p
{#pointer O_btAlignedAllocator_charconst_ptr_16u_ as BtAlignedAllocator_charconst_ptr_16u_ foreign newtype nocode#}
newtype BtAlignedAllocator_charconst_ptr_16u_ = BtAlignedAllocator_charconst_ptr_16u_ (ForeignPtr (BtAlignedAllocator_charconst_ptr_16u_)) deriving (Eq,Ord,Show)
withBtAlignedAllocator_charconst_ptr_16u_ (BtAlignedAllocator_charconst_ptr_16u_ fptr) = withForeignPtr fptr
mkBtAlignedAllocator_charconst_ptr_16u_ p = liftM BtAlignedAllocator_charconst_ptr_16u_ $ newForeignPtr_ $ castPtr p
{#pointer O_btAlignedAllocator_char_ptr_16u_ as BtAlignedAllocator_char_ptr_16u_ foreign newtype nocode#}
newtype BtAlignedAllocator_char_ptr_16u_ = BtAlignedAllocator_char_ptr_16u_ (ForeignPtr (BtAlignedAllocator_char_ptr_16u_)) deriving (Eq,Ord,Show)
withBtAlignedAllocator_char_ptr_16u_ (BtAlignedAllocator_char_ptr_16u_ fptr) = withForeignPtr fptr
mkBtAlignedAllocator_char_ptr_16u_ p = liftM BtAlignedAllocator_char_ptr_16u_ $ newForeignPtr_ $ castPtr p
{#pointer O_btAlignedAllocator_float_16u_ as BtAlignedAllocator_float_16u_ foreign newtype nocode#}
newtype BtAlignedAllocator_float_16u_ = BtAlignedAllocator_float_16u_ (ForeignPtr (BtAlignedAllocator_float_16u_)) deriving (Eq,Ord,Show)
withBtAlignedAllocator_float_16u_ (BtAlignedAllocator_float_16u_ fptr) = withForeignPtr fptr
mkBtAlignedAllocator_float_16u_ p = liftM BtAlignedAllocator_float_16u_ $ newForeignPtr_ $ castPtr p
{#pointer O_btAlignedAllocator_int_16u_ as BtAlignedAllocator_int_16u_ foreign newtype nocode#}
newtype BtAlignedAllocator_int_16u_ = BtAlignedAllocator_int_16u_ (ForeignPtr (BtAlignedAllocator_int_16u_)) deriving (Eq,Ord,Show)
withBtAlignedAllocator_int_16u_ (BtAlignedAllocator_int_16u_ fptr) = withForeignPtr fptr
mkBtAlignedAllocator_int_16u_ p = liftM BtAlignedAllocator_int_16u_ $ newForeignPtr_ $ castPtr p
{#pointer O_btAlignedAllocator_short_ptr_16u_ as BtAlignedAllocator_short_ptr_16u_ foreign newtype nocode#}
newtype BtAlignedAllocator_short_ptr_16u_ = BtAlignedAllocator_short_ptr_16u_ (ForeignPtr (BtAlignedAllocator_short_ptr_16u_)) deriving (Eq,Ord,Show)
withBtAlignedAllocator_short_ptr_16u_ (BtAlignedAllocator_short_ptr_16u_ fptr) = withForeignPtr fptr
mkBtAlignedAllocator_short_ptr_16u_ p = liftM BtAlignedAllocator_short_ptr_16u_ $ newForeignPtr_ $ castPtr p
{#pointer O_btAlignedAllocator_short_16u_ as BtAlignedAllocator_short_16u_ foreign newtype nocode#}
newtype BtAlignedAllocator_short_16u_ = BtAlignedAllocator_short_16u_ (ForeignPtr (BtAlignedAllocator_short_16u_)) deriving (Eq,Ord,Show)
withBtAlignedAllocator_short_16u_ (BtAlignedAllocator_short_16u_ fptr) = withForeignPtr fptr
mkBtAlignedAllocator_short_16u_ p = liftM BtAlignedAllocator_short_16u_ $ newForeignPtr_ $ castPtr p
{#pointer O_btAlignedAllocator_unsignedint_16u_ as BtAlignedAllocator_unsignedint_16u_ foreign newtype nocode#}
newtype BtAlignedAllocator_unsignedint_16u_ = BtAlignedAllocator_unsignedint_16u_ (ForeignPtr (BtAlignedAllocator_unsignedint_16u_)) deriving (Eq,Ord,Show)
withBtAlignedAllocator_unsignedint_16u_ (BtAlignedAllocator_unsignedint_16u_ fptr) = withForeignPtr fptr
mkBtAlignedAllocator_unsignedint_16u_ p = liftM BtAlignedAllocator_unsignedint_16u_ $ newForeignPtr_ $ castPtr p
{#pointer O_btAlignedAllocator_unsignedshort_16u_ as BtAlignedAllocator_unsignedshort_16u_ foreign newtype nocode#}
newtype BtAlignedAllocator_unsignedshort_16u_ = BtAlignedAllocator_unsignedshort_16u_ (ForeignPtr (BtAlignedAllocator_unsignedshort_16u_)) deriving (Eq,Ord,Show)
withBtAlignedAllocator_unsignedshort_16u_ (BtAlignedAllocator_unsignedshort_16u_ fptr) = withForeignPtr fptr
mkBtAlignedAllocator_unsignedshort_16u_ p = liftM BtAlignedAllocator_unsignedshort_16u_ $ newForeignPtr_ $ castPtr p
{#pointer O_btAlignedAllocator_void_ptr_16u_ as BtAlignedAllocator_void_ptr_16u_ foreign newtype nocode#}
newtype BtAlignedAllocator_void_ptr_16u_ = BtAlignedAllocator_void_ptr_16u_ (ForeignPtr (BtAlignedAllocator_void_ptr_16u_)) deriving (Eq,Ord,Show)
withBtAlignedAllocator_void_ptr_16u_ (BtAlignedAllocator_void_ptr_16u_ fptr) = withForeignPtr fptr
mkBtAlignedAllocator_void_ptr_16u_ p = liftM BtAlignedAllocator_void_ptr_16u_ $ newForeignPtr_ $ castPtr p
{#pointer O_btAlignedObjectArray_BT_QUANTIZED_BVH_NODE_ as BtAlignedObjectArray_BT_QUANTIZED_BVH_NODE_ foreign newtype nocode#}
newtype BtAlignedObjectArray_BT_QUANTIZED_BVH_NODE_ = BtAlignedObjectArray_BT_QUANTIZED_BVH_NODE_ (ForeignPtr (BtAlignedObjectArray_BT_QUANTIZED_BVH_NODE_)) deriving (Eq,Ord,Show)
withBtAlignedObjectArray_BT_QUANTIZED_BVH_NODE_ (BtAlignedObjectArray_BT_QUANTIZED_BVH_NODE_ fptr) = withForeignPtr fptr
mkBtAlignedObjectArray_BT_QUANTIZED_BVH_NODE_ p = liftM BtAlignedObjectArray_BT_QUANTIZED_BVH_NODE_ $ newForeignPtr_ $ castPtr p
{#pointer O_btAlignedObjectArray_GIM_BVH_DATA_ as BtAlignedObjectArray_GIM_BVH_DATA_ foreign newtype nocode#}
newtype BtAlignedObjectArray_GIM_BVH_DATA_ = BtAlignedObjectArray_GIM_BVH_DATA_ (ForeignPtr (BtAlignedObjectArray_GIM_BVH_DATA_)) deriving (Eq,Ord,Show)
withBtAlignedObjectArray_GIM_BVH_DATA_ (BtAlignedObjectArray_GIM_BVH_DATA_ fptr) = withForeignPtr fptr
mkBtAlignedObjectArray_GIM_BVH_DATA_ p = liftM BtAlignedObjectArray_GIM_BVH_DATA_ $ newForeignPtr_ $ castPtr p
{#pointer O_btAlignedObjectArray_GIM_BVH_TREE_NODE_ as BtAlignedObjectArray_GIM_BVH_TREE_NODE_ foreign newtype nocode#}
newtype BtAlignedObjectArray_GIM_BVH_TREE_NODE_ = BtAlignedObjectArray_GIM_BVH_TREE_NODE_ (ForeignPtr (BtAlignedObjectArray_GIM_BVH_TREE_NODE_)) deriving (Eq,Ord,Show)
withBtAlignedObjectArray_GIM_BVH_TREE_NODE_ (BtAlignedObjectArray_GIM_BVH_TREE_NODE_ fptr) = withForeignPtr fptr
mkBtAlignedObjectArray_GIM_BVH_TREE_NODE_ p = liftM BtAlignedObjectArray_GIM_BVH_TREE_NODE_ $ newForeignPtr_ $ castPtr p
{#pointer O_btAlignedObjectArray_GIM_PAIR_ as BtAlignedObjectArray_GIM_PAIR_ foreign newtype nocode#}
newtype BtAlignedObjectArray_GIM_PAIR_ = BtAlignedObjectArray_GIM_PAIR_ (ForeignPtr (BtAlignedObjectArray_GIM_PAIR_)) deriving (Eq,Ord,Show)
withBtAlignedObjectArray_GIM_PAIR_ (BtAlignedObjectArray_GIM_PAIR_ fptr) = withForeignPtr fptr
mkBtAlignedObjectArray_GIM_PAIR_ p = liftM BtAlignedObjectArray_GIM_PAIR_ $ newForeignPtr_ $ castPtr p
{#pointer O_btAlignedObjectArray_bool_ as BtAlignedObjectArray_bool_ foreign newtype nocode#}
newtype BtAlignedObjectArray_bool_ = BtAlignedObjectArray_bool_ (ForeignPtr (BtAlignedObjectArray_bool_)) deriving (Eq,Ord,Show)
withBtAlignedObjectArray_bool_ (BtAlignedObjectArray_bool_ fptr) = withForeignPtr fptr
mkBtAlignedObjectArray_bool_ p = liftM BtAlignedObjectArray_bool_ $ newForeignPtr_ $ castPtr p
{#pointer O_btAlignedObjectArray_btActionInterface_ptr_ as BtAlignedObjectArray_btActionInterface_ptr_ foreign newtype nocode#}
newtype BtAlignedObjectArray_btActionInterface_ptr_ = BtAlignedObjectArray_btActionInterface_ptr_ (ForeignPtr (BtAlignedObjectArray_btActionInterface_ptr_)) deriving (Eq,Ord,Show)
withBtAlignedObjectArray_btActionInterface_ptr_ (BtAlignedObjectArray_btActionInterface_ptr_ fptr) = withForeignPtr fptr
mkBtAlignedObjectArray_btActionInterface_ptr_ p = liftM BtAlignedObjectArray_btActionInterface_ptr_ $ newForeignPtr_ $ castPtr p
{#pointer O_btAlignedObjectArray_btBroadphaseInterface_ptr_ as BtAlignedObjectArray_btBroadphaseInterface_ptr_ foreign newtype nocode#}
newtype BtAlignedObjectArray_btBroadphaseInterface_ptr_ = BtAlignedObjectArray_btBroadphaseInterface_ptr_ (ForeignPtr (BtAlignedObjectArray_btBroadphaseInterface_ptr_)) deriving (Eq,Ord,Show)
withBtAlignedObjectArray_btBroadphaseInterface_ptr_ (BtAlignedObjectArray_btBroadphaseInterface_ptr_ fptr) = withForeignPtr fptr
mkBtAlignedObjectArray_btBroadphaseInterface_ptr_ p = liftM BtAlignedObjectArray_btBroadphaseInterface_ptr_ $ newForeignPtr_ $ castPtr p
{#pointer O_btAlignedObjectArray_btBroadphasePair_ as BtAlignedObjectArray_btBroadphasePair_ foreign newtype nocode#}
newtype BtAlignedObjectArray_btBroadphasePair_ = BtAlignedObjectArray_btBroadphasePair_ (ForeignPtr (BtAlignedObjectArray_btBroadphasePair_)) deriving (Eq,Ord,Show)
withBtAlignedObjectArray_btBroadphasePair_ (BtAlignedObjectArray_btBroadphasePair_ fptr) = withForeignPtr fptr
mkBtAlignedObjectArray_btBroadphasePair_ p = liftM BtAlignedObjectArray_btBroadphasePair_ $ newForeignPtr_ $ castPtr p
{#pointer O_btAlignedObjectArray_btBvhSubtreeInfo_ as BtAlignedObjectArray_btBvhSubtreeInfo_ foreign newtype nocode#}
newtype BtAlignedObjectArray_btBvhSubtreeInfo_ = BtAlignedObjectArray_btBvhSubtreeInfo_ (ForeignPtr (BtAlignedObjectArray_btBvhSubtreeInfo_)) deriving (Eq,Ord,Show)
withBtAlignedObjectArray_btBvhSubtreeInfo_ (BtAlignedObjectArray_btBvhSubtreeInfo_ fptr) = withForeignPtr fptr
mkBtAlignedObjectArray_btBvhSubtreeInfo_ p = liftM BtAlignedObjectArray_btBvhSubtreeInfo_ $ newForeignPtr_ $ castPtr p
{#pointer O_btAlignedObjectArray_btChunk_ptr_ as BtAlignedObjectArray_btChunk_ptr_ foreign newtype nocode#}
newtype BtAlignedObjectArray_btChunk_ptr_ = BtAlignedObjectArray_btChunk_ptr_ (ForeignPtr (BtAlignedObjectArray_btChunk_ptr_)) deriving (Eq,Ord,Show)
withBtAlignedObjectArray_btChunk_ptr_ (BtAlignedObjectArray_btChunk_ptr_ fptr) = withForeignPtr fptr
mkBtAlignedObjectArray_btChunk_ptr_ p = liftM BtAlignedObjectArray_btChunk_ptr_ $ newForeignPtr_ $ castPtr p
{#pointer O_btAlignedObjectArray_btCollisionObject_ptr_ as BtAlignedObjectArray_btCollisionObject_ptr_ foreign newtype nocode#}
newtype BtAlignedObjectArray_btCollisionObject_ptr_ = BtAlignedObjectArray_btCollisionObject_ptr_ (ForeignPtr (BtAlignedObjectArray_btCollisionObject_ptr_)) deriving (Eq,Ord,Show)
withBtAlignedObjectArray_btCollisionObject_ptr_ (BtAlignedObjectArray_btCollisionObject_ptr_ fptr) = withForeignPtr fptr
mkBtAlignedObjectArray_btCollisionObject_ptr_ p = liftM BtAlignedObjectArray_btCollisionObject_ptr_ $ newForeignPtr_ $ castPtr p
{#pointer O_btAlignedObjectArray_btCollisionShape_ptr_ as BtAlignedObjectArray_btCollisionShape_ptr_ foreign newtype nocode#}
newtype BtAlignedObjectArray_btCollisionShape_ptr_ = BtAlignedObjectArray_btCollisionShape_ptr_ (ForeignPtr (BtAlignedObjectArray_btCollisionShape_ptr_)) deriving (Eq,Ord,Show)
withBtAlignedObjectArray_btCollisionShape_ptr_ (BtAlignedObjectArray_btCollisionShape_ptr_ fptr) = withForeignPtr fptr
mkBtAlignedObjectArray_btCollisionShape_ptr_ p = liftM BtAlignedObjectArray_btCollisionShape_ptr_ $ newForeignPtr_ $ castPtr p
{#pointer O_btAlignedObjectArray_btCompoundShapeChild_ as BtAlignedObjectArray_btCompoundShapeChild_ foreign newtype nocode#}
newtype BtAlignedObjectArray_btCompoundShapeChild_ = BtAlignedObjectArray_btCompoundShapeChild_ (ForeignPtr (BtAlignedObjectArray_btCompoundShapeChild_)) deriving (Eq,Ord,Show)
withBtAlignedObjectArray_btCompoundShapeChild_ (BtAlignedObjectArray_btCompoundShapeChild_ fptr) = withForeignPtr fptr
mkBtAlignedObjectArray_btCompoundShapeChild_ p = liftM BtAlignedObjectArray_btCompoundShapeChild_ $ newForeignPtr_ $ castPtr p
{#pointer O_btAlignedObjectArray_btDbvt_sStkNN_ as BtAlignedObjectArray_btDbvt_sStkNN_ foreign newtype nocode#}
newtype BtAlignedObjectArray_btDbvt_sStkNN_ = BtAlignedObjectArray_btDbvt_sStkNN_ (ForeignPtr (BtAlignedObjectArray_btDbvt_sStkNN_)) deriving (Eq,Ord,Show)
withBtAlignedObjectArray_btDbvt_sStkNN_ (BtAlignedObjectArray_btDbvt_sStkNN_ fptr) = withForeignPtr fptr
mkBtAlignedObjectArray_btDbvt_sStkNN_ p = liftM BtAlignedObjectArray_btDbvt_sStkNN_ $ newForeignPtr_ $ castPtr p
{#pointer O_btAlignedObjectArray_btDbvt_sStkNP_ as BtAlignedObjectArray_btDbvt_sStkNP_ foreign newtype nocode#}
newtype BtAlignedObjectArray_btDbvt_sStkNP_ = BtAlignedObjectArray_btDbvt_sStkNP_ (ForeignPtr (BtAlignedObjectArray_btDbvt_sStkNP_)) deriving (Eq,Ord,Show)
withBtAlignedObjectArray_btDbvt_sStkNP_ (BtAlignedObjectArray_btDbvt_sStkNP_ fptr) = withForeignPtr fptr
mkBtAlignedObjectArray_btDbvt_sStkNP_ p = liftM BtAlignedObjectArray_btDbvt_sStkNP_ $ newForeignPtr_ $ castPtr p
{#pointer O_btAlignedObjectArray_btDbvt_sStkNPS_ as BtAlignedObjectArray_btDbvt_sStkNPS_ foreign newtype nocode#}
newtype BtAlignedObjectArray_btDbvt_sStkNPS_ = BtAlignedObjectArray_btDbvt_sStkNPS_ (ForeignPtr (BtAlignedObjectArray_btDbvt_sStkNPS_)) deriving (Eq,Ord,Show)
withBtAlignedObjectArray_btDbvt_sStkNPS_ (BtAlignedObjectArray_btDbvt_sStkNPS_ fptr) = withForeignPtr fptr
mkBtAlignedObjectArray_btDbvt_sStkNPS_ p = liftM BtAlignedObjectArray_btDbvt_sStkNPS_ $ newForeignPtr_ $ castPtr p
{#pointer O_btAlignedObjectArray_btDbvtNodeconst_ptr_ as BtAlignedObjectArray_btDbvtNodeconst_ptr_ foreign newtype nocode#}
newtype BtAlignedObjectArray_btDbvtNodeconst_ptr_ = BtAlignedObjectArray_btDbvtNodeconst_ptr_ (ForeignPtr (BtAlignedObjectArray_btDbvtNodeconst_ptr_)) deriving (Eq,Ord,Show)
withBtAlignedObjectArray_btDbvtNodeconst_ptr_ (BtAlignedObjectArray_btDbvtNodeconst_ptr_ fptr) = withForeignPtr fptr
mkBtAlignedObjectArray_btDbvtNodeconst_ptr_ p = liftM BtAlignedObjectArray_btDbvtNodeconst_ptr_ $ newForeignPtr_ $ castPtr p
{#pointer O_btAlignedObjectArray_btGImpactMeshShapePart_ptr_ as BtAlignedObjectArray_btGImpactMeshShapePart_ptr_ foreign newtype nocode#}
newtype BtAlignedObjectArray_btGImpactMeshShapePart_ptr_ = BtAlignedObjectArray_btGImpactMeshShapePart_ptr_ (ForeignPtr (BtAlignedObjectArray_btGImpactMeshShapePart_ptr_)) deriving (Eq,Ord,Show)
withBtAlignedObjectArray_btGImpactMeshShapePart_ptr_ (BtAlignedObjectArray_btGImpactMeshShapePart_ptr_ fptr) = withForeignPtr fptr
mkBtAlignedObjectArray_btGImpactMeshShapePart_ptr_ p = liftM BtAlignedObjectArray_btGImpactMeshShapePart_ptr_ $ newForeignPtr_ $ castPtr p
{#pointer O_btAlignedObjectArray_btHashInt_ as BtAlignedObjectArray_btHashInt_ foreign newtype nocode#}
newtype BtAlignedObjectArray_btHashInt_ = BtAlignedObjectArray_btHashInt_ (ForeignPtr (BtAlignedObjectArray_btHashInt_)) deriving (Eq,Ord,Show)
withBtAlignedObjectArray_btHashInt_ (BtAlignedObjectArray_btHashInt_ fptr) = withForeignPtr fptr
mkBtAlignedObjectArray_btHashInt_ p = liftM BtAlignedObjectArray_btHashInt_ $ newForeignPtr_ $ castPtr p
{#pointer O_btAlignedObjectArray_btHashPtr_ as BtAlignedObjectArray_btHashPtr_ foreign newtype nocode#}
newtype BtAlignedObjectArray_btHashPtr_ = BtAlignedObjectArray_btHashPtr_ (ForeignPtr (BtAlignedObjectArray_btHashPtr_)) deriving (Eq,Ord,Show)
withBtAlignedObjectArray_btHashPtr_ (BtAlignedObjectArray_btHashPtr_ fptr) = withForeignPtr fptr
mkBtAlignedObjectArray_btHashPtr_ p = liftM BtAlignedObjectArray_btHashPtr_ $ newForeignPtr_ $ castPtr p
{#pointer O_btAlignedObjectArray_btHashString_ as BtAlignedObjectArray_btHashString_ foreign newtype nocode#}
newtype BtAlignedObjectArray_btHashString_ = BtAlignedObjectArray_btHashString_ (ForeignPtr (BtAlignedObjectArray_btHashString_)) deriving (Eq,Ord,Show)
withBtAlignedObjectArray_btHashString_ (BtAlignedObjectArray_btHashString_ fptr) = withForeignPtr fptr
mkBtAlignedObjectArray_btHashString_ p = liftM BtAlignedObjectArray_btHashString_ $ newForeignPtr_ $ castPtr p
{#pointer O_btAlignedObjectArray_btIndexedMesh_ as BtAlignedObjectArray_btIndexedMesh_ foreign newtype nocode#}
newtype BtAlignedObjectArray_btIndexedMesh_ = BtAlignedObjectArray_btIndexedMesh_ (ForeignPtr (BtAlignedObjectArray_btIndexedMesh_)) deriving (Eq,Ord,Show)
withBtAlignedObjectArray_btIndexedMesh_ (BtAlignedObjectArray_btIndexedMesh_ fptr) = withForeignPtr fptr
mkBtAlignedObjectArray_btIndexedMesh_ p = liftM BtAlignedObjectArray_btIndexedMesh_ $ newForeignPtr_ $ castPtr p
{#pointer O_btAlignedObjectArray_btMultiSapBroadphase_btBridgeProxy_ptr_ as BtAlignedObjectArray_btMultiSapBroadphase_btBridgeProxy_ptr_ foreign newtype nocode#}
newtype BtAlignedObjectArray_btMultiSapBroadphase_btBridgeProxy_ptr_ = BtAlignedObjectArray_btMultiSapBroadphase_btBridgeProxy_ptr_ (ForeignPtr (BtAlignedObjectArray_btMultiSapBroadphase_btBridgeProxy_ptr_)) deriving (Eq,Ord,Show)
withBtAlignedObjectArray_btMultiSapBroadphase_btBridgeProxy_ptr_ (BtAlignedObjectArray_btMultiSapBroadphase_btBridgeProxy_ptr_ fptr) = withForeignPtr fptr
mkBtAlignedObjectArray_btMultiSapBroadphase_btBridgeProxy_ptr_ p = liftM BtAlignedObjectArray_btMultiSapBroadphase_btBridgeProxy_ptr_ $ newForeignPtr_ $ castPtr p
{#pointer O_btAlignedObjectArray_btMultiSapBroadphase_btMultiSapProxy_ptr_ as BtAlignedObjectArray_btMultiSapBroadphase_btMultiSapProxy_ptr_ foreign newtype nocode#}
newtype BtAlignedObjectArray_btMultiSapBroadphase_btMultiSapProxy_ptr_ = BtAlignedObjectArray_btMultiSapBroadphase_btMultiSapProxy_ptr_ (ForeignPtr (BtAlignedObjectArray_btMultiSapBroadphase_btMultiSapProxy_ptr_)) deriving (Eq,Ord,Show)
withBtAlignedObjectArray_btMultiSapBroadphase_btMultiSapProxy_ptr_ (BtAlignedObjectArray_btMultiSapBroadphase_btMultiSapProxy_ptr_ fptr) = withForeignPtr fptr
mkBtAlignedObjectArray_btMultiSapBroadphase_btMultiSapProxy_ptr_ p = liftM BtAlignedObjectArray_btMultiSapBroadphase_btMultiSapProxy_ptr_ $ newForeignPtr_ $ castPtr p
{#pointer O_btAlignedObjectArray_btOptimizedBvhNode_ as BtAlignedObjectArray_btOptimizedBvhNode_ foreign newtype nocode#}
newtype BtAlignedObjectArray_btOptimizedBvhNode_ = BtAlignedObjectArray_btOptimizedBvhNode_ (ForeignPtr (BtAlignedObjectArray_btOptimizedBvhNode_)) deriving (Eq,Ord,Show)
withBtAlignedObjectArray_btOptimizedBvhNode_ (BtAlignedObjectArray_btOptimizedBvhNode_ fptr) = withForeignPtr fptr
mkBtAlignedObjectArray_btOptimizedBvhNode_ p = liftM BtAlignedObjectArray_btOptimizedBvhNode_ $ newForeignPtr_ $ castPtr p
{#pointer O_btAlignedObjectArray_btPersistentManifold_ptr_ as BtAlignedObjectArray_btPersistentManifold_ptr_ foreign newtype nocode#}
newtype BtAlignedObjectArray_btPersistentManifold_ptr_ = BtAlignedObjectArray_btPersistentManifold_ptr_ (ForeignPtr (BtAlignedObjectArray_btPersistentManifold_ptr_)) deriving (Eq,Ord,Show)
withBtAlignedObjectArray_btPersistentManifold_ptr_ (BtAlignedObjectArray_btPersistentManifold_ptr_ fptr) = withForeignPtr fptr
mkBtAlignedObjectArray_btPersistentManifold_ptr_ p = liftM BtAlignedObjectArray_btPersistentManifold_ptr_ $ newForeignPtr_ $ castPtr p
{#pointer O_btAlignedObjectArray_btPointerUid_ as BtAlignedObjectArray_btPointerUid_ foreign newtype nocode#}
newtype BtAlignedObjectArray_btPointerUid_ = BtAlignedObjectArray_btPointerUid_ (ForeignPtr (BtAlignedObjectArray_btPointerUid_)) deriving (Eq,Ord,Show)
withBtAlignedObjectArray_btPointerUid_ (BtAlignedObjectArray_btPointerUid_ fptr) = withForeignPtr fptr
mkBtAlignedObjectArray_btPointerUid_ p = liftM BtAlignedObjectArray_btPointerUid_ $ newForeignPtr_ $ castPtr p
{#pointer O_btAlignedObjectArray_btQuantizedBvhNode_ as BtAlignedObjectArray_btQuantizedBvhNode_ foreign newtype nocode#}
newtype BtAlignedObjectArray_btQuantizedBvhNode_ = BtAlignedObjectArray_btQuantizedBvhNode_ (ForeignPtr (BtAlignedObjectArray_btQuantizedBvhNode_)) deriving (Eq,Ord,Show)
withBtAlignedObjectArray_btQuantizedBvhNode_ (BtAlignedObjectArray_btQuantizedBvhNode_ fptr) = withForeignPtr fptr
mkBtAlignedObjectArray_btQuantizedBvhNode_ p = liftM BtAlignedObjectArray_btQuantizedBvhNode_ $ newForeignPtr_ $ castPtr p
{#pointer O_btAlignedObjectArray_btRigidBody_ptr_ as BtAlignedObjectArray_btRigidBody_ptr_ foreign newtype nocode#}
newtype BtAlignedObjectArray_btRigidBody_ptr_ = BtAlignedObjectArray_btRigidBody_ptr_ (ForeignPtr (BtAlignedObjectArray_btRigidBody_ptr_)) deriving (Eq,Ord,Show)
withBtAlignedObjectArray_btRigidBody_ptr_ (BtAlignedObjectArray_btRigidBody_ptr_ fptr) = withForeignPtr fptr
mkBtAlignedObjectArray_btRigidBody_ptr_ p = liftM BtAlignedObjectArray_btRigidBody_ptr_ $ newForeignPtr_ $ castPtr p
{#pointer O_btAlignedObjectArray_btSoftBody_ptr_ as BtAlignedObjectArray_btSoftBody_ptr_ foreign newtype nocode#}
newtype BtAlignedObjectArray_btSoftBody_ptr_ = BtAlignedObjectArray_btSoftBody_ptr_ (ForeignPtr (BtAlignedObjectArray_btSoftBody_ptr_)) deriving (Eq,Ord,Show)
withBtAlignedObjectArray_btSoftBody_ptr_ (BtAlignedObjectArray_btSoftBody_ptr_ fptr) = withForeignPtr fptr
mkBtAlignedObjectArray_btSoftBody_ptr_ p = liftM BtAlignedObjectArray_btSoftBody_ptr_ $ newForeignPtr_ $ castPtr p
{#pointer O_btAlignedObjectArray_btSoftBody_Anchor_ as BtAlignedObjectArray_btSoftBody_Anchor_ foreign newtype nocode#}
newtype BtAlignedObjectArray_btSoftBody_Anchor_ = BtAlignedObjectArray_btSoftBody_Anchor_ (ForeignPtr (BtAlignedObjectArray_btSoftBody_Anchor_)) deriving (Eq,Ord,Show)
withBtAlignedObjectArray_btSoftBody_Anchor_ (BtAlignedObjectArray_btSoftBody_Anchor_ fptr) = withForeignPtr fptr
mkBtAlignedObjectArray_btSoftBody_Anchor_ p = liftM BtAlignedObjectArray_btSoftBody_Anchor_ $ newForeignPtr_ $ castPtr p
{#pointer O_btAlignedObjectArray_btSoftBody_Cluster_ptr_ as BtAlignedObjectArray_btSoftBody_Cluster_ptr_ foreign newtype nocode#}
newtype BtAlignedObjectArray_btSoftBody_Cluster_ptr_ = BtAlignedObjectArray_btSoftBody_Cluster_ptr_ (ForeignPtr (BtAlignedObjectArray_btSoftBody_Cluster_ptr_)) deriving (Eq,Ord,Show)
withBtAlignedObjectArray_btSoftBody_Cluster_ptr_ (BtAlignedObjectArray_btSoftBody_Cluster_ptr_ fptr) = withForeignPtr fptr
mkBtAlignedObjectArray_btSoftBody_Cluster_ptr_ p = liftM BtAlignedObjectArray_btSoftBody_Cluster_ptr_ $ newForeignPtr_ $ castPtr p
{#pointer O_btAlignedObjectArray_btSoftBody_Face_ as BtAlignedObjectArray_btSoftBody_Face_ foreign newtype nocode#}
newtype BtAlignedObjectArray_btSoftBody_Face_ = BtAlignedObjectArray_btSoftBody_Face_ (ForeignPtr (BtAlignedObjectArray_btSoftBody_Face_)) deriving (Eq,Ord,Show)
withBtAlignedObjectArray_btSoftBody_Face_ (BtAlignedObjectArray_btSoftBody_Face_ fptr) = withForeignPtr fptr
mkBtAlignedObjectArray_btSoftBody_Face_ p = liftM BtAlignedObjectArray_btSoftBody_Face_ $ newForeignPtr_ $ castPtr p
{#pointer O_btAlignedObjectArray_btSoftBody_Joint_ptr_ as BtAlignedObjectArray_btSoftBody_Joint_ptr_ foreign newtype nocode#}
newtype BtAlignedObjectArray_btSoftBody_Joint_ptr_ = BtAlignedObjectArray_btSoftBody_Joint_ptr_ (ForeignPtr (BtAlignedObjectArray_btSoftBody_Joint_ptr_)) deriving (Eq,Ord,Show)
withBtAlignedObjectArray_btSoftBody_Joint_ptr_ (BtAlignedObjectArray_btSoftBody_Joint_ptr_ fptr) = withForeignPtr fptr
mkBtAlignedObjectArray_btSoftBody_Joint_ptr_ p = liftM BtAlignedObjectArray_btSoftBody_Joint_ptr_ $ newForeignPtr_ $ castPtr p
{#pointer O_btAlignedObjectArray_btSoftBody_Link_ as BtAlignedObjectArray_btSoftBody_Link_ foreign newtype nocode#}
newtype BtAlignedObjectArray_btSoftBody_Link_ = BtAlignedObjectArray_btSoftBody_Link_ (ForeignPtr (BtAlignedObjectArray_btSoftBody_Link_)) deriving (Eq,Ord,Show)
withBtAlignedObjectArray_btSoftBody_Link_ (BtAlignedObjectArray_btSoftBody_Link_ fptr) = withForeignPtr fptr
mkBtAlignedObjectArray_btSoftBody_Link_ p = liftM BtAlignedObjectArray_btSoftBody_Link_ $ newForeignPtr_ $ castPtr p
{#pointer O_btAlignedObjectArray_btSoftBody_Material_ptr_ as BtAlignedObjectArray_btSoftBody_Material_ptr_ foreign newtype nocode#}
newtype BtAlignedObjectArray_btSoftBody_Material_ptr_ = BtAlignedObjectArray_btSoftBody_Material_ptr_ (ForeignPtr (BtAlignedObjectArray_btSoftBody_Material_ptr_)) deriving (Eq,Ord,Show)
withBtAlignedObjectArray_btSoftBody_Material_ptr_ (BtAlignedObjectArray_btSoftBody_Material_ptr_ fptr) = withForeignPtr fptr
mkBtAlignedObjectArray_btSoftBody_Material_ptr_ p = liftM BtAlignedObjectArray_btSoftBody_Material_ptr_ $ newForeignPtr_ $ castPtr p
{#pointer O_btAlignedObjectArray_btSoftBody_Node_ptr_ as BtAlignedObjectArray_btSoftBody_Node_ptr_ foreign newtype nocode#}
newtype BtAlignedObjectArray_btSoftBody_Node_ptr_ = BtAlignedObjectArray_btSoftBody_Node_ptr_ (ForeignPtr (BtAlignedObjectArray_btSoftBody_Node_ptr_)) deriving (Eq,Ord,Show)
withBtAlignedObjectArray_btSoftBody_Node_ptr_ (BtAlignedObjectArray_btSoftBody_Node_ptr_ fptr) = withForeignPtr fptr
mkBtAlignedObjectArray_btSoftBody_Node_ptr_ p = liftM BtAlignedObjectArray_btSoftBody_Node_ptr_ $ newForeignPtr_ $ castPtr p
{#pointer O_btAlignedObjectArray_btSoftBody_Node_ as BtAlignedObjectArray_btSoftBody_Node_ foreign newtype nocode#}
newtype BtAlignedObjectArray_btSoftBody_Node_ = BtAlignedObjectArray_btSoftBody_Node_ (ForeignPtr (BtAlignedObjectArray_btSoftBody_Node_)) deriving (Eq,Ord,Show)
withBtAlignedObjectArray_btSoftBody_Node_ (BtAlignedObjectArray_btSoftBody_Node_ fptr) = withForeignPtr fptr
mkBtAlignedObjectArray_btSoftBody_Node_ p = liftM BtAlignedObjectArray_btSoftBody_Node_ $ newForeignPtr_ $ castPtr p
{#pointer O_btAlignedObjectArray_btSoftBody_Note_ as BtAlignedObjectArray_btSoftBody_Note_ foreign newtype nocode#}
newtype BtAlignedObjectArray_btSoftBody_Note_ = BtAlignedObjectArray_btSoftBody_Note_ (ForeignPtr (BtAlignedObjectArray_btSoftBody_Note_)) deriving (Eq,Ord,Show)
withBtAlignedObjectArray_btSoftBody_Note_ (BtAlignedObjectArray_btSoftBody_Note_ fptr) = withForeignPtr fptr
mkBtAlignedObjectArray_btSoftBody_Note_ p = liftM BtAlignedObjectArray_btSoftBody_Note_ $ newForeignPtr_ $ castPtr p
{#pointer O_btAlignedObjectArray_btSoftBody_RContact_ as BtAlignedObjectArray_btSoftBody_RContact_ foreign newtype nocode#}
newtype BtAlignedObjectArray_btSoftBody_RContact_ = BtAlignedObjectArray_btSoftBody_RContact_ (ForeignPtr (BtAlignedObjectArray_btSoftBody_RContact_)) deriving (Eq,Ord,Show)
withBtAlignedObjectArray_btSoftBody_RContact_ (BtAlignedObjectArray_btSoftBody_RContact_ fptr) = withForeignPtr fptr
mkBtAlignedObjectArray_btSoftBody_RContact_ p = liftM BtAlignedObjectArray_btSoftBody_RContact_ $ newForeignPtr_ $ castPtr p
{#pointer O_btAlignedObjectArray_btSoftBody_SContact_ as BtAlignedObjectArray_btSoftBody_SContact_ foreign newtype nocode#}
newtype BtAlignedObjectArray_btSoftBody_SContact_ = BtAlignedObjectArray_btSoftBody_SContact_ (ForeignPtr (BtAlignedObjectArray_btSoftBody_SContact_)) deriving (Eq,Ord,Show)
withBtAlignedObjectArray_btSoftBody_SContact_ (BtAlignedObjectArray_btSoftBody_SContact_ fptr) = withForeignPtr fptr
mkBtAlignedObjectArray_btSoftBody_SContact_ p = liftM BtAlignedObjectArray_btSoftBody_SContact_ $ newForeignPtr_ $ castPtr p
{#pointer O_btAlignedObjectArray_btSoftBody_Tetra_ as BtAlignedObjectArray_btSoftBody_Tetra_ foreign newtype nocode#}
newtype BtAlignedObjectArray_btSoftBody_Tetra_ = BtAlignedObjectArray_btSoftBody_Tetra_ (ForeignPtr (BtAlignedObjectArray_btSoftBody_Tetra_)) deriving (Eq,Ord,Show)
withBtAlignedObjectArray_btSoftBody_Tetra_ (BtAlignedObjectArray_btSoftBody_Tetra_ fptr) = withForeignPtr fptr
mkBtAlignedObjectArray_btSoftBody_Tetra_ p = liftM BtAlignedObjectArray_btSoftBody_Tetra_ $ newForeignPtr_ $ castPtr p
{#pointer O_btAlignedObjectArray_btSoftBody_ePSolver___ as BtAlignedObjectArray_btSoftBody_ePSolver___ foreign newtype nocode#}
newtype BtAlignedObjectArray_btSoftBody_ePSolver___ = BtAlignedObjectArray_btSoftBody_ePSolver___ (ForeignPtr (BtAlignedObjectArray_btSoftBody_ePSolver___)) deriving (Eq,Ord,Show)
withBtAlignedObjectArray_btSoftBody_ePSolver___ (BtAlignedObjectArray_btSoftBody_ePSolver___ fptr) = withForeignPtr fptr
mkBtAlignedObjectArray_btSoftBody_ePSolver___ p = liftM BtAlignedObjectArray_btSoftBody_ePSolver___ $ newForeignPtr_ $ castPtr p
{#pointer O_btAlignedObjectArray_btSoftBody_eVSolver___ as BtAlignedObjectArray_btSoftBody_eVSolver___ foreign newtype nocode#}
newtype BtAlignedObjectArray_btSoftBody_eVSolver___ = BtAlignedObjectArray_btSoftBody_eVSolver___ (ForeignPtr (BtAlignedObjectArray_btSoftBody_eVSolver___)) deriving (Eq,Ord,Show)
withBtAlignedObjectArray_btSoftBody_eVSolver___ (BtAlignedObjectArray_btSoftBody_eVSolver___ fptr) = withForeignPtr fptr
mkBtAlignedObjectArray_btSoftBody_eVSolver___ p = liftM BtAlignedObjectArray_btSoftBody_eVSolver___ $ newForeignPtr_ $ castPtr p
{#pointer O_btAlignedObjectArray_btSolverConstraint_ as BtAlignedObjectArray_btSolverConstraint_ foreign newtype nocode#}
newtype BtAlignedObjectArray_btSolverConstraint_ = BtAlignedObjectArray_btSolverConstraint_ (ForeignPtr (BtAlignedObjectArray_btSolverConstraint_)) deriving (Eq,Ord,Show)
withBtAlignedObjectArray_btSolverConstraint_ (BtAlignedObjectArray_btSolverConstraint_ fptr) = withForeignPtr fptr
mkBtAlignedObjectArray_btSolverConstraint_ p = liftM BtAlignedObjectArray_btSolverConstraint_ $ newForeignPtr_ $ castPtr p
{#pointer O_btAlignedObjectArray_btSparseSdf_3__Cell_ptr_ as BtAlignedObjectArray_btSparseSdf_3__Cell_ptr_ foreign newtype nocode#}
newtype BtAlignedObjectArray_btSparseSdf_3__Cell_ptr_ = BtAlignedObjectArray_btSparseSdf_3__Cell_ptr_ (ForeignPtr (BtAlignedObjectArray_btSparseSdf_3__Cell_ptr_)) deriving (Eq,Ord,Show)
withBtAlignedObjectArray_btSparseSdf_3__Cell_ptr_ (BtAlignedObjectArray_btSparseSdf_3__Cell_ptr_ fptr) = withForeignPtr fptr
mkBtAlignedObjectArray_btSparseSdf_3__Cell_ptr_ p = liftM BtAlignedObjectArray_btSparseSdf_3__Cell_ptr_ $ newForeignPtr_ $ castPtr p
{#pointer O_btAlignedObjectArray_btTransform_ as BtAlignedObjectArray_btTransform_ foreign newtype nocode#}
newtype BtAlignedObjectArray_btTransform_ = BtAlignedObjectArray_btTransform_ (ForeignPtr (BtAlignedObjectArray_btTransform_)) deriving (Eq,Ord,Show)
withBtAlignedObjectArray_btTransform_ (BtAlignedObjectArray_btTransform_ fptr) = withForeignPtr fptr
mkBtAlignedObjectArray_btTransform_ p = liftM BtAlignedObjectArray_btTransform_ $ newForeignPtr_ $ castPtr p
{#pointer O_btAlignedObjectArray_btTriangleInfo_ as BtAlignedObjectArray_btTriangleInfo_ foreign newtype nocode#}
newtype BtAlignedObjectArray_btTriangleInfo_ = BtAlignedObjectArray_btTriangleInfo_ (ForeignPtr (BtAlignedObjectArray_btTriangleInfo_)) deriving (Eq,Ord,Show)
withBtAlignedObjectArray_btTriangleInfo_ (BtAlignedObjectArray_btTriangleInfo_ fptr) = withForeignPtr fptr
mkBtAlignedObjectArray_btTriangleInfo_ p = liftM BtAlignedObjectArray_btTriangleInfo_ $ newForeignPtr_ $ castPtr p
{#pointer O_btAlignedObjectArray_btTypedConstraint_ptr_ as BtAlignedObjectArray_btTypedConstraint_ptr_ foreign newtype nocode#}
newtype BtAlignedObjectArray_btTypedConstraint_ptr_ = BtAlignedObjectArray_btTypedConstraint_ptr_ (ForeignPtr (BtAlignedObjectArray_btTypedConstraint_ptr_)) deriving (Eq,Ord,Show)
withBtAlignedObjectArray_btTypedConstraint_ptr_ (BtAlignedObjectArray_btTypedConstraint_ptr_ fptr) = withForeignPtr fptr
mkBtAlignedObjectArray_btTypedConstraint_ptr_ p = liftM BtAlignedObjectArray_btTypedConstraint_ptr_ $ newForeignPtr_ $ castPtr p
{#pointer O_btAlignedObjectArray_btTypedConstraint_btConstraintInfo1_ as BtAlignedObjectArray_btTypedConstraint_btConstraintInfo1_ foreign newtype nocode#}
newtype BtAlignedObjectArray_btTypedConstraint_btConstraintInfo1_ = BtAlignedObjectArray_btTypedConstraint_btConstraintInfo1_ (ForeignPtr (BtAlignedObjectArray_btTypedConstraint_btConstraintInfo1_)) deriving (Eq,Ord,Show)
withBtAlignedObjectArray_btTypedConstraint_btConstraintInfo1_ (BtAlignedObjectArray_btTypedConstraint_btConstraintInfo1_ fptr) = withForeignPtr fptr
mkBtAlignedObjectArray_btTypedConstraint_btConstraintInfo1_ p = liftM BtAlignedObjectArray_btTypedConstraint_btConstraintInfo1_ $ newForeignPtr_ $ castPtr p
{#pointer O_btAlignedObjectArray_btVector3_ as BtAlignedObjectArray_btVector3_ foreign newtype nocode#}
newtype BtAlignedObjectArray_btVector3_ = BtAlignedObjectArray_btVector3_ (ForeignPtr (BtAlignedObjectArray_btVector3_)) deriving (Eq,Ord,Show)
withBtAlignedObjectArray_btVector3_ (BtAlignedObjectArray_btVector3_ fptr) = withForeignPtr fptr
mkBtAlignedObjectArray_btVector3_ p = liftM BtAlignedObjectArray_btVector3_ $ newForeignPtr_ $ castPtr p
{#pointer O_btAlignedObjectArray_btWheelInfo_ as BtAlignedObjectArray_btWheelInfo_ foreign newtype nocode#}
newtype BtAlignedObjectArray_btWheelInfo_ = BtAlignedObjectArray_btWheelInfo_ (ForeignPtr (BtAlignedObjectArray_btWheelInfo_)) deriving (Eq,Ord,Show)
withBtAlignedObjectArray_btWheelInfo_ (BtAlignedObjectArray_btWheelInfo_ fptr) = withForeignPtr fptr
mkBtAlignedObjectArray_btWheelInfo_ p = liftM BtAlignedObjectArray_btWheelInfo_ $ newForeignPtr_ $ castPtr p
{#pointer O_btAlignedObjectArray_charconst_ptr_ as BtAlignedObjectArray_charconst_ptr_ foreign newtype nocode#}
newtype BtAlignedObjectArray_charconst_ptr_ = BtAlignedObjectArray_charconst_ptr_ (ForeignPtr (BtAlignedObjectArray_charconst_ptr_)) deriving (Eq,Ord,Show)
withBtAlignedObjectArray_charconst_ptr_ (BtAlignedObjectArray_charconst_ptr_ fptr) = withForeignPtr fptr
mkBtAlignedObjectArray_charconst_ptr_ p = liftM BtAlignedObjectArray_charconst_ptr_ $ newForeignPtr_ $ castPtr p
{#pointer O_btAlignedObjectArray_char_ptr_ as BtAlignedObjectArray_char_ptr_ foreign newtype nocode#}
newtype BtAlignedObjectArray_char_ptr_ = BtAlignedObjectArray_char_ptr_ (ForeignPtr (BtAlignedObjectArray_char_ptr_)) deriving (Eq,Ord,Show)
withBtAlignedObjectArray_char_ptr_ (BtAlignedObjectArray_char_ptr_ fptr) = withForeignPtr fptr
mkBtAlignedObjectArray_char_ptr_ p = liftM BtAlignedObjectArray_char_ptr_ $ newForeignPtr_ $ castPtr p
{#pointer O_btAlignedObjectArray_float_ as BtAlignedObjectArray_float_ foreign newtype nocode#}
newtype BtAlignedObjectArray_float_ = BtAlignedObjectArray_float_ (ForeignPtr (BtAlignedObjectArray_float_)) deriving (Eq,Ord,Show)
withBtAlignedObjectArray_float_ (BtAlignedObjectArray_float_ fptr) = withForeignPtr fptr
mkBtAlignedObjectArray_float_ p = liftM BtAlignedObjectArray_float_ $ newForeignPtr_ $ castPtr p
{#pointer O_btAlignedObjectArray_int_ as BtAlignedObjectArray_int_ foreign newtype nocode#}
newtype BtAlignedObjectArray_int_ = BtAlignedObjectArray_int_ (ForeignPtr (BtAlignedObjectArray_int_)) deriving (Eq,Ord,Show)
withBtAlignedObjectArray_int_ (BtAlignedObjectArray_int_ fptr) = withForeignPtr fptr
mkBtAlignedObjectArray_int_ p = liftM BtAlignedObjectArray_int_ $ newForeignPtr_ $ castPtr p
{#pointer O_btAlignedObjectArray_short_ptr_ as BtAlignedObjectArray_short_ptr_ foreign newtype nocode#}
newtype BtAlignedObjectArray_short_ptr_ = BtAlignedObjectArray_short_ptr_ (ForeignPtr (BtAlignedObjectArray_short_ptr_)) deriving (Eq,Ord,Show)
withBtAlignedObjectArray_short_ptr_ (BtAlignedObjectArray_short_ptr_ fptr) = withForeignPtr fptr
mkBtAlignedObjectArray_short_ptr_ p = liftM BtAlignedObjectArray_short_ptr_ $ newForeignPtr_ $ castPtr p
{#pointer O_btAlignedObjectArray_short_ as BtAlignedObjectArray_short_ foreign newtype nocode#}
newtype BtAlignedObjectArray_short_ = BtAlignedObjectArray_short_ (ForeignPtr (BtAlignedObjectArray_short_)) deriving (Eq,Ord,Show)
withBtAlignedObjectArray_short_ (BtAlignedObjectArray_short_ fptr) = withForeignPtr fptr
mkBtAlignedObjectArray_short_ p = liftM BtAlignedObjectArray_short_ $ newForeignPtr_ $ castPtr p
{#pointer O_btAlignedObjectArray_unsignedint_ as BtAlignedObjectArray_unsignedint_ foreign newtype nocode#}
newtype BtAlignedObjectArray_unsignedint_ = BtAlignedObjectArray_unsignedint_ (ForeignPtr (BtAlignedObjectArray_unsignedint_)) deriving (Eq,Ord,Show)
withBtAlignedObjectArray_unsignedint_ (BtAlignedObjectArray_unsignedint_ fptr) = withForeignPtr fptr
mkBtAlignedObjectArray_unsignedint_ p = liftM BtAlignedObjectArray_unsignedint_ $ newForeignPtr_ $ castPtr p
{#pointer O_btAlignedObjectArray_unsignedshort_ as BtAlignedObjectArray_unsignedshort_ foreign newtype nocode#}
newtype BtAlignedObjectArray_unsignedshort_ = BtAlignedObjectArray_unsignedshort_ (ForeignPtr (BtAlignedObjectArray_unsignedshort_)) deriving (Eq,Ord,Show)
withBtAlignedObjectArray_unsignedshort_ (BtAlignedObjectArray_unsignedshort_ fptr) = withForeignPtr fptr
mkBtAlignedObjectArray_unsignedshort_ p = liftM BtAlignedObjectArray_unsignedshort_ $ newForeignPtr_ $ castPtr p
{#pointer O_btAlignedObjectArray_void_ptr_ as BtAlignedObjectArray_void_ptr_ foreign newtype nocode#}
newtype BtAlignedObjectArray_void_ptr_ = BtAlignedObjectArray_void_ptr_ (ForeignPtr (BtAlignedObjectArray_void_ptr_)) deriving (Eq,Ord,Show)
withBtAlignedObjectArray_void_ptr_ (BtAlignedObjectArray_void_ptr_ fptr) = withForeignPtr fptr
mkBtAlignedObjectArray_void_ptr_ p = liftM BtAlignedObjectArray_void_ptr_ $ newForeignPtr_ $ castPtr p
{#pointer O_btAngularLimit as BtAngularLimit foreign newtype nocode#}
newtype BtAngularLimit = BtAngularLimit (ForeignPtr (BtAngularLimit)) deriving (Eq,Ord,Show)
withBtAngularLimit (BtAngularLimit fptr) = withForeignPtr fptr
mkBtAngularLimit p = liftM BtAngularLimit $ newForeignPtr_ $ castPtr p
{#pointer O_btAxisSweep3 as BtAxisSweep3 foreign newtype nocode#}
newtype BtAxisSweep3 = BtAxisSweep3 (ForeignPtr (BtAxisSweep3)) deriving (Eq,Ord,Show)
withBtAxisSweep3 (BtAxisSweep3 fptr) = withForeignPtr fptr
mkBtAxisSweep3 p = liftM BtAxisSweep3 $ newForeignPtr_ $ castPtr p
{#pointer O_btAxisSweep3Internal_unsignedint_ as BtAxisSweep3Internal_unsignedint_ foreign newtype nocode#}
newtype BtAxisSweep3Internal_unsignedint_ = BtAxisSweep3Internal_unsignedint_ (ForeignPtr (BtAxisSweep3Internal_unsignedint_)) deriving (Eq,Ord,Show)
withBtAxisSweep3Internal_unsignedint_ (BtAxisSweep3Internal_unsignedint_ fptr) = withForeignPtr fptr
mkBtAxisSweep3Internal_unsignedint_ p = liftM BtAxisSweep3Internal_unsignedint_ $ newForeignPtr_ $ castPtr p
{#pointer O_btAxisSweep3Internal_unsignedshort_ as BtAxisSweep3Internal_unsignedshort_ foreign newtype nocode#}
newtype BtAxisSweep3Internal_unsignedshort_ = BtAxisSweep3Internal_unsignedshort_ (ForeignPtr (BtAxisSweep3Internal_unsignedshort_)) deriving (Eq,Ord,Show)
withBtAxisSweep3Internal_unsignedshort_ (BtAxisSweep3Internal_unsignedshort_ fptr) = withForeignPtr fptr
mkBtAxisSweep3Internal_unsignedshort_ p = liftM BtAxisSweep3Internal_unsignedshort_ $ newForeignPtr_ $ castPtr p
{#pointer O_btBU_Simplex1to4 as BtBU_Simplex1to4 foreign newtype nocode#}
newtype BtBU_Simplex1to4 = BtBU_Simplex1to4 (ForeignPtr (BtBU_Simplex1to4)) deriving (Eq,Ord,Show)
withBtBU_Simplex1to4 (BtBU_Simplex1to4 fptr) = withForeignPtr fptr
mkBtBU_Simplex1to4 p = liftM BtBU_Simplex1to4 $ newForeignPtr_ $ castPtr p
{#pointer O_btBlock as BtBlock foreign newtype nocode#}
newtype BtBlock = BtBlock (ForeignPtr (BtBlock)) deriving (Eq,Ord,Show)
withBtBlock (BtBlock fptr) = withForeignPtr fptr
mkBtBlock p = liftM BtBlock $ newForeignPtr_ $ castPtr p
{#pointer O_btBoxShape as BtBoxShape foreign newtype nocode#}
newtype BtBoxShape = BtBoxShape (ForeignPtr (BtBoxShape)) deriving (Eq,Ord,Show)
withBtBoxShape (BtBoxShape fptr) = withForeignPtr fptr
mkBtBoxShape p = liftM BtBoxShape $ newForeignPtr_ $ castPtr p
{#pointer O_btMultiSapBroadphase_btBridgeProxy as BtMultiSapBroadphase_btBridgeProxy foreign newtype nocode#}
newtype BtMultiSapBroadphase_btBridgeProxy = BtMultiSapBroadphase_btBridgeProxy (ForeignPtr (BtMultiSapBroadphase_btBridgeProxy)) deriving (Eq,Ord,Show)
withBtMultiSapBroadphase_btBridgeProxy (BtMultiSapBroadphase_btBridgeProxy fptr) = withForeignPtr fptr
mkBtMultiSapBroadphase_btBridgeProxy p = liftM BtMultiSapBroadphase_btBridgeProxy $ newForeignPtr_ $ castPtr p
{#pointer O_btBroadphaseAabbCallback as BtBroadphaseAabbCallback foreign newtype nocode#}
newtype BtBroadphaseAabbCallback = BtBroadphaseAabbCallback (ForeignPtr (BtBroadphaseAabbCallback)) deriving (Eq,Ord,Show)
withBtBroadphaseAabbCallback (BtBroadphaseAabbCallback fptr) = withForeignPtr fptr
mkBtBroadphaseAabbCallback p = liftM BtBroadphaseAabbCallback $ newForeignPtr_ $ castPtr p
{#pointer O_btBroadphaseInterface as BtBroadphaseInterface foreign newtype nocode#}
newtype BtBroadphaseInterface = BtBroadphaseInterface (ForeignPtr (BtBroadphaseInterface)) deriving (Eq,Ord,Show)
withBtBroadphaseInterface (BtBroadphaseInterface fptr) = withForeignPtr fptr
mkBtBroadphaseInterface p = liftM BtBroadphaseInterface $ newForeignPtr_ $ castPtr p
{#pointer O_btBroadphasePair as BtBroadphasePair foreign newtype nocode#}
newtype BtBroadphasePair = BtBroadphasePair (ForeignPtr (BtBroadphasePair)) deriving (Eq,Ord,Show)
withBtBroadphasePair (BtBroadphasePair fptr) = withForeignPtr fptr
mkBtBroadphasePair p = liftM BtBroadphasePair $ newForeignPtr_ $ castPtr p
{#pointer O_btBroadphasePairSortPredicate as BtBroadphasePairSortPredicate foreign newtype nocode#}
newtype BtBroadphasePairSortPredicate = BtBroadphasePairSortPredicate (ForeignPtr (BtBroadphasePairSortPredicate)) deriving (Eq,Ord,Show)
withBtBroadphasePairSortPredicate (BtBroadphasePairSortPredicate fptr) = withForeignPtr fptr
mkBtBroadphasePairSortPredicate p = liftM BtBroadphasePairSortPredicate $ newForeignPtr_ $ castPtr p
{#pointer O_btBroadphaseProxy as BtBroadphaseProxy foreign newtype nocode#}
newtype BtBroadphaseProxy = BtBroadphaseProxy (ForeignPtr (BtBroadphaseProxy)) deriving (Eq,Ord,Show)
withBtBroadphaseProxy (BtBroadphaseProxy fptr) = withForeignPtr fptr
mkBtBroadphaseProxy p = liftM BtBroadphaseProxy $ newForeignPtr_ $ castPtr p
{#pointer O_btBroadphaseRayCallback as BtBroadphaseRayCallback foreign newtype nocode#}
newtype BtBroadphaseRayCallback = BtBroadphaseRayCallback (ForeignPtr (BtBroadphaseRayCallback)) deriving (Eq,Ord,Show)
withBtBroadphaseRayCallback (BtBroadphaseRayCallback fptr) = withForeignPtr fptr
mkBtBroadphaseRayCallback p = liftM BtBroadphaseRayCallback $ newForeignPtr_ $ castPtr p
{#pointer O_btBvhSubtreeInfo as BtBvhSubtreeInfo foreign newtype nocode#}
newtype BtBvhSubtreeInfo = BtBvhSubtreeInfo (ForeignPtr (BtBvhSubtreeInfo)) deriving (Eq,Ord,Show)
withBtBvhSubtreeInfo (BtBvhSubtreeInfo fptr) = withForeignPtr fptr
mkBtBvhSubtreeInfo p = liftM BtBvhSubtreeInfo $ newForeignPtr_ $ castPtr p
{#pointer O_btBvhSubtreeInfoData as BtBvhSubtreeInfoData foreign newtype nocode#}
newtype BtBvhSubtreeInfoData = BtBvhSubtreeInfoData (ForeignPtr (BtBvhSubtreeInfoData)) deriving (Eq,Ord,Show)
withBtBvhSubtreeInfoData (BtBvhSubtreeInfoData fptr) = withForeignPtr fptr
mkBtBvhSubtreeInfoData p = liftM BtBvhSubtreeInfoData $ newForeignPtr_ $ castPtr p
{#pointer O_btBvhTree as BtBvhTree foreign newtype nocode#}
newtype BtBvhTree = BtBvhTree (ForeignPtr (BtBvhTree)) deriving (Eq,Ord,Show)
withBtBvhTree (BtBvhTree fptr) = withForeignPtr fptr
mkBtBvhTree p = liftM BtBvhTree $ newForeignPtr_ $ castPtr p
{#pointer O_btBvhTriangleMeshShape as BtBvhTriangleMeshShape foreign newtype nocode#}
newtype BtBvhTriangleMeshShape = BtBvhTriangleMeshShape (ForeignPtr (BtBvhTriangleMeshShape)) deriving (Eq,Ord,Show)
withBtBvhTriangleMeshShape (BtBvhTriangleMeshShape fptr) = withForeignPtr fptr
mkBtBvhTriangleMeshShape p = liftM BtBvhTriangleMeshShape $ newForeignPtr_ $ castPtr p
{#pointer O_btCapsuleShape as BtCapsuleShape foreign newtype nocode#}
newtype BtCapsuleShape = BtCapsuleShape (ForeignPtr (BtCapsuleShape)) deriving (Eq,Ord,Show)
withBtCapsuleShape (BtCapsuleShape fptr) = withForeignPtr fptr
mkBtCapsuleShape p = liftM BtCapsuleShape $ newForeignPtr_ $ castPtr p
{#pointer O_btCapsuleShapeData as BtCapsuleShapeData foreign newtype nocode#}
newtype BtCapsuleShapeData = BtCapsuleShapeData (ForeignPtr (BtCapsuleShapeData)) deriving (Eq,Ord,Show)
withBtCapsuleShapeData (BtCapsuleShapeData fptr) = withForeignPtr fptr
mkBtCapsuleShapeData p = liftM BtCapsuleShapeData $ newForeignPtr_ $ castPtr p
{#pointer O_btCapsuleShapeX as BtCapsuleShapeX foreign newtype nocode#}
newtype BtCapsuleShapeX = BtCapsuleShapeX (ForeignPtr (BtCapsuleShapeX)) deriving (Eq,Ord,Show)
withBtCapsuleShapeX (BtCapsuleShapeX fptr) = withForeignPtr fptr
mkBtCapsuleShapeX p = liftM BtCapsuleShapeX $ newForeignPtr_ $ castPtr p
{#pointer O_btCapsuleShapeZ as BtCapsuleShapeZ foreign newtype nocode#}
newtype BtCapsuleShapeZ = BtCapsuleShapeZ (ForeignPtr (BtCapsuleShapeZ)) deriving (Eq,Ord,Show)
withBtCapsuleShapeZ (BtCapsuleShapeZ fptr) = withForeignPtr fptr
mkBtCapsuleShapeZ p = liftM BtCapsuleShapeZ $ newForeignPtr_ $ castPtr p
{#pointer O_btCharIndexTripletData as BtCharIndexTripletData foreign newtype nocode#}
newtype BtCharIndexTripletData = BtCharIndexTripletData (ForeignPtr (BtCharIndexTripletData)) deriving (Eq,Ord,Show)
withBtCharIndexTripletData (BtCharIndexTripletData fptr) = withForeignPtr fptr
mkBtCharIndexTripletData p = liftM BtCharIndexTripletData $ newForeignPtr_ $ castPtr p
{#pointer O_btChunk as BtChunk foreign newtype nocode#}
newtype BtChunk = BtChunk (ForeignPtr (BtChunk)) deriving (Eq,Ord,Show)
withBtChunk (BtChunk fptr) = withForeignPtr fptr
mkBtChunk p = liftM BtChunk $ newForeignPtr_ $ castPtr p
{#pointer O_btClock as BtClock foreign newtype nocode#}
newtype BtClock = BtClock (ForeignPtr (BtClock)) deriving (Eq,Ord,Show)
withBtClock (BtClock fptr) = withForeignPtr fptr
mkBtClock p = liftM BtClock $ newForeignPtr_ $ castPtr p
{#pointer O_btCollisionAlgorithm as BtCollisionAlgorithm foreign newtype nocode#}
newtype BtCollisionAlgorithm = BtCollisionAlgorithm (ForeignPtr (BtCollisionAlgorithm)) deriving (Eq,Ord,Show)
withBtCollisionAlgorithm (BtCollisionAlgorithm fptr) = withForeignPtr fptr
mkBtCollisionAlgorithm p = liftM BtCollisionAlgorithm $ newForeignPtr_ $ castPtr p
{#pointer O_btCollisionAlgorithmConstructionInfo as BtCollisionAlgorithmConstructionInfo foreign newtype nocode#}
newtype BtCollisionAlgorithmConstructionInfo = BtCollisionAlgorithmConstructionInfo (ForeignPtr (BtCollisionAlgorithmConstructionInfo)) deriving (Eq,Ord,Show)
withBtCollisionAlgorithmConstructionInfo (BtCollisionAlgorithmConstructionInfo fptr) = withForeignPtr fptr
mkBtCollisionAlgorithmConstructionInfo p = liftM BtCollisionAlgorithmConstructionInfo $ newForeignPtr_ $ castPtr p
{#pointer O_btCollisionAlgorithmCreateFunc as BtCollisionAlgorithmCreateFunc foreign newtype nocode#}
newtype BtCollisionAlgorithmCreateFunc = BtCollisionAlgorithmCreateFunc (ForeignPtr (BtCollisionAlgorithmCreateFunc)) deriving (Eq,Ord,Show)
withBtCollisionAlgorithmCreateFunc (BtCollisionAlgorithmCreateFunc fptr) = withForeignPtr fptr
mkBtCollisionAlgorithmCreateFunc p = liftM BtCollisionAlgorithmCreateFunc $ newForeignPtr_ $ castPtr p
{#pointer O_btCollisionConfiguration as BtCollisionConfiguration foreign newtype nocode#}
newtype BtCollisionConfiguration = BtCollisionConfiguration (ForeignPtr (BtCollisionConfiguration)) deriving (Eq,Ord,Show)
withBtCollisionConfiguration (BtCollisionConfiguration fptr) = withForeignPtr fptr
mkBtCollisionConfiguration p = liftM BtCollisionConfiguration $ newForeignPtr_ $ castPtr p
{#pointer O_btCollisionDispatcher as BtCollisionDispatcher foreign newtype nocode#}
newtype BtCollisionDispatcher = BtCollisionDispatcher (ForeignPtr (BtCollisionDispatcher)) deriving (Eq,Ord,Show)
withBtCollisionDispatcher (BtCollisionDispatcher fptr) = withForeignPtr fptr
mkBtCollisionDispatcher p = liftM BtCollisionDispatcher $ newForeignPtr_ $ castPtr p
{#pointer O_btCollisionObject as BtCollisionObject foreign newtype nocode#}
newtype BtCollisionObject = BtCollisionObject (ForeignPtr (BtCollisionObject)) deriving (Eq,Ord,Show)
withBtCollisionObject (BtCollisionObject fptr) = withForeignPtr fptr
mkBtCollisionObject p = liftM BtCollisionObject $ newForeignPtr_ $ castPtr p
{#pointer O_btCollisionObjectDoubleData as BtCollisionObjectDoubleData foreign newtype nocode#}
newtype BtCollisionObjectDoubleData = BtCollisionObjectDoubleData (ForeignPtr (BtCollisionObjectDoubleData)) deriving (Eq,Ord,Show)
withBtCollisionObjectDoubleData (BtCollisionObjectDoubleData fptr) = withForeignPtr fptr
mkBtCollisionObjectDoubleData p = liftM BtCollisionObjectDoubleData $ newForeignPtr_ $ castPtr p
{#pointer O_btCollisionObjectFloatData as BtCollisionObjectFloatData foreign newtype nocode#}
newtype BtCollisionObjectFloatData = BtCollisionObjectFloatData (ForeignPtr (BtCollisionObjectFloatData)) deriving (Eq,Ord,Show)
withBtCollisionObjectFloatData (BtCollisionObjectFloatData fptr) = withForeignPtr fptr
mkBtCollisionObjectFloatData p = liftM BtCollisionObjectFloatData $ newForeignPtr_ $ castPtr p
{#pointer O_btCollisionShape as BtCollisionShape foreign newtype nocode#}
newtype BtCollisionShape = BtCollisionShape (ForeignPtr (BtCollisionShape)) deriving (Eq,Ord,Show)
withBtCollisionShape (BtCollisionShape fptr) = withForeignPtr fptr
mkBtCollisionShape p = liftM BtCollisionShape $ newForeignPtr_ $ castPtr p
{#pointer O_btCollisionShapeData as BtCollisionShapeData foreign newtype nocode#}
newtype BtCollisionShapeData = BtCollisionShapeData (ForeignPtr (BtCollisionShapeData)) deriving (Eq,Ord,Show)
withBtCollisionShapeData (BtCollisionShapeData fptr) = withForeignPtr fptr
mkBtCollisionShapeData p = liftM BtCollisionShapeData $ newForeignPtr_ $ castPtr p
{#pointer O_btCollisionWorld as BtCollisionWorld foreign newtype nocode#}
newtype BtCollisionWorld = BtCollisionWorld (ForeignPtr (BtCollisionWorld)) deriving (Eq,Ord,Show)
withBtCollisionWorld (BtCollisionWorld fptr) = withForeignPtr fptr
mkBtCollisionWorld p = liftM BtCollisionWorld $ newForeignPtr_ $ castPtr p
{#pointer O_btCompoundShape as BtCompoundShape foreign newtype nocode#}
newtype BtCompoundShape = BtCompoundShape (ForeignPtr (BtCompoundShape)) deriving (Eq,Ord,Show)
withBtCompoundShape (BtCompoundShape fptr) = withForeignPtr fptr
mkBtCompoundShape p = liftM BtCompoundShape $ newForeignPtr_ $ castPtr p
{#pointer O_btCompoundShapeChild as BtCompoundShapeChild foreign newtype nocode#}
newtype BtCompoundShapeChild = BtCompoundShapeChild (ForeignPtr (BtCompoundShapeChild)) deriving (Eq,Ord,Show)
withBtCompoundShapeChild (BtCompoundShapeChild fptr) = withForeignPtr fptr
mkBtCompoundShapeChild p = liftM BtCompoundShapeChild $ newForeignPtr_ $ castPtr p
{#pointer O_btCompoundShapeChildData as BtCompoundShapeChildData foreign newtype nocode#}
newtype BtCompoundShapeChildData = BtCompoundShapeChildData (ForeignPtr (BtCompoundShapeChildData)) deriving (Eq,Ord,Show)
withBtCompoundShapeChildData (BtCompoundShapeChildData fptr) = withForeignPtr fptr
mkBtCompoundShapeChildData p = liftM BtCompoundShapeChildData $ newForeignPtr_ $ castPtr p
{#pointer O_btCompoundShapeData as BtCompoundShapeData foreign newtype nocode#}
newtype BtCompoundShapeData = BtCompoundShapeData (ForeignPtr (BtCompoundShapeData)) deriving (Eq,Ord,Show)
withBtCompoundShapeData (BtCompoundShapeData fptr) = withForeignPtr fptr
mkBtCompoundShapeData p = liftM BtCompoundShapeData $ newForeignPtr_ $ castPtr p
{#pointer O_btConcaveShape as BtConcaveShape foreign newtype nocode#}
newtype BtConcaveShape = BtConcaveShape (ForeignPtr (BtConcaveShape)) deriving (Eq,Ord,Show)
withBtConcaveShape (BtConcaveShape fptr) = withForeignPtr fptr
mkBtConcaveShape p = liftM BtConcaveShape $ newForeignPtr_ $ castPtr p
{#pointer O_btConeShape as BtConeShape foreign newtype nocode#}
newtype BtConeShape = BtConeShape (ForeignPtr (BtConeShape)) deriving (Eq,Ord,Show)
withBtConeShape (BtConeShape fptr) = withForeignPtr fptr
mkBtConeShape p = liftM BtConeShape $ newForeignPtr_ $ castPtr p
{#pointer O_btConeShapeX as BtConeShapeX foreign newtype nocode#}
newtype BtConeShapeX = BtConeShapeX (ForeignPtr (BtConeShapeX)) deriving (Eq,Ord,Show)
withBtConeShapeX (BtConeShapeX fptr) = withForeignPtr fptr
mkBtConeShapeX p = liftM BtConeShapeX $ newForeignPtr_ $ castPtr p
{#pointer O_btConeShapeZ as BtConeShapeZ foreign newtype nocode#}
newtype BtConeShapeZ = BtConeShapeZ (ForeignPtr (BtConeShapeZ)) deriving (Eq,Ord,Show)
withBtConeShapeZ (BtConeShapeZ fptr) = withForeignPtr fptr
mkBtConeShapeZ p = liftM BtConeShapeZ $ newForeignPtr_ $ castPtr p
{#pointer O_btConeTwistConstraint as BtConeTwistConstraint foreign newtype nocode#}
newtype BtConeTwistConstraint = BtConeTwistConstraint (ForeignPtr (BtConeTwistConstraint)) deriving (Eq,Ord,Show)
withBtConeTwistConstraint (BtConeTwistConstraint fptr) = withForeignPtr fptr
mkBtConeTwistConstraint p = liftM BtConeTwistConstraint $ newForeignPtr_ $ castPtr p
{#pointer O_btConeTwistConstraintData as BtConeTwistConstraintData foreign newtype nocode#}
newtype BtConeTwistConstraintData = BtConeTwistConstraintData (ForeignPtr (BtConeTwistConstraintData)) deriving (Eq,Ord,Show)
withBtConeTwistConstraintData (BtConeTwistConstraintData fptr) = withForeignPtr fptr
mkBtConeTwistConstraintData p = liftM BtConeTwistConstraintData $ newForeignPtr_ $ castPtr p
{#pointer O_btTypedConstraint_btConstraintInfo1 as BtTypedConstraint_btConstraintInfo1 foreign newtype nocode#}
newtype BtTypedConstraint_btConstraintInfo1 = BtTypedConstraint_btConstraintInfo1 (ForeignPtr (BtTypedConstraint_btConstraintInfo1)) deriving (Eq,Ord,Show)
withBtTypedConstraint_btConstraintInfo1 (BtTypedConstraint_btConstraintInfo1 fptr) = withForeignPtr fptr
mkBtTypedConstraint_btConstraintInfo1 p = liftM BtTypedConstraint_btConstraintInfo1 $ newForeignPtr_ $ castPtr p
{#pointer O_btTypedConstraint_btConstraintInfo2 as BtTypedConstraint_btConstraintInfo2 foreign newtype nocode#}
newtype BtTypedConstraint_btConstraintInfo2 = BtTypedConstraint_btConstraintInfo2 (ForeignPtr (BtTypedConstraint_btConstraintInfo2)) deriving (Eq,Ord,Show)
withBtTypedConstraint_btConstraintInfo2 (BtTypedConstraint_btConstraintInfo2 fptr) = withForeignPtr fptr
mkBtTypedConstraint_btConstraintInfo2 p = liftM BtTypedConstraint_btConstraintInfo2 $ newForeignPtr_ $ castPtr p
{#pointer O_btConstraintRow as BtConstraintRow foreign newtype nocode#}
newtype BtConstraintRow = BtConstraintRow (ForeignPtr (BtConstraintRow)) deriving (Eq,Ord,Show)
withBtConstraintRow (BtConstraintRow fptr) = withForeignPtr fptr
mkBtConstraintRow p = liftM BtConstraintRow $ newForeignPtr_ $ castPtr p
{#pointer O_btConstraintSetting as BtConstraintSetting foreign newtype nocode#}
newtype BtConstraintSetting = BtConstraintSetting (ForeignPtr (BtConstraintSetting)) deriving (Eq,Ord,Show)
withBtConstraintSetting (BtConstraintSetting fptr) = withForeignPtr fptr
mkBtConstraintSetting p = liftM BtConstraintSetting $ newForeignPtr_ $ castPtr p
{#pointer O_btConstraintSolver as BtConstraintSolver foreign newtype nocode#}
newtype BtConstraintSolver = BtConstraintSolver (ForeignPtr (BtConstraintSolver)) deriving (Eq,Ord,Show)
withBtConstraintSolver (BtConstraintSolver fptr) = withForeignPtr fptr
mkBtConstraintSolver p = liftM BtConstraintSolver $ newForeignPtr_ $ castPtr p
{#pointer O_btContactConstraint as BtContactConstraint foreign newtype nocode#}
newtype BtContactConstraint = BtContactConstraint (ForeignPtr (BtContactConstraint)) deriving (Eq,Ord,Show)
withBtContactConstraint (BtContactConstraint fptr) = withForeignPtr fptr
mkBtContactConstraint p = liftM BtContactConstraint $ newForeignPtr_ $ castPtr p
{#pointer O_btContactSolverInfo as BtContactSolverInfo foreign newtype nocode#}
newtype BtContactSolverInfo = BtContactSolverInfo (ForeignPtr (BtContactSolverInfo)) deriving (Eq,Ord,Show)
withBtContactSolverInfo (BtContactSolverInfo fptr) = withForeignPtr fptr
mkBtContactSolverInfo p = liftM BtContactSolverInfo $ newForeignPtr_ $ castPtr p
{#pointer O_btContactSolverInfoData as BtContactSolverInfoData foreign newtype nocode#}
newtype BtContactSolverInfoData = BtContactSolverInfoData (ForeignPtr (BtContactSolverInfoData)) deriving (Eq,Ord,Show)
withBtContactSolverInfoData (BtContactSolverInfoData fptr) = withForeignPtr fptr
mkBtContactSolverInfoData p = liftM BtContactSolverInfoData $ newForeignPtr_ $ castPtr p
{#pointer O_btConvexConvexAlgorithm as BtConvexConvexAlgorithm foreign newtype nocode#}
newtype BtConvexConvexAlgorithm = BtConvexConvexAlgorithm (ForeignPtr (BtConvexConvexAlgorithm)) deriving (Eq,Ord,Show)
withBtConvexConvexAlgorithm (BtConvexConvexAlgorithm fptr) = withForeignPtr fptr
mkBtConvexConvexAlgorithm p = liftM BtConvexConvexAlgorithm $ newForeignPtr_ $ castPtr p
{#pointer O_btConvexHullShape as BtConvexHullShape foreign newtype nocode#}
newtype BtConvexHullShape = BtConvexHullShape (ForeignPtr (BtConvexHullShape)) deriving (Eq,Ord,Show)
withBtConvexHullShape (BtConvexHullShape fptr) = withForeignPtr fptr
mkBtConvexHullShape p = liftM BtConvexHullShape $ newForeignPtr_ $ castPtr p
{#pointer O_btConvexHullShapeData as BtConvexHullShapeData foreign newtype nocode#}
newtype BtConvexHullShapeData = BtConvexHullShapeData (ForeignPtr (BtConvexHullShapeData)) deriving (Eq,Ord,Show)
withBtConvexHullShapeData (BtConvexHullShapeData fptr) = withForeignPtr fptr
mkBtConvexHullShapeData p = liftM BtConvexHullShapeData $ newForeignPtr_ $ castPtr p
{#pointer O_btConvexInternalAabbCachingShape as BtConvexInternalAabbCachingShape foreign newtype nocode#}
newtype BtConvexInternalAabbCachingShape = BtConvexInternalAabbCachingShape (ForeignPtr (BtConvexInternalAabbCachingShape)) deriving (Eq,Ord,Show)
withBtConvexInternalAabbCachingShape (BtConvexInternalAabbCachingShape fptr) = withForeignPtr fptr
mkBtConvexInternalAabbCachingShape p = liftM BtConvexInternalAabbCachingShape $ newForeignPtr_ $ castPtr p
{#pointer O_btConvexInternalShape as BtConvexInternalShape foreign newtype nocode#}
newtype BtConvexInternalShape = BtConvexInternalShape (ForeignPtr (BtConvexInternalShape)) deriving (Eq,Ord,Show)
withBtConvexInternalShape (BtConvexInternalShape fptr) = withForeignPtr fptr
mkBtConvexInternalShape p = liftM BtConvexInternalShape $ newForeignPtr_ $ castPtr p
{#pointer O_btConvexInternalShapeData as BtConvexInternalShapeData foreign newtype nocode#}
newtype BtConvexInternalShapeData = BtConvexInternalShapeData (ForeignPtr (BtConvexInternalShapeData)) deriving (Eq,Ord,Show)
withBtConvexInternalShapeData (BtConvexInternalShapeData fptr) = withForeignPtr fptr
mkBtConvexInternalShapeData p = liftM BtConvexInternalShapeData $ newForeignPtr_ $ castPtr p
{#pointer O_btConvexSeparatingDistanceUtil as BtConvexSeparatingDistanceUtil foreign newtype nocode#}
newtype BtConvexSeparatingDistanceUtil = BtConvexSeparatingDistanceUtil (ForeignPtr (BtConvexSeparatingDistanceUtil)) deriving (Eq,Ord,Show)
withBtConvexSeparatingDistanceUtil (BtConvexSeparatingDistanceUtil fptr) = withForeignPtr fptr
mkBtConvexSeparatingDistanceUtil p = liftM BtConvexSeparatingDistanceUtil $ newForeignPtr_ $ castPtr p
{#pointer O_btConvexShape as BtConvexShape foreign newtype nocode#}
newtype BtConvexShape = BtConvexShape (ForeignPtr (BtConvexShape)) deriving (Eq,Ord,Show)
withBtConvexShape (BtConvexShape fptr) = withForeignPtr fptr
mkBtConvexShape p = liftM BtConvexShape $ newForeignPtr_ $ castPtr p
{#pointer O_btConvexTriangleMeshShape as BtConvexTriangleMeshShape foreign newtype nocode#}
newtype BtConvexTriangleMeshShape = BtConvexTriangleMeshShape (ForeignPtr (BtConvexTriangleMeshShape)) deriving (Eq,Ord,Show)
withBtConvexTriangleMeshShape (BtConvexTriangleMeshShape fptr) = withForeignPtr fptr
mkBtConvexTriangleMeshShape p = liftM BtConvexTriangleMeshShape $ newForeignPtr_ $ castPtr p
{#pointer O_btCylinderShape as BtCylinderShape foreign newtype nocode#}
newtype BtCylinderShape = BtCylinderShape (ForeignPtr (BtCylinderShape)) deriving (Eq,Ord,Show)
withBtCylinderShape (BtCylinderShape fptr) = withForeignPtr fptr
mkBtCylinderShape p = liftM BtCylinderShape $ newForeignPtr_ $ castPtr p
{#pointer O_btCylinderShapeData as BtCylinderShapeData foreign newtype nocode#}
newtype BtCylinderShapeData = BtCylinderShapeData (ForeignPtr (BtCylinderShapeData)) deriving (Eq,Ord,Show)
withBtCylinderShapeData (BtCylinderShapeData fptr) = withForeignPtr fptr
mkBtCylinderShapeData p = liftM BtCylinderShapeData $ newForeignPtr_ $ castPtr p
{#pointer O_btCylinderShapeX as BtCylinderShapeX foreign newtype nocode#}
newtype BtCylinderShapeX = BtCylinderShapeX (ForeignPtr (BtCylinderShapeX)) deriving (Eq,Ord,Show)
withBtCylinderShapeX (BtCylinderShapeX fptr) = withForeignPtr fptr
mkBtCylinderShapeX p = liftM BtCylinderShapeX $ newForeignPtr_ $ castPtr p
{#pointer O_btCylinderShapeZ as BtCylinderShapeZ foreign newtype nocode#}
newtype BtCylinderShapeZ = BtCylinderShapeZ (ForeignPtr (BtCylinderShapeZ)) deriving (Eq,Ord,Show)
withBtCylinderShapeZ (BtCylinderShapeZ fptr) = withForeignPtr fptr
mkBtCylinderShapeZ p = liftM BtCylinderShapeZ $ newForeignPtr_ $ castPtr p
{#pointer O_btDbvt as BtDbvt foreign newtype nocode#}
newtype BtDbvt = BtDbvt (ForeignPtr (BtDbvt)) deriving (Eq,Ord,Show)
withBtDbvt (BtDbvt fptr) = withForeignPtr fptr
mkBtDbvt p = liftM BtDbvt $ newForeignPtr_ $ castPtr p
{#pointer O_btDbvtAabbMm as BtDbvtAabbMm foreign newtype nocode#}
newtype BtDbvtAabbMm = BtDbvtAabbMm (ForeignPtr (BtDbvtAabbMm)) deriving (Eq,Ord,Show)
withBtDbvtAabbMm (BtDbvtAabbMm fptr) = withForeignPtr fptr
mkBtDbvtAabbMm p = liftM BtDbvtAabbMm $ newForeignPtr_ $ castPtr p
{#pointer O_btDbvtBroadphase as BtDbvtBroadphase foreign newtype nocode#}
newtype BtDbvtBroadphase = BtDbvtBroadphase (ForeignPtr (BtDbvtBroadphase)) deriving (Eq,Ord,Show)
withBtDbvtBroadphase (BtDbvtBroadphase fptr) = withForeignPtr fptr
mkBtDbvtBroadphase p = liftM BtDbvtBroadphase $ newForeignPtr_ $ castPtr p
{#pointer O_btDbvtNode as BtDbvtNode foreign newtype nocode#}
newtype BtDbvtNode = BtDbvtNode (ForeignPtr (BtDbvtNode)) deriving (Eq,Ord,Show)
withBtDbvtNode (BtDbvtNode fptr) = withForeignPtr fptr
mkBtDbvtNode p = liftM BtDbvtNode $ newForeignPtr_ $ castPtr p
{#pointer O_btDbvtProxy as BtDbvtProxy foreign newtype nocode#}
newtype BtDbvtProxy = BtDbvtProxy (ForeignPtr (BtDbvtProxy)) deriving (Eq,Ord,Show)
withBtDbvtProxy (BtDbvtProxy fptr) = withForeignPtr fptr
mkBtDbvtProxy p = liftM BtDbvtProxy $ newForeignPtr_ $ castPtr p
{#pointer O_btDefaultCollisionConfiguration as BtDefaultCollisionConfiguration foreign newtype nocode#}
newtype BtDefaultCollisionConfiguration = BtDefaultCollisionConfiguration (ForeignPtr (BtDefaultCollisionConfiguration)) deriving (Eq,Ord,Show)
withBtDefaultCollisionConfiguration (BtDefaultCollisionConfiguration fptr) = withForeignPtr fptr
mkBtDefaultCollisionConfiguration p = liftM BtDefaultCollisionConfiguration $ newForeignPtr_ $ castPtr p
{#pointer O_btDefaultCollisionConstructionInfo as BtDefaultCollisionConstructionInfo foreign newtype nocode#}
newtype BtDefaultCollisionConstructionInfo = BtDefaultCollisionConstructionInfo (ForeignPtr (BtDefaultCollisionConstructionInfo)) deriving (Eq,Ord,Show)
withBtDefaultCollisionConstructionInfo (BtDefaultCollisionConstructionInfo fptr) = withForeignPtr fptr
mkBtDefaultCollisionConstructionInfo p = liftM BtDefaultCollisionConstructionInfo $ newForeignPtr_ $ castPtr p
{#pointer O_btDefaultMotionState as BtDefaultMotionState foreign newtype nocode#}
newtype BtDefaultMotionState = BtDefaultMotionState (ForeignPtr (BtDefaultMotionState)) deriving (Eq,Ord,Show)
withBtDefaultMotionState (BtDefaultMotionState fptr) = withForeignPtr fptr
mkBtDefaultMotionState p = liftM BtDefaultMotionState $ newForeignPtr_ $ castPtr p
{#pointer O_btDefaultSerializer as BtDefaultSerializer foreign newtype nocode#}
newtype BtDefaultSerializer = BtDefaultSerializer (ForeignPtr (BtDefaultSerializer)) deriving (Eq,Ord,Show)
withBtDefaultSerializer (BtDefaultSerializer fptr) = withForeignPtr fptr
mkBtDefaultSerializer p = liftM BtDefaultSerializer $ newForeignPtr_ $ castPtr p
{#pointer O_btDefaultVehicleRaycaster as BtDefaultVehicleRaycaster foreign newtype nocode#}
newtype BtDefaultVehicleRaycaster = BtDefaultVehicleRaycaster (ForeignPtr (BtDefaultVehicleRaycaster)) deriving (Eq,Ord,Show)
withBtDefaultVehicleRaycaster (BtDefaultVehicleRaycaster fptr) = withForeignPtr fptr
mkBtDefaultVehicleRaycaster p = liftM BtDefaultVehicleRaycaster $ newForeignPtr_ $ castPtr p
{#pointer O_btDiscreteCollisionDetectorInterface as BtDiscreteCollisionDetectorInterface foreign newtype nocode#}
newtype BtDiscreteCollisionDetectorInterface = BtDiscreteCollisionDetectorInterface (ForeignPtr (BtDiscreteCollisionDetectorInterface)) deriving (Eq,Ord,Show)
withBtDiscreteCollisionDetectorInterface (BtDiscreteCollisionDetectorInterface fptr) = withForeignPtr fptr
mkBtDiscreteCollisionDetectorInterface p = liftM BtDiscreteCollisionDetectorInterface $ newForeignPtr_ $ castPtr p
{#pointer O_btDiscreteDynamicsWorld as BtDiscreteDynamicsWorld foreign newtype nocode#}
newtype BtDiscreteDynamicsWorld = BtDiscreteDynamicsWorld (ForeignPtr (BtDiscreteDynamicsWorld)) deriving (Eq,Ord,Show)
withBtDiscreteDynamicsWorld (BtDiscreteDynamicsWorld fptr) = withForeignPtr fptr
mkBtDiscreteDynamicsWorld p = liftM BtDiscreteDynamicsWorld $ newForeignPtr_ $ castPtr p
{#pointer O_btDispatcher as BtDispatcher foreign newtype nocode#}
newtype BtDispatcher = BtDispatcher (ForeignPtr (BtDispatcher)) deriving (Eq,Ord,Show)
withBtDispatcher (BtDispatcher fptr) = withForeignPtr fptr
mkBtDispatcher p = liftM BtDispatcher $ newForeignPtr_ $ castPtr p
{#pointer O_btDispatcherInfo as BtDispatcherInfo foreign newtype nocode#}
newtype BtDispatcherInfo = BtDispatcherInfo (ForeignPtr (BtDispatcherInfo)) deriving (Eq,Ord,Show)
withBtDispatcherInfo (BtDispatcherInfo fptr) = withForeignPtr fptr
mkBtDispatcherInfo p = liftM BtDispatcherInfo $ newForeignPtr_ $ castPtr p
{#pointer O_btDynamicsWorld as BtDynamicsWorld foreign newtype nocode#}
newtype BtDynamicsWorld = BtDynamicsWorld (ForeignPtr (BtDynamicsWorld)) deriving (Eq,Ord,Show)
withBtDynamicsWorld (BtDynamicsWorld fptr) = withForeignPtr fptr
mkBtDynamicsWorld p = liftM BtDynamicsWorld $ newForeignPtr_ $ castPtr p
{#pointer O_btEmptyShape as BtEmptyShape foreign newtype nocode#}
newtype BtEmptyShape = BtEmptyShape (ForeignPtr (BtEmptyShape)) deriving (Eq,Ord,Show)
withBtEmptyShape (BtEmptyShape fptr) = withForeignPtr fptr
mkBtEmptyShape p = liftM BtEmptyShape $ newForeignPtr_ $ castPtr p
{#pointer O_btGImpactBvh as BtGImpactBvh foreign newtype nocode#}
newtype BtGImpactBvh = BtGImpactBvh (ForeignPtr (BtGImpactBvh)) deriving (Eq,Ord,Show)
withBtGImpactBvh (BtGImpactBvh fptr) = withForeignPtr fptr
mkBtGImpactBvh p = liftM BtGImpactBvh $ newForeignPtr_ $ castPtr p
{#pointer O_btGImpactCollisionAlgorithm as BtGImpactCollisionAlgorithm foreign newtype nocode#}
newtype BtGImpactCollisionAlgorithm = BtGImpactCollisionAlgorithm (ForeignPtr (BtGImpactCollisionAlgorithm)) deriving (Eq,Ord,Show)
withBtGImpactCollisionAlgorithm (BtGImpactCollisionAlgorithm fptr) = withForeignPtr fptr
mkBtGImpactCollisionAlgorithm p = liftM BtGImpactCollisionAlgorithm $ newForeignPtr_ $ castPtr p
{#pointer O_btGImpactCompoundShape as BtGImpactCompoundShape foreign newtype nocode#}
newtype BtGImpactCompoundShape = BtGImpactCompoundShape (ForeignPtr (BtGImpactCompoundShape)) deriving (Eq,Ord,Show)
withBtGImpactCompoundShape (BtGImpactCompoundShape fptr) = withForeignPtr fptr
mkBtGImpactCompoundShape p = liftM BtGImpactCompoundShape $ newForeignPtr_ $ castPtr p
{#pointer O_btGImpactMeshShape as BtGImpactMeshShape foreign newtype nocode#}
newtype BtGImpactMeshShape = BtGImpactMeshShape (ForeignPtr (BtGImpactMeshShape)) deriving (Eq,Ord,Show)
withBtGImpactMeshShape (BtGImpactMeshShape fptr) = withForeignPtr fptr
mkBtGImpactMeshShape p = liftM BtGImpactMeshShape $ newForeignPtr_ $ castPtr p
{#pointer O_btGImpactMeshShapeData as BtGImpactMeshShapeData foreign newtype nocode#}
newtype BtGImpactMeshShapeData = BtGImpactMeshShapeData (ForeignPtr (BtGImpactMeshShapeData)) deriving (Eq,Ord,Show)
withBtGImpactMeshShapeData (BtGImpactMeshShapeData fptr) = withForeignPtr fptr
mkBtGImpactMeshShapeData p = liftM BtGImpactMeshShapeData $ newForeignPtr_ $ castPtr p
{#pointer O_btGImpactMeshShapePart as BtGImpactMeshShapePart foreign newtype nocode#}
newtype BtGImpactMeshShapePart = BtGImpactMeshShapePart (ForeignPtr (BtGImpactMeshShapePart)) deriving (Eq,Ord,Show)
withBtGImpactMeshShapePart (BtGImpactMeshShapePart fptr) = withForeignPtr fptr
mkBtGImpactMeshShapePart p = liftM BtGImpactMeshShapePart $ newForeignPtr_ $ castPtr p
{#pointer O_btGImpactQuantizedBvh as BtGImpactQuantizedBvh foreign newtype nocode#}
newtype BtGImpactQuantizedBvh = BtGImpactQuantizedBvh (ForeignPtr (BtGImpactQuantizedBvh)) deriving (Eq,Ord,Show)
withBtGImpactQuantizedBvh (BtGImpactQuantizedBvh fptr) = withForeignPtr fptr
mkBtGImpactQuantizedBvh p = liftM BtGImpactQuantizedBvh $ newForeignPtr_ $ castPtr p
{#pointer O_btGImpactShapeInterface as BtGImpactShapeInterface foreign newtype nocode#}
newtype BtGImpactShapeInterface = BtGImpactShapeInterface (ForeignPtr (BtGImpactShapeInterface)) deriving (Eq,Ord,Show)
withBtGImpactShapeInterface (BtGImpactShapeInterface fptr) = withForeignPtr fptr
mkBtGImpactShapeInterface p = liftM BtGImpactShapeInterface $ newForeignPtr_ $ castPtr p
{#pointer O_btGLDebugDrawer as BtGLDebugDrawer foreign newtype nocode#}
newtype BtGLDebugDrawer = BtGLDebugDrawer (ForeignPtr (BtGLDebugDrawer)) deriving (Eq,Ord,Show)
withBtGLDebugDrawer (BtGLDebugDrawer fptr) = withForeignPtr fptr
mkBtGLDebugDrawer p = liftM BtGLDebugDrawer $ newForeignPtr_ $ castPtr p
{#pointer O_btGeneric6DofConstraint as BtGeneric6DofConstraint foreign newtype nocode#}
newtype BtGeneric6DofConstraint = BtGeneric6DofConstraint (ForeignPtr (BtGeneric6DofConstraint)) deriving (Eq,Ord,Show)
withBtGeneric6DofConstraint (BtGeneric6DofConstraint fptr) = withForeignPtr fptr
mkBtGeneric6DofConstraint p = liftM BtGeneric6DofConstraint $ newForeignPtr_ $ castPtr p
{#pointer O_btGeneric6DofConstraintData as BtGeneric6DofConstraintData foreign newtype nocode#}
newtype BtGeneric6DofConstraintData = BtGeneric6DofConstraintData (ForeignPtr (BtGeneric6DofConstraintData)) deriving (Eq,Ord,Show)
withBtGeneric6DofConstraintData (BtGeneric6DofConstraintData fptr) = withForeignPtr fptr
mkBtGeneric6DofConstraintData p = liftM BtGeneric6DofConstraintData $ newForeignPtr_ $ castPtr p
{#pointer O_btGeneric6DofSpringConstraint as BtGeneric6DofSpringConstraint foreign newtype nocode#}
newtype BtGeneric6DofSpringConstraint = BtGeneric6DofSpringConstraint (ForeignPtr (BtGeneric6DofSpringConstraint)) deriving (Eq,Ord,Show)
withBtGeneric6DofSpringConstraint (BtGeneric6DofSpringConstraint fptr) = withForeignPtr fptr
mkBtGeneric6DofSpringConstraint p = liftM BtGeneric6DofSpringConstraint $ newForeignPtr_ $ castPtr p
{#pointer O_btGeneric6DofSpringConstraintData as BtGeneric6DofSpringConstraintData foreign newtype nocode#}
newtype BtGeneric6DofSpringConstraintData = BtGeneric6DofSpringConstraintData (ForeignPtr (BtGeneric6DofSpringConstraintData)) deriving (Eq,Ord,Show)
withBtGeneric6DofSpringConstraintData (BtGeneric6DofSpringConstraintData fptr) = withForeignPtr fptr
mkBtGeneric6DofSpringConstraintData p = liftM BtGeneric6DofSpringConstraintData $ newForeignPtr_ $ castPtr p
{#pointer O_btGeometryUtil as BtGeometryUtil foreign newtype nocode#}
newtype BtGeometryUtil = BtGeometryUtil (ForeignPtr (BtGeometryUtil)) deriving (Eq,Ord,Show)
withBtGeometryUtil (BtGeometryUtil fptr) = withForeignPtr fptr
mkBtGeometryUtil p = liftM BtGeometryUtil $ newForeignPtr_ $ castPtr p
{#pointer O_btGhostObject as BtGhostObject foreign newtype nocode#}
newtype BtGhostObject = BtGhostObject (ForeignPtr (BtGhostObject)) deriving (Eq,Ord,Show)
withBtGhostObject (BtGhostObject fptr) = withForeignPtr fptr
mkBtGhostObject p = liftM BtGhostObject $ newForeignPtr_ $ castPtr p
{#pointer O_btGhostPairCallback as BtGhostPairCallback foreign newtype nocode#}
newtype BtGhostPairCallback = BtGhostPairCallback (ForeignPtr (BtGhostPairCallback)) deriving (Eq,Ord,Show)
withBtGhostPairCallback (BtGhostPairCallback fptr) = withForeignPtr fptr
mkBtGhostPairCallback p = liftM BtGhostPairCallback $ newForeignPtr_ $ castPtr p
{#pointer O_btGjkEpaSolver2 as BtGjkEpaSolver2 foreign newtype nocode#}
newtype BtGjkEpaSolver2 = BtGjkEpaSolver2 (ForeignPtr (BtGjkEpaSolver2)) deriving (Eq,Ord,Show)
withBtGjkEpaSolver2 (BtGjkEpaSolver2 fptr) = withForeignPtr fptr
mkBtGjkEpaSolver2 p = liftM BtGjkEpaSolver2 $ newForeignPtr_ $ castPtr p
{#pointer O_btGjkPairDetector as BtGjkPairDetector foreign newtype nocode#}
newtype BtGjkPairDetector = BtGjkPairDetector (ForeignPtr (BtGjkPairDetector)) deriving (Eq,Ord,Show)
withBtGjkPairDetector (BtGjkPairDetector fptr) = withForeignPtr fptr
mkBtGjkPairDetector p = liftM BtGjkPairDetector $ newForeignPtr_ $ castPtr p
{#pointer O_btHashInt as BtHashInt foreign newtype nocode#}
newtype BtHashInt = BtHashInt (ForeignPtr (BtHashInt)) deriving (Eq,Ord,Show)
withBtHashInt (BtHashInt fptr) = withForeignPtr fptr
mkBtHashInt p = liftM BtHashInt $ newForeignPtr_ $ castPtr p
{#pointer O_btHashMap_btHashInt_btTriangleInfo_ as BtHashMap_btHashInt_btTriangleInfo_ foreign newtype nocode#}
newtype BtHashMap_btHashInt_btTriangleInfo_ = BtHashMap_btHashInt_btTriangleInfo_ (ForeignPtr (BtHashMap_btHashInt_btTriangleInfo_)) deriving (Eq,Ord,Show)
withBtHashMap_btHashInt_btTriangleInfo_ (BtHashMap_btHashInt_btTriangleInfo_ fptr) = withForeignPtr fptr
mkBtHashMap_btHashInt_btTriangleInfo_ p = liftM BtHashMap_btHashInt_btTriangleInfo_ $ newForeignPtr_ $ castPtr p
{#pointer O_btHashMap_btHashInt_int_ as BtHashMap_btHashInt_int_ foreign newtype nocode#}
newtype BtHashMap_btHashInt_int_ = BtHashMap_btHashInt_int_ (ForeignPtr (BtHashMap_btHashInt_int_)) deriving (Eq,Ord,Show)
withBtHashMap_btHashInt_int_ (BtHashMap_btHashInt_int_ fptr) = withForeignPtr fptr
mkBtHashMap_btHashInt_int_ p = liftM BtHashMap_btHashInt_int_ $ newForeignPtr_ $ castPtr p
{#pointer O_btHashMap_btHashPtr_btPointerUid_ as BtHashMap_btHashPtr_btPointerUid_ foreign newtype nocode#}
newtype BtHashMap_btHashPtr_btPointerUid_ = BtHashMap_btHashPtr_btPointerUid_ (ForeignPtr (BtHashMap_btHashPtr_btPointerUid_)) deriving (Eq,Ord,Show)
withBtHashMap_btHashPtr_btPointerUid_ (BtHashMap_btHashPtr_btPointerUid_ fptr) = withForeignPtr fptr
mkBtHashMap_btHashPtr_btPointerUid_ p = liftM BtHashMap_btHashPtr_btPointerUid_ $ newForeignPtr_ $ castPtr p
{#pointer O_btHashMap_btHashPtr_charconst_ptr_ as BtHashMap_btHashPtr_charconst_ptr_ foreign newtype nocode#}
newtype BtHashMap_btHashPtr_charconst_ptr_ = BtHashMap_btHashPtr_charconst_ptr_ (ForeignPtr (BtHashMap_btHashPtr_charconst_ptr_)) deriving (Eq,Ord,Show)
withBtHashMap_btHashPtr_charconst_ptr_ (BtHashMap_btHashPtr_charconst_ptr_ fptr) = withForeignPtr fptr
mkBtHashMap_btHashPtr_charconst_ptr_ p = liftM BtHashMap_btHashPtr_charconst_ptr_ $ newForeignPtr_ $ castPtr p
{#pointer O_btHashMap_btHashPtr_void_ptr_ as BtHashMap_btHashPtr_void_ptr_ foreign newtype nocode#}
newtype BtHashMap_btHashPtr_void_ptr_ = BtHashMap_btHashPtr_void_ptr_ (ForeignPtr (BtHashMap_btHashPtr_void_ptr_)) deriving (Eq,Ord,Show)
withBtHashMap_btHashPtr_void_ptr_ (BtHashMap_btHashPtr_void_ptr_ fptr) = withForeignPtr fptr
mkBtHashMap_btHashPtr_void_ptr_ p = liftM BtHashMap_btHashPtr_void_ptr_ $ newForeignPtr_ $ castPtr p
{#pointer O_btHashMap_btHashString_int_ as BtHashMap_btHashString_int_ foreign newtype nocode#}
newtype BtHashMap_btHashString_int_ = BtHashMap_btHashString_int_ (ForeignPtr (BtHashMap_btHashString_int_)) deriving (Eq,Ord,Show)
withBtHashMap_btHashString_int_ (BtHashMap_btHashString_int_ fptr) = withForeignPtr fptr
mkBtHashMap_btHashString_int_ p = liftM BtHashMap_btHashString_int_ $ newForeignPtr_ $ castPtr p
{#pointer O_btHashPtr as BtHashPtr foreign newtype nocode#}
newtype BtHashPtr = BtHashPtr (ForeignPtr (BtHashPtr)) deriving (Eq,Ord,Show)
withBtHashPtr (BtHashPtr fptr) = withForeignPtr fptr
mkBtHashPtr p = liftM BtHashPtr $ newForeignPtr_ $ castPtr p
{#pointer O_btHashString as BtHashString foreign newtype nocode#}
newtype BtHashString = BtHashString (ForeignPtr (BtHashString)) deriving (Eq,Ord,Show)
withBtHashString (BtHashString fptr) = withForeignPtr fptr
mkBtHashString p = liftM BtHashString $ newForeignPtr_ $ castPtr p
{#pointer O_btHashedOverlappingPairCache as BtHashedOverlappingPairCache foreign newtype nocode#}
newtype BtHashedOverlappingPairCache = BtHashedOverlappingPairCache (ForeignPtr (BtHashedOverlappingPairCache)) deriving (Eq,Ord,Show)
withBtHashedOverlappingPairCache (BtHashedOverlappingPairCache fptr) = withForeignPtr fptr
mkBtHashedOverlappingPairCache p = liftM BtHashedOverlappingPairCache $ newForeignPtr_ $ castPtr p
{#pointer O_btHinge2Constraint as BtHinge2Constraint foreign newtype nocode#}
newtype BtHinge2Constraint = BtHinge2Constraint (ForeignPtr (BtHinge2Constraint)) deriving (Eq,Ord,Show)
withBtHinge2Constraint (BtHinge2Constraint fptr) = withForeignPtr fptr
mkBtHinge2Constraint p = liftM BtHinge2Constraint $ newForeignPtr_ $ castPtr p
{#pointer O_btHingeConstraint as BtHingeConstraint foreign newtype nocode#}
newtype BtHingeConstraint = BtHingeConstraint (ForeignPtr (BtHingeConstraint)) deriving (Eq,Ord,Show)
withBtHingeConstraint (BtHingeConstraint fptr) = withForeignPtr fptr
mkBtHingeConstraint p = liftM BtHingeConstraint $ newForeignPtr_ $ castPtr p
{#pointer O_btHingeConstraintDoubleData as BtHingeConstraintDoubleData foreign newtype nocode#}
newtype BtHingeConstraintDoubleData = BtHingeConstraintDoubleData (ForeignPtr (BtHingeConstraintDoubleData)) deriving (Eq,Ord,Show)
withBtHingeConstraintDoubleData (BtHingeConstraintDoubleData fptr) = withForeignPtr fptr
mkBtHingeConstraintDoubleData p = liftM BtHingeConstraintDoubleData $ newForeignPtr_ $ castPtr p
{#pointer O_btHingeConstraintFloatData as BtHingeConstraintFloatData foreign newtype nocode#}
newtype BtHingeConstraintFloatData = BtHingeConstraintFloatData (ForeignPtr (BtHingeConstraintFloatData)) deriving (Eq,Ord,Show)
withBtHingeConstraintFloatData (BtHingeConstraintFloatData fptr) = withForeignPtr fptr
mkBtHingeConstraintFloatData p = liftM BtHingeConstraintFloatData $ newForeignPtr_ $ castPtr p
{#pointer O_btIDebugDraw as BtIDebugDraw foreign newtype nocode#}
newtype BtIDebugDraw = BtIDebugDraw (ForeignPtr (BtIDebugDraw)) deriving (Eq,Ord,Show)
withBtIDebugDraw (BtIDebugDraw fptr) = withForeignPtr fptr
mkBtIDebugDraw p = liftM BtIDebugDraw $ newForeignPtr_ $ castPtr p
{#pointer O_btIndexedMesh as BtIndexedMesh foreign newtype nocode#}
newtype BtIndexedMesh = BtIndexedMesh (ForeignPtr (BtIndexedMesh)) deriving (Eq,Ord,Show)
withBtIndexedMesh (BtIndexedMesh fptr) = withForeignPtr fptr
mkBtIndexedMesh p = liftM BtIndexedMesh $ newForeignPtr_ $ castPtr p
{#pointer O_btIntIndexData as BtIntIndexData foreign newtype nocode#}
newtype BtIntIndexData = BtIntIndexData (ForeignPtr (BtIntIndexData)) deriving (Eq,Ord,Show)
withBtIntIndexData (BtIntIndexData fptr) = withForeignPtr fptr
mkBtIntIndexData p = liftM BtIntIndexData $ newForeignPtr_ $ castPtr p
{#pointer O_btInternalTriangleIndexCallback as BtInternalTriangleIndexCallback foreign newtype nocode#}
newtype BtInternalTriangleIndexCallback = BtInternalTriangleIndexCallback (ForeignPtr (BtInternalTriangleIndexCallback)) deriving (Eq,Ord,Show)
withBtInternalTriangleIndexCallback (BtInternalTriangleIndexCallback fptr) = withForeignPtr fptr
mkBtInternalTriangleIndexCallback p = liftM BtInternalTriangleIndexCallback $ newForeignPtr_ $ castPtr p
{#pointer O_btJacobianEntry as BtJacobianEntry foreign newtype nocode#}
newtype BtJacobianEntry = BtJacobianEntry (ForeignPtr (BtJacobianEntry)) deriving (Eq,Ord,Show)
withBtJacobianEntry (BtJacobianEntry fptr) = withForeignPtr fptr
mkBtJacobianEntry p = liftM BtJacobianEntry $ newForeignPtr_ $ castPtr p
{#pointer O_btManifoldPoint as BtManifoldPoint foreign newtype nocode#}
newtype BtManifoldPoint = BtManifoldPoint (ForeignPtr (BtManifoldPoint)) deriving (Eq,Ord,Show)
withBtManifoldPoint (BtManifoldPoint fptr) = withForeignPtr fptr
mkBtManifoldPoint p = liftM BtManifoldPoint $ newForeignPtr_ $ castPtr p
{#pointer O_btManifoldResult as BtManifoldResult foreign newtype nocode#}
newtype BtManifoldResult = BtManifoldResult (ForeignPtr (BtManifoldResult)) deriving (Eq,Ord,Show)
withBtManifoldResult (BtManifoldResult fptr) = withForeignPtr fptr
mkBtManifoldResult p = liftM BtManifoldResult $ newForeignPtr_ $ castPtr p
{#pointer O_btMatrix3x3DoubleData as BtMatrix3x3DoubleData foreign newtype nocode#}
newtype BtMatrix3x3DoubleData = BtMatrix3x3DoubleData (ForeignPtr (BtMatrix3x3DoubleData)) deriving (Eq,Ord,Show)
withBtMatrix3x3DoubleData (BtMatrix3x3DoubleData fptr) = withForeignPtr fptr
mkBtMatrix3x3DoubleData p = liftM BtMatrix3x3DoubleData $ newForeignPtr_ $ castPtr p
{#pointer O_btMatrix3x3FloatData as BtMatrix3x3FloatData foreign newtype nocode#}
newtype BtMatrix3x3FloatData = BtMatrix3x3FloatData (ForeignPtr (BtMatrix3x3FloatData)) deriving (Eq,Ord,Show)
withBtMatrix3x3FloatData (BtMatrix3x3FloatData fptr) = withForeignPtr fptr
mkBtMatrix3x3FloatData p = liftM BtMatrix3x3FloatData $ newForeignPtr_ $ castPtr p
{#pointer O_btMeshPartData as BtMeshPartData foreign newtype nocode#}
newtype BtMeshPartData = BtMeshPartData (ForeignPtr (BtMeshPartData)) deriving (Eq,Ord,Show)
withBtMeshPartData (BtMeshPartData fptr) = withForeignPtr fptr
mkBtMeshPartData p = liftM BtMeshPartData $ newForeignPtr_ $ castPtr p
{#pointer O_btMotionState as BtMotionState foreign newtype nocode#}
newtype BtMotionState = BtMotionState (ForeignPtr (BtMotionState)) deriving (Eq,Ord,Show)
withBtMotionState (BtMotionState fptr) = withForeignPtr fptr
mkBtMotionState p = liftM BtMotionState $ newForeignPtr_ $ castPtr p
{#pointer O_btMultiSapBroadphase as BtMultiSapBroadphase foreign newtype nocode#}
newtype BtMultiSapBroadphase = BtMultiSapBroadphase (ForeignPtr (BtMultiSapBroadphase)) deriving (Eq,Ord,Show)
withBtMultiSapBroadphase (BtMultiSapBroadphase fptr) = withForeignPtr fptr
mkBtMultiSapBroadphase p = liftM BtMultiSapBroadphase $ newForeignPtr_ $ castPtr p
{#pointer O_btMultiSapBroadphase_btMultiSapProxy as BtMultiSapBroadphase_btMultiSapProxy foreign newtype nocode#}
newtype BtMultiSapBroadphase_btMultiSapProxy = BtMultiSapBroadphase_btMultiSapProxy (ForeignPtr (BtMultiSapBroadphase_btMultiSapProxy)) deriving (Eq,Ord,Show)
withBtMultiSapBroadphase_btMultiSapProxy (BtMultiSapBroadphase_btMultiSapProxy fptr) = withForeignPtr fptr
mkBtMultiSapBroadphase_btMultiSapProxy p = liftM BtMultiSapBroadphase_btMultiSapProxy $ newForeignPtr_ $ castPtr p
{#pointer O_btMultiSphereShape as BtMultiSphereShape foreign newtype nocode#}
newtype BtMultiSphereShape = BtMultiSphereShape (ForeignPtr (BtMultiSphereShape)) deriving (Eq,Ord,Show)
withBtMultiSphereShape (BtMultiSphereShape fptr) = withForeignPtr fptr
mkBtMultiSphereShape p = liftM BtMultiSphereShape $ newForeignPtr_ $ castPtr p
{#pointer O_btMultiSphereShapeData as BtMultiSphereShapeData foreign newtype nocode#}
newtype BtMultiSphereShapeData = BtMultiSphereShapeData (ForeignPtr (BtMultiSphereShapeData)) deriving (Eq,Ord,Show)
withBtMultiSphereShapeData (BtMultiSphereShapeData fptr) = withForeignPtr fptr
mkBtMultiSphereShapeData p = liftM BtMultiSphereShapeData $ newForeignPtr_ $ castPtr p
{#pointer O_btNodeOverlapCallback as BtNodeOverlapCallback foreign newtype nocode#}
newtype BtNodeOverlapCallback = BtNodeOverlapCallback (ForeignPtr (BtNodeOverlapCallback)) deriving (Eq,Ord,Show)
withBtNodeOverlapCallback (BtNodeOverlapCallback fptr) = withForeignPtr fptr
mkBtNodeOverlapCallback p = liftM BtNodeOverlapCallback $ newForeignPtr_ $ castPtr p
{#pointer O_btNullPairCache as BtNullPairCache foreign newtype nocode#}
newtype BtNullPairCache = BtNullPairCache (ForeignPtr (BtNullPairCache)) deriving (Eq,Ord,Show)
withBtNullPairCache (BtNullPairCache fptr) = withForeignPtr fptr
mkBtNullPairCache p = liftM BtNullPairCache $ newForeignPtr_ $ castPtr p
{#pointer O_btOptimizedBvh as BtOptimizedBvh foreign newtype nocode#}
newtype BtOptimizedBvh = BtOptimizedBvh (ForeignPtr (BtOptimizedBvh)) deriving (Eq,Ord,Show)
withBtOptimizedBvh (BtOptimizedBvh fptr) = withForeignPtr fptr
mkBtOptimizedBvh p = liftM BtOptimizedBvh $ newForeignPtr_ $ castPtr p
{#pointer O_btOptimizedBvhNode as BtOptimizedBvhNode foreign newtype nocode#}
newtype BtOptimizedBvhNode = BtOptimizedBvhNode (ForeignPtr (BtOptimizedBvhNode)) deriving (Eq,Ord,Show)
withBtOptimizedBvhNode (BtOptimizedBvhNode fptr) = withForeignPtr fptr
mkBtOptimizedBvhNode p = liftM BtOptimizedBvhNode $ newForeignPtr_ $ castPtr p
{#pointer O_btOptimizedBvhNodeDoubleData as BtOptimizedBvhNodeDoubleData foreign newtype nocode#}
newtype BtOptimizedBvhNodeDoubleData = BtOptimizedBvhNodeDoubleData (ForeignPtr (BtOptimizedBvhNodeDoubleData)) deriving (Eq,Ord,Show)
withBtOptimizedBvhNodeDoubleData (BtOptimizedBvhNodeDoubleData fptr) = withForeignPtr fptr
mkBtOptimizedBvhNodeDoubleData p = liftM BtOptimizedBvhNodeDoubleData $ newForeignPtr_ $ castPtr p
{#pointer O_btOptimizedBvhNodeFloatData as BtOptimizedBvhNodeFloatData foreign newtype nocode#}
newtype BtOptimizedBvhNodeFloatData = BtOptimizedBvhNodeFloatData (ForeignPtr (BtOptimizedBvhNodeFloatData)) deriving (Eq,Ord,Show)
withBtOptimizedBvhNodeFloatData (BtOptimizedBvhNodeFloatData fptr) = withForeignPtr fptr
mkBtOptimizedBvhNodeFloatData p = liftM BtOptimizedBvhNodeFloatData $ newForeignPtr_ $ castPtr p
{#pointer O_btOverlapCallback as BtOverlapCallback foreign newtype nocode#}
newtype BtOverlapCallback = BtOverlapCallback (ForeignPtr (BtOverlapCallback)) deriving (Eq,Ord,Show)
withBtOverlapCallback (BtOverlapCallback fptr) = withForeignPtr fptr
mkBtOverlapCallback p = liftM BtOverlapCallback $ newForeignPtr_ $ castPtr p
{#pointer O_btOverlapFilterCallback as BtOverlapFilterCallback foreign newtype nocode#}
newtype BtOverlapFilterCallback = BtOverlapFilterCallback (ForeignPtr (BtOverlapFilterCallback)) deriving (Eq,Ord,Show)
withBtOverlapFilterCallback (BtOverlapFilterCallback fptr) = withForeignPtr fptr
mkBtOverlapFilterCallback p = liftM BtOverlapFilterCallback $ newForeignPtr_ $ castPtr p
{#pointer O_btOverlappingPairCache as BtOverlappingPairCache foreign newtype nocode#}
newtype BtOverlappingPairCache = BtOverlappingPairCache (ForeignPtr (BtOverlappingPairCache)) deriving (Eq,Ord,Show)
withBtOverlappingPairCache (BtOverlappingPairCache fptr) = withForeignPtr fptr
mkBtOverlappingPairCache p = liftM BtOverlappingPairCache $ newForeignPtr_ $ castPtr p
{#pointer O_btOverlappingPairCallback as BtOverlappingPairCallback foreign newtype nocode#}
newtype BtOverlappingPairCallback = BtOverlappingPairCallback (ForeignPtr (BtOverlappingPairCallback)) deriving (Eq,Ord,Show)
withBtOverlappingPairCallback (BtOverlappingPairCallback fptr) = withForeignPtr fptr
mkBtOverlappingPairCallback p = liftM BtOverlappingPairCallback $ newForeignPtr_ $ castPtr p
{#pointer O_btPairCachingGhostObject as BtPairCachingGhostObject foreign newtype nocode#}
newtype BtPairCachingGhostObject = BtPairCachingGhostObject (ForeignPtr (BtPairCachingGhostObject)) deriving (Eq,Ord,Show)
withBtPairCachingGhostObject (BtPairCachingGhostObject fptr) = withForeignPtr fptr
mkBtPairCachingGhostObject p = liftM BtPairCachingGhostObject $ newForeignPtr_ $ castPtr p
{#pointer O_btPairSet as BtPairSet foreign newtype nocode#}
newtype BtPairSet = BtPairSet (ForeignPtr (BtPairSet)) deriving (Eq,Ord,Show)
withBtPairSet (BtPairSet fptr) = withForeignPtr fptr
mkBtPairSet p = liftM BtPairSet $ newForeignPtr_ $ castPtr p
{#pointer O_btPersistentManifold as BtPersistentManifold foreign newtype nocode#}
newtype BtPersistentManifold = BtPersistentManifold (ForeignPtr (BtPersistentManifold)) deriving (Eq,Ord,Show)
withBtPersistentManifold (BtPersistentManifold fptr) = withForeignPtr fptr
mkBtPersistentManifold p = liftM BtPersistentManifold $ newForeignPtr_ $ castPtr p
{#pointer O_btPoint2PointConstraint as BtPoint2PointConstraint foreign newtype nocode#}
newtype BtPoint2PointConstraint = BtPoint2PointConstraint (ForeignPtr (BtPoint2PointConstraint)) deriving (Eq,Ord,Show)
withBtPoint2PointConstraint (BtPoint2PointConstraint fptr) = withForeignPtr fptr
mkBtPoint2PointConstraint p = liftM BtPoint2PointConstraint $ newForeignPtr_ $ castPtr p
{#pointer O_btPoint2PointConstraintDoubleData as BtPoint2PointConstraintDoubleData foreign newtype nocode#}
newtype BtPoint2PointConstraintDoubleData = BtPoint2PointConstraintDoubleData (ForeignPtr (BtPoint2PointConstraintDoubleData)) deriving (Eq,Ord,Show)
withBtPoint2PointConstraintDoubleData (BtPoint2PointConstraintDoubleData fptr) = withForeignPtr fptr
mkBtPoint2PointConstraintDoubleData p = liftM BtPoint2PointConstraintDoubleData $ newForeignPtr_ $ castPtr p
{#pointer O_btPoint2PointConstraintFloatData as BtPoint2PointConstraintFloatData foreign newtype nocode#}
newtype BtPoint2PointConstraintFloatData = BtPoint2PointConstraintFloatData (ForeignPtr (BtPoint2PointConstraintFloatData)) deriving (Eq,Ord,Show)
withBtPoint2PointConstraintFloatData (BtPoint2PointConstraintFloatData fptr) = withForeignPtr fptr
mkBtPoint2PointConstraintFloatData p = liftM BtPoint2PointConstraintFloatData $ newForeignPtr_ $ castPtr p
{#pointer O_btPointerUid as BtPointerUid foreign newtype nocode#}
newtype BtPointerUid = BtPointerUid (ForeignPtr (BtPointerUid)) deriving (Eq,Ord,Show)
withBtPointerUid (BtPointerUid fptr) = withForeignPtr fptr
mkBtPointerUid p = liftM BtPointerUid $ newForeignPtr_ $ castPtr p
{#pointer O_btPolyhedralConvexAabbCachingShape as BtPolyhedralConvexAabbCachingShape foreign newtype nocode#}
newtype BtPolyhedralConvexAabbCachingShape = BtPolyhedralConvexAabbCachingShape (ForeignPtr (BtPolyhedralConvexAabbCachingShape)) deriving (Eq,Ord,Show)
withBtPolyhedralConvexAabbCachingShape (BtPolyhedralConvexAabbCachingShape fptr) = withForeignPtr fptr
mkBtPolyhedralConvexAabbCachingShape p = liftM BtPolyhedralConvexAabbCachingShape $ newForeignPtr_ $ castPtr p
{#pointer O_btPolyhedralConvexShape as BtPolyhedralConvexShape foreign newtype nocode#}
newtype BtPolyhedralConvexShape = BtPolyhedralConvexShape (ForeignPtr (BtPolyhedralConvexShape)) deriving (Eq,Ord,Show)
withBtPolyhedralConvexShape (BtPolyhedralConvexShape fptr) = withForeignPtr fptr
mkBtPolyhedralConvexShape p = liftM BtPolyhedralConvexShape $ newForeignPtr_ $ castPtr p
{#pointer O_btPositionAndRadius as BtPositionAndRadius foreign newtype nocode#}
newtype BtPositionAndRadius = BtPositionAndRadius (ForeignPtr (BtPositionAndRadius)) deriving (Eq,Ord,Show)
withBtPositionAndRadius (BtPositionAndRadius fptr) = withForeignPtr fptr
mkBtPositionAndRadius p = liftM BtPositionAndRadius $ newForeignPtr_ $ castPtr p
{#pointer O_btPrimitiveManagerBase as BtPrimitiveManagerBase foreign newtype nocode#}
newtype BtPrimitiveManagerBase = BtPrimitiveManagerBase (ForeignPtr (BtPrimitiveManagerBase)) deriving (Eq,Ord,Show)
withBtPrimitiveManagerBase (BtPrimitiveManagerBase fptr) = withForeignPtr fptr
mkBtPrimitiveManagerBase p = liftM BtPrimitiveManagerBase $ newForeignPtr_ $ castPtr p
{#pointer O_btPrimitiveTriangle as BtPrimitiveTriangle foreign newtype nocode#}
newtype BtPrimitiveTriangle = BtPrimitiveTriangle (ForeignPtr (BtPrimitiveTriangle)) deriving (Eq,Ord,Show)
withBtPrimitiveTriangle (BtPrimitiveTriangle fptr) = withForeignPtr fptr
mkBtPrimitiveTriangle p = liftM BtPrimitiveTriangle $ newForeignPtr_ $ castPtr p
{#pointer O_btQuadWord as BtQuadWord foreign newtype nocode#}
newtype BtQuadWord = BtQuadWord (ForeignPtr (BtQuadWord)) deriving (Eq,Ord,Show)
withBtQuadWord (BtQuadWord fptr) = withForeignPtr fptr
mkBtQuadWord p = liftM BtQuadWord $ newForeignPtr_ $ castPtr p
{#pointer O_btQuantizedBvh as BtQuantizedBvh foreign newtype nocode#}
newtype BtQuantizedBvh = BtQuantizedBvh (ForeignPtr (BtQuantizedBvh)) deriving (Eq,Ord,Show)
withBtQuantizedBvh (BtQuantizedBvh fptr) = withForeignPtr fptr
mkBtQuantizedBvh p = liftM BtQuantizedBvh $ newForeignPtr_ $ castPtr p
{#pointer O_btQuantizedBvhDoubleData as BtQuantizedBvhDoubleData foreign newtype nocode#}
newtype BtQuantizedBvhDoubleData = BtQuantizedBvhDoubleData (ForeignPtr (BtQuantizedBvhDoubleData)) deriving (Eq,Ord,Show)
withBtQuantizedBvhDoubleData (BtQuantizedBvhDoubleData fptr) = withForeignPtr fptr
mkBtQuantizedBvhDoubleData p = liftM BtQuantizedBvhDoubleData $ newForeignPtr_ $ castPtr p
{#pointer O_btQuantizedBvhFloatData as BtQuantizedBvhFloatData foreign newtype nocode#}
newtype BtQuantizedBvhFloatData = BtQuantizedBvhFloatData (ForeignPtr (BtQuantizedBvhFloatData)) deriving (Eq,Ord,Show)
withBtQuantizedBvhFloatData (BtQuantizedBvhFloatData fptr) = withForeignPtr fptr
mkBtQuantizedBvhFloatData p = liftM BtQuantizedBvhFloatData $ newForeignPtr_ $ castPtr p
{#pointer O_btQuantizedBvhNode as BtQuantizedBvhNode foreign newtype nocode#}
newtype BtQuantizedBvhNode = BtQuantizedBvhNode (ForeignPtr (BtQuantizedBvhNode)) deriving (Eq,Ord,Show)
withBtQuantizedBvhNode (BtQuantizedBvhNode fptr) = withForeignPtr fptr
mkBtQuantizedBvhNode p = liftM BtQuantizedBvhNode $ newForeignPtr_ $ castPtr p
{#pointer O_btQuantizedBvhNodeData as BtQuantizedBvhNodeData foreign newtype nocode#}
newtype BtQuantizedBvhNodeData = BtQuantizedBvhNodeData (ForeignPtr (BtQuantizedBvhNodeData)) deriving (Eq,Ord,Show)
withBtQuantizedBvhNodeData (BtQuantizedBvhNodeData fptr) = withForeignPtr fptr
mkBtQuantizedBvhNodeData p = liftM BtQuantizedBvhNodeData $ newForeignPtr_ $ castPtr p
{#pointer O_btQuantizedBvhTree as BtQuantizedBvhTree foreign newtype nocode#}
newtype BtQuantizedBvhTree = BtQuantizedBvhTree (ForeignPtr (BtQuantizedBvhTree)) deriving (Eq,Ord,Show)
withBtQuantizedBvhTree (BtQuantizedBvhTree fptr) = withForeignPtr fptr
mkBtQuantizedBvhTree p = liftM BtQuantizedBvhTree $ newForeignPtr_ $ castPtr p
{#pointer O_btRaycastVehicle as BtRaycastVehicle foreign newtype nocode#}
newtype BtRaycastVehicle = BtRaycastVehicle (ForeignPtr (BtRaycastVehicle)) deriving (Eq,Ord,Show)
withBtRaycastVehicle (BtRaycastVehicle fptr) = withForeignPtr fptr
mkBtRaycastVehicle p = liftM BtRaycastVehicle $ newForeignPtr_ $ castPtr p
{#pointer O_btRigidBody as BtRigidBody foreign newtype nocode#}
newtype BtRigidBody = BtRigidBody (ForeignPtr (BtRigidBody)) deriving (Eq,Ord,Show)
withBtRigidBody (BtRigidBody fptr) = withForeignPtr fptr
mkBtRigidBody p = liftM BtRigidBody $ newForeignPtr_ $ castPtr p
{#pointer O_btRigidBody_btRigidBodyConstructionInfo as BtRigidBody_btRigidBodyConstructionInfo foreign newtype nocode#}
newtype BtRigidBody_btRigidBodyConstructionInfo = BtRigidBody_btRigidBodyConstructionInfo (ForeignPtr (BtRigidBody_btRigidBodyConstructionInfo)) deriving (Eq,Ord,Show)
withBtRigidBody_btRigidBodyConstructionInfo (BtRigidBody_btRigidBodyConstructionInfo fptr) = withForeignPtr fptr
mkBtRigidBody_btRigidBodyConstructionInfo p = liftM BtRigidBody_btRigidBodyConstructionInfo $ newForeignPtr_ $ castPtr p
{#pointer O_btRigidBodyDoubleData as BtRigidBodyDoubleData foreign newtype nocode#}
newtype BtRigidBodyDoubleData = BtRigidBodyDoubleData (ForeignPtr (BtRigidBodyDoubleData)) deriving (Eq,Ord,Show)
withBtRigidBodyDoubleData (BtRigidBodyDoubleData fptr) = withForeignPtr fptr
mkBtRigidBodyDoubleData p = liftM BtRigidBodyDoubleData $ newForeignPtr_ $ castPtr p
{#pointer O_btRigidBodyFloatData as BtRigidBodyFloatData foreign newtype nocode#}
newtype BtRigidBodyFloatData = BtRigidBodyFloatData (ForeignPtr (BtRigidBodyFloatData)) deriving (Eq,Ord,Show)
withBtRigidBodyFloatData (BtRigidBodyFloatData fptr) = withForeignPtr fptr
mkBtRigidBodyFloatData p = liftM BtRigidBodyFloatData $ newForeignPtr_ $ castPtr p
{#pointer O_btRotationalLimitMotor as BtRotationalLimitMotor foreign newtype nocode#}
newtype BtRotationalLimitMotor = BtRotationalLimitMotor (ForeignPtr (BtRotationalLimitMotor)) deriving (Eq,Ord,Show)
withBtRotationalLimitMotor (BtRotationalLimitMotor fptr) = withForeignPtr fptr
mkBtRotationalLimitMotor p = liftM BtRotationalLimitMotor $ newForeignPtr_ $ castPtr p
{#pointer O_btScaledBvhTriangleMeshShape as BtScaledBvhTriangleMeshShape foreign newtype nocode#}
newtype BtScaledBvhTriangleMeshShape = BtScaledBvhTriangleMeshShape (ForeignPtr (BtScaledBvhTriangleMeshShape)) deriving (Eq,Ord,Show)
withBtScaledBvhTriangleMeshShape (BtScaledBvhTriangleMeshShape fptr) = withForeignPtr fptr
mkBtScaledBvhTriangleMeshShape p = liftM BtScaledBvhTriangleMeshShape $ newForeignPtr_ $ castPtr p
{#pointer O_btScaledTriangleMeshShapeData as BtScaledTriangleMeshShapeData foreign newtype nocode#}
newtype BtScaledTriangleMeshShapeData = BtScaledTriangleMeshShapeData (ForeignPtr (BtScaledTriangleMeshShapeData)) deriving (Eq,Ord,Show)
withBtScaledTriangleMeshShapeData (BtScaledTriangleMeshShapeData fptr) = withForeignPtr fptr
mkBtScaledTriangleMeshShapeData p = liftM BtScaledTriangleMeshShapeData $ newForeignPtr_ $ castPtr p
{#pointer O_btSequentialImpulseConstraintSolver as BtSequentialImpulseConstraintSolver foreign newtype nocode#}
newtype BtSequentialImpulseConstraintSolver = BtSequentialImpulseConstraintSolver (ForeignPtr (BtSequentialImpulseConstraintSolver)) deriving (Eq,Ord,Show)
withBtSequentialImpulseConstraintSolver (BtSequentialImpulseConstraintSolver fptr) = withForeignPtr fptr
mkBtSequentialImpulseConstraintSolver p = liftM BtSequentialImpulseConstraintSolver $ newForeignPtr_ $ castPtr p
{#pointer O_btSerializer as BtSerializer foreign newtype nocode#}
newtype BtSerializer = BtSerializer (ForeignPtr (BtSerializer)) deriving (Eq,Ord,Show)
withBtSerializer (BtSerializer fptr) = withForeignPtr fptr
mkBtSerializer p = liftM BtSerializer $ newForeignPtr_ $ castPtr p
{#pointer O_btShortIntIndexData as BtShortIntIndexData foreign newtype nocode#}
newtype BtShortIntIndexData = BtShortIntIndexData (ForeignPtr (BtShortIntIndexData)) deriving (Eq,Ord,Show)
withBtShortIntIndexData (BtShortIntIndexData fptr) = withForeignPtr fptr
mkBtShortIntIndexData p = liftM BtShortIntIndexData $ newForeignPtr_ $ castPtr p
{#pointer O_btShortIntIndexTripletData as BtShortIntIndexTripletData foreign newtype nocode#}
newtype BtShortIntIndexTripletData = BtShortIntIndexTripletData (ForeignPtr (BtShortIntIndexTripletData)) deriving (Eq,Ord,Show)
withBtShortIntIndexTripletData (BtShortIntIndexTripletData fptr) = withForeignPtr fptr
mkBtShortIntIndexTripletData p = liftM BtShortIntIndexTripletData $ newForeignPtr_ $ castPtr p
{#pointer O_btSimpleBroadphase as BtSimpleBroadphase foreign newtype nocode#}
newtype BtSimpleBroadphase = BtSimpleBroadphase (ForeignPtr (BtSimpleBroadphase)) deriving (Eq,Ord,Show)
withBtSimpleBroadphase (BtSimpleBroadphase fptr) = withForeignPtr fptr
mkBtSimpleBroadphase p = liftM BtSimpleBroadphase $ newForeignPtr_ $ castPtr p
{#pointer O_btSimpleBroadphaseProxy as BtSimpleBroadphaseProxy foreign newtype nocode#}
newtype BtSimpleBroadphaseProxy = BtSimpleBroadphaseProxy (ForeignPtr (BtSimpleBroadphaseProxy)) deriving (Eq,Ord,Show)
withBtSimpleBroadphaseProxy (BtSimpleBroadphaseProxy fptr) = withForeignPtr fptr
mkBtSimpleBroadphaseProxy p = liftM BtSimpleBroadphaseProxy $ newForeignPtr_ $ castPtr p
{#pointer O_btSimpleDynamicsWorld as BtSimpleDynamicsWorld foreign newtype nocode#}
newtype BtSimpleDynamicsWorld = BtSimpleDynamicsWorld (ForeignPtr (BtSimpleDynamicsWorld)) deriving (Eq,Ord,Show)
withBtSimpleDynamicsWorld (BtSimpleDynamicsWorld fptr) = withForeignPtr fptr
mkBtSimpleDynamicsWorld p = liftM BtSimpleDynamicsWorld $ newForeignPtr_ $ castPtr p
{#pointer O_btSliderConstraint as BtSliderConstraint foreign newtype nocode#}
newtype BtSliderConstraint = BtSliderConstraint (ForeignPtr (BtSliderConstraint)) deriving (Eq,Ord,Show)
withBtSliderConstraint (BtSliderConstraint fptr) = withForeignPtr fptr
mkBtSliderConstraint p = liftM BtSliderConstraint $ newForeignPtr_ $ castPtr p
{#pointer O_btSliderConstraintData as BtSliderConstraintData foreign newtype nocode#}
newtype BtSliderConstraintData = BtSliderConstraintData (ForeignPtr (BtSliderConstraintData)) deriving (Eq,Ord,Show)
withBtSliderConstraintData (BtSliderConstraintData fptr) = withForeignPtr fptr
mkBtSliderConstraintData p = liftM BtSliderConstraintData $ newForeignPtr_ $ castPtr p
{#pointer O_btSoftBody as BtSoftBody foreign newtype nocode#}
newtype BtSoftBody = BtSoftBody (ForeignPtr (BtSoftBody)) deriving (Eq,Ord,Show)
withBtSoftBody (BtSoftBody fptr) = withForeignPtr fptr
mkBtSoftBody p = liftM BtSoftBody $ newForeignPtr_ $ castPtr p
{#pointer O_btSoftBodyHelpers as BtSoftBodyHelpers foreign newtype nocode#}
newtype BtSoftBodyHelpers = BtSoftBodyHelpers (ForeignPtr (BtSoftBodyHelpers)) deriving (Eq,Ord,Show)
withBtSoftBodyHelpers (BtSoftBodyHelpers fptr) = withForeignPtr fptr
mkBtSoftBodyHelpers p = liftM BtSoftBodyHelpers $ newForeignPtr_ $ castPtr p
{#pointer O_btSoftBodyRigidBodyCollisionConfiguration as BtSoftBodyRigidBodyCollisionConfiguration foreign newtype nocode#}
newtype BtSoftBodyRigidBodyCollisionConfiguration = BtSoftBodyRigidBodyCollisionConfiguration (ForeignPtr (BtSoftBodyRigidBodyCollisionConfiguration)) deriving (Eq,Ord,Show)
withBtSoftBodyRigidBodyCollisionConfiguration (BtSoftBodyRigidBodyCollisionConfiguration fptr) = withForeignPtr fptr
mkBtSoftBodyRigidBodyCollisionConfiguration p = liftM BtSoftBodyRigidBodyCollisionConfiguration $ newForeignPtr_ $ castPtr p
{#pointer O_btSoftBodyWorldInfo as BtSoftBodyWorldInfo foreign newtype nocode#}
newtype BtSoftBodyWorldInfo = BtSoftBodyWorldInfo (ForeignPtr (BtSoftBodyWorldInfo)) deriving (Eq,Ord,Show)
withBtSoftBodyWorldInfo (BtSoftBodyWorldInfo fptr) = withForeignPtr fptr
mkBtSoftBodyWorldInfo p = liftM BtSoftBodyWorldInfo $ newForeignPtr_ $ castPtr p
{#pointer O_btSoftRigidDynamicsWorld as BtSoftRigidDynamicsWorld foreign newtype nocode#}
newtype BtSoftRigidDynamicsWorld = BtSoftRigidDynamicsWorld (ForeignPtr (BtSoftRigidDynamicsWorld)) deriving (Eq,Ord,Show)
withBtSoftRigidDynamicsWorld (BtSoftRigidDynamicsWorld fptr) = withForeignPtr fptr
mkBtSoftRigidDynamicsWorld p = liftM BtSoftRigidDynamicsWorld $ newForeignPtr_ $ castPtr p
{#pointer O_btSolverBodyObsolete as BtSolverBodyObsolete foreign newtype nocode#}
newtype BtSolverBodyObsolete = BtSolverBodyObsolete (ForeignPtr (BtSolverBodyObsolete)) deriving (Eq,Ord,Show)
withBtSolverBodyObsolete (BtSolverBodyObsolete fptr) = withForeignPtr fptr
mkBtSolverBodyObsolete p = liftM BtSolverBodyObsolete $ newForeignPtr_ $ castPtr p
{#pointer O_btSolverConstraint as BtSolverConstraint foreign newtype nocode#}
newtype BtSolverConstraint = BtSolverConstraint (ForeignPtr (BtSolverConstraint)) deriving (Eq,Ord,Show)
withBtSolverConstraint (BtSolverConstraint fptr) = withForeignPtr fptr
mkBtSolverConstraint p = liftM BtSolverConstraint $ newForeignPtr_ $ castPtr p
{#pointer O_btSortedOverlappingPairCache as BtSortedOverlappingPairCache foreign newtype nocode#}
newtype BtSortedOverlappingPairCache = BtSortedOverlappingPairCache (ForeignPtr (BtSortedOverlappingPairCache)) deriving (Eq,Ord,Show)
withBtSortedOverlappingPairCache (BtSortedOverlappingPairCache fptr) = withForeignPtr fptr
mkBtSortedOverlappingPairCache p = liftM BtSortedOverlappingPairCache $ newForeignPtr_ $ castPtr p
{#pointer O_btSparseSdf_3_ as BtSparseSdf_3_ foreign newtype nocode#}
newtype BtSparseSdf_3_ = BtSparseSdf_3_ (ForeignPtr (BtSparseSdf_3_)) deriving (Eq,Ord,Show)
withBtSparseSdf_3_ (BtSparseSdf_3_ fptr) = withForeignPtr fptr
mkBtSparseSdf_3_ p = liftM BtSparseSdf_3_ $ newForeignPtr_ $ castPtr p
{#pointer O_btSphereShape as BtSphereShape foreign newtype nocode#}
newtype BtSphereShape = BtSphereShape (ForeignPtr (BtSphereShape)) deriving (Eq,Ord,Show)
withBtSphereShape (BtSphereShape fptr) = withForeignPtr fptr
mkBtSphereShape p = liftM BtSphereShape $ newForeignPtr_ $ castPtr p
{#pointer O_btSphereSphereCollisionAlgorithm as BtSphereSphereCollisionAlgorithm foreign newtype nocode#}
newtype BtSphereSphereCollisionAlgorithm = BtSphereSphereCollisionAlgorithm (ForeignPtr (BtSphereSphereCollisionAlgorithm)) deriving (Eq,Ord,Show)
withBtSphereSphereCollisionAlgorithm (BtSphereSphereCollisionAlgorithm fptr) = withForeignPtr fptr
mkBtSphereSphereCollisionAlgorithm p = liftM BtSphereSphereCollisionAlgorithm $ newForeignPtr_ $ castPtr p
{#pointer O_btStackAlloc as BtStackAlloc foreign newtype nocode#}
newtype BtStackAlloc = BtStackAlloc (ForeignPtr (BtStackAlloc)) deriving (Eq,Ord,Show)
withBtStackAlloc (BtStackAlloc fptr) = withForeignPtr fptr
mkBtStackAlloc p = liftM BtStackAlloc $ newForeignPtr_ $ castPtr p
{#pointer O_btStaticPlaneShape as BtStaticPlaneShape foreign newtype nocode#}
newtype BtStaticPlaneShape = BtStaticPlaneShape (ForeignPtr (BtStaticPlaneShape)) deriving (Eq,Ord,Show)
withBtStaticPlaneShape (BtStaticPlaneShape fptr) = withForeignPtr fptr
mkBtStaticPlaneShape p = liftM BtStaticPlaneShape $ newForeignPtr_ $ castPtr p
{#pointer O_btStaticPlaneShapeData as BtStaticPlaneShapeData foreign newtype nocode#}
newtype BtStaticPlaneShapeData = BtStaticPlaneShapeData (ForeignPtr (BtStaticPlaneShapeData)) deriving (Eq,Ord,Show)
withBtStaticPlaneShapeData (BtStaticPlaneShapeData fptr) = withForeignPtr fptr
mkBtStaticPlaneShapeData p = liftM BtStaticPlaneShapeData $ newForeignPtr_ $ castPtr p
{#pointer O_btStorageResult as BtStorageResult foreign newtype nocode#}
newtype BtStorageResult = BtStorageResult (ForeignPtr (BtStorageResult)) deriving (Eq,Ord,Show)
withBtStorageResult (BtStorageResult fptr) = withForeignPtr fptr
mkBtStorageResult p = liftM BtStorageResult $ newForeignPtr_ $ castPtr p
{#pointer O_btStridingMeshInterface as BtStridingMeshInterface foreign newtype nocode#}
newtype BtStridingMeshInterface = BtStridingMeshInterface (ForeignPtr (BtStridingMeshInterface)) deriving (Eq,Ord,Show)
withBtStridingMeshInterface (BtStridingMeshInterface fptr) = withForeignPtr fptr
mkBtStridingMeshInterface p = liftM BtStridingMeshInterface $ newForeignPtr_ $ castPtr p
{#pointer O_btStridingMeshInterfaceData as BtStridingMeshInterfaceData foreign newtype nocode#}
newtype BtStridingMeshInterfaceData = BtStridingMeshInterfaceData (ForeignPtr (BtStridingMeshInterfaceData)) deriving (Eq,Ord,Show)
withBtStridingMeshInterfaceData (BtStridingMeshInterfaceData fptr) = withForeignPtr fptr
mkBtStridingMeshInterfaceData p = liftM BtStridingMeshInterfaceData $ newForeignPtr_ $ castPtr p
{#pointer O_btSubSimplexClosestResult as BtSubSimplexClosestResult foreign newtype nocode#}
newtype BtSubSimplexClosestResult = BtSubSimplexClosestResult (ForeignPtr (BtSubSimplexClosestResult)) deriving (Eq,Ord,Show)
withBtSubSimplexClosestResult (BtSubSimplexClosestResult fptr) = withForeignPtr fptr
mkBtSubSimplexClosestResult p = liftM BtSubSimplexClosestResult $ newForeignPtr_ $ castPtr p
{#pointer O_btTetrahedronShapeEx as BtTetrahedronShapeEx foreign newtype nocode#}
newtype BtTetrahedronShapeEx = BtTetrahedronShapeEx (ForeignPtr (BtTetrahedronShapeEx)) deriving (Eq,Ord,Show)
withBtTetrahedronShapeEx (BtTetrahedronShapeEx fptr) = withForeignPtr fptr
mkBtTetrahedronShapeEx p = liftM BtTetrahedronShapeEx $ newForeignPtr_ $ castPtr p
{#pointer O_btTransformDoubleData as BtTransformDoubleData foreign newtype nocode#}
newtype BtTransformDoubleData = BtTransformDoubleData (ForeignPtr (BtTransformDoubleData)) deriving (Eq,Ord,Show)
withBtTransformDoubleData (BtTransformDoubleData fptr) = withForeignPtr fptr
mkBtTransformDoubleData p = liftM BtTransformDoubleData $ newForeignPtr_ $ castPtr p
{#pointer O_btTransformFloatData as BtTransformFloatData foreign newtype nocode#}
newtype BtTransformFloatData = BtTransformFloatData (ForeignPtr (BtTransformFloatData)) deriving (Eq,Ord,Show)
withBtTransformFloatData (BtTransformFloatData fptr) = withForeignPtr fptr
mkBtTransformFloatData p = liftM BtTransformFloatData $ newForeignPtr_ $ castPtr p
{#pointer O_btTransformUtil as BtTransformUtil foreign newtype nocode#}
newtype BtTransformUtil = BtTransformUtil (ForeignPtr (BtTransformUtil)) deriving (Eq,Ord,Show)
withBtTransformUtil (BtTransformUtil fptr) = withForeignPtr fptr
mkBtTransformUtil p = liftM BtTransformUtil $ newForeignPtr_ $ castPtr p
{#pointer O_btTranslationalLimitMotor as BtTranslationalLimitMotor foreign newtype nocode#}
newtype BtTranslationalLimitMotor = BtTranslationalLimitMotor (ForeignPtr (BtTranslationalLimitMotor)) deriving (Eq,Ord,Show)
withBtTranslationalLimitMotor (BtTranslationalLimitMotor fptr) = withForeignPtr fptr
mkBtTranslationalLimitMotor p = liftM BtTranslationalLimitMotor $ newForeignPtr_ $ castPtr p
{#pointer O_btTriangleCallback as BtTriangleCallback foreign newtype nocode#}
newtype BtTriangleCallback = BtTriangleCallback (ForeignPtr (BtTriangleCallback)) deriving (Eq,Ord,Show)
withBtTriangleCallback (BtTriangleCallback fptr) = withForeignPtr fptr
mkBtTriangleCallback p = liftM BtTriangleCallback $ newForeignPtr_ $ castPtr p
{#pointer O_btTriangleIndexVertexArray as BtTriangleIndexVertexArray foreign newtype nocode#}
newtype BtTriangleIndexVertexArray = BtTriangleIndexVertexArray (ForeignPtr (BtTriangleIndexVertexArray)) deriving (Eq,Ord,Show)
withBtTriangleIndexVertexArray (BtTriangleIndexVertexArray fptr) = withForeignPtr fptr
mkBtTriangleIndexVertexArray p = liftM BtTriangleIndexVertexArray $ newForeignPtr_ $ castPtr p
{#pointer O_btTriangleInfo as BtTriangleInfo foreign newtype nocode#}
newtype BtTriangleInfo = BtTriangleInfo (ForeignPtr (BtTriangleInfo)) deriving (Eq,Ord,Show)
withBtTriangleInfo (BtTriangleInfo fptr) = withForeignPtr fptr
mkBtTriangleInfo p = liftM BtTriangleInfo $ newForeignPtr_ $ castPtr p
{#pointer O_btTriangleInfoData as BtTriangleInfoData foreign newtype nocode#}
newtype BtTriangleInfoData = BtTriangleInfoData (ForeignPtr (BtTriangleInfoData)) deriving (Eq,Ord,Show)
withBtTriangleInfoData (BtTriangleInfoData fptr) = withForeignPtr fptr
mkBtTriangleInfoData p = liftM BtTriangleInfoData $ newForeignPtr_ $ castPtr p
{#pointer O_btTriangleInfoMap as BtTriangleInfoMap foreign newtype nocode#}
newtype BtTriangleInfoMap = BtTriangleInfoMap (ForeignPtr (BtTriangleInfoMap)) deriving (Eq,Ord,Show)
withBtTriangleInfoMap (BtTriangleInfoMap fptr) = withForeignPtr fptr
mkBtTriangleInfoMap p = liftM BtTriangleInfoMap $ newForeignPtr_ $ castPtr p
{#pointer O_btTriangleInfoMapData as BtTriangleInfoMapData foreign newtype nocode#}
newtype BtTriangleInfoMapData = BtTriangleInfoMapData (ForeignPtr (BtTriangleInfoMapData)) deriving (Eq,Ord,Show)
withBtTriangleInfoMapData (BtTriangleInfoMapData fptr) = withForeignPtr fptr
mkBtTriangleInfoMapData p = liftM BtTriangleInfoMapData $ newForeignPtr_ $ castPtr p
{#pointer O_btTriangleMesh as BtTriangleMesh foreign newtype nocode#}
newtype BtTriangleMesh = BtTriangleMesh (ForeignPtr (BtTriangleMesh)) deriving (Eq,Ord,Show)
withBtTriangleMesh (BtTriangleMesh fptr) = withForeignPtr fptr
mkBtTriangleMesh p = liftM BtTriangleMesh $ newForeignPtr_ $ castPtr p
{#pointer O_btTriangleMeshShape as BtTriangleMeshShape foreign newtype nocode#}
newtype BtTriangleMeshShape = BtTriangleMeshShape (ForeignPtr (BtTriangleMeshShape)) deriving (Eq,Ord,Show)
withBtTriangleMeshShape (BtTriangleMeshShape fptr) = withForeignPtr fptr
mkBtTriangleMeshShape p = liftM BtTriangleMeshShape $ newForeignPtr_ $ castPtr p
{#pointer O_btTriangleMeshShapeData as BtTriangleMeshShapeData foreign newtype nocode#}
newtype BtTriangleMeshShapeData = BtTriangleMeshShapeData (ForeignPtr (BtTriangleMeshShapeData)) deriving (Eq,Ord,Show)
withBtTriangleMeshShapeData (BtTriangleMeshShapeData fptr) = withForeignPtr fptr
mkBtTriangleMeshShapeData p = liftM BtTriangleMeshShapeData $ newForeignPtr_ $ castPtr p
{#pointer O_btTriangleShape as BtTriangleShape foreign newtype nocode#}
newtype BtTriangleShape = BtTriangleShape (ForeignPtr (BtTriangleShape)) deriving (Eq,Ord,Show)
withBtTriangleShape (BtTriangleShape fptr) = withForeignPtr fptr
mkBtTriangleShape p = liftM BtTriangleShape $ newForeignPtr_ $ castPtr p
{#pointer O_btTriangleShapeEx as BtTriangleShapeEx foreign newtype nocode#}
newtype BtTriangleShapeEx = BtTriangleShapeEx (ForeignPtr (BtTriangleShapeEx)) deriving (Eq,Ord,Show)
withBtTriangleShapeEx (BtTriangleShapeEx fptr) = withForeignPtr fptr
mkBtTriangleShapeEx p = liftM BtTriangleShapeEx $ newForeignPtr_ $ castPtr p
{#pointer O_btTypedConstraint as BtTypedConstraint foreign newtype nocode#}
newtype BtTypedConstraint = BtTypedConstraint (ForeignPtr (BtTypedConstraint)) deriving (Eq,Ord,Show)
withBtTypedConstraint (BtTypedConstraint fptr) = withForeignPtr fptr
mkBtTypedConstraint p = liftM BtTypedConstraint $ newForeignPtr_ $ castPtr p
{#pointer O_btTypedConstraintData as BtTypedConstraintData foreign newtype nocode#}
newtype BtTypedConstraintData = BtTypedConstraintData (ForeignPtr (BtTypedConstraintData)) deriving (Eq,Ord,Show)
withBtTypedConstraintData (BtTypedConstraintData fptr) = withForeignPtr fptr
mkBtTypedConstraintData p = liftM BtTypedConstraintData $ newForeignPtr_ $ castPtr p
{#pointer O_btTypedObject as BtTypedObject foreign newtype nocode#}
newtype BtTypedObject = BtTypedObject (ForeignPtr (BtTypedObject)) deriving (Eq,Ord,Show)
withBtTypedObject (BtTypedObject fptr) = withForeignPtr fptr
mkBtTypedObject p = liftM BtTypedObject $ newForeignPtr_ $ castPtr p
{#pointer O_btUniformScalingShape as BtUniformScalingShape foreign newtype nocode#}
newtype BtUniformScalingShape = BtUniformScalingShape (ForeignPtr (BtUniformScalingShape)) deriving (Eq,Ord,Show)
withBtUniformScalingShape (BtUniformScalingShape fptr) = withForeignPtr fptr
mkBtUniformScalingShape p = liftM BtUniformScalingShape $ newForeignPtr_ $ castPtr p
{#pointer O_btUniversalConstraint as BtUniversalConstraint foreign newtype nocode#}
newtype BtUniversalConstraint = BtUniversalConstraint (ForeignPtr (BtUniversalConstraint)) deriving (Eq,Ord,Show)
withBtUniversalConstraint (BtUniversalConstraint fptr) = withForeignPtr fptr
mkBtUniversalConstraint p = liftM BtUniversalConstraint $ newForeignPtr_ $ castPtr p
{#pointer O_btUsageBitfield as BtUsageBitfield foreign newtype nocode#}
newtype BtUsageBitfield = BtUsageBitfield (ForeignPtr (BtUsageBitfield)) deriving (Eq,Ord,Show)
withBtUsageBitfield (BtUsageBitfield fptr) = withForeignPtr fptr
mkBtUsageBitfield p = liftM BtUsageBitfield $ newForeignPtr_ $ castPtr p
{#pointer O_btVector3DoubleData as BtVector3DoubleData foreign newtype nocode#}
newtype BtVector3DoubleData = BtVector3DoubleData (ForeignPtr (BtVector3DoubleData)) deriving (Eq,Ord,Show)
withBtVector3DoubleData (BtVector3DoubleData fptr) = withForeignPtr fptr
mkBtVector3DoubleData p = liftM BtVector3DoubleData $ newForeignPtr_ $ castPtr p
{#pointer O_btVector3FloatData as BtVector3FloatData foreign newtype nocode#}
newtype BtVector3FloatData = BtVector3FloatData (ForeignPtr (BtVector3FloatData)) deriving (Eq,Ord,Show)
withBtVector3FloatData (BtVector3FloatData fptr) = withForeignPtr fptr
mkBtVector3FloatData p = liftM BtVector3FloatData $ newForeignPtr_ $ castPtr p
{#pointer O_btVehicleRaycaster as BtVehicleRaycaster foreign newtype nocode#}
newtype BtVehicleRaycaster = BtVehicleRaycaster (ForeignPtr (BtVehicleRaycaster)) deriving (Eq,Ord,Show)
withBtVehicleRaycaster (BtVehicleRaycaster fptr) = withForeignPtr fptr
mkBtVehicleRaycaster p = liftM BtVehicleRaycaster $ newForeignPtr_ $ castPtr p
{#pointer O_btVehicleRaycaster_btVehicleRaycasterResult as BtVehicleRaycaster_btVehicleRaycasterResult foreign newtype nocode#}
newtype BtVehicleRaycaster_btVehicleRaycasterResult = BtVehicleRaycaster_btVehicleRaycasterResult (ForeignPtr (BtVehicleRaycaster_btVehicleRaycasterResult)) deriving (Eq,Ord,Show)
withBtVehicleRaycaster_btVehicleRaycasterResult (BtVehicleRaycaster_btVehicleRaycasterResult fptr) = withForeignPtr fptr
mkBtVehicleRaycaster_btVehicleRaycasterResult p = liftM BtVehicleRaycaster_btVehicleRaycasterResult $ newForeignPtr_ $ castPtr p
{#pointer O_btRaycastVehicle_btVehicleTuning as BtRaycastVehicle_btVehicleTuning foreign newtype nocode#}
newtype BtRaycastVehicle_btVehicleTuning = BtRaycastVehicle_btVehicleTuning (ForeignPtr (BtRaycastVehicle_btVehicleTuning)) deriving (Eq,Ord,Show)
withBtRaycastVehicle_btVehicleTuning (BtRaycastVehicle_btVehicleTuning fptr) = withForeignPtr fptr
mkBtRaycastVehicle_btVehicleTuning p = liftM BtRaycastVehicle_btVehicleTuning $ newForeignPtr_ $ castPtr p
{#pointer O_btVoronoiSimplexSolver as BtVoronoiSimplexSolver foreign newtype nocode#}
newtype BtVoronoiSimplexSolver = BtVoronoiSimplexSolver (ForeignPtr (BtVoronoiSimplexSolver)) deriving (Eq,Ord,Show)
withBtVoronoiSimplexSolver (BtVoronoiSimplexSolver fptr) = withForeignPtr fptr
mkBtVoronoiSimplexSolver p = liftM BtVoronoiSimplexSolver $ newForeignPtr_ $ castPtr p
{#pointer O_btWheelInfo as BtWheelInfo foreign newtype nocode#}
newtype BtWheelInfo = BtWheelInfo (ForeignPtr (BtWheelInfo)) deriving (Eq,Ord,Show)
withBtWheelInfo (BtWheelInfo fptr) = withForeignPtr fptr
mkBtWheelInfo p = liftM BtWheelInfo $ newForeignPtr_ $ castPtr p
{#pointer O_btWheelInfoConstructionInfo as BtWheelInfoConstructionInfo foreign newtype nocode#}
newtype BtWheelInfoConstructionInfo = BtWheelInfoConstructionInfo (ForeignPtr (BtWheelInfoConstructionInfo)) deriving (Eq,Ord,Show)
withBtWheelInfoConstructionInfo (BtWheelInfoConstructionInfo fptr) = withForeignPtr fptr
mkBtWheelInfoConstructionInfo p = liftM BtWheelInfoConstructionInfo $ newForeignPtr_ $ castPtr p
{#pointer O_btSoftBody_eAeroModel as BtSoftBody_eAeroModel foreign newtype nocode#}
newtype BtSoftBody_eAeroModel = BtSoftBody_eAeroModel (ForeignPtr (BtSoftBody_eAeroModel)) deriving (Eq,Ord,Show)
withBtSoftBody_eAeroModel (BtSoftBody_eAeroModel fptr) = withForeignPtr fptr
mkBtSoftBody_eAeroModel p = liftM BtSoftBody_eAeroModel $ newForeignPtr_ $ castPtr p
{#pointer O_btSoftBody_eFeature as BtSoftBody_eFeature foreign newtype nocode#}
newtype BtSoftBody_eFeature = BtSoftBody_eFeature (ForeignPtr (BtSoftBody_eFeature)) deriving (Eq,Ord,Show)
withBtSoftBody_eFeature (BtSoftBody_eFeature fptr) = withForeignPtr fptr
mkBtSoftBody_eFeature p = liftM BtSoftBody_eFeature $ newForeignPtr_ $ castPtr p
{#pointer O_btSoftBody_ePSolver as BtSoftBody_ePSolver foreign newtype nocode#}
newtype BtSoftBody_ePSolver = BtSoftBody_ePSolver (ForeignPtr (BtSoftBody_ePSolver)) deriving (Eq,Ord,Show)
withBtSoftBody_ePSolver (BtSoftBody_ePSolver fptr) = withForeignPtr fptr
mkBtSoftBody_ePSolver p = liftM BtSoftBody_ePSolver $ newForeignPtr_ $ castPtr p
{#pointer O_btSoftBody_eSolverPresets as BtSoftBody_eSolverPresets foreign newtype nocode#}
newtype BtSoftBody_eSolverPresets = BtSoftBody_eSolverPresets (ForeignPtr (BtSoftBody_eSolverPresets)) deriving (Eq,Ord,Show)
withBtSoftBody_eSolverPresets (BtSoftBody_eSolverPresets fptr) = withForeignPtr fptr
mkBtSoftBody_eSolverPresets p = liftM BtSoftBody_eSolverPresets $ newForeignPtr_ $ castPtr p
{#pointer O_btSoftBody_Joint_eType as BtSoftBody_Joint_eType foreign newtype nocode#}
newtype BtSoftBody_Joint_eType = BtSoftBody_Joint_eType (ForeignPtr (BtSoftBody_Joint_eType)) deriving (Eq,Ord,Show)
withBtSoftBody_Joint_eType (BtSoftBody_Joint_eType fptr) = withForeignPtr fptr
mkBtSoftBody_Joint_eType p = liftM BtSoftBody_Joint_eType $ newForeignPtr_ $ castPtr p
{#pointer O_btSoftBody_eVSolver as BtSoftBody_eVSolver foreign newtype nocode#}
newtype BtSoftBody_eVSolver = BtSoftBody_eVSolver (ForeignPtr (BtSoftBody_eVSolver)) deriving (Eq,Ord,Show)
withBtSoftBody_eVSolver (BtSoftBody_eVSolver fptr) = withForeignPtr fptr
mkBtSoftBody_eVSolver p = liftM BtSoftBody_eVSolver $ newForeignPtr_ $ castPtr p
{#pointer O_btSoftBody_fCollision as BtSoftBody_fCollision foreign newtype nocode#}
newtype BtSoftBody_fCollision = BtSoftBody_fCollision (ForeignPtr (BtSoftBody_fCollision)) deriving (Eq,Ord,Show)
withBtSoftBody_fCollision (BtSoftBody_fCollision fptr) = withForeignPtr fptr
mkBtSoftBody_fCollision p = liftM BtSoftBody_fCollision $ newForeignPtr_ $ castPtr p
{#pointer O_fDrawFlags as FDrawFlags foreign newtype nocode#}
newtype FDrawFlags = FDrawFlags (ForeignPtr (FDrawFlags)) deriving (Eq,Ord,Show)
withFDrawFlags (FDrawFlags fptr) = withForeignPtr fptr
mkFDrawFlags p = liftM FDrawFlags $ newForeignPtr_ $ castPtr p
{#pointer O_btSoftBody_fMaterial as BtSoftBody_fMaterial foreign newtype nocode#}
newtype BtSoftBody_fMaterial = BtSoftBody_fMaterial (ForeignPtr (BtSoftBody_fMaterial)) deriving (Eq,Ord,Show)
withBtSoftBody_fMaterial (BtSoftBody_fMaterial fptr) = withForeignPtr fptr
mkBtSoftBody_fMaterial p = liftM BtSoftBody_fMaterial $ newForeignPtr_ $ castPtr p
{#pointer O_btSoftBody_sCti as BtSoftBody_sCti foreign newtype nocode#}
newtype BtSoftBody_sCti = BtSoftBody_sCti (ForeignPtr (BtSoftBody_sCti)) deriving (Eq,Ord,Show)
withBtSoftBody_sCti (BtSoftBody_sCti fptr) = withForeignPtr fptr
mkBtSoftBody_sCti p = liftM BtSoftBody_sCti $ newForeignPtr_ $ castPtr p
{#pointer O_btSoftBody_sMedium as BtSoftBody_sMedium foreign newtype nocode#}
newtype BtSoftBody_sMedium = BtSoftBody_sMedium (ForeignPtr (BtSoftBody_sMedium)) deriving (Eq,Ord,Show)
withBtSoftBody_sMedium (BtSoftBody_sMedium fptr) = withForeignPtr fptr
mkBtSoftBody_sMedium p = liftM BtSoftBody_sMedium $ newForeignPtr_ $ castPtr p
{#pointer O_btSoftBody_sRayCast as BtSoftBody_sRayCast foreign newtype nocode#}
newtype BtSoftBody_sRayCast = BtSoftBody_sRayCast (ForeignPtr (BtSoftBody_sRayCast)) deriving (Eq,Ord,Show)
withBtSoftBody_sRayCast (BtSoftBody_sRayCast fptr) = withForeignPtr fptr
mkBtSoftBody_sRayCast p = liftM BtSoftBody_sRayCast $ newForeignPtr_ $ castPtr p
{#pointer O_btGjkEpaSolver2_sResults as BtGjkEpaSolver2_sResults foreign newtype nocode#}
newtype BtGjkEpaSolver2_sResults = BtGjkEpaSolver2_sResults (ForeignPtr (BtGjkEpaSolver2_sResults)) deriving (Eq,Ord,Show)
withBtGjkEpaSolver2_sResults (BtGjkEpaSolver2_sResults fptr) = withForeignPtr fptr
mkBtGjkEpaSolver2_sResults p = liftM BtGjkEpaSolver2_sResults $ newForeignPtr_ $ castPtr p
{#pointer O_btDbvt_sStkCLN as BtDbvt_sStkCLN foreign newtype nocode#}
newtype BtDbvt_sStkCLN = BtDbvt_sStkCLN (ForeignPtr (BtDbvt_sStkCLN)) deriving (Eq,Ord,Show)
withBtDbvt_sStkCLN (BtDbvt_sStkCLN fptr) = withForeignPtr fptr
mkBtDbvt_sStkCLN p = liftM BtDbvt_sStkCLN $ newForeignPtr_ $ castPtr p
{#pointer O_btDbvt_sStkNN as BtDbvt_sStkNN foreign newtype nocode#}
newtype BtDbvt_sStkNN = BtDbvt_sStkNN (ForeignPtr (BtDbvt_sStkNN)) deriving (Eq,Ord,Show)
withBtDbvt_sStkNN (BtDbvt_sStkNN fptr) = withForeignPtr fptr
mkBtDbvt_sStkNN p = liftM BtDbvt_sStkNN $ newForeignPtr_ $ castPtr p
{#pointer O_btDbvt_sStkNP as BtDbvt_sStkNP foreign newtype nocode#}
newtype BtDbvt_sStkNP = BtDbvt_sStkNP (ForeignPtr (BtDbvt_sStkNP)) deriving (Eq,Ord,Show)
withBtDbvt_sStkNP (BtDbvt_sStkNP fptr) = withForeignPtr fptr
mkBtDbvt_sStkNP p = liftM BtDbvt_sStkNP $ newForeignPtr_ $ castPtr p
{#pointer O_btDbvt_sStkNPS as BtDbvt_sStkNPS foreign newtype nocode#}
newtype BtDbvt_sStkNPS = BtDbvt_sStkNPS (ForeignPtr (BtDbvt_sStkNPS)) deriving (Eq,Ord,Show)
withBtDbvt_sStkNPS (BtDbvt_sStkNPS fptr) = withForeignPtr fptr
mkBtDbvt_sStkNPS p = liftM BtDbvt_sStkNPS $ newForeignPtr_ $ castPtr p
-- * Class Hierarchy
class BtClass p where
  withBt :: p -> (Ptr a -> IO b) -> IO b
  btToPtr :: p -> Ptr ()
class BtClass p => BtSoftBody_AnchorClass p
instance BtSoftBody_AnchorClass BtSoftBody_Anchor
instance BtClass BtSoftBody_Anchor where
  withBt (BtSoftBody_Anchor p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtSoftBody_Anchor p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BT_BOX_BOX_TRANSFORM_CACHEClass p
instance BT_BOX_BOX_TRANSFORM_CACHEClass BT_BOX_BOX_TRANSFORM_CACHE
instance BtClass BT_BOX_BOX_TRANSFORM_CACHE where
  withBt (BT_BOX_BOX_TRANSFORM_CACHE p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BT_BOX_BOX_TRANSFORM_CACHE p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BT_QUANTIZED_BVH_NODEClass p
instance BT_QUANTIZED_BVH_NODEClass BT_QUANTIZED_BVH_NODE
instance BtClass BT_QUANTIZED_BVH_NODE where
  withBt (BT_QUANTIZED_BVH_NODE p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BT_QUANTIZED_BVH_NODE p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtSoftBody_BodyClass p
instance BtSoftBody_BodyClass BtSoftBody_Body
instance BtClass BtSoftBody_Body where
  withBt (BtSoftBody_Body p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtSoftBody_Body p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => CProfileIteratorClass p
instance CProfileIteratorClass CProfileIterator
instance BtClass CProfileIterator where
  withBt (CProfileIterator p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (CProfileIterator p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => CProfileManagerClass p
instance CProfileManagerClass CProfileManager
instance BtClass CProfileManager where
  withBt (CProfileManager p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (CProfileManager p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => CProfileNodeClass p
instance CProfileNodeClass CProfileNode
instance BtClass CProfileNode where
  withBt (CProfileNode p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (CProfileNode p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => CProfileSampleClass p
instance CProfileSampleClass CProfileSample
instance BtClass CProfileSample where
  withBt (CProfileSample p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (CProfileSample p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtDiscreteCollisionDetectorInterface_ClosestPointInputClass p
instance BtDiscreteCollisionDetectorInterface_ClosestPointInputClass BtDiscreteCollisionDetectorInterface_ClosestPointInput
instance BtClass BtDiscreteCollisionDetectorInterface_ClosestPointInput where
  withBt (BtDiscreteCollisionDetectorInterface_ClosestPointInput p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtDiscreteCollisionDetectorInterface_ClosestPointInput p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtSoftBody_ClusterClass p
instance BtSoftBody_ClusterClass BtSoftBody_Cluster
instance BtClass BtSoftBody_Cluster where
  withBt (BtSoftBody_Cluster p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtSoftBody_Cluster p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtSoftBody_ConfigClass p
instance BtSoftBody_ConfigClass BtSoftBody_Config
instance BtClass BtSoftBody_Config where
  withBt (BtSoftBody_Config p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtSoftBody_Config p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtCollisionWorld_ContactResultCallbackClass p
instance BtCollisionWorld_ContactResultCallbackClass BtCollisionWorld_ContactResultCallback
instance BtClass BtCollisionWorld_ContactResultCallback where
  withBt (BtCollisionWorld_ContactResultCallback p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtCollisionWorld_ContactResultCallback p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtCollisionWorld_ConvexResultCallbackClass p
instance BtCollisionWorld_ConvexResultCallbackClass BtCollisionWorld_ConvexResultCallback
instance BtClass BtCollisionWorld_ConvexResultCallback where
  withBt (BtCollisionWorld_ConvexResultCallback p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtCollisionWorld_ConvexResultCallback p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtSoftBody_ElementClass p
instance BtSoftBody_ElementClass BtSoftBody_Element
instance BtClass BtSoftBody_Element where
  withBt (BtSoftBody_Element p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtSoftBody_Element p) = castPtr $ unsafeForeignPtrToPtr p
class BtSoftBody_ElementClass p => BtSoftBody_FeatureClass p
instance BtSoftBody_ElementClass BtSoftBody_Feature
instance BtSoftBody_FeatureClass BtSoftBody_Feature
instance BtClass BtSoftBody_Feature where
  withBt (BtSoftBody_Feature p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtSoftBody_Feature p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => GIM_BVH_DATAClass p
instance GIM_BVH_DATAClass GIM_BVH_DATA
instance BtClass GIM_BVH_DATA where
  withBt (GIM_BVH_DATA p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (GIM_BVH_DATA p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => GIM_BVH_TREE_NODEClass p
instance GIM_BVH_TREE_NODEClass GIM_BVH_TREE_NODE
instance BtClass GIM_BVH_TREE_NODE where
  withBt (GIM_BVH_TREE_NODE p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (GIM_BVH_TREE_NODE p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => GIM_PAIRClass p
instance GIM_PAIRClass GIM_PAIR
instance BtClass GIM_PAIR where
  withBt (GIM_PAIR p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (GIM_PAIR p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => GIM_TRIANGLE_CONTACTClass p
instance GIM_TRIANGLE_CONTACTClass GIM_TRIANGLE_CONTACT
instance BtClass GIM_TRIANGLE_CONTACT where
  withBt (GIM_TRIANGLE_CONTACT p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (GIM_TRIANGLE_CONTACT p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtDbvt_ICloneClass p
instance BtDbvt_ICloneClass BtDbvt_IClone
instance BtClass BtDbvt_IClone where
  withBt (BtDbvt_IClone p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtDbvt_IClone p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtDbvt_ICollideClass p
instance BtDbvt_ICollideClass BtDbvt_ICollide
instance BtClass BtDbvt_ICollide where
  withBt (BtDbvt_ICollide p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtDbvt_ICollide p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtSoftBody_AJoint_IControlClass p
instance BtSoftBody_AJoint_IControlClass BtSoftBody_AJoint_IControl
instance BtClass BtSoftBody_AJoint_IControl where
  withBt (BtSoftBody_AJoint_IControl p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtSoftBody_AJoint_IControl p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtDbvt_IWriterClass p
instance BtDbvt_IWriterClass BtDbvt_IWriter
instance BtClass BtDbvt_IWriter where
  withBt (BtDbvt_IWriter p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtDbvt_IWriter p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtSoftBody_ImplicitFnClass p
instance BtSoftBody_ImplicitFnClass BtSoftBody_ImplicitFn
instance BtClass BtSoftBody_ImplicitFn where
  withBt (BtSoftBody_ImplicitFn p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtSoftBody_ImplicitFn p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtSoftBody_ImpulseClass p
instance BtSoftBody_ImpulseClass BtSoftBody_Impulse
instance BtClass BtSoftBody_Impulse where
  withBt (BtSoftBody_Impulse p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtSoftBody_Impulse p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtSoftBody_JointClass p
instance BtSoftBody_JointClass BtSoftBody_Joint
instance BtClass BtSoftBody_Joint where
  withBt (BtSoftBody_Joint p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtSoftBody_Joint p) = castPtr $ unsafeForeignPtrToPtr p
class BtSoftBody_JointClass p => BtSoftBody_LJointClass p
instance BtSoftBody_JointClass BtSoftBody_LJoint
instance BtSoftBody_LJointClass BtSoftBody_LJoint
instance BtClass BtSoftBody_LJoint where
  withBt (BtSoftBody_LJoint p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtSoftBody_LJoint p) = castPtr $ unsafeForeignPtrToPtr p
class BtSoftBody_FeatureClass p => BtSoftBody_LinkClass p
instance BtSoftBody_FeatureClass BtSoftBody_Link
instance BtSoftBody_ElementClass BtSoftBody_Link
instance BtSoftBody_LinkClass BtSoftBody_Link
instance BtClass BtSoftBody_Link where
  withBt (BtSoftBody_Link p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtSoftBody_Link p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtCollisionWorld_LocalConvexResultClass p
instance BtCollisionWorld_LocalConvexResultClass BtCollisionWorld_LocalConvexResult
instance BtClass BtCollisionWorld_LocalConvexResult where
  withBt (BtCollisionWorld_LocalConvexResult p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtCollisionWorld_LocalConvexResult p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtCollisionWorld_LocalRayResultClass p
instance BtCollisionWorld_LocalRayResultClass BtCollisionWorld_LocalRayResult
instance BtClass BtCollisionWorld_LocalRayResult where
  withBt (BtCollisionWorld_LocalRayResult p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtCollisionWorld_LocalRayResult p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtCollisionWorld_LocalShapeInfoClass p
instance BtCollisionWorld_LocalShapeInfoClass BtCollisionWorld_LocalShapeInfo
instance BtClass BtCollisionWorld_LocalShapeInfo where
  withBt (BtCollisionWorld_LocalShapeInfo p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtCollisionWorld_LocalShapeInfo p) = castPtr $ unsafeForeignPtrToPtr p
class BtSoftBody_ElementClass p => BtSoftBody_MaterialClass p
instance BtSoftBody_ElementClass BtSoftBody_Material
instance BtSoftBody_MaterialClass BtSoftBody_Material
instance BtClass BtSoftBody_Material where
  withBt (BtSoftBody_Material p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtSoftBody_Material p) = castPtr $ unsafeForeignPtrToPtr p
class BtSoftBody_FeatureClass p => BtSoftBody_NodeClass p
instance BtSoftBody_FeatureClass BtSoftBody_Node
instance BtSoftBody_ElementClass BtSoftBody_Node
instance BtSoftBody_NodeClass BtSoftBody_Node
instance BtClass BtSoftBody_Node where
  withBt (BtSoftBody_Node p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtSoftBody_Node p) = castPtr $ unsafeForeignPtrToPtr p
class BtSoftBody_ElementClass p => BtSoftBody_NoteClass p
instance BtSoftBody_ElementClass BtSoftBody_Note
instance BtSoftBody_NoteClass BtSoftBody_Note
instance BtClass BtSoftBody_Note where
  withBt (BtSoftBody_Note p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtSoftBody_Note p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtSoftBody_PoseClass p
instance BtSoftBody_PoseClass BtSoftBody_Pose
instance BtClass BtSoftBody_Pose where
  withBt (BtSoftBody_Pose p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtSoftBody_Pose p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtSoftBody_RContactClass p
instance BtSoftBody_RContactClass BtSoftBody_RContact
instance BtClass BtSoftBody_RContact where
  withBt (BtSoftBody_RContact p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtSoftBody_RContact p) = castPtr $ unsafeForeignPtrToPtr p
class BtDbvt_ICollideClass p => BtSoftBody_RayFromToCasterClass p
instance BtDbvt_ICollideClass BtSoftBody_RayFromToCaster
instance BtSoftBody_RayFromToCasterClass BtSoftBody_RayFromToCaster
instance BtClass BtSoftBody_RayFromToCaster where
  withBt (BtSoftBody_RayFromToCaster p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtSoftBody_RayFromToCaster p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtCollisionWorld_RayResultCallbackClass p
instance BtCollisionWorld_RayResultCallbackClass BtCollisionWorld_RayResultCallback
instance BtClass BtCollisionWorld_RayResultCallback where
  withBt (BtCollisionWorld_RayResultCallback p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtCollisionWorld_RayResultCallback p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtWheelInfo_RaycastInfoClass p
instance BtWheelInfo_RaycastInfoClass BtWheelInfo_RaycastInfo
instance BtClass BtWheelInfo_RaycastInfo where
  withBt (BtWheelInfo_RaycastInfo p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtWheelInfo_RaycastInfo p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtDiscreteCollisionDetectorInterface_ResultClass p
instance BtDiscreteCollisionDetectorInterface_ResultClass BtDiscreteCollisionDetectorInterface_Result
instance BtClass BtDiscreteCollisionDetectorInterface_Result where
  withBt (BtDiscreteCollisionDetectorInterface_Result p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtDiscreteCollisionDetectorInterface_Result p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtSoftBody_SContactClass p
instance BtSoftBody_SContactClass BtSoftBody_SContact
instance BtClass BtSoftBody_SContact where
  withBt (BtSoftBody_SContact p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtSoftBody_SContact p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtSoftBody_SolverStateClass p
instance BtSoftBody_SolverStateClass BtSoftBody_SolverState
instance BtClass BtSoftBody_SolverState where
  withBt (BtSoftBody_SolverState p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtSoftBody_SolverState p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtSoftBody_Joint_SpecsClass p
instance BtSoftBody_Joint_SpecsClass BtSoftBody_Joint_Specs
instance BtClass BtSoftBody_Joint_Specs where
  withBt (BtSoftBody_Joint_Specs p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtSoftBody_Joint_Specs p) = castPtr $ unsafeForeignPtrToPtr p
class BtSoftBody_Joint_SpecsClass p => BtSoftBody_LJoint_SpecsClass p
instance BtSoftBody_Joint_SpecsClass BtSoftBody_LJoint_Specs
instance BtSoftBody_LJoint_SpecsClass BtSoftBody_LJoint_Specs
instance BtClass BtSoftBody_LJoint_Specs where
  withBt (BtSoftBody_LJoint_Specs p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtSoftBody_LJoint_Specs p) = castPtr $ unsafeForeignPtrToPtr p
class BtSoftBody_Joint_SpecsClass p => BtSoftBody_AJoint_SpecsClass p
instance BtSoftBody_Joint_SpecsClass BtSoftBody_AJoint_Specs
instance BtSoftBody_AJoint_SpecsClass BtSoftBody_AJoint_Specs
instance BtClass BtSoftBody_AJoint_Specs where
  withBt (BtSoftBody_AJoint_Specs p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtSoftBody_AJoint_Specs p) = castPtr $ unsafeForeignPtrToPtr p
class BtSoftBody_FeatureClass p => BtSoftBody_TetraClass p
instance BtSoftBody_FeatureClass BtSoftBody_Tetra
instance BtSoftBody_ElementClass BtSoftBody_Tetra
instance BtSoftBody_TetraClass BtSoftBody_Tetra
instance BtClass BtSoftBody_Tetra where
  withBt (BtSoftBody_Tetra p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtSoftBody_Tetra p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtAABBClass p
instance BtAABBClass BtAABB
instance BtClass BtAABB where
  withBt (BtAABB p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtAABB p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtActionInterfaceClass p
instance BtActionInterfaceClass BtActionInterface
instance BtClass BtActionInterface where
  withBt (BtActionInterface p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtActionInterface p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtAlignedAllocator_BT_QUANTIZED_BVH_NODE_16u_Class p
instance BtAlignedAllocator_BT_QUANTIZED_BVH_NODE_16u_Class BtAlignedAllocator_BT_QUANTIZED_BVH_NODE_16u_
instance BtClass BtAlignedAllocator_BT_QUANTIZED_BVH_NODE_16u_ where
  withBt (BtAlignedAllocator_BT_QUANTIZED_BVH_NODE_16u_ p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtAlignedAllocator_BT_QUANTIZED_BVH_NODE_16u_ p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtAlignedAllocator_GIM_BVH_DATA_16u_Class p
instance BtAlignedAllocator_GIM_BVH_DATA_16u_Class BtAlignedAllocator_GIM_BVH_DATA_16u_
instance BtClass BtAlignedAllocator_GIM_BVH_DATA_16u_ where
  withBt (BtAlignedAllocator_GIM_BVH_DATA_16u_ p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtAlignedAllocator_GIM_BVH_DATA_16u_ p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtAlignedAllocator_GIM_BVH_TREE_NODE_16u_Class p
instance BtAlignedAllocator_GIM_BVH_TREE_NODE_16u_Class BtAlignedAllocator_GIM_BVH_TREE_NODE_16u_
instance BtClass BtAlignedAllocator_GIM_BVH_TREE_NODE_16u_ where
  withBt (BtAlignedAllocator_GIM_BVH_TREE_NODE_16u_ p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtAlignedAllocator_GIM_BVH_TREE_NODE_16u_ p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtAlignedAllocator_GIM_PAIR_16u_Class p
instance BtAlignedAllocator_GIM_PAIR_16u_Class BtAlignedAllocator_GIM_PAIR_16u_
instance BtClass BtAlignedAllocator_GIM_PAIR_16u_ where
  withBt (BtAlignedAllocator_GIM_PAIR_16u_ p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtAlignedAllocator_GIM_PAIR_16u_ p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtAlignedAllocator_bool_16u_Class p
instance BtAlignedAllocator_bool_16u_Class BtAlignedAllocator_bool_16u_
instance BtClass BtAlignedAllocator_bool_16u_ where
  withBt (BtAlignedAllocator_bool_16u_ p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtAlignedAllocator_bool_16u_ p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtAlignedAllocator_btActionInterface_ptr_16u_Class p
instance BtAlignedAllocator_btActionInterface_ptr_16u_Class BtAlignedAllocator_btActionInterface_ptr_16u_
instance BtClass BtAlignedAllocator_btActionInterface_ptr_16u_ where
  withBt (BtAlignedAllocator_btActionInterface_ptr_16u_ p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtAlignedAllocator_btActionInterface_ptr_16u_ p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtAlignedAllocator_btBroadphaseInterface_ptr_16u_Class p
instance BtAlignedAllocator_btBroadphaseInterface_ptr_16u_Class BtAlignedAllocator_btBroadphaseInterface_ptr_16u_
instance BtClass BtAlignedAllocator_btBroadphaseInterface_ptr_16u_ where
  withBt (BtAlignedAllocator_btBroadphaseInterface_ptr_16u_ p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtAlignedAllocator_btBroadphaseInterface_ptr_16u_ p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtAlignedAllocator_btBroadphasePair_16u_Class p
instance BtAlignedAllocator_btBroadphasePair_16u_Class BtAlignedAllocator_btBroadphasePair_16u_
instance BtClass BtAlignedAllocator_btBroadphasePair_16u_ where
  withBt (BtAlignedAllocator_btBroadphasePair_16u_ p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtAlignedAllocator_btBroadphasePair_16u_ p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtAlignedAllocator_btBvhSubtreeInfo_16u_Class p
instance BtAlignedAllocator_btBvhSubtreeInfo_16u_Class BtAlignedAllocator_btBvhSubtreeInfo_16u_
instance BtClass BtAlignedAllocator_btBvhSubtreeInfo_16u_ where
  withBt (BtAlignedAllocator_btBvhSubtreeInfo_16u_ p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtAlignedAllocator_btBvhSubtreeInfo_16u_ p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtAlignedAllocator_btChunk_ptr_16u_Class p
instance BtAlignedAllocator_btChunk_ptr_16u_Class BtAlignedAllocator_btChunk_ptr_16u_
instance BtClass BtAlignedAllocator_btChunk_ptr_16u_ where
  withBt (BtAlignedAllocator_btChunk_ptr_16u_ p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtAlignedAllocator_btChunk_ptr_16u_ p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtAlignedAllocator_btCollisionObject_ptr_16u_Class p
instance BtAlignedAllocator_btCollisionObject_ptr_16u_Class BtAlignedAllocator_btCollisionObject_ptr_16u_
instance BtClass BtAlignedAllocator_btCollisionObject_ptr_16u_ where
  withBt (BtAlignedAllocator_btCollisionObject_ptr_16u_ p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtAlignedAllocator_btCollisionObject_ptr_16u_ p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtAlignedAllocator_btCollisionShape_ptr_16u_Class p
instance BtAlignedAllocator_btCollisionShape_ptr_16u_Class BtAlignedAllocator_btCollisionShape_ptr_16u_
instance BtClass BtAlignedAllocator_btCollisionShape_ptr_16u_ where
  withBt (BtAlignedAllocator_btCollisionShape_ptr_16u_ p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtAlignedAllocator_btCollisionShape_ptr_16u_ p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtAlignedAllocator_btCompoundShapeChild_16u_Class p
instance BtAlignedAllocator_btCompoundShapeChild_16u_Class BtAlignedAllocator_btCompoundShapeChild_16u_
instance BtClass BtAlignedAllocator_btCompoundShapeChild_16u_ where
  withBt (BtAlignedAllocator_btCompoundShapeChild_16u_ p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtAlignedAllocator_btCompoundShapeChild_16u_ p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtAlignedAllocator_btDbvt_sStkNN_16u_Class p
instance BtAlignedAllocator_btDbvt_sStkNN_16u_Class BtAlignedAllocator_btDbvt_sStkNN_16u_
instance BtClass BtAlignedAllocator_btDbvt_sStkNN_16u_ where
  withBt (BtAlignedAllocator_btDbvt_sStkNN_16u_ p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtAlignedAllocator_btDbvt_sStkNN_16u_ p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtAlignedAllocator_btDbvt_sStkNP_16u_Class p
instance BtAlignedAllocator_btDbvt_sStkNP_16u_Class BtAlignedAllocator_btDbvt_sStkNP_16u_
instance BtClass BtAlignedAllocator_btDbvt_sStkNP_16u_ where
  withBt (BtAlignedAllocator_btDbvt_sStkNP_16u_ p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtAlignedAllocator_btDbvt_sStkNP_16u_ p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtAlignedAllocator_btDbvt_sStkNPS_16u_Class p
instance BtAlignedAllocator_btDbvt_sStkNPS_16u_Class BtAlignedAllocator_btDbvt_sStkNPS_16u_
instance BtClass BtAlignedAllocator_btDbvt_sStkNPS_16u_ where
  withBt (BtAlignedAllocator_btDbvt_sStkNPS_16u_ p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtAlignedAllocator_btDbvt_sStkNPS_16u_ p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtAlignedAllocator_btDbvtNodeconst_ptr_16u_Class p
instance BtAlignedAllocator_btDbvtNodeconst_ptr_16u_Class BtAlignedAllocator_btDbvtNodeconst_ptr_16u_
instance BtClass BtAlignedAllocator_btDbvtNodeconst_ptr_16u_ where
  withBt (BtAlignedAllocator_btDbvtNodeconst_ptr_16u_ p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtAlignedAllocator_btDbvtNodeconst_ptr_16u_ p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtAlignedAllocator_btGImpactMeshShapePart_ptr_16u_Class p
instance BtAlignedAllocator_btGImpactMeshShapePart_ptr_16u_Class BtAlignedAllocator_btGImpactMeshShapePart_ptr_16u_
instance BtClass BtAlignedAllocator_btGImpactMeshShapePart_ptr_16u_ where
  withBt (BtAlignedAllocator_btGImpactMeshShapePart_ptr_16u_ p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtAlignedAllocator_btGImpactMeshShapePart_ptr_16u_ p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtAlignedAllocator_btHashInt_16u_Class p
instance BtAlignedAllocator_btHashInt_16u_Class BtAlignedAllocator_btHashInt_16u_
instance BtClass BtAlignedAllocator_btHashInt_16u_ where
  withBt (BtAlignedAllocator_btHashInt_16u_ p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtAlignedAllocator_btHashInt_16u_ p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtAlignedAllocator_btHashPtr_16u_Class p
instance BtAlignedAllocator_btHashPtr_16u_Class BtAlignedAllocator_btHashPtr_16u_
instance BtClass BtAlignedAllocator_btHashPtr_16u_ where
  withBt (BtAlignedAllocator_btHashPtr_16u_ p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtAlignedAllocator_btHashPtr_16u_ p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtAlignedAllocator_btHashString_16u_Class p
instance BtAlignedAllocator_btHashString_16u_Class BtAlignedAllocator_btHashString_16u_
instance BtClass BtAlignedAllocator_btHashString_16u_ where
  withBt (BtAlignedAllocator_btHashString_16u_ p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtAlignedAllocator_btHashString_16u_ p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtAlignedAllocator_btIndexedMesh_16u_Class p
instance BtAlignedAllocator_btIndexedMesh_16u_Class BtAlignedAllocator_btIndexedMesh_16u_
instance BtClass BtAlignedAllocator_btIndexedMesh_16u_ where
  withBt (BtAlignedAllocator_btIndexedMesh_16u_ p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtAlignedAllocator_btIndexedMesh_16u_ p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtAlignedAllocator_btMultiSapBroadphase_btBridgeProxy_ptr_16u_Class p
instance BtAlignedAllocator_btMultiSapBroadphase_btBridgeProxy_ptr_16u_Class BtAlignedAllocator_btMultiSapBroadphase_btBridgeProxy_ptr_16u_
instance BtClass BtAlignedAllocator_btMultiSapBroadphase_btBridgeProxy_ptr_16u_ where
  withBt (BtAlignedAllocator_btMultiSapBroadphase_btBridgeProxy_ptr_16u_ p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtAlignedAllocator_btMultiSapBroadphase_btBridgeProxy_ptr_16u_ p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtAlignedAllocator_btMultiSapBroadphase_btMultiSapProxy_ptr_16u_Class p
instance BtAlignedAllocator_btMultiSapBroadphase_btMultiSapProxy_ptr_16u_Class BtAlignedAllocator_btMultiSapBroadphase_btMultiSapProxy_ptr_16u_
instance BtClass BtAlignedAllocator_btMultiSapBroadphase_btMultiSapProxy_ptr_16u_ where
  withBt (BtAlignedAllocator_btMultiSapBroadphase_btMultiSapProxy_ptr_16u_ p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtAlignedAllocator_btMultiSapBroadphase_btMultiSapProxy_ptr_16u_ p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtAlignedAllocator_btOptimizedBvhNode_16u_Class p
instance BtAlignedAllocator_btOptimizedBvhNode_16u_Class BtAlignedAllocator_btOptimizedBvhNode_16u_
instance BtClass BtAlignedAllocator_btOptimizedBvhNode_16u_ where
  withBt (BtAlignedAllocator_btOptimizedBvhNode_16u_ p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtAlignedAllocator_btOptimizedBvhNode_16u_ p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtAlignedAllocator_btPersistentManifold_ptr_16u_Class p
instance BtAlignedAllocator_btPersistentManifold_ptr_16u_Class BtAlignedAllocator_btPersistentManifold_ptr_16u_
instance BtClass BtAlignedAllocator_btPersistentManifold_ptr_16u_ where
  withBt (BtAlignedAllocator_btPersistentManifold_ptr_16u_ p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtAlignedAllocator_btPersistentManifold_ptr_16u_ p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtAlignedAllocator_btPointerUid_16u_Class p
instance BtAlignedAllocator_btPointerUid_16u_Class BtAlignedAllocator_btPointerUid_16u_
instance BtClass BtAlignedAllocator_btPointerUid_16u_ where
  withBt (BtAlignedAllocator_btPointerUid_16u_ p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtAlignedAllocator_btPointerUid_16u_ p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtAlignedAllocator_btQuantizedBvhNode_16u_Class p
instance BtAlignedAllocator_btQuantizedBvhNode_16u_Class BtAlignedAllocator_btQuantizedBvhNode_16u_
instance BtClass BtAlignedAllocator_btQuantizedBvhNode_16u_ where
  withBt (BtAlignedAllocator_btQuantizedBvhNode_16u_ p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtAlignedAllocator_btQuantizedBvhNode_16u_ p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtAlignedAllocator_btRigidBody_ptr_16u_Class p
instance BtAlignedAllocator_btRigidBody_ptr_16u_Class BtAlignedAllocator_btRigidBody_ptr_16u_
instance BtClass BtAlignedAllocator_btRigidBody_ptr_16u_ where
  withBt (BtAlignedAllocator_btRigidBody_ptr_16u_ p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtAlignedAllocator_btRigidBody_ptr_16u_ p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtAlignedAllocator_btSoftBody_ptr_16u_Class p
instance BtAlignedAllocator_btSoftBody_ptr_16u_Class BtAlignedAllocator_btSoftBody_ptr_16u_
instance BtClass BtAlignedAllocator_btSoftBody_ptr_16u_ where
  withBt (BtAlignedAllocator_btSoftBody_ptr_16u_ p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtAlignedAllocator_btSoftBody_ptr_16u_ p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtAlignedAllocator_btSoftBody_Anchor_16u_Class p
instance BtAlignedAllocator_btSoftBody_Anchor_16u_Class BtAlignedAllocator_btSoftBody_Anchor_16u_
instance BtClass BtAlignedAllocator_btSoftBody_Anchor_16u_ where
  withBt (BtAlignedAllocator_btSoftBody_Anchor_16u_ p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtAlignedAllocator_btSoftBody_Anchor_16u_ p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtAlignedAllocator_btSoftBody_Cluster_ptr_16u_Class p
instance BtAlignedAllocator_btSoftBody_Cluster_ptr_16u_Class BtAlignedAllocator_btSoftBody_Cluster_ptr_16u_
instance BtClass BtAlignedAllocator_btSoftBody_Cluster_ptr_16u_ where
  withBt (BtAlignedAllocator_btSoftBody_Cluster_ptr_16u_ p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtAlignedAllocator_btSoftBody_Cluster_ptr_16u_ p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtAlignedAllocator_btSoftBody_Face_16u_Class p
instance BtAlignedAllocator_btSoftBody_Face_16u_Class BtAlignedAllocator_btSoftBody_Face_16u_
instance BtClass BtAlignedAllocator_btSoftBody_Face_16u_ where
  withBt (BtAlignedAllocator_btSoftBody_Face_16u_ p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtAlignedAllocator_btSoftBody_Face_16u_ p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtAlignedAllocator_btSoftBody_Joint_ptr_16u_Class p
instance BtAlignedAllocator_btSoftBody_Joint_ptr_16u_Class BtAlignedAllocator_btSoftBody_Joint_ptr_16u_
instance BtClass BtAlignedAllocator_btSoftBody_Joint_ptr_16u_ where
  withBt (BtAlignedAllocator_btSoftBody_Joint_ptr_16u_ p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtAlignedAllocator_btSoftBody_Joint_ptr_16u_ p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtAlignedAllocator_btSoftBody_Link_16u_Class p
instance BtAlignedAllocator_btSoftBody_Link_16u_Class BtAlignedAllocator_btSoftBody_Link_16u_
instance BtClass BtAlignedAllocator_btSoftBody_Link_16u_ where
  withBt (BtAlignedAllocator_btSoftBody_Link_16u_ p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtAlignedAllocator_btSoftBody_Link_16u_ p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtAlignedAllocator_btSoftBody_Material_ptr_16u_Class p
instance BtAlignedAllocator_btSoftBody_Material_ptr_16u_Class BtAlignedAllocator_btSoftBody_Material_ptr_16u_
instance BtClass BtAlignedAllocator_btSoftBody_Material_ptr_16u_ where
  withBt (BtAlignedAllocator_btSoftBody_Material_ptr_16u_ p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtAlignedAllocator_btSoftBody_Material_ptr_16u_ p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtAlignedAllocator_btSoftBody_Node_ptr_16u_Class p
instance BtAlignedAllocator_btSoftBody_Node_ptr_16u_Class BtAlignedAllocator_btSoftBody_Node_ptr_16u_
instance BtClass BtAlignedAllocator_btSoftBody_Node_ptr_16u_ where
  withBt (BtAlignedAllocator_btSoftBody_Node_ptr_16u_ p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtAlignedAllocator_btSoftBody_Node_ptr_16u_ p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtAlignedAllocator_btSoftBody_Node_16u_Class p
instance BtAlignedAllocator_btSoftBody_Node_16u_Class BtAlignedAllocator_btSoftBody_Node_16u_
instance BtClass BtAlignedAllocator_btSoftBody_Node_16u_ where
  withBt (BtAlignedAllocator_btSoftBody_Node_16u_ p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtAlignedAllocator_btSoftBody_Node_16u_ p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtAlignedAllocator_btSoftBody_Note_16u_Class p
instance BtAlignedAllocator_btSoftBody_Note_16u_Class BtAlignedAllocator_btSoftBody_Note_16u_
instance BtClass BtAlignedAllocator_btSoftBody_Note_16u_ where
  withBt (BtAlignedAllocator_btSoftBody_Note_16u_ p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtAlignedAllocator_btSoftBody_Note_16u_ p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtAlignedAllocator_btSoftBody_RContact_16u_Class p
instance BtAlignedAllocator_btSoftBody_RContact_16u_Class BtAlignedAllocator_btSoftBody_RContact_16u_
instance BtClass BtAlignedAllocator_btSoftBody_RContact_16u_ where
  withBt (BtAlignedAllocator_btSoftBody_RContact_16u_ p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtAlignedAllocator_btSoftBody_RContact_16u_ p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtAlignedAllocator_btSoftBody_SContact_16u_Class p
instance BtAlignedAllocator_btSoftBody_SContact_16u_Class BtAlignedAllocator_btSoftBody_SContact_16u_
instance BtClass BtAlignedAllocator_btSoftBody_SContact_16u_ where
  withBt (BtAlignedAllocator_btSoftBody_SContact_16u_ p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtAlignedAllocator_btSoftBody_SContact_16u_ p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtAlignedAllocator_btSoftBody_Tetra_16u_Class p
instance BtAlignedAllocator_btSoftBody_Tetra_16u_Class BtAlignedAllocator_btSoftBody_Tetra_16u_
instance BtClass BtAlignedAllocator_btSoftBody_Tetra_16u_ where
  withBt (BtAlignedAllocator_btSoftBody_Tetra_16u_ p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtAlignedAllocator_btSoftBody_Tetra_16u_ p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtAlignedAllocator_btSoftBody_ePSolver___16u_Class p
instance BtAlignedAllocator_btSoftBody_ePSolver___16u_Class BtAlignedAllocator_btSoftBody_ePSolver___16u_
instance BtClass BtAlignedAllocator_btSoftBody_ePSolver___16u_ where
  withBt (BtAlignedAllocator_btSoftBody_ePSolver___16u_ p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtAlignedAllocator_btSoftBody_ePSolver___16u_ p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtAlignedAllocator_btSoftBody_eVSolver___16u_Class p
instance BtAlignedAllocator_btSoftBody_eVSolver___16u_Class BtAlignedAllocator_btSoftBody_eVSolver___16u_
instance BtClass BtAlignedAllocator_btSoftBody_eVSolver___16u_ where
  withBt (BtAlignedAllocator_btSoftBody_eVSolver___16u_ p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtAlignedAllocator_btSoftBody_eVSolver___16u_ p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtAlignedAllocator_btSolverConstraint_16u_Class p
instance BtAlignedAllocator_btSolverConstraint_16u_Class BtAlignedAllocator_btSolverConstraint_16u_
instance BtClass BtAlignedAllocator_btSolverConstraint_16u_ where
  withBt (BtAlignedAllocator_btSolverConstraint_16u_ p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtAlignedAllocator_btSolverConstraint_16u_ p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtAlignedAllocator_btSparseSdf_3__Cell_ptr_16u_Class p
instance BtAlignedAllocator_btSparseSdf_3__Cell_ptr_16u_Class BtAlignedAllocator_btSparseSdf_3__Cell_ptr_16u_
instance BtClass BtAlignedAllocator_btSparseSdf_3__Cell_ptr_16u_ where
  withBt (BtAlignedAllocator_btSparseSdf_3__Cell_ptr_16u_ p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtAlignedAllocator_btSparseSdf_3__Cell_ptr_16u_ p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtAlignedAllocator_btTransform_16u_Class p
instance BtAlignedAllocator_btTransform_16u_Class BtAlignedAllocator_btTransform_16u_
instance BtClass BtAlignedAllocator_btTransform_16u_ where
  withBt (BtAlignedAllocator_btTransform_16u_ p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtAlignedAllocator_btTransform_16u_ p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtAlignedAllocator_btTriangleInfo_16u_Class p
instance BtAlignedAllocator_btTriangleInfo_16u_Class BtAlignedAllocator_btTriangleInfo_16u_
instance BtClass BtAlignedAllocator_btTriangleInfo_16u_ where
  withBt (BtAlignedAllocator_btTriangleInfo_16u_ p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtAlignedAllocator_btTriangleInfo_16u_ p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtAlignedAllocator_btTypedConstraint_ptr_16u_Class p
instance BtAlignedAllocator_btTypedConstraint_ptr_16u_Class BtAlignedAllocator_btTypedConstraint_ptr_16u_
instance BtClass BtAlignedAllocator_btTypedConstraint_ptr_16u_ where
  withBt (BtAlignedAllocator_btTypedConstraint_ptr_16u_ p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtAlignedAllocator_btTypedConstraint_ptr_16u_ p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtAlignedAllocator_btTypedConstraint_btConstraintInfo1_16u_Class p
instance BtAlignedAllocator_btTypedConstraint_btConstraintInfo1_16u_Class BtAlignedAllocator_btTypedConstraint_btConstraintInfo1_16u_
instance BtClass BtAlignedAllocator_btTypedConstraint_btConstraintInfo1_16u_ where
  withBt (BtAlignedAllocator_btTypedConstraint_btConstraintInfo1_16u_ p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtAlignedAllocator_btTypedConstraint_btConstraintInfo1_16u_ p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtAlignedAllocator_btVector3_16u_Class p
instance BtAlignedAllocator_btVector3_16u_Class BtAlignedAllocator_btVector3_16u_
instance BtClass BtAlignedAllocator_btVector3_16u_ where
  withBt (BtAlignedAllocator_btVector3_16u_ p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtAlignedAllocator_btVector3_16u_ p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtAlignedAllocator_btWheelInfo_16u_Class p
instance BtAlignedAllocator_btWheelInfo_16u_Class BtAlignedAllocator_btWheelInfo_16u_
instance BtClass BtAlignedAllocator_btWheelInfo_16u_ where
  withBt (BtAlignedAllocator_btWheelInfo_16u_ p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtAlignedAllocator_btWheelInfo_16u_ p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtAlignedAllocator_charconst_ptr_16u_Class p
instance BtAlignedAllocator_charconst_ptr_16u_Class BtAlignedAllocator_charconst_ptr_16u_
instance BtClass BtAlignedAllocator_charconst_ptr_16u_ where
  withBt (BtAlignedAllocator_charconst_ptr_16u_ p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtAlignedAllocator_charconst_ptr_16u_ p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtAlignedAllocator_char_ptr_16u_Class p
instance BtAlignedAllocator_char_ptr_16u_Class BtAlignedAllocator_char_ptr_16u_
instance BtClass BtAlignedAllocator_char_ptr_16u_ where
  withBt (BtAlignedAllocator_char_ptr_16u_ p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtAlignedAllocator_char_ptr_16u_ p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtAlignedAllocator_float_16u_Class p
instance BtAlignedAllocator_float_16u_Class BtAlignedAllocator_float_16u_
instance BtClass BtAlignedAllocator_float_16u_ where
  withBt (BtAlignedAllocator_float_16u_ p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtAlignedAllocator_float_16u_ p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtAlignedAllocator_int_16u_Class p
instance BtAlignedAllocator_int_16u_Class BtAlignedAllocator_int_16u_
instance BtClass BtAlignedAllocator_int_16u_ where
  withBt (BtAlignedAllocator_int_16u_ p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtAlignedAllocator_int_16u_ p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtAlignedAllocator_short_ptr_16u_Class p
instance BtAlignedAllocator_short_ptr_16u_Class BtAlignedAllocator_short_ptr_16u_
instance BtClass BtAlignedAllocator_short_ptr_16u_ where
  withBt (BtAlignedAllocator_short_ptr_16u_ p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtAlignedAllocator_short_ptr_16u_ p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtAlignedAllocator_short_16u_Class p
instance BtAlignedAllocator_short_16u_Class BtAlignedAllocator_short_16u_
instance BtClass BtAlignedAllocator_short_16u_ where
  withBt (BtAlignedAllocator_short_16u_ p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtAlignedAllocator_short_16u_ p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtAlignedAllocator_unsignedint_16u_Class p
instance BtAlignedAllocator_unsignedint_16u_Class BtAlignedAllocator_unsignedint_16u_
instance BtClass BtAlignedAllocator_unsignedint_16u_ where
  withBt (BtAlignedAllocator_unsignedint_16u_ p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtAlignedAllocator_unsignedint_16u_ p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtAlignedAllocator_unsignedshort_16u_Class p
instance BtAlignedAllocator_unsignedshort_16u_Class BtAlignedAllocator_unsignedshort_16u_
instance BtClass BtAlignedAllocator_unsignedshort_16u_ where
  withBt (BtAlignedAllocator_unsignedshort_16u_ p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtAlignedAllocator_unsignedshort_16u_ p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtAlignedAllocator_void_ptr_16u_Class p
instance BtAlignedAllocator_void_ptr_16u_Class BtAlignedAllocator_void_ptr_16u_
instance BtClass BtAlignedAllocator_void_ptr_16u_ where
  withBt (BtAlignedAllocator_void_ptr_16u_ p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtAlignedAllocator_void_ptr_16u_ p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtAlignedObjectArray_BT_QUANTIZED_BVH_NODE_Class p
instance BtAlignedObjectArray_BT_QUANTIZED_BVH_NODE_Class BtAlignedObjectArray_BT_QUANTIZED_BVH_NODE_
instance BtClass BtAlignedObjectArray_BT_QUANTIZED_BVH_NODE_ where
  withBt (BtAlignedObjectArray_BT_QUANTIZED_BVH_NODE_ p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtAlignedObjectArray_BT_QUANTIZED_BVH_NODE_ p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtAlignedObjectArray_GIM_BVH_DATA_Class p
instance BtAlignedObjectArray_GIM_BVH_DATA_Class BtAlignedObjectArray_GIM_BVH_DATA_
instance BtClass BtAlignedObjectArray_GIM_BVH_DATA_ where
  withBt (BtAlignedObjectArray_GIM_BVH_DATA_ p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtAlignedObjectArray_GIM_BVH_DATA_ p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtAlignedObjectArray_GIM_BVH_TREE_NODE_Class p
instance BtAlignedObjectArray_GIM_BVH_TREE_NODE_Class BtAlignedObjectArray_GIM_BVH_TREE_NODE_
instance BtClass BtAlignedObjectArray_GIM_BVH_TREE_NODE_ where
  withBt (BtAlignedObjectArray_GIM_BVH_TREE_NODE_ p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtAlignedObjectArray_GIM_BVH_TREE_NODE_ p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtAlignedObjectArray_GIM_PAIR_Class p
instance BtAlignedObjectArray_GIM_PAIR_Class BtAlignedObjectArray_GIM_PAIR_
instance BtClass BtAlignedObjectArray_GIM_PAIR_ where
  withBt (BtAlignedObjectArray_GIM_PAIR_ p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtAlignedObjectArray_GIM_PAIR_ p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtAlignedObjectArray_bool_Class p
instance BtAlignedObjectArray_bool_Class BtAlignedObjectArray_bool_
instance BtClass BtAlignedObjectArray_bool_ where
  withBt (BtAlignedObjectArray_bool_ p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtAlignedObjectArray_bool_ p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtAlignedObjectArray_btActionInterface_ptr_Class p
instance BtAlignedObjectArray_btActionInterface_ptr_Class BtAlignedObjectArray_btActionInterface_ptr_
instance BtClass BtAlignedObjectArray_btActionInterface_ptr_ where
  withBt (BtAlignedObjectArray_btActionInterface_ptr_ p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtAlignedObjectArray_btActionInterface_ptr_ p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtAlignedObjectArray_btBroadphaseInterface_ptr_Class p
instance BtAlignedObjectArray_btBroadphaseInterface_ptr_Class BtAlignedObjectArray_btBroadphaseInterface_ptr_
instance BtClass BtAlignedObjectArray_btBroadphaseInterface_ptr_ where
  withBt (BtAlignedObjectArray_btBroadphaseInterface_ptr_ p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtAlignedObjectArray_btBroadphaseInterface_ptr_ p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtAlignedObjectArray_btBroadphasePair_Class p
instance BtAlignedObjectArray_btBroadphasePair_Class BtAlignedObjectArray_btBroadphasePair_
instance BtClass BtAlignedObjectArray_btBroadphasePair_ where
  withBt (BtAlignedObjectArray_btBroadphasePair_ p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtAlignedObjectArray_btBroadphasePair_ p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtAlignedObjectArray_btBvhSubtreeInfo_Class p
instance BtAlignedObjectArray_btBvhSubtreeInfo_Class BtAlignedObjectArray_btBvhSubtreeInfo_
instance BtClass BtAlignedObjectArray_btBvhSubtreeInfo_ where
  withBt (BtAlignedObjectArray_btBvhSubtreeInfo_ p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtAlignedObjectArray_btBvhSubtreeInfo_ p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtAlignedObjectArray_btChunk_ptr_Class p
instance BtAlignedObjectArray_btChunk_ptr_Class BtAlignedObjectArray_btChunk_ptr_
instance BtClass BtAlignedObjectArray_btChunk_ptr_ where
  withBt (BtAlignedObjectArray_btChunk_ptr_ p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtAlignedObjectArray_btChunk_ptr_ p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtAlignedObjectArray_btCollisionObject_ptr_Class p
instance BtAlignedObjectArray_btCollisionObject_ptr_Class BtAlignedObjectArray_btCollisionObject_ptr_
instance BtClass BtAlignedObjectArray_btCollisionObject_ptr_ where
  withBt (BtAlignedObjectArray_btCollisionObject_ptr_ p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtAlignedObjectArray_btCollisionObject_ptr_ p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtAlignedObjectArray_btCollisionShape_ptr_Class p
instance BtAlignedObjectArray_btCollisionShape_ptr_Class BtAlignedObjectArray_btCollisionShape_ptr_
instance BtClass BtAlignedObjectArray_btCollisionShape_ptr_ where
  withBt (BtAlignedObjectArray_btCollisionShape_ptr_ p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtAlignedObjectArray_btCollisionShape_ptr_ p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtAlignedObjectArray_btCompoundShapeChild_Class p
instance BtAlignedObjectArray_btCompoundShapeChild_Class BtAlignedObjectArray_btCompoundShapeChild_
instance BtClass BtAlignedObjectArray_btCompoundShapeChild_ where
  withBt (BtAlignedObjectArray_btCompoundShapeChild_ p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtAlignedObjectArray_btCompoundShapeChild_ p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtAlignedObjectArray_btDbvt_sStkNN_Class p
instance BtAlignedObjectArray_btDbvt_sStkNN_Class BtAlignedObjectArray_btDbvt_sStkNN_
instance BtClass BtAlignedObjectArray_btDbvt_sStkNN_ where
  withBt (BtAlignedObjectArray_btDbvt_sStkNN_ p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtAlignedObjectArray_btDbvt_sStkNN_ p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtAlignedObjectArray_btDbvt_sStkNP_Class p
instance BtAlignedObjectArray_btDbvt_sStkNP_Class BtAlignedObjectArray_btDbvt_sStkNP_
instance BtClass BtAlignedObjectArray_btDbvt_sStkNP_ where
  withBt (BtAlignedObjectArray_btDbvt_sStkNP_ p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtAlignedObjectArray_btDbvt_sStkNP_ p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtAlignedObjectArray_btDbvt_sStkNPS_Class p
instance BtAlignedObjectArray_btDbvt_sStkNPS_Class BtAlignedObjectArray_btDbvt_sStkNPS_
instance BtClass BtAlignedObjectArray_btDbvt_sStkNPS_ where
  withBt (BtAlignedObjectArray_btDbvt_sStkNPS_ p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtAlignedObjectArray_btDbvt_sStkNPS_ p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtAlignedObjectArray_btDbvtNodeconst_ptr_Class p
instance BtAlignedObjectArray_btDbvtNodeconst_ptr_Class BtAlignedObjectArray_btDbvtNodeconst_ptr_
instance BtClass BtAlignedObjectArray_btDbvtNodeconst_ptr_ where
  withBt (BtAlignedObjectArray_btDbvtNodeconst_ptr_ p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtAlignedObjectArray_btDbvtNodeconst_ptr_ p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtAlignedObjectArray_btGImpactMeshShapePart_ptr_Class p
instance BtAlignedObjectArray_btGImpactMeshShapePart_ptr_Class BtAlignedObjectArray_btGImpactMeshShapePart_ptr_
instance BtClass BtAlignedObjectArray_btGImpactMeshShapePart_ptr_ where
  withBt (BtAlignedObjectArray_btGImpactMeshShapePart_ptr_ p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtAlignedObjectArray_btGImpactMeshShapePart_ptr_ p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtAlignedObjectArray_btHashInt_Class p
instance BtAlignedObjectArray_btHashInt_Class BtAlignedObjectArray_btHashInt_
instance BtClass BtAlignedObjectArray_btHashInt_ where
  withBt (BtAlignedObjectArray_btHashInt_ p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtAlignedObjectArray_btHashInt_ p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtAlignedObjectArray_btHashPtr_Class p
instance BtAlignedObjectArray_btHashPtr_Class BtAlignedObjectArray_btHashPtr_
instance BtClass BtAlignedObjectArray_btHashPtr_ where
  withBt (BtAlignedObjectArray_btHashPtr_ p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtAlignedObjectArray_btHashPtr_ p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtAlignedObjectArray_btHashString_Class p
instance BtAlignedObjectArray_btHashString_Class BtAlignedObjectArray_btHashString_
instance BtClass BtAlignedObjectArray_btHashString_ where
  withBt (BtAlignedObjectArray_btHashString_ p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtAlignedObjectArray_btHashString_ p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtAlignedObjectArray_btIndexedMesh_Class p
instance BtAlignedObjectArray_btIndexedMesh_Class BtAlignedObjectArray_btIndexedMesh_
instance BtClass BtAlignedObjectArray_btIndexedMesh_ where
  withBt (BtAlignedObjectArray_btIndexedMesh_ p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtAlignedObjectArray_btIndexedMesh_ p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtAlignedObjectArray_btMultiSapBroadphase_btBridgeProxy_ptr_Class p
instance BtAlignedObjectArray_btMultiSapBroadphase_btBridgeProxy_ptr_Class BtAlignedObjectArray_btMultiSapBroadphase_btBridgeProxy_ptr_
instance BtClass BtAlignedObjectArray_btMultiSapBroadphase_btBridgeProxy_ptr_ where
  withBt (BtAlignedObjectArray_btMultiSapBroadphase_btBridgeProxy_ptr_ p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtAlignedObjectArray_btMultiSapBroadphase_btBridgeProxy_ptr_ p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtAlignedObjectArray_btMultiSapBroadphase_btMultiSapProxy_ptr_Class p
instance BtAlignedObjectArray_btMultiSapBroadphase_btMultiSapProxy_ptr_Class BtAlignedObjectArray_btMultiSapBroadphase_btMultiSapProxy_ptr_
instance BtClass BtAlignedObjectArray_btMultiSapBroadphase_btMultiSapProxy_ptr_ where
  withBt (BtAlignedObjectArray_btMultiSapBroadphase_btMultiSapProxy_ptr_ p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtAlignedObjectArray_btMultiSapBroadphase_btMultiSapProxy_ptr_ p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtAlignedObjectArray_btOptimizedBvhNode_Class p
instance BtAlignedObjectArray_btOptimizedBvhNode_Class BtAlignedObjectArray_btOptimizedBvhNode_
instance BtClass BtAlignedObjectArray_btOptimizedBvhNode_ where
  withBt (BtAlignedObjectArray_btOptimizedBvhNode_ p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtAlignedObjectArray_btOptimizedBvhNode_ p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtAlignedObjectArray_btPersistentManifold_ptr_Class p
instance BtAlignedObjectArray_btPersistentManifold_ptr_Class BtAlignedObjectArray_btPersistentManifold_ptr_
instance BtClass BtAlignedObjectArray_btPersistentManifold_ptr_ where
  withBt (BtAlignedObjectArray_btPersistentManifold_ptr_ p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtAlignedObjectArray_btPersistentManifold_ptr_ p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtAlignedObjectArray_btPointerUid_Class p
instance BtAlignedObjectArray_btPointerUid_Class BtAlignedObjectArray_btPointerUid_
instance BtClass BtAlignedObjectArray_btPointerUid_ where
  withBt (BtAlignedObjectArray_btPointerUid_ p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtAlignedObjectArray_btPointerUid_ p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtAlignedObjectArray_btQuantizedBvhNode_Class p
instance BtAlignedObjectArray_btQuantizedBvhNode_Class BtAlignedObjectArray_btQuantizedBvhNode_
instance BtClass BtAlignedObjectArray_btQuantizedBvhNode_ where
  withBt (BtAlignedObjectArray_btQuantizedBvhNode_ p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtAlignedObjectArray_btQuantizedBvhNode_ p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtAlignedObjectArray_btRigidBody_ptr_Class p
instance BtAlignedObjectArray_btRigidBody_ptr_Class BtAlignedObjectArray_btRigidBody_ptr_
instance BtClass BtAlignedObjectArray_btRigidBody_ptr_ where
  withBt (BtAlignedObjectArray_btRigidBody_ptr_ p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtAlignedObjectArray_btRigidBody_ptr_ p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtAlignedObjectArray_btSoftBody_ptr_Class p
instance BtAlignedObjectArray_btSoftBody_ptr_Class BtAlignedObjectArray_btSoftBody_ptr_
instance BtClass BtAlignedObjectArray_btSoftBody_ptr_ where
  withBt (BtAlignedObjectArray_btSoftBody_ptr_ p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtAlignedObjectArray_btSoftBody_ptr_ p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtAlignedObjectArray_btSoftBody_Anchor_Class p
instance BtAlignedObjectArray_btSoftBody_Anchor_Class BtAlignedObjectArray_btSoftBody_Anchor_
instance BtClass BtAlignedObjectArray_btSoftBody_Anchor_ where
  withBt (BtAlignedObjectArray_btSoftBody_Anchor_ p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtAlignedObjectArray_btSoftBody_Anchor_ p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtAlignedObjectArray_btSoftBody_Cluster_ptr_Class p
instance BtAlignedObjectArray_btSoftBody_Cluster_ptr_Class BtAlignedObjectArray_btSoftBody_Cluster_ptr_
instance BtClass BtAlignedObjectArray_btSoftBody_Cluster_ptr_ where
  withBt (BtAlignedObjectArray_btSoftBody_Cluster_ptr_ p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtAlignedObjectArray_btSoftBody_Cluster_ptr_ p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtAlignedObjectArray_btSoftBody_Face_Class p
instance BtAlignedObjectArray_btSoftBody_Face_Class BtAlignedObjectArray_btSoftBody_Face_
instance BtClass BtAlignedObjectArray_btSoftBody_Face_ where
  withBt (BtAlignedObjectArray_btSoftBody_Face_ p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtAlignedObjectArray_btSoftBody_Face_ p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtAlignedObjectArray_btSoftBody_Joint_ptr_Class p
instance BtAlignedObjectArray_btSoftBody_Joint_ptr_Class BtAlignedObjectArray_btSoftBody_Joint_ptr_
instance BtClass BtAlignedObjectArray_btSoftBody_Joint_ptr_ where
  withBt (BtAlignedObjectArray_btSoftBody_Joint_ptr_ p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtAlignedObjectArray_btSoftBody_Joint_ptr_ p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtAlignedObjectArray_btSoftBody_Link_Class p
instance BtAlignedObjectArray_btSoftBody_Link_Class BtAlignedObjectArray_btSoftBody_Link_
instance BtClass BtAlignedObjectArray_btSoftBody_Link_ where
  withBt (BtAlignedObjectArray_btSoftBody_Link_ p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtAlignedObjectArray_btSoftBody_Link_ p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtAlignedObjectArray_btSoftBody_Material_ptr_Class p
instance BtAlignedObjectArray_btSoftBody_Material_ptr_Class BtAlignedObjectArray_btSoftBody_Material_ptr_
instance BtClass BtAlignedObjectArray_btSoftBody_Material_ptr_ where
  withBt (BtAlignedObjectArray_btSoftBody_Material_ptr_ p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtAlignedObjectArray_btSoftBody_Material_ptr_ p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtAlignedObjectArray_btSoftBody_Node_ptr_Class p
instance BtAlignedObjectArray_btSoftBody_Node_ptr_Class BtAlignedObjectArray_btSoftBody_Node_ptr_
instance BtClass BtAlignedObjectArray_btSoftBody_Node_ptr_ where
  withBt (BtAlignedObjectArray_btSoftBody_Node_ptr_ p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtAlignedObjectArray_btSoftBody_Node_ptr_ p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtAlignedObjectArray_btSoftBody_Node_Class p
instance BtAlignedObjectArray_btSoftBody_Node_Class BtAlignedObjectArray_btSoftBody_Node_
instance BtClass BtAlignedObjectArray_btSoftBody_Node_ where
  withBt (BtAlignedObjectArray_btSoftBody_Node_ p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtAlignedObjectArray_btSoftBody_Node_ p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtAlignedObjectArray_btSoftBody_Note_Class p
instance BtAlignedObjectArray_btSoftBody_Note_Class BtAlignedObjectArray_btSoftBody_Note_
instance BtClass BtAlignedObjectArray_btSoftBody_Note_ where
  withBt (BtAlignedObjectArray_btSoftBody_Note_ p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtAlignedObjectArray_btSoftBody_Note_ p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtAlignedObjectArray_btSoftBody_RContact_Class p
instance BtAlignedObjectArray_btSoftBody_RContact_Class BtAlignedObjectArray_btSoftBody_RContact_
instance BtClass BtAlignedObjectArray_btSoftBody_RContact_ where
  withBt (BtAlignedObjectArray_btSoftBody_RContact_ p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtAlignedObjectArray_btSoftBody_RContact_ p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtAlignedObjectArray_btSoftBody_SContact_Class p
instance BtAlignedObjectArray_btSoftBody_SContact_Class BtAlignedObjectArray_btSoftBody_SContact_
instance BtClass BtAlignedObjectArray_btSoftBody_SContact_ where
  withBt (BtAlignedObjectArray_btSoftBody_SContact_ p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtAlignedObjectArray_btSoftBody_SContact_ p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtAlignedObjectArray_btSoftBody_Tetra_Class p
instance BtAlignedObjectArray_btSoftBody_Tetra_Class BtAlignedObjectArray_btSoftBody_Tetra_
instance BtClass BtAlignedObjectArray_btSoftBody_Tetra_ where
  withBt (BtAlignedObjectArray_btSoftBody_Tetra_ p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtAlignedObjectArray_btSoftBody_Tetra_ p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtAlignedObjectArray_btSoftBody_ePSolver___Class p
instance BtAlignedObjectArray_btSoftBody_ePSolver___Class BtAlignedObjectArray_btSoftBody_ePSolver___
instance BtClass BtAlignedObjectArray_btSoftBody_ePSolver___ where
  withBt (BtAlignedObjectArray_btSoftBody_ePSolver___ p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtAlignedObjectArray_btSoftBody_ePSolver___ p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtAlignedObjectArray_btSoftBody_eVSolver___Class p
instance BtAlignedObjectArray_btSoftBody_eVSolver___Class BtAlignedObjectArray_btSoftBody_eVSolver___
instance BtClass BtAlignedObjectArray_btSoftBody_eVSolver___ where
  withBt (BtAlignedObjectArray_btSoftBody_eVSolver___ p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtAlignedObjectArray_btSoftBody_eVSolver___ p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtAlignedObjectArray_btSolverConstraint_Class p
instance BtAlignedObjectArray_btSolverConstraint_Class BtAlignedObjectArray_btSolverConstraint_
instance BtClass BtAlignedObjectArray_btSolverConstraint_ where
  withBt (BtAlignedObjectArray_btSolverConstraint_ p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtAlignedObjectArray_btSolverConstraint_ p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtAlignedObjectArray_btSparseSdf_3__Cell_ptr_Class p
instance BtAlignedObjectArray_btSparseSdf_3__Cell_ptr_Class BtAlignedObjectArray_btSparseSdf_3__Cell_ptr_
instance BtClass BtAlignedObjectArray_btSparseSdf_3__Cell_ptr_ where
  withBt (BtAlignedObjectArray_btSparseSdf_3__Cell_ptr_ p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtAlignedObjectArray_btSparseSdf_3__Cell_ptr_ p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtAlignedObjectArray_btTransform_Class p
instance BtAlignedObjectArray_btTransform_Class BtAlignedObjectArray_btTransform_
instance BtClass BtAlignedObjectArray_btTransform_ where
  withBt (BtAlignedObjectArray_btTransform_ p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtAlignedObjectArray_btTransform_ p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtAlignedObjectArray_btTriangleInfo_Class p
instance BtAlignedObjectArray_btTriangleInfo_Class BtAlignedObjectArray_btTriangleInfo_
instance BtClass BtAlignedObjectArray_btTriangleInfo_ where
  withBt (BtAlignedObjectArray_btTriangleInfo_ p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtAlignedObjectArray_btTriangleInfo_ p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtAlignedObjectArray_btTypedConstraint_ptr_Class p
instance BtAlignedObjectArray_btTypedConstraint_ptr_Class BtAlignedObjectArray_btTypedConstraint_ptr_
instance BtClass BtAlignedObjectArray_btTypedConstraint_ptr_ where
  withBt (BtAlignedObjectArray_btTypedConstraint_ptr_ p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtAlignedObjectArray_btTypedConstraint_ptr_ p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtAlignedObjectArray_btTypedConstraint_btConstraintInfo1_Class p
instance BtAlignedObjectArray_btTypedConstraint_btConstraintInfo1_Class BtAlignedObjectArray_btTypedConstraint_btConstraintInfo1_
instance BtClass BtAlignedObjectArray_btTypedConstraint_btConstraintInfo1_ where
  withBt (BtAlignedObjectArray_btTypedConstraint_btConstraintInfo1_ p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtAlignedObjectArray_btTypedConstraint_btConstraintInfo1_ p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtAlignedObjectArray_btVector3_Class p
instance BtAlignedObjectArray_btVector3_Class BtAlignedObjectArray_btVector3_
instance BtClass BtAlignedObjectArray_btVector3_ where
  withBt (BtAlignedObjectArray_btVector3_ p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtAlignedObjectArray_btVector3_ p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtAlignedObjectArray_btWheelInfo_Class p
instance BtAlignedObjectArray_btWheelInfo_Class BtAlignedObjectArray_btWheelInfo_
instance BtClass BtAlignedObjectArray_btWheelInfo_ where
  withBt (BtAlignedObjectArray_btWheelInfo_ p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtAlignedObjectArray_btWheelInfo_ p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtAlignedObjectArray_charconst_ptr_Class p
instance BtAlignedObjectArray_charconst_ptr_Class BtAlignedObjectArray_charconst_ptr_
instance BtClass BtAlignedObjectArray_charconst_ptr_ where
  withBt (BtAlignedObjectArray_charconst_ptr_ p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtAlignedObjectArray_charconst_ptr_ p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtAlignedObjectArray_char_ptr_Class p
instance BtAlignedObjectArray_char_ptr_Class BtAlignedObjectArray_char_ptr_
instance BtClass BtAlignedObjectArray_char_ptr_ where
  withBt (BtAlignedObjectArray_char_ptr_ p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtAlignedObjectArray_char_ptr_ p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtAlignedObjectArray_float_Class p
instance BtAlignedObjectArray_float_Class BtAlignedObjectArray_float_
instance BtClass BtAlignedObjectArray_float_ where
  withBt (BtAlignedObjectArray_float_ p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtAlignedObjectArray_float_ p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtAlignedObjectArray_int_Class p
instance BtAlignedObjectArray_int_Class BtAlignedObjectArray_int_
instance BtClass BtAlignedObjectArray_int_ where
  withBt (BtAlignedObjectArray_int_ p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtAlignedObjectArray_int_ p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtAlignedObjectArray_short_ptr_Class p
instance BtAlignedObjectArray_short_ptr_Class BtAlignedObjectArray_short_ptr_
instance BtClass BtAlignedObjectArray_short_ptr_ where
  withBt (BtAlignedObjectArray_short_ptr_ p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtAlignedObjectArray_short_ptr_ p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtAlignedObjectArray_short_Class p
instance BtAlignedObjectArray_short_Class BtAlignedObjectArray_short_
instance BtClass BtAlignedObjectArray_short_ where
  withBt (BtAlignedObjectArray_short_ p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtAlignedObjectArray_short_ p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtAlignedObjectArray_unsignedint_Class p
instance BtAlignedObjectArray_unsignedint_Class BtAlignedObjectArray_unsignedint_
instance BtClass BtAlignedObjectArray_unsignedint_ where
  withBt (BtAlignedObjectArray_unsignedint_ p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtAlignedObjectArray_unsignedint_ p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtAlignedObjectArray_unsignedshort_Class p
instance BtAlignedObjectArray_unsignedshort_Class BtAlignedObjectArray_unsignedshort_
instance BtClass BtAlignedObjectArray_unsignedshort_ where
  withBt (BtAlignedObjectArray_unsignedshort_ p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtAlignedObjectArray_unsignedshort_ p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtAlignedObjectArray_void_ptr_Class p
instance BtAlignedObjectArray_void_ptr_Class BtAlignedObjectArray_void_ptr_
instance BtClass BtAlignedObjectArray_void_ptr_ where
  withBt (BtAlignedObjectArray_void_ptr_ p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtAlignedObjectArray_void_ptr_ p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtAngularLimitClass p
instance BtAngularLimitClass BtAngularLimit
instance BtClass BtAngularLimit where
  withBt (BtAngularLimit p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtAngularLimit p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtBlockClass p
instance BtBlockClass BtBlock
instance BtClass BtBlock where
  withBt (BtBlock p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtBlock p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtMultiSapBroadphase_btBridgeProxyClass p
instance BtMultiSapBroadphase_btBridgeProxyClass BtMultiSapBroadphase_btBridgeProxy
instance BtClass BtMultiSapBroadphase_btBridgeProxy where
  withBt (BtMultiSapBroadphase_btBridgeProxy p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtMultiSapBroadphase_btBridgeProxy p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtBroadphaseAabbCallbackClass p
instance BtBroadphaseAabbCallbackClass BtBroadphaseAabbCallback
instance BtClass BtBroadphaseAabbCallback where
  withBt (BtBroadphaseAabbCallback p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtBroadphaseAabbCallback p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtBroadphaseInterfaceClass p
instance BtBroadphaseInterfaceClass BtBroadphaseInterface
instance BtClass BtBroadphaseInterface where
  withBt (BtBroadphaseInterface p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtBroadphaseInterface p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtBroadphasePairClass p
instance BtBroadphasePairClass BtBroadphasePair
instance BtClass BtBroadphasePair where
  withBt (BtBroadphasePair p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtBroadphasePair p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtBroadphasePairSortPredicateClass p
instance BtBroadphasePairSortPredicateClass BtBroadphasePairSortPredicate
instance BtClass BtBroadphasePairSortPredicate where
  withBt (BtBroadphasePairSortPredicate p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtBroadphasePairSortPredicate p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtBroadphaseProxyClass p
instance BtBroadphaseProxyClass BtBroadphaseProxy
instance BtClass BtBroadphaseProxy where
  withBt (BtBroadphaseProxy p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtBroadphaseProxy p) = castPtr $ unsafeForeignPtrToPtr p
class BtBroadphaseAabbCallbackClass p => BtBroadphaseRayCallbackClass p
instance BtBroadphaseAabbCallbackClass BtBroadphaseRayCallback
instance BtBroadphaseRayCallbackClass BtBroadphaseRayCallback
instance BtClass BtBroadphaseRayCallback where
  withBt (BtBroadphaseRayCallback p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtBroadphaseRayCallback p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtBvhSubtreeInfoClass p
instance BtBvhSubtreeInfoClass BtBvhSubtreeInfo
instance BtClass BtBvhSubtreeInfo where
  withBt (BtBvhSubtreeInfo p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtBvhSubtreeInfo p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtBvhSubtreeInfoDataClass p
instance BtBvhSubtreeInfoDataClass BtBvhSubtreeInfoData
instance BtClass BtBvhSubtreeInfoData where
  withBt (BtBvhSubtreeInfoData p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtBvhSubtreeInfoData p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtBvhTreeClass p
instance BtBvhTreeClass BtBvhTree
instance BtClass BtBvhTree where
  withBt (BtBvhTree p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtBvhTree p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtCapsuleShapeDataClass p
instance BtCapsuleShapeDataClass BtCapsuleShapeData
instance BtClass BtCapsuleShapeData where
  withBt (BtCapsuleShapeData p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtCapsuleShapeData p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtCharIndexTripletDataClass p
instance BtCharIndexTripletDataClass BtCharIndexTripletData
instance BtClass BtCharIndexTripletData where
  withBt (BtCharIndexTripletData p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtCharIndexTripletData p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtChunkClass p
instance BtChunkClass BtChunk
instance BtClass BtChunk where
  withBt (BtChunk p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtChunk p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtClockClass p
instance BtClockClass BtClock
instance BtClass BtClock where
  withBt (BtClock p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtClock p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtCollisionAlgorithmClass p
instance BtCollisionAlgorithmClass BtCollisionAlgorithm
instance BtClass BtCollisionAlgorithm where
  withBt (BtCollisionAlgorithm p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtCollisionAlgorithm p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtCollisionAlgorithmConstructionInfoClass p
instance BtCollisionAlgorithmConstructionInfoClass BtCollisionAlgorithmConstructionInfo
instance BtClass BtCollisionAlgorithmConstructionInfo where
  withBt (BtCollisionAlgorithmConstructionInfo p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtCollisionAlgorithmConstructionInfo p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtCollisionAlgorithmCreateFuncClass p
instance BtCollisionAlgorithmCreateFuncClass BtCollisionAlgorithmCreateFunc
instance BtClass BtCollisionAlgorithmCreateFunc where
  withBt (BtCollisionAlgorithmCreateFunc p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtCollisionAlgorithmCreateFunc p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtCollisionConfigurationClass p
instance BtCollisionConfigurationClass BtCollisionConfiguration
instance BtClass BtCollisionConfiguration where
  withBt (BtCollisionConfiguration p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtCollisionConfiguration p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtCollisionObjectClass p
instance BtCollisionObjectClass BtCollisionObject
instance BtClass BtCollisionObject where
  withBt (BtCollisionObject p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtCollisionObject p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtCollisionObjectDoubleDataClass p
instance BtCollisionObjectDoubleDataClass BtCollisionObjectDoubleData
instance BtClass BtCollisionObjectDoubleData where
  withBt (BtCollisionObjectDoubleData p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtCollisionObjectDoubleData p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtCollisionObjectFloatDataClass p
instance BtCollisionObjectFloatDataClass BtCollisionObjectFloatData
instance BtClass BtCollisionObjectFloatData where
  withBt (BtCollisionObjectFloatData p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtCollisionObjectFloatData p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtCollisionShapeClass p
instance BtCollisionShapeClass BtCollisionShape
instance BtClass BtCollisionShape where
  withBt (BtCollisionShape p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtCollisionShape p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtCollisionShapeDataClass p
instance BtCollisionShapeDataClass BtCollisionShapeData
instance BtClass BtCollisionShapeData where
  withBt (BtCollisionShapeData p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtCollisionShapeData p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtCollisionWorldClass p
instance BtCollisionWorldClass BtCollisionWorld
instance BtClass BtCollisionWorld where
  withBt (BtCollisionWorld p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtCollisionWorld p) = castPtr $ unsafeForeignPtrToPtr p
class BtCollisionShapeClass p => BtCompoundShapeClass p
instance BtCollisionShapeClass BtCompoundShape
instance BtCompoundShapeClass BtCompoundShape
instance BtClass BtCompoundShape where
  withBt (BtCompoundShape p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtCompoundShape p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtCompoundShapeChildClass p
instance BtCompoundShapeChildClass BtCompoundShapeChild
instance BtClass BtCompoundShapeChild where
  withBt (BtCompoundShapeChild p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtCompoundShapeChild p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtCompoundShapeChildDataClass p
instance BtCompoundShapeChildDataClass BtCompoundShapeChildData
instance BtClass BtCompoundShapeChildData where
  withBt (BtCompoundShapeChildData p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtCompoundShapeChildData p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtCompoundShapeDataClass p
instance BtCompoundShapeDataClass BtCompoundShapeData
instance BtClass BtCompoundShapeData where
  withBt (BtCompoundShapeData p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtCompoundShapeData p) = castPtr $ unsafeForeignPtrToPtr p
class BtCollisionShapeClass p => BtConcaveShapeClass p
instance BtCollisionShapeClass BtConcaveShape
instance BtConcaveShapeClass BtConcaveShape
instance BtClass BtConcaveShape where
  withBt (BtConcaveShape p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtConcaveShape p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtConeTwistConstraintDataClass p
instance BtConeTwistConstraintDataClass BtConeTwistConstraintData
instance BtClass BtConeTwistConstraintData where
  withBt (BtConeTwistConstraintData p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtConeTwistConstraintData p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtTypedConstraint_btConstraintInfo1Class p
instance BtTypedConstraint_btConstraintInfo1Class BtTypedConstraint_btConstraintInfo1
instance BtClass BtTypedConstraint_btConstraintInfo1 where
  withBt (BtTypedConstraint_btConstraintInfo1 p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtTypedConstraint_btConstraintInfo1 p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtTypedConstraint_btConstraintInfo2Class p
instance BtTypedConstraint_btConstraintInfo2Class BtTypedConstraint_btConstraintInfo2
instance BtClass BtTypedConstraint_btConstraintInfo2 where
  withBt (BtTypedConstraint_btConstraintInfo2 p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtTypedConstraint_btConstraintInfo2 p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtConstraintRowClass p
instance BtConstraintRowClass BtConstraintRow
instance BtClass BtConstraintRow where
  withBt (BtConstraintRow p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtConstraintRow p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtConstraintSettingClass p
instance BtConstraintSettingClass BtConstraintSetting
instance BtClass BtConstraintSetting where
  withBt (BtConstraintSetting p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtConstraintSetting p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtConstraintSolverClass p
instance BtConstraintSolverClass BtConstraintSolver
instance BtClass BtConstraintSolver where
  withBt (BtConstraintSolver p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtConstraintSolver p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtContactSolverInfoDataClass p
instance BtContactSolverInfoDataClass BtContactSolverInfoData
instance BtClass BtContactSolverInfoData where
  withBt (BtContactSolverInfoData p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtContactSolverInfoData p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtConvexHullShapeDataClass p
instance BtConvexHullShapeDataClass BtConvexHullShapeData
instance BtClass BtConvexHullShapeData where
  withBt (BtConvexHullShapeData p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtConvexHullShapeData p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtConvexInternalShapeDataClass p
instance BtConvexInternalShapeDataClass BtConvexInternalShapeData
instance BtClass BtConvexInternalShapeData where
  withBt (BtConvexInternalShapeData p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtConvexInternalShapeData p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtConvexSeparatingDistanceUtilClass p
instance BtConvexSeparatingDistanceUtilClass BtConvexSeparatingDistanceUtil
instance BtClass BtConvexSeparatingDistanceUtil where
  withBt (BtConvexSeparatingDistanceUtil p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtConvexSeparatingDistanceUtil p) = castPtr $ unsafeForeignPtrToPtr p
class BtCollisionShapeClass p => BtConvexShapeClass p
instance BtCollisionShapeClass BtConvexShape
instance BtConvexShapeClass BtConvexShape
instance BtClass BtConvexShape where
  withBt (BtConvexShape p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtConvexShape p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtCylinderShapeDataClass p
instance BtCylinderShapeDataClass BtCylinderShapeData
instance BtClass BtCylinderShapeData where
  withBt (BtCylinderShapeData p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtCylinderShapeData p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtDbvtClass p
instance BtDbvtClass BtDbvt
instance BtClass BtDbvt where
  withBt (BtDbvt p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtDbvt p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtDbvtAabbMmClass p
instance BtDbvtAabbMmClass BtDbvtAabbMm
instance BtClass BtDbvtAabbMm where
  withBt (BtDbvtAabbMm p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtDbvtAabbMm p) = castPtr $ unsafeForeignPtrToPtr p
class BtBroadphaseInterfaceClass p => BtDbvtBroadphaseClass p
instance BtBroadphaseInterfaceClass BtDbvtBroadphase
instance BtDbvtBroadphaseClass BtDbvtBroadphase
instance BtClass BtDbvtBroadphase where
  withBt (BtDbvtBroadphase p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtDbvtBroadphase p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtDbvtNodeClass p
instance BtDbvtNodeClass BtDbvtNode
instance BtClass BtDbvtNode where
  withBt (BtDbvtNode p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtDbvtNode p) = castPtr $ unsafeForeignPtrToPtr p
class BtBroadphaseProxyClass p => BtDbvtProxyClass p
instance BtBroadphaseProxyClass BtDbvtProxy
instance BtDbvtProxyClass BtDbvtProxy
instance BtClass BtDbvtProxy where
  withBt (BtDbvtProxy p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtDbvtProxy p) = castPtr $ unsafeForeignPtrToPtr p
class BtCollisionConfigurationClass p => BtDefaultCollisionConfigurationClass p
instance BtCollisionConfigurationClass BtDefaultCollisionConfiguration
instance BtDefaultCollisionConfigurationClass BtDefaultCollisionConfiguration
instance BtClass BtDefaultCollisionConfiguration where
  withBt (BtDefaultCollisionConfiguration p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtDefaultCollisionConfiguration p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtDefaultCollisionConstructionInfoClass p
instance BtDefaultCollisionConstructionInfoClass BtDefaultCollisionConstructionInfo
instance BtClass BtDefaultCollisionConstructionInfo where
  withBt (BtDefaultCollisionConstructionInfo p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtDefaultCollisionConstructionInfo p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtDiscreteCollisionDetectorInterfaceClass p
instance BtDiscreteCollisionDetectorInterfaceClass BtDiscreteCollisionDetectorInterface
instance BtClass BtDiscreteCollisionDetectorInterface where
  withBt (BtDiscreteCollisionDetectorInterface p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtDiscreteCollisionDetectorInterface p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtDispatcherClass p
instance BtDispatcherClass BtDispatcher
instance BtClass BtDispatcher where
  withBt (BtDispatcher p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtDispatcher p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtDispatcherInfoClass p
instance BtDispatcherInfoClass BtDispatcherInfo
instance BtClass BtDispatcherInfo where
  withBt (BtDispatcherInfo p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtDispatcherInfo p) = castPtr $ unsafeForeignPtrToPtr p
class BtCollisionWorldClass p => BtDynamicsWorldClass p
instance BtCollisionWorldClass BtDynamicsWorld
instance BtDynamicsWorldClass BtDynamicsWorld
instance BtClass BtDynamicsWorld where
  withBt (BtDynamicsWorld p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtDynamicsWorld p) = castPtr $ unsafeForeignPtrToPtr p
class BtConcaveShapeClass p => BtEmptyShapeClass p
instance BtConcaveShapeClass BtEmptyShape
instance BtCollisionShapeClass BtEmptyShape
instance BtEmptyShapeClass BtEmptyShape
instance BtClass BtEmptyShape where
  withBt (BtEmptyShape p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtEmptyShape p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtGImpactBvhClass p
instance BtGImpactBvhClass BtGImpactBvh
instance BtClass BtGImpactBvh where
  withBt (BtGImpactBvh p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtGImpactBvh p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtGImpactMeshShapeDataClass p
instance BtGImpactMeshShapeDataClass BtGImpactMeshShapeData
instance BtClass BtGImpactMeshShapeData where
  withBt (BtGImpactMeshShapeData p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtGImpactMeshShapeData p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtGImpactQuantizedBvhClass p
instance BtGImpactQuantizedBvhClass BtGImpactQuantizedBvh
instance BtClass BtGImpactQuantizedBvh where
  withBt (BtGImpactQuantizedBvh p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtGImpactQuantizedBvh p) = castPtr $ unsafeForeignPtrToPtr p
class BtConcaveShapeClass p => BtGImpactShapeInterfaceClass p
instance BtConcaveShapeClass BtGImpactShapeInterface
instance BtCollisionShapeClass BtGImpactShapeInterface
instance BtGImpactShapeInterfaceClass BtGImpactShapeInterface
instance BtClass BtGImpactShapeInterface where
  withBt (BtGImpactShapeInterface p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtGImpactShapeInterface p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtGeneric6DofConstraintDataClass p
instance BtGeneric6DofConstraintDataClass BtGeneric6DofConstraintData
instance BtClass BtGeneric6DofConstraintData where
  withBt (BtGeneric6DofConstraintData p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtGeneric6DofConstraintData p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtGeneric6DofSpringConstraintDataClass p
instance BtGeneric6DofSpringConstraintDataClass BtGeneric6DofSpringConstraintData
instance BtClass BtGeneric6DofSpringConstraintData where
  withBt (BtGeneric6DofSpringConstraintData p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtGeneric6DofSpringConstraintData p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtGeometryUtilClass p
instance BtGeometryUtilClass BtGeometryUtil
instance BtClass BtGeometryUtil where
  withBt (BtGeometryUtil p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtGeometryUtil p) = castPtr $ unsafeForeignPtrToPtr p
class BtCollisionObjectClass p => BtGhostObjectClass p
instance BtCollisionObjectClass BtGhostObject
instance BtGhostObjectClass BtGhostObject
instance BtClass BtGhostObject where
  withBt (BtGhostObject p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtGhostObject p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtGjkEpaSolver2Class p
instance BtGjkEpaSolver2Class BtGjkEpaSolver2
instance BtClass BtGjkEpaSolver2 where
  withBt (BtGjkEpaSolver2 p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtGjkEpaSolver2 p) = castPtr $ unsafeForeignPtrToPtr p
class BtDiscreteCollisionDetectorInterfaceClass p => BtGjkPairDetectorClass p
instance BtDiscreteCollisionDetectorInterfaceClass BtGjkPairDetector
instance BtGjkPairDetectorClass BtGjkPairDetector
instance BtClass BtGjkPairDetector where
  withBt (BtGjkPairDetector p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtGjkPairDetector p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtHashIntClass p
instance BtHashIntClass BtHashInt
instance BtClass BtHashInt where
  withBt (BtHashInt p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtHashInt p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtHashMap_btHashInt_btTriangleInfo_Class p
instance BtHashMap_btHashInt_btTriangleInfo_Class BtHashMap_btHashInt_btTriangleInfo_
instance BtClass BtHashMap_btHashInt_btTriangleInfo_ where
  withBt (BtHashMap_btHashInt_btTriangleInfo_ p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtHashMap_btHashInt_btTriangleInfo_ p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtHashMap_btHashInt_int_Class p
instance BtHashMap_btHashInt_int_Class BtHashMap_btHashInt_int_
instance BtClass BtHashMap_btHashInt_int_ where
  withBt (BtHashMap_btHashInt_int_ p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtHashMap_btHashInt_int_ p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtHashMap_btHashPtr_btPointerUid_Class p
instance BtHashMap_btHashPtr_btPointerUid_Class BtHashMap_btHashPtr_btPointerUid_
instance BtClass BtHashMap_btHashPtr_btPointerUid_ where
  withBt (BtHashMap_btHashPtr_btPointerUid_ p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtHashMap_btHashPtr_btPointerUid_ p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtHashMap_btHashPtr_charconst_ptr_Class p
instance BtHashMap_btHashPtr_charconst_ptr_Class BtHashMap_btHashPtr_charconst_ptr_
instance BtClass BtHashMap_btHashPtr_charconst_ptr_ where
  withBt (BtHashMap_btHashPtr_charconst_ptr_ p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtHashMap_btHashPtr_charconst_ptr_ p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtHashMap_btHashPtr_void_ptr_Class p
instance BtHashMap_btHashPtr_void_ptr_Class BtHashMap_btHashPtr_void_ptr_
instance BtClass BtHashMap_btHashPtr_void_ptr_ where
  withBt (BtHashMap_btHashPtr_void_ptr_ p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtHashMap_btHashPtr_void_ptr_ p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtHashMap_btHashString_int_Class p
instance BtHashMap_btHashString_int_Class BtHashMap_btHashString_int_
instance BtClass BtHashMap_btHashString_int_ where
  withBt (BtHashMap_btHashString_int_ p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtHashMap_btHashString_int_ p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtHashPtrClass p
instance BtHashPtrClass BtHashPtr
instance BtClass BtHashPtr where
  withBt (BtHashPtr p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtHashPtr p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtHashStringClass p
instance BtHashStringClass BtHashString
instance BtClass BtHashString where
  withBt (BtHashString p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtHashString p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtHingeConstraintDoubleDataClass p
instance BtHingeConstraintDoubleDataClass BtHingeConstraintDoubleData
instance BtClass BtHingeConstraintDoubleData where
  withBt (BtHingeConstraintDoubleData p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtHingeConstraintDoubleData p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtHingeConstraintFloatDataClass p
instance BtHingeConstraintFloatDataClass BtHingeConstraintFloatData
instance BtClass BtHingeConstraintFloatData where
  withBt (BtHingeConstraintFloatData p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtHingeConstraintFloatData p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtIDebugDrawClass p
instance BtIDebugDrawClass BtIDebugDraw
instance BtClass BtIDebugDraw where
  withBt (BtIDebugDraw p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtIDebugDraw p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtIndexedMeshClass p
instance BtIndexedMeshClass BtIndexedMesh
instance BtClass BtIndexedMesh where
  withBt (BtIndexedMesh p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtIndexedMesh p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtIntIndexDataClass p
instance BtIntIndexDataClass BtIntIndexData
instance BtClass BtIntIndexData where
  withBt (BtIntIndexData p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtIntIndexData p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtInternalTriangleIndexCallbackClass p
instance BtInternalTriangleIndexCallbackClass BtInternalTriangleIndexCallback
instance BtClass BtInternalTriangleIndexCallback where
  withBt (BtInternalTriangleIndexCallback p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtInternalTriangleIndexCallback p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtJacobianEntryClass p
instance BtJacobianEntryClass BtJacobianEntry
instance BtClass BtJacobianEntry where
  withBt (BtJacobianEntry p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtJacobianEntry p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtManifoldPointClass p
instance BtManifoldPointClass BtManifoldPoint
instance BtClass BtManifoldPoint where
  withBt (BtManifoldPoint p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtManifoldPoint p) = castPtr $ unsafeForeignPtrToPtr p
class BtDiscreteCollisionDetectorInterface_ResultClass p => BtManifoldResultClass p
instance BtDiscreteCollisionDetectorInterface_ResultClass BtManifoldResult
instance BtManifoldResultClass BtManifoldResult
instance BtClass BtManifoldResult where
  withBt (BtManifoldResult p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtManifoldResult p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtMatrix3x3DoubleDataClass p
instance BtMatrix3x3DoubleDataClass BtMatrix3x3DoubleData
instance BtClass BtMatrix3x3DoubleData where
  withBt (BtMatrix3x3DoubleData p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtMatrix3x3DoubleData p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtMatrix3x3FloatDataClass p
instance BtMatrix3x3FloatDataClass BtMatrix3x3FloatData
instance BtClass BtMatrix3x3FloatData where
  withBt (BtMatrix3x3FloatData p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtMatrix3x3FloatData p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtMeshPartDataClass p
instance BtMeshPartDataClass BtMeshPartData
instance BtClass BtMeshPartData where
  withBt (BtMeshPartData p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtMeshPartData p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtMotionStateClass p
instance BtMotionStateClass BtMotionState
instance BtClass BtMotionState where
  withBt (BtMotionState p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtMotionState p) = castPtr $ unsafeForeignPtrToPtr p
class BtBroadphaseInterfaceClass p => BtMultiSapBroadphaseClass p
instance BtBroadphaseInterfaceClass BtMultiSapBroadphase
instance BtMultiSapBroadphaseClass BtMultiSapBroadphase
instance BtClass BtMultiSapBroadphase where
  withBt (BtMultiSapBroadphase p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtMultiSapBroadphase p) = castPtr $ unsafeForeignPtrToPtr p
class BtBroadphaseProxyClass p => BtMultiSapBroadphase_btMultiSapProxyClass p
instance BtBroadphaseProxyClass BtMultiSapBroadphase_btMultiSapProxy
instance BtMultiSapBroadphase_btMultiSapProxyClass BtMultiSapBroadphase_btMultiSapProxy
instance BtClass BtMultiSapBroadphase_btMultiSapProxy where
  withBt (BtMultiSapBroadphase_btMultiSapProxy p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtMultiSapBroadphase_btMultiSapProxy p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtMultiSphereShapeDataClass p
instance BtMultiSphereShapeDataClass BtMultiSphereShapeData
instance BtClass BtMultiSphereShapeData where
  withBt (BtMultiSphereShapeData p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtMultiSphereShapeData p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtNodeOverlapCallbackClass p
instance BtNodeOverlapCallbackClass BtNodeOverlapCallback
instance BtClass BtNodeOverlapCallback where
  withBt (BtNodeOverlapCallback p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtNodeOverlapCallback p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtOptimizedBvhNodeClass p
instance BtOptimizedBvhNodeClass BtOptimizedBvhNode
instance BtClass BtOptimizedBvhNode where
  withBt (BtOptimizedBvhNode p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtOptimizedBvhNode p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtOptimizedBvhNodeDoubleDataClass p
instance BtOptimizedBvhNodeDoubleDataClass BtOptimizedBvhNodeDoubleData
instance BtClass BtOptimizedBvhNodeDoubleData where
  withBt (BtOptimizedBvhNodeDoubleData p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtOptimizedBvhNodeDoubleData p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtOptimizedBvhNodeFloatDataClass p
instance BtOptimizedBvhNodeFloatDataClass BtOptimizedBvhNodeFloatData
instance BtClass BtOptimizedBvhNodeFloatData where
  withBt (BtOptimizedBvhNodeFloatData p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtOptimizedBvhNodeFloatData p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtOverlapCallbackClass p
instance BtOverlapCallbackClass BtOverlapCallback
instance BtClass BtOverlapCallback where
  withBt (BtOverlapCallback p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtOverlapCallback p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtOverlapFilterCallbackClass p
instance BtOverlapFilterCallbackClass BtOverlapFilterCallback
instance BtClass BtOverlapFilterCallback where
  withBt (BtOverlapFilterCallback p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtOverlapFilterCallback p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtOverlappingPairCallbackClass p
instance BtOverlappingPairCallbackClass BtOverlappingPairCallback
instance BtClass BtOverlappingPairCallback where
  withBt (BtOverlappingPairCallback p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtOverlappingPairCallback p) = castPtr $ unsafeForeignPtrToPtr p
class BtGhostObjectClass p => BtPairCachingGhostObjectClass p
instance BtGhostObjectClass BtPairCachingGhostObject
instance BtCollisionObjectClass BtPairCachingGhostObject
instance BtPairCachingGhostObjectClass BtPairCachingGhostObject
instance BtClass BtPairCachingGhostObject where
  withBt (BtPairCachingGhostObject p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtPairCachingGhostObject p) = castPtr $ unsafeForeignPtrToPtr p
class BtAlignedObjectArray_GIM_PAIR_Class p => BtPairSetClass p
instance BtAlignedObjectArray_GIM_PAIR_Class BtPairSet
instance BtPairSetClass BtPairSet
instance BtClass BtPairSet where
  withBt (BtPairSet p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtPairSet p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtPoint2PointConstraintDoubleDataClass p
instance BtPoint2PointConstraintDoubleDataClass BtPoint2PointConstraintDoubleData
instance BtClass BtPoint2PointConstraintDoubleData where
  withBt (BtPoint2PointConstraintDoubleData p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtPoint2PointConstraintDoubleData p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtPoint2PointConstraintFloatDataClass p
instance BtPoint2PointConstraintFloatDataClass BtPoint2PointConstraintFloatData
instance BtClass BtPoint2PointConstraintFloatData where
  withBt (BtPoint2PointConstraintFloatData p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtPoint2PointConstraintFloatData p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtPointerUidClass p
instance BtPointerUidClass BtPointerUid
instance BtClass BtPointerUid where
  withBt (BtPointerUid p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtPointerUid p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtPositionAndRadiusClass p
instance BtPositionAndRadiusClass BtPositionAndRadius
instance BtClass BtPositionAndRadius where
  withBt (BtPositionAndRadius p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtPositionAndRadius p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtPrimitiveManagerBaseClass p
instance BtPrimitiveManagerBaseClass BtPrimitiveManagerBase
instance BtClass BtPrimitiveManagerBase where
  withBt (BtPrimitiveManagerBase p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtPrimitiveManagerBase p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtPrimitiveTriangleClass p
instance BtPrimitiveTriangleClass BtPrimitiveTriangle
instance BtClass BtPrimitiveTriangle where
  withBt (BtPrimitiveTriangle p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtPrimitiveTriangle p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtQuadWordClass p
instance BtQuadWordClass BtQuadWord
instance BtClass BtQuadWord where
  withBt (BtQuadWord p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtQuadWord p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtQuantizedBvhClass p
instance BtQuantizedBvhClass BtQuantizedBvh
instance BtClass BtQuantizedBvh where
  withBt (BtQuantizedBvh p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtQuantizedBvh p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtQuantizedBvhDoubleDataClass p
instance BtQuantizedBvhDoubleDataClass BtQuantizedBvhDoubleData
instance BtClass BtQuantizedBvhDoubleData where
  withBt (BtQuantizedBvhDoubleData p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtQuantizedBvhDoubleData p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtQuantizedBvhFloatDataClass p
instance BtQuantizedBvhFloatDataClass BtQuantizedBvhFloatData
instance BtClass BtQuantizedBvhFloatData where
  withBt (BtQuantizedBvhFloatData p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtQuantizedBvhFloatData p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtQuantizedBvhNodeClass p
instance BtQuantizedBvhNodeClass BtQuantizedBvhNode
instance BtClass BtQuantizedBvhNode where
  withBt (BtQuantizedBvhNode p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtQuantizedBvhNode p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtQuantizedBvhNodeDataClass p
instance BtQuantizedBvhNodeDataClass BtQuantizedBvhNodeData
instance BtClass BtQuantizedBvhNodeData where
  withBt (BtQuantizedBvhNodeData p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtQuantizedBvhNodeData p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtQuantizedBvhTreeClass p
instance BtQuantizedBvhTreeClass BtQuantizedBvhTree
instance BtClass BtQuantizedBvhTree where
  withBt (BtQuantizedBvhTree p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtQuantizedBvhTree p) = castPtr $ unsafeForeignPtrToPtr p
class BtActionInterfaceClass p => BtRaycastVehicleClass p
instance BtActionInterfaceClass BtRaycastVehicle
instance BtRaycastVehicleClass BtRaycastVehicle
instance BtClass BtRaycastVehicle where
  withBt (BtRaycastVehicle p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtRaycastVehicle p) = castPtr $ unsafeForeignPtrToPtr p
class BtCollisionObjectClass p => BtRigidBodyClass p
instance BtCollisionObjectClass BtRigidBody
instance BtRigidBodyClass BtRigidBody
instance BtClass BtRigidBody where
  withBt (BtRigidBody p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtRigidBody p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtRigidBody_btRigidBodyConstructionInfoClass p
instance BtRigidBody_btRigidBodyConstructionInfoClass BtRigidBody_btRigidBodyConstructionInfo
instance BtClass BtRigidBody_btRigidBodyConstructionInfo where
  withBt (BtRigidBody_btRigidBodyConstructionInfo p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtRigidBody_btRigidBodyConstructionInfo p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtRigidBodyDoubleDataClass p
instance BtRigidBodyDoubleDataClass BtRigidBodyDoubleData
instance BtClass BtRigidBodyDoubleData where
  withBt (BtRigidBodyDoubleData p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtRigidBodyDoubleData p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtRigidBodyFloatDataClass p
instance BtRigidBodyFloatDataClass BtRigidBodyFloatData
instance BtClass BtRigidBodyFloatData where
  withBt (BtRigidBodyFloatData p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtRigidBodyFloatData p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtRotationalLimitMotorClass p
instance BtRotationalLimitMotorClass BtRotationalLimitMotor
instance BtClass BtRotationalLimitMotor where
  withBt (BtRotationalLimitMotor p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtRotationalLimitMotor p) = castPtr $ unsafeForeignPtrToPtr p
class BtConcaveShapeClass p => BtScaledBvhTriangleMeshShapeClass p
instance BtConcaveShapeClass BtScaledBvhTriangleMeshShape
instance BtCollisionShapeClass BtScaledBvhTriangleMeshShape
instance BtScaledBvhTriangleMeshShapeClass BtScaledBvhTriangleMeshShape
instance BtClass BtScaledBvhTriangleMeshShape where
  withBt (BtScaledBvhTriangleMeshShape p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtScaledBvhTriangleMeshShape p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtScaledTriangleMeshShapeDataClass p
instance BtScaledTriangleMeshShapeDataClass BtScaledTriangleMeshShapeData
instance BtClass BtScaledTriangleMeshShapeData where
  withBt (BtScaledTriangleMeshShapeData p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtScaledTriangleMeshShapeData p) = castPtr $ unsafeForeignPtrToPtr p
class BtConstraintSolverClass p => BtSequentialImpulseConstraintSolverClass p
instance BtConstraintSolverClass BtSequentialImpulseConstraintSolver
instance BtSequentialImpulseConstraintSolverClass BtSequentialImpulseConstraintSolver
instance BtClass BtSequentialImpulseConstraintSolver where
  withBt (BtSequentialImpulseConstraintSolver p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtSequentialImpulseConstraintSolver p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtSerializerClass p
instance BtSerializerClass BtSerializer
instance BtClass BtSerializer where
  withBt (BtSerializer p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtSerializer p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtShortIntIndexDataClass p
instance BtShortIntIndexDataClass BtShortIntIndexData
instance BtClass BtShortIntIndexData where
  withBt (BtShortIntIndexData p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtShortIntIndexData p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtShortIntIndexTripletDataClass p
instance BtShortIntIndexTripletDataClass BtShortIntIndexTripletData
instance BtClass BtShortIntIndexTripletData where
  withBt (BtShortIntIndexTripletData p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtShortIntIndexTripletData p) = castPtr $ unsafeForeignPtrToPtr p
class BtBroadphaseInterfaceClass p => BtSimpleBroadphaseClass p
instance BtBroadphaseInterfaceClass BtSimpleBroadphase
instance BtSimpleBroadphaseClass BtSimpleBroadphase
instance BtClass BtSimpleBroadphase where
  withBt (BtSimpleBroadphase p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtSimpleBroadphase p) = castPtr $ unsafeForeignPtrToPtr p
class BtBroadphaseProxyClass p => BtSimpleBroadphaseProxyClass p
instance BtBroadphaseProxyClass BtSimpleBroadphaseProxy
instance BtSimpleBroadphaseProxyClass BtSimpleBroadphaseProxy
instance BtClass BtSimpleBroadphaseProxy where
  withBt (BtSimpleBroadphaseProxy p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtSimpleBroadphaseProxy p) = castPtr $ unsafeForeignPtrToPtr p
class BtDynamicsWorldClass p => BtSimpleDynamicsWorldClass p
instance BtDynamicsWorldClass BtSimpleDynamicsWorld
instance BtCollisionWorldClass BtSimpleDynamicsWorld
instance BtSimpleDynamicsWorldClass BtSimpleDynamicsWorld
instance BtClass BtSimpleDynamicsWorld where
  withBt (BtSimpleDynamicsWorld p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtSimpleDynamicsWorld p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtSliderConstraintDataClass p
instance BtSliderConstraintDataClass BtSliderConstraintData
instance BtClass BtSliderConstraintData where
  withBt (BtSliderConstraintData p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtSliderConstraintData p) = castPtr $ unsafeForeignPtrToPtr p
class BtCollisionObjectClass p => BtSoftBodyClass p
instance BtCollisionObjectClass BtSoftBody
instance BtSoftBodyClass BtSoftBody
instance BtClass BtSoftBody where
  withBt (BtSoftBody p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtSoftBody p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtSoftBodyHelpersClass p
instance BtSoftBodyHelpersClass BtSoftBodyHelpers
instance BtClass BtSoftBodyHelpers where
  withBt (BtSoftBodyHelpers p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtSoftBodyHelpers p) = castPtr $ unsafeForeignPtrToPtr p
class BtDefaultCollisionConfigurationClass p => BtSoftBodyRigidBodyCollisionConfigurationClass p
instance BtDefaultCollisionConfigurationClass BtSoftBodyRigidBodyCollisionConfiguration
instance BtCollisionConfigurationClass BtSoftBodyRigidBodyCollisionConfiguration
instance BtSoftBodyRigidBodyCollisionConfigurationClass BtSoftBodyRigidBodyCollisionConfiguration
instance BtClass BtSoftBodyRigidBodyCollisionConfiguration where
  withBt (BtSoftBodyRigidBodyCollisionConfiguration p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtSoftBodyRigidBodyCollisionConfiguration p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtSoftBodyWorldInfoClass p
instance BtSoftBodyWorldInfoClass BtSoftBodyWorldInfo
instance BtClass BtSoftBodyWorldInfo where
  withBt (BtSoftBodyWorldInfo p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtSoftBodyWorldInfo p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtSolverBodyObsoleteClass p
instance BtSolverBodyObsoleteClass BtSolverBodyObsolete
instance BtClass BtSolverBodyObsolete where
  withBt (BtSolverBodyObsolete p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtSolverBodyObsolete p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtSolverConstraintClass p
instance BtSolverConstraintClass BtSolverConstraint
instance BtClass BtSolverConstraint where
  withBt (BtSolverConstraint p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtSolverConstraint p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtSparseSdf_3_Class p
instance BtSparseSdf_3_Class BtSparseSdf_3_
instance BtClass BtSparseSdf_3_ where
  withBt (BtSparseSdf_3_ p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtSparseSdf_3_ p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtStackAllocClass p
instance BtStackAllocClass BtStackAlloc
instance BtClass BtStackAlloc where
  withBt (BtStackAlloc p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtStackAlloc p) = castPtr $ unsafeForeignPtrToPtr p
class BtConcaveShapeClass p => BtStaticPlaneShapeClass p
instance BtConcaveShapeClass BtStaticPlaneShape
instance BtCollisionShapeClass BtStaticPlaneShape
instance BtStaticPlaneShapeClass BtStaticPlaneShape
instance BtClass BtStaticPlaneShape where
  withBt (BtStaticPlaneShape p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtStaticPlaneShape p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtStaticPlaneShapeDataClass p
instance BtStaticPlaneShapeDataClass BtStaticPlaneShapeData
instance BtClass BtStaticPlaneShapeData where
  withBt (BtStaticPlaneShapeData p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtStaticPlaneShapeData p) = castPtr $ unsafeForeignPtrToPtr p
class BtDiscreteCollisionDetectorInterface_ResultClass p => BtStorageResultClass p
instance BtDiscreteCollisionDetectorInterface_ResultClass BtStorageResult
instance BtStorageResultClass BtStorageResult
instance BtClass BtStorageResult where
  withBt (BtStorageResult p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtStorageResult p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtStridingMeshInterfaceClass p
instance BtStridingMeshInterfaceClass BtStridingMeshInterface
instance BtClass BtStridingMeshInterface where
  withBt (BtStridingMeshInterface p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtStridingMeshInterface p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtStridingMeshInterfaceDataClass p
instance BtStridingMeshInterfaceDataClass BtStridingMeshInterfaceData
instance BtClass BtStridingMeshInterfaceData where
  withBt (BtStridingMeshInterfaceData p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtStridingMeshInterfaceData p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtSubSimplexClosestResultClass p
instance BtSubSimplexClosestResultClass BtSubSimplexClosestResult
instance BtClass BtSubSimplexClosestResult where
  withBt (BtSubSimplexClosestResult p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtSubSimplexClosestResult p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtTransformDoubleDataClass p
instance BtTransformDoubleDataClass BtTransformDoubleData
instance BtClass BtTransformDoubleData where
  withBt (BtTransformDoubleData p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtTransformDoubleData p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtTransformFloatDataClass p
instance BtTransformFloatDataClass BtTransformFloatData
instance BtClass BtTransformFloatData where
  withBt (BtTransformFloatData p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtTransformFloatData p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtTransformUtilClass p
instance BtTransformUtilClass BtTransformUtil
instance BtClass BtTransformUtil where
  withBt (BtTransformUtil p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtTransformUtil p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtTranslationalLimitMotorClass p
instance BtTranslationalLimitMotorClass BtTranslationalLimitMotor
instance BtClass BtTranslationalLimitMotor where
  withBt (BtTranslationalLimitMotor p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtTranslationalLimitMotor p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtTriangleCallbackClass p
instance BtTriangleCallbackClass BtTriangleCallback
instance BtClass BtTriangleCallback where
  withBt (BtTriangleCallback p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtTriangleCallback p) = castPtr $ unsafeForeignPtrToPtr p
class BtStridingMeshInterfaceClass p => BtTriangleIndexVertexArrayClass p
instance BtStridingMeshInterfaceClass BtTriangleIndexVertexArray
instance BtTriangleIndexVertexArrayClass BtTriangleIndexVertexArray
instance BtClass BtTriangleIndexVertexArray where
  withBt (BtTriangleIndexVertexArray p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtTriangleIndexVertexArray p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtTriangleInfoClass p
instance BtTriangleInfoClass BtTriangleInfo
instance BtClass BtTriangleInfo where
  withBt (BtTriangleInfo p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtTriangleInfo p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtTriangleInfoDataClass p
instance BtTriangleInfoDataClass BtTriangleInfoData
instance BtClass BtTriangleInfoData where
  withBt (BtTriangleInfoData p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtTriangleInfoData p) = castPtr $ unsafeForeignPtrToPtr p
class BtHashMap_btHashInt_btTriangleInfo_Class p => BtTriangleInfoMapClass p
instance BtHashMap_btHashInt_btTriangleInfo_Class BtTriangleInfoMap
instance BtTriangleInfoMapClass BtTriangleInfoMap
instance BtClass BtTriangleInfoMap where
  withBt (BtTriangleInfoMap p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtTriangleInfoMap p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtTriangleInfoMapDataClass p
instance BtTriangleInfoMapDataClass BtTriangleInfoMapData
instance BtClass BtTriangleInfoMapData where
  withBt (BtTriangleInfoMapData p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtTriangleInfoMapData p) = castPtr $ unsafeForeignPtrToPtr p
class BtTriangleIndexVertexArrayClass p => BtTriangleMeshClass p
instance BtTriangleIndexVertexArrayClass BtTriangleMesh
instance BtStridingMeshInterfaceClass BtTriangleMesh
instance BtTriangleMeshClass BtTriangleMesh
instance BtClass BtTriangleMesh where
  withBt (BtTriangleMesh p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtTriangleMesh p) = castPtr $ unsafeForeignPtrToPtr p
class BtConcaveShapeClass p => BtTriangleMeshShapeClass p
instance BtConcaveShapeClass BtTriangleMeshShape
instance BtCollisionShapeClass BtTriangleMeshShape
instance BtTriangleMeshShapeClass BtTriangleMeshShape
instance BtClass BtTriangleMeshShape where
  withBt (BtTriangleMeshShape p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtTriangleMeshShape p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtTriangleMeshShapeDataClass p
instance BtTriangleMeshShapeDataClass BtTriangleMeshShapeData
instance BtClass BtTriangleMeshShapeData where
  withBt (BtTriangleMeshShapeData p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtTriangleMeshShapeData p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtTypedConstraintDataClass p
instance BtTypedConstraintDataClass BtTypedConstraintData
instance BtClass BtTypedConstraintData where
  withBt (BtTypedConstraintData p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtTypedConstraintData p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtTypedObjectClass p
instance BtTypedObjectClass BtTypedObject
instance BtClass BtTypedObject where
  withBt (BtTypedObject p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtTypedObject p) = castPtr $ unsafeForeignPtrToPtr p
class BtConvexShapeClass p => BtUniformScalingShapeClass p
instance BtConvexShapeClass BtUniformScalingShape
instance BtCollisionShapeClass BtUniformScalingShape
instance BtUniformScalingShapeClass BtUniformScalingShape
instance BtClass BtUniformScalingShape where
  withBt (BtUniformScalingShape p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtUniformScalingShape p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtUsageBitfieldClass p
instance BtUsageBitfieldClass BtUsageBitfield
instance BtClass BtUsageBitfield where
  withBt (BtUsageBitfield p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtUsageBitfield p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtVector3DoubleDataClass p
instance BtVector3DoubleDataClass BtVector3DoubleData
instance BtClass BtVector3DoubleData where
  withBt (BtVector3DoubleData p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtVector3DoubleData p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtVector3FloatDataClass p
instance BtVector3FloatDataClass BtVector3FloatData
instance BtClass BtVector3FloatData where
  withBt (BtVector3FloatData p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtVector3FloatData p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtVehicleRaycasterClass p
instance BtVehicleRaycasterClass BtVehicleRaycaster
instance BtClass BtVehicleRaycaster where
  withBt (BtVehicleRaycaster p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtVehicleRaycaster p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtVehicleRaycaster_btVehicleRaycasterResultClass p
instance BtVehicleRaycaster_btVehicleRaycasterResultClass BtVehicleRaycaster_btVehicleRaycasterResult
instance BtClass BtVehicleRaycaster_btVehicleRaycasterResult where
  withBt (BtVehicleRaycaster_btVehicleRaycasterResult p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtVehicleRaycaster_btVehicleRaycasterResult p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtRaycastVehicle_btVehicleTuningClass p
instance BtRaycastVehicle_btVehicleTuningClass BtRaycastVehicle_btVehicleTuning
instance BtClass BtRaycastVehicle_btVehicleTuning where
  withBt (BtRaycastVehicle_btVehicleTuning p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtRaycastVehicle_btVehicleTuning p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtVoronoiSimplexSolverClass p
instance BtVoronoiSimplexSolverClass BtVoronoiSimplexSolver
instance BtClass BtVoronoiSimplexSolver where
  withBt (BtVoronoiSimplexSolver p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtVoronoiSimplexSolver p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtWheelInfoClass p
instance BtWheelInfoClass BtWheelInfo
instance BtClass BtWheelInfo where
  withBt (BtWheelInfo p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtWheelInfo p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtWheelInfoConstructionInfoClass p
instance BtWheelInfoConstructionInfoClass BtWheelInfoConstructionInfo
instance BtClass BtWheelInfoConstructionInfo where
  withBt (BtWheelInfoConstructionInfo p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtWheelInfoConstructionInfo p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtSoftBody_eAeroModelClass p
instance BtSoftBody_eAeroModelClass BtSoftBody_eAeroModel
instance BtClass BtSoftBody_eAeroModel where
  withBt (BtSoftBody_eAeroModel p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtSoftBody_eAeroModel p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtSoftBody_eFeatureClass p
instance BtSoftBody_eFeatureClass BtSoftBody_eFeature
instance BtClass BtSoftBody_eFeature where
  withBt (BtSoftBody_eFeature p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtSoftBody_eFeature p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtSoftBody_ePSolverClass p
instance BtSoftBody_ePSolverClass BtSoftBody_ePSolver
instance BtClass BtSoftBody_ePSolver where
  withBt (BtSoftBody_ePSolver p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtSoftBody_ePSolver p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtSoftBody_eSolverPresetsClass p
instance BtSoftBody_eSolverPresetsClass BtSoftBody_eSolverPresets
instance BtClass BtSoftBody_eSolverPresets where
  withBt (BtSoftBody_eSolverPresets p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtSoftBody_eSolverPresets p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtSoftBody_Joint_eTypeClass p
instance BtSoftBody_Joint_eTypeClass BtSoftBody_Joint_eType
instance BtClass BtSoftBody_Joint_eType where
  withBt (BtSoftBody_Joint_eType p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtSoftBody_Joint_eType p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtSoftBody_eVSolverClass p
instance BtSoftBody_eVSolverClass BtSoftBody_eVSolver
instance BtClass BtSoftBody_eVSolver where
  withBt (BtSoftBody_eVSolver p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtSoftBody_eVSolver p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtSoftBody_fCollisionClass p
instance BtSoftBody_fCollisionClass BtSoftBody_fCollision
instance BtClass BtSoftBody_fCollision where
  withBt (BtSoftBody_fCollision p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtSoftBody_fCollision p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => FDrawFlagsClass p
instance FDrawFlagsClass FDrawFlags
instance BtClass FDrawFlags where
  withBt (FDrawFlags p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (FDrawFlags p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtSoftBody_fMaterialClass p
instance BtSoftBody_fMaterialClass BtSoftBody_fMaterial
instance BtClass BtSoftBody_fMaterial where
  withBt (BtSoftBody_fMaterial p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtSoftBody_fMaterial p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtSoftBody_sCtiClass p
instance BtSoftBody_sCtiClass BtSoftBody_sCti
instance BtClass BtSoftBody_sCti where
  withBt (BtSoftBody_sCti p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtSoftBody_sCti p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtSoftBody_sMediumClass p
instance BtSoftBody_sMediumClass BtSoftBody_sMedium
instance BtClass BtSoftBody_sMedium where
  withBt (BtSoftBody_sMedium p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtSoftBody_sMedium p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtSoftBody_sRayCastClass p
instance BtSoftBody_sRayCastClass BtSoftBody_sRayCast
instance BtClass BtSoftBody_sRayCast where
  withBt (BtSoftBody_sRayCast p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtSoftBody_sRayCast p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtGjkEpaSolver2_sResultsClass p
instance BtGjkEpaSolver2_sResultsClass BtGjkEpaSolver2_sResults
instance BtClass BtGjkEpaSolver2_sResults where
  withBt (BtGjkEpaSolver2_sResults p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtGjkEpaSolver2_sResults p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtDbvt_sStkCLNClass p
instance BtDbvt_sStkCLNClass BtDbvt_sStkCLN
instance BtClass BtDbvt_sStkCLN where
  withBt (BtDbvt_sStkCLN p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtDbvt_sStkCLN p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtDbvt_sStkNNClass p
instance BtDbvt_sStkNNClass BtDbvt_sStkNN
instance BtClass BtDbvt_sStkNN where
  withBt (BtDbvt_sStkNN p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtDbvt_sStkNN p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtDbvt_sStkNPClass p
instance BtDbvt_sStkNPClass BtDbvt_sStkNP
instance BtClass BtDbvt_sStkNP where
  withBt (BtDbvt_sStkNP p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtDbvt_sStkNP p) = castPtr $ unsafeForeignPtrToPtr p
class BtClass p => BtDbvt_sStkNPSClass p
instance BtDbvt_sStkNPSClass BtDbvt_sStkNPS
instance BtClass BtDbvt_sStkNPS where
  withBt (BtDbvt_sStkNPS p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtDbvt_sStkNPS p) = castPtr $ unsafeForeignPtrToPtr p
class BtSoftBody_JointClass p => BtSoftBody_AJointClass p
instance BtSoftBody_JointClass BtSoftBody_AJoint
instance BtSoftBody_AJointClass BtSoftBody_AJoint
instance BtClass BtSoftBody_AJoint where
  withBt (BtSoftBody_AJoint p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtSoftBody_AJoint p) = castPtr $ unsafeForeignPtrToPtr p
class BtCollisionWorld_RayResultCallbackClass p => BtCollisionWorld_AllHitsRayResultCallbackClass p
instance BtCollisionWorld_RayResultCallbackClass BtCollisionWorld_AllHitsRayResultCallback
instance BtCollisionWorld_AllHitsRayResultCallbackClass BtCollisionWorld_AllHitsRayResultCallback
instance BtClass BtCollisionWorld_AllHitsRayResultCallback where
  withBt (BtCollisionWorld_AllHitsRayResultCallback p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtCollisionWorld_AllHitsRayResultCallback p) = castPtr $ unsafeForeignPtrToPtr p
class BtSoftBody_JointClass p => BtSoftBody_CJointClass p
instance BtSoftBody_JointClass BtSoftBody_CJoint
instance BtSoftBody_CJointClass BtSoftBody_CJoint
instance BtClass BtSoftBody_CJoint where
  withBt (BtSoftBody_CJoint p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtSoftBody_CJoint p) = castPtr $ unsafeForeignPtrToPtr p
class BtCollisionWorld_ConvexResultCallbackClass p => BtCollisionWorld_ClosestConvexResultCallbackClass p
instance BtCollisionWorld_ConvexResultCallbackClass BtCollisionWorld_ClosestConvexResultCallback
instance BtCollisionWorld_ClosestConvexResultCallbackClass BtCollisionWorld_ClosestConvexResultCallback
instance BtClass BtCollisionWorld_ClosestConvexResultCallback where
  withBt (BtCollisionWorld_ClosestConvexResultCallback p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtCollisionWorld_ClosestConvexResultCallback p) = castPtr $ unsafeForeignPtrToPtr p
class BtCollisionWorld_RayResultCallbackClass p => BtCollisionWorld_ClosestRayResultCallbackClass p
instance BtCollisionWorld_RayResultCallbackClass BtCollisionWorld_ClosestRayResultCallback
instance BtCollisionWorld_ClosestRayResultCallbackClass BtCollisionWorld_ClosestRayResultCallback
instance BtClass BtCollisionWorld_ClosestRayResultCallback where
  withBt (BtCollisionWorld_ClosestRayResultCallback p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtCollisionWorld_ClosestRayResultCallback p) = castPtr $ unsafeForeignPtrToPtr p
class BtPrimitiveManagerBaseClass p => BtGImpactCompoundShape_CompoundPrimitiveManagerClass p
instance BtPrimitiveManagerBaseClass BtGImpactCompoundShape_CompoundPrimitiveManager
instance BtGImpactCompoundShape_CompoundPrimitiveManagerClass BtGImpactCompoundShape_CompoundPrimitiveManager
instance BtClass BtGImpactCompoundShape_CompoundPrimitiveManager where
  withBt (BtGImpactCompoundShape_CompoundPrimitiveManager p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtGImpactCompoundShape_CompoundPrimitiveManager p) = castPtr $ unsafeForeignPtrToPtr p
class BtCollisionAlgorithmCreateFuncClass p => BtGImpactCollisionAlgorithm_CreateFuncClass p
instance BtCollisionAlgorithmCreateFuncClass BtGImpactCollisionAlgorithm_CreateFunc
instance BtGImpactCollisionAlgorithm_CreateFuncClass BtGImpactCollisionAlgorithm_CreateFunc
instance BtClass BtGImpactCollisionAlgorithm_CreateFunc where
  withBt (BtGImpactCollisionAlgorithm_CreateFunc p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtGImpactCollisionAlgorithm_CreateFunc p) = castPtr $ unsafeForeignPtrToPtr p
class BtCollisionAlgorithmCreateFuncClass p => BtSphereSphereCollisionAlgorithm_CreateFuncClass p
instance BtCollisionAlgorithmCreateFuncClass BtSphereSphereCollisionAlgorithm_CreateFunc
instance BtSphereSphereCollisionAlgorithm_CreateFuncClass BtSphereSphereCollisionAlgorithm_CreateFunc
instance BtClass BtSphereSphereCollisionAlgorithm_CreateFunc where
  withBt (BtSphereSphereCollisionAlgorithm_CreateFunc p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtSphereSphereCollisionAlgorithm_CreateFunc p) = castPtr $ unsafeForeignPtrToPtr p
class BtCollisionAlgorithmCreateFuncClass p => BtConvexConvexAlgorithm_CreateFuncClass p
instance BtCollisionAlgorithmCreateFuncClass BtConvexConvexAlgorithm_CreateFunc
instance BtConvexConvexAlgorithm_CreateFuncClass BtConvexConvexAlgorithm_CreateFunc
instance BtClass BtConvexConvexAlgorithm_CreateFunc where
  withBt (BtConvexConvexAlgorithm_CreateFunc p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtConvexConvexAlgorithm_CreateFunc p) = castPtr $ unsafeForeignPtrToPtr p
class BtSoftBody_FeatureClass p => BtSoftBody_FaceClass p
instance BtSoftBody_FeatureClass BtSoftBody_Face
instance BtSoftBody_ElementClass BtSoftBody_Face
instance BtSoftBody_FaceClass BtSoftBody_Face
instance BtClass BtSoftBody_Face where
  withBt (BtSoftBody_Face p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtSoftBody_Face p) = castPtr $ unsafeForeignPtrToPtr p
class BtAlignedObjectArray_GIM_BVH_DATA_Class p => GIM_BVH_DATA_ARRAYClass p
instance BtAlignedObjectArray_GIM_BVH_DATA_Class GIM_BVH_DATA_ARRAY
instance GIM_BVH_DATA_ARRAYClass GIM_BVH_DATA_ARRAY
instance BtClass GIM_BVH_DATA_ARRAY where
  withBt (GIM_BVH_DATA_ARRAY p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (GIM_BVH_DATA_ARRAY p) = castPtr $ unsafeForeignPtrToPtr p
class BtAlignedObjectArray_GIM_BVH_TREE_NODE_Class p => GIM_BVH_TREE_NODE_ARRAYClass p
instance BtAlignedObjectArray_GIM_BVH_TREE_NODE_Class GIM_BVH_TREE_NODE_ARRAY
instance GIM_BVH_TREE_NODE_ARRAYClass GIM_BVH_TREE_NODE_ARRAY
instance BtClass GIM_BVH_TREE_NODE_ARRAY where
  withBt (GIM_BVH_TREE_NODE_ARRAY p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (GIM_BVH_TREE_NODE_ARRAY p) = castPtr $ unsafeForeignPtrToPtr p
class BtAlignedObjectArray_BT_QUANTIZED_BVH_NODE_Class p => GIM_QUANTIZED_BVH_NODE_ARRAYClass p
instance BtAlignedObjectArray_BT_QUANTIZED_BVH_NODE_Class GIM_QUANTIZED_BVH_NODE_ARRAY
instance GIM_QUANTIZED_BVH_NODE_ARRAYClass GIM_QUANTIZED_BVH_NODE_ARRAY
instance BtClass GIM_QUANTIZED_BVH_NODE_ARRAY where
  withBt (GIM_QUANTIZED_BVH_NODE_ARRAY p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (GIM_QUANTIZED_BVH_NODE_ARRAY p) = castPtr $ unsafeForeignPtrToPtr p
class BtPrimitiveManagerBaseClass p => BtGImpactMeshShapePart_TrimeshPrimitiveManagerClass p
instance BtPrimitiveManagerBaseClass BtGImpactMeshShapePart_TrimeshPrimitiveManager
instance BtGImpactMeshShapePart_TrimeshPrimitiveManagerClass BtGImpactMeshShapePart_TrimeshPrimitiveManager
instance BtClass BtGImpactMeshShapePart_TrimeshPrimitiveManager where
  withBt (BtGImpactMeshShapePart_TrimeshPrimitiveManager p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtGImpactMeshShapePart_TrimeshPrimitiveManager p) = castPtr $ unsafeForeignPtrToPtr p
class BtCollisionAlgorithmClass p => BtActivatingCollisionAlgorithmClass p
instance BtCollisionAlgorithmClass BtActivatingCollisionAlgorithm
instance BtActivatingCollisionAlgorithmClass BtActivatingCollisionAlgorithm
instance BtClass BtActivatingCollisionAlgorithm where
  withBt (BtActivatingCollisionAlgorithm p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtActivatingCollisionAlgorithm p) = castPtr $ unsafeForeignPtrToPtr p
class BtBroadphaseInterfaceClass p => BtAxisSweep3Internal_unsignedint_Class p
instance BtBroadphaseInterfaceClass BtAxisSweep3Internal_unsignedint_
instance BtAxisSweep3Internal_unsignedint_Class BtAxisSweep3Internal_unsignedint_
instance BtClass BtAxisSweep3Internal_unsignedint_ where
  withBt (BtAxisSweep3Internal_unsignedint_ p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtAxisSweep3Internal_unsignedint_ p) = castPtr $ unsafeForeignPtrToPtr p
class BtBroadphaseInterfaceClass p => BtAxisSweep3Internal_unsignedshort_Class p
instance BtBroadphaseInterfaceClass BtAxisSweep3Internal_unsignedshort_
instance BtAxisSweep3Internal_unsignedshort_Class BtAxisSweep3Internal_unsignedshort_
instance BtClass BtAxisSweep3Internal_unsignedshort_ where
  withBt (BtAxisSweep3Internal_unsignedshort_ p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtAxisSweep3Internal_unsignedshort_ p) = castPtr $ unsafeForeignPtrToPtr p
class BtTriangleMeshShapeClass p => BtBvhTriangleMeshShapeClass p
instance BtTriangleMeshShapeClass BtBvhTriangleMeshShape
instance BtConcaveShapeClass BtBvhTriangleMeshShape
instance BtCollisionShapeClass BtBvhTriangleMeshShape
instance BtBvhTriangleMeshShapeClass BtBvhTriangleMeshShape
instance BtClass BtBvhTriangleMeshShape where
  withBt (BtBvhTriangleMeshShape p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtBvhTriangleMeshShape p) = castPtr $ unsafeForeignPtrToPtr p
class BtDispatcherClass p => BtCollisionDispatcherClass p
instance BtDispatcherClass BtCollisionDispatcher
instance BtCollisionDispatcherClass BtCollisionDispatcher
instance BtClass BtCollisionDispatcher where
  withBt (BtCollisionDispatcher p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtCollisionDispatcher p) = castPtr $ unsafeForeignPtrToPtr p
class BtContactSolverInfoDataClass p => BtContactSolverInfoClass p
instance BtContactSolverInfoDataClass BtContactSolverInfo
instance BtContactSolverInfoClass BtContactSolverInfo
instance BtClass BtContactSolverInfo where
  withBt (BtContactSolverInfo p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtContactSolverInfo p) = castPtr $ unsafeForeignPtrToPtr p
class BtActivatingCollisionAlgorithmClass p => BtConvexConvexAlgorithmClass p
instance BtActivatingCollisionAlgorithmClass BtConvexConvexAlgorithm
instance BtCollisionAlgorithmClass BtConvexConvexAlgorithm
instance BtConvexConvexAlgorithmClass BtConvexConvexAlgorithm
instance BtClass BtConvexConvexAlgorithm where
  withBt (BtConvexConvexAlgorithm p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtConvexConvexAlgorithm p) = castPtr $ unsafeForeignPtrToPtr p
class BtConvexShapeClass p => BtConvexInternalShapeClass p
instance BtConvexShapeClass BtConvexInternalShape
instance BtCollisionShapeClass BtConvexInternalShape
instance BtConvexInternalShapeClass BtConvexInternalShape
instance BtClass BtConvexInternalShape where
  withBt (BtConvexInternalShape p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtConvexInternalShape p) = castPtr $ unsafeForeignPtrToPtr p
class BtConvexInternalShapeClass p => BtCylinderShapeClass p
instance BtConvexInternalShapeClass BtCylinderShape
instance BtConvexShapeClass BtCylinderShape
instance BtCollisionShapeClass BtCylinderShape
instance BtCylinderShapeClass BtCylinderShape
instance BtClass BtCylinderShape where
  withBt (BtCylinderShape p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtCylinderShape p) = castPtr $ unsafeForeignPtrToPtr p
class BtCylinderShapeClass p => BtCylinderShapeXClass p
instance BtCylinderShapeClass BtCylinderShapeX
instance BtConvexInternalShapeClass BtCylinderShapeX
instance BtConvexShapeClass BtCylinderShapeX
instance BtCollisionShapeClass BtCylinderShapeX
instance BtCylinderShapeXClass BtCylinderShapeX
instance BtClass BtCylinderShapeX where
  withBt (BtCylinderShapeX p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtCylinderShapeX p) = castPtr $ unsafeForeignPtrToPtr p
class BtCylinderShapeClass p => BtCylinderShapeZClass p
instance BtCylinderShapeClass BtCylinderShapeZ
instance BtConvexInternalShapeClass BtCylinderShapeZ
instance BtConvexShapeClass BtCylinderShapeZ
instance BtCollisionShapeClass BtCylinderShapeZ
instance BtCylinderShapeZClass BtCylinderShapeZ
instance BtClass BtCylinderShapeZ where
  withBt (BtCylinderShapeZ p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtCylinderShapeZ p) = castPtr $ unsafeForeignPtrToPtr p
class BtMotionStateClass p => BtDefaultMotionStateClass p
instance BtMotionStateClass BtDefaultMotionState
instance BtDefaultMotionStateClass BtDefaultMotionState
instance BtClass BtDefaultMotionState where
  withBt (BtDefaultMotionState p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtDefaultMotionState p) = castPtr $ unsafeForeignPtrToPtr p
class BtSerializerClass p => BtDefaultSerializerClass p
instance BtSerializerClass BtDefaultSerializer
instance BtDefaultSerializerClass BtDefaultSerializer
instance BtClass BtDefaultSerializer where
  withBt (BtDefaultSerializer p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtDefaultSerializer p) = castPtr $ unsafeForeignPtrToPtr p
class BtVehicleRaycasterClass p => BtDefaultVehicleRaycasterClass p
instance BtVehicleRaycasterClass BtDefaultVehicleRaycaster
instance BtDefaultVehicleRaycasterClass BtDefaultVehicleRaycaster
instance BtClass BtDefaultVehicleRaycaster where
  withBt (BtDefaultVehicleRaycaster p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtDefaultVehicleRaycaster p) = castPtr $ unsafeForeignPtrToPtr p
class BtDynamicsWorldClass p => BtDiscreteDynamicsWorldClass p
instance BtDynamicsWorldClass BtDiscreteDynamicsWorld
instance BtCollisionWorldClass BtDiscreteDynamicsWorld
instance BtDiscreteDynamicsWorldClass BtDiscreteDynamicsWorld
instance BtClass BtDiscreteDynamicsWorld where
  withBt (BtDiscreteDynamicsWorld p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtDiscreteDynamicsWorld p) = castPtr $ unsafeForeignPtrToPtr p
class BtActivatingCollisionAlgorithmClass p => BtGImpactCollisionAlgorithmClass p
instance BtActivatingCollisionAlgorithmClass BtGImpactCollisionAlgorithm
instance BtCollisionAlgorithmClass BtGImpactCollisionAlgorithm
instance BtGImpactCollisionAlgorithmClass BtGImpactCollisionAlgorithm
instance BtClass BtGImpactCollisionAlgorithm where
  withBt (BtGImpactCollisionAlgorithm p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtGImpactCollisionAlgorithm p) = castPtr $ unsafeForeignPtrToPtr p
class BtGImpactShapeInterfaceClass p => BtGImpactCompoundShapeClass p
instance BtGImpactShapeInterfaceClass BtGImpactCompoundShape
instance BtConcaveShapeClass BtGImpactCompoundShape
instance BtCollisionShapeClass BtGImpactCompoundShape
instance BtGImpactCompoundShapeClass BtGImpactCompoundShape
instance BtClass BtGImpactCompoundShape where
  withBt (BtGImpactCompoundShape p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtGImpactCompoundShape p) = castPtr $ unsafeForeignPtrToPtr p
class BtGImpactShapeInterfaceClass p => BtGImpactMeshShapeClass p
instance BtGImpactShapeInterfaceClass BtGImpactMeshShape
instance BtConcaveShapeClass BtGImpactMeshShape
instance BtCollisionShapeClass BtGImpactMeshShape
instance BtGImpactMeshShapeClass BtGImpactMeshShape
instance BtClass BtGImpactMeshShape where
  withBt (BtGImpactMeshShape p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtGImpactMeshShape p) = castPtr $ unsafeForeignPtrToPtr p
class BtGImpactShapeInterfaceClass p => BtGImpactMeshShapePartClass p
instance BtGImpactShapeInterfaceClass BtGImpactMeshShapePart
instance BtConcaveShapeClass BtGImpactMeshShapePart
instance BtCollisionShapeClass BtGImpactMeshShapePart
instance BtGImpactMeshShapePartClass BtGImpactMeshShapePart
instance BtClass BtGImpactMeshShapePart where
  withBt (BtGImpactMeshShapePart p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtGImpactMeshShapePart p) = castPtr $ unsafeForeignPtrToPtr p
class BtIDebugDrawClass p => BtGLDebugDrawerClass p
instance BtIDebugDrawClass BtGLDebugDrawer
instance BtGLDebugDrawerClass BtGLDebugDrawer
instance BtClass BtGLDebugDrawer where
  withBt (BtGLDebugDrawer p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtGLDebugDrawer p) = castPtr $ unsafeForeignPtrToPtr p
class BtOverlappingPairCallbackClass p => BtGhostPairCallbackClass p
instance BtOverlappingPairCallbackClass BtGhostPairCallback
instance BtGhostPairCallbackClass BtGhostPairCallback
instance BtClass BtGhostPairCallback where
  withBt (BtGhostPairCallback p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtGhostPairCallback p) = castPtr $ unsafeForeignPtrToPtr p
class BtQuantizedBvhClass p => BtOptimizedBvhClass p
instance BtQuantizedBvhClass BtOptimizedBvh
instance BtOptimizedBvhClass BtOptimizedBvh
instance BtClass BtOptimizedBvh where
  withBt (BtOptimizedBvh p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtOptimizedBvh p) = castPtr $ unsafeForeignPtrToPtr p
class BtOverlappingPairCallbackClass p => BtOverlappingPairCacheClass p
instance BtOverlappingPairCallbackClass BtOverlappingPairCache
instance BtOverlappingPairCacheClass BtOverlappingPairCache
instance BtClass BtOverlappingPairCache where
  withBt (BtOverlappingPairCache p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtOverlappingPairCache p) = castPtr $ unsafeForeignPtrToPtr p
class BtTypedObjectClass p => BtPersistentManifoldClass p
instance BtTypedObjectClass BtPersistentManifold
instance BtPersistentManifoldClass BtPersistentManifold
instance BtClass BtPersistentManifold where
  withBt (BtPersistentManifold p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtPersistentManifold p) = castPtr $ unsafeForeignPtrToPtr p
class BtConvexInternalShapeClass p => BtPolyhedralConvexShapeClass p
instance BtConvexInternalShapeClass BtPolyhedralConvexShape
instance BtConvexShapeClass BtPolyhedralConvexShape
instance BtCollisionShapeClass BtPolyhedralConvexShape
instance BtPolyhedralConvexShapeClass BtPolyhedralConvexShape
instance BtClass BtPolyhedralConvexShape where
  withBt (BtPolyhedralConvexShape p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtPolyhedralConvexShape p) = castPtr $ unsafeForeignPtrToPtr p
class BtDiscreteDynamicsWorldClass p => BtSoftRigidDynamicsWorldClass p
instance BtDiscreteDynamicsWorldClass BtSoftRigidDynamicsWorld
instance BtDynamicsWorldClass BtSoftRigidDynamicsWorld
instance BtCollisionWorldClass BtSoftRigidDynamicsWorld
instance BtSoftRigidDynamicsWorldClass BtSoftRigidDynamicsWorld
instance BtClass BtSoftRigidDynamicsWorld where
  withBt (BtSoftRigidDynamicsWorld p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtSoftRigidDynamicsWorld p) = castPtr $ unsafeForeignPtrToPtr p
class BtOverlappingPairCacheClass p => BtSortedOverlappingPairCacheClass p
instance BtOverlappingPairCacheClass BtSortedOverlappingPairCache
instance BtOverlappingPairCallbackClass BtSortedOverlappingPairCache
instance BtSortedOverlappingPairCacheClass BtSortedOverlappingPairCache
instance BtClass BtSortedOverlappingPairCache where
  withBt (BtSortedOverlappingPairCache p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtSortedOverlappingPairCache p) = castPtr $ unsafeForeignPtrToPtr p
class BtConvexInternalShapeClass p => BtSphereShapeClass p
instance BtConvexInternalShapeClass BtSphereShape
instance BtConvexShapeClass BtSphereShape
instance BtCollisionShapeClass BtSphereShape
instance BtSphereShapeClass BtSphereShape
instance BtClass BtSphereShape where
  withBt (BtSphereShape p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtSphereShape p) = castPtr $ unsafeForeignPtrToPtr p
class BtActivatingCollisionAlgorithmClass p => BtSphereSphereCollisionAlgorithmClass p
instance BtActivatingCollisionAlgorithmClass BtSphereSphereCollisionAlgorithm
instance BtCollisionAlgorithmClass BtSphereSphereCollisionAlgorithm
instance BtSphereSphereCollisionAlgorithmClass BtSphereSphereCollisionAlgorithm
instance BtClass BtSphereSphereCollisionAlgorithm where
  withBt (BtSphereSphereCollisionAlgorithm p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtSphereSphereCollisionAlgorithm p) = castPtr $ unsafeForeignPtrToPtr p
class BtPolyhedralConvexShapeClass p => BtTriangleShapeClass p
instance BtPolyhedralConvexShapeClass BtTriangleShape
instance BtConvexInternalShapeClass BtTriangleShape
instance BtConvexShapeClass BtTriangleShape
instance BtCollisionShapeClass BtTriangleShape
instance BtTriangleShapeClass BtTriangleShape
instance BtClass BtTriangleShape where
  withBt (BtTriangleShape p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtTriangleShape p) = castPtr $ unsafeForeignPtrToPtr p
class BtTriangleShapeClass p => BtTriangleShapeExClass p
instance BtTriangleShapeClass BtTriangleShapeEx
instance BtPolyhedralConvexShapeClass BtTriangleShapeEx
instance BtConvexInternalShapeClass BtTriangleShapeEx
instance BtConvexShapeClass BtTriangleShapeEx
instance BtCollisionShapeClass BtTriangleShapeEx
instance BtTriangleShapeExClass BtTriangleShapeEx
instance BtClass BtTriangleShapeEx where
  withBt (BtTriangleShapeEx p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtTriangleShapeEx p) = castPtr $ unsafeForeignPtrToPtr p
class BtTypedObjectClass p => BtTypedConstraintClass p
instance BtTypedObjectClass BtTypedConstraint
instance BtTypedConstraintClass BtTypedConstraint
instance BtClass BtTypedConstraint where
  withBt (BtTypedConstraint p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtTypedConstraint p) = castPtr $ unsafeForeignPtrToPtr p
class BtAxisSweep3Internal_unsignedint_Class p => Bt32BitAxisSweep3Class p
instance BtAxisSweep3Internal_unsignedint_Class Bt32BitAxisSweep3
instance BtBroadphaseInterfaceClass Bt32BitAxisSweep3
instance Bt32BitAxisSweep3Class Bt32BitAxisSweep3
instance BtClass Bt32BitAxisSweep3 where
  withBt (Bt32BitAxisSweep3 p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (Bt32BitAxisSweep3 p) = castPtr $ unsafeForeignPtrToPtr p
class BtAxisSweep3Internal_unsignedshort_Class p => BtAxisSweep3Class p
instance BtAxisSweep3Internal_unsignedshort_Class BtAxisSweep3
instance BtBroadphaseInterfaceClass BtAxisSweep3
instance BtAxisSweep3Class BtAxisSweep3
instance BtClass BtAxisSweep3 where
  withBt (BtAxisSweep3 p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtAxisSweep3 p) = castPtr $ unsafeForeignPtrToPtr p
class BtPolyhedralConvexShapeClass p => BtBoxShapeClass p
instance BtPolyhedralConvexShapeClass BtBoxShape
instance BtConvexInternalShapeClass BtBoxShape
instance BtConvexShapeClass BtBoxShape
instance BtCollisionShapeClass BtBoxShape
instance BtBoxShapeClass BtBoxShape
instance BtClass BtBoxShape where
  withBt (BtBoxShape p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtBoxShape p) = castPtr $ unsafeForeignPtrToPtr p
class BtConvexInternalShapeClass p => BtCapsuleShapeClass p
instance BtConvexInternalShapeClass BtCapsuleShape
instance BtConvexShapeClass BtCapsuleShape
instance BtCollisionShapeClass BtCapsuleShape
instance BtCapsuleShapeClass BtCapsuleShape
instance BtClass BtCapsuleShape where
  withBt (BtCapsuleShape p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtCapsuleShape p) = castPtr $ unsafeForeignPtrToPtr p
class BtCapsuleShapeClass p => BtCapsuleShapeXClass p
instance BtCapsuleShapeClass BtCapsuleShapeX
instance BtConvexInternalShapeClass BtCapsuleShapeX
instance BtConvexShapeClass BtCapsuleShapeX
instance BtCollisionShapeClass BtCapsuleShapeX
instance BtCapsuleShapeXClass BtCapsuleShapeX
instance BtClass BtCapsuleShapeX where
  withBt (BtCapsuleShapeX p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtCapsuleShapeX p) = castPtr $ unsafeForeignPtrToPtr p
class BtCapsuleShapeClass p => BtCapsuleShapeZClass p
instance BtCapsuleShapeClass BtCapsuleShapeZ
instance BtConvexInternalShapeClass BtCapsuleShapeZ
instance BtConvexShapeClass BtCapsuleShapeZ
instance BtCollisionShapeClass BtCapsuleShapeZ
instance BtCapsuleShapeZClass BtCapsuleShapeZ
instance BtClass BtCapsuleShapeZ where
  withBt (BtCapsuleShapeZ p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtCapsuleShapeZ p) = castPtr $ unsafeForeignPtrToPtr p
class BtConvexInternalShapeClass p => BtConeShapeClass p
instance BtConvexInternalShapeClass BtConeShape
instance BtConvexShapeClass BtConeShape
instance BtCollisionShapeClass BtConeShape
instance BtConeShapeClass BtConeShape
instance BtClass BtConeShape where
  withBt (BtConeShape p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtConeShape p) = castPtr $ unsafeForeignPtrToPtr p
class BtConeShapeClass p => BtConeShapeXClass p
instance BtConeShapeClass BtConeShapeX
instance BtConvexInternalShapeClass BtConeShapeX
instance BtConvexShapeClass BtConeShapeX
instance BtCollisionShapeClass BtConeShapeX
instance BtConeShapeXClass BtConeShapeX
instance BtClass BtConeShapeX where
  withBt (BtConeShapeX p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtConeShapeX p) = castPtr $ unsafeForeignPtrToPtr p
class BtConeShapeClass p => BtConeShapeZClass p
instance BtConeShapeClass BtConeShapeZ
instance BtConvexInternalShapeClass BtConeShapeZ
instance BtConvexShapeClass BtConeShapeZ
instance BtCollisionShapeClass BtConeShapeZ
instance BtConeShapeZClass BtConeShapeZ
instance BtClass BtConeShapeZ where
  withBt (BtConeShapeZ p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtConeShapeZ p) = castPtr $ unsafeForeignPtrToPtr p
class BtTypedConstraintClass p => BtConeTwistConstraintClass p
instance BtTypedConstraintClass BtConeTwistConstraint
instance BtTypedObjectClass BtConeTwistConstraint
instance BtConeTwistConstraintClass BtConeTwistConstraint
instance BtClass BtConeTwistConstraint where
  withBt (BtConeTwistConstraint p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtConeTwistConstraint p) = castPtr $ unsafeForeignPtrToPtr p
class BtTypedConstraintClass p => BtContactConstraintClass p
instance BtTypedConstraintClass BtContactConstraint
instance BtTypedObjectClass BtContactConstraint
instance BtContactConstraintClass BtContactConstraint
instance BtClass BtContactConstraint where
  withBt (BtContactConstraint p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtContactConstraint p) = castPtr $ unsafeForeignPtrToPtr p
class BtConvexInternalShapeClass p => BtConvexInternalAabbCachingShapeClass p
instance BtConvexInternalShapeClass BtConvexInternalAabbCachingShape
instance BtConvexShapeClass BtConvexInternalAabbCachingShape
instance BtCollisionShapeClass BtConvexInternalAabbCachingShape
instance BtConvexInternalAabbCachingShapeClass BtConvexInternalAabbCachingShape
instance BtClass BtConvexInternalAabbCachingShape where
  withBt (BtConvexInternalAabbCachingShape p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtConvexInternalAabbCachingShape p) = castPtr $ unsafeForeignPtrToPtr p
class BtTypedConstraintClass p => BtGeneric6DofConstraintClass p
instance BtTypedConstraintClass BtGeneric6DofConstraint
instance BtTypedObjectClass BtGeneric6DofConstraint
instance BtGeneric6DofConstraintClass BtGeneric6DofConstraint
instance BtClass BtGeneric6DofConstraint where
  withBt (BtGeneric6DofConstraint p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtGeneric6DofConstraint p) = castPtr $ unsafeForeignPtrToPtr p
class BtGeneric6DofConstraintClass p => BtGeneric6DofSpringConstraintClass p
instance BtGeneric6DofConstraintClass BtGeneric6DofSpringConstraint
instance BtTypedConstraintClass BtGeneric6DofSpringConstraint
instance BtTypedObjectClass BtGeneric6DofSpringConstraint
instance BtGeneric6DofSpringConstraintClass BtGeneric6DofSpringConstraint
instance BtClass BtGeneric6DofSpringConstraint where
  withBt (BtGeneric6DofSpringConstraint p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtGeneric6DofSpringConstraint p) = castPtr $ unsafeForeignPtrToPtr p
class BtOverlappingPairCacheClass p => BtHashedOverlappingPairCacheClass p
instance BtOverlappingPairCacheClass BtHashedOverlappingPairCache
instance BtOverlappingPairCallbackClass BtHashedOverlappingPairCache
instance BtHashedOverlappingPairCacheClass BtHashedOverlappingPairCache
instance BtClass BtHashedOverlappingPairCache where
  withBt (BtHashedOverlappingPairCache p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtHashedOverlappingPairCache p) = castPtr $ unsafeForeignPtrToPtr p
class BtGeneric6DofSpringConstraintClass p => BtHinge2ConstraintClass p
instance BtGeneric6DofSpringConstraintClass BtHinge2Constraint
instance BtGeneric6DofConstraintClass BtHinge2Constraint
instance BtTypedConstraintClass BtHinge2Constraint
instance BtTypedObjectClass BtHinge2Constraint
instance BtHinge2ConstraintClass BtHinge2Constraint
instance BtClass BtHinge2Constraint where
  withBt (BtHinge2Constraint p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtHinge2Constraint p) = castPtr $ unsafeForeignPtrToPtr p
class BtTypedConstraintClass p => BtHingeConstraintClass p
instance BtTypedConstraintClass BtHingeConstraint
instance BtTypedObjectClass BtHingeConstraint
instance BtHingeConstraintClass BtHingeConstraint
instance BtClass BtHingeConstraint where
  withBt (BtHingeConstraint p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtHingeConstraint p) = castPtr $ unsafeForeignPtrToPtr p
class BtConvexInternalAabbCachingShapeClass p => BtMultiSphereShapeClass p
instance BtConvexInternalAabbCachingShapeClass BtMultiSphereShape
instance BtConvexInternalShapeClass BtMultiSphereShape
instance BtConvexShapeClass BtMultiSphereShape
instance BtCollisionShapeClass BtMultiSphereShape
instance BtMultiSphereShapeClass BtMultiSphereShape
instance BtClass BtMultiSphereShape where
  withBt (BtMultiSphereShape p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtMultiSphereShape p) = castPtr $ unsafeForeignPtrToPtr p
class BtOverlappingPairCacheClass p => BtNullPairCacheClass p
instance BtOverlappingPairCacheClass BtNullPairCache
instance BtOverlappingPairCallbackClass BtNullPairCache
instance BtNullPairCacheClass BtNullPairCache
instance BtClass BtNullPairCache where
  withBt (BtNullPairCache p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtNullPairCache p) = castPtr $ unsafeForeignPtrToPtr p
class BtTypedConstraintClass p => BtPoint2PointConstraintClass p
instance BtTypedConstraintClass BtPoint2PointConstraint
instance BtTypedObjectClass BtPoint2PointConstraint
instance BtPoint2PointConstraintClass BtPoint2PointConstraint
instance BtClass BtPoint2PointConstraint where
  withBt (BtPoint2PointConstraint p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtPoint2PointConstraint p) = castPtr $ unsafeForeignPtrToPtr p
class BtPolyhedralConvexShapeClass p => BtPolyhedralConvexAabbCachingShapeClass p
instance BtPolyhedralConvexShapeClass BtPolyhedralConvexAabbCachingShape
instance BtConvexInternalShapeClass BtPolyhedralConvexAabbCachingShape
instance BtConvexShapeClass BtPolyhedralConvexAabbCachingShape
instance BtCollisionShapeClass BtPolyhedralConvexAabbCachingShape
instance BtPolyhedralConvexAabbCachingShapeClass BtPolyhedralConvexAabbCachingShape
instance BtClass BtPolyhedralConvexAabbCachingShape where
  withBt (BtPolyhedralConvexAabbCachingShape p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtPolyhedralConvexAabbCachingShape p) = castPtr $ unsafeForeignPtrToPtr p
class BtTypedConstraintClass p => BtSliderConstraintClass p
instance BtTypedConstraintClass BtSliderConstraint
instance BtTypedObjectClass BtSliderConstraint
instance BtSliderConstraintClass BtSliderConstraint
instance BtClass BtSliderConstraint where
  withBt (BtSliderConstraint p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtSliderConstraint p) = castPtr $ unsafeForeignPtrToPtr p
class BtGeneric6DofConstraintClass p => BtUniversalConstraintClass p
instance BtGeneric6DofConstraintClass BtUniversalConstraint
instance BtTypedConstraintClass BtUniversalConstraint
instance BtTypedObjectClass BtUniversalConstraint
instance BtUniversalConstraintClass BtUniversalConstraint
instance BtClass BtUniversalConstraint where
  withBt (BtUniversalConstraint p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtUniversalConstraint p) = castPtr $ unsafeForeignPtrToPtr p
class BtPolyhedralConvexAabbCachingShapeClass p => BtBU_Simplex1to4Class p
instance BtPolyhedralConvexAabbCachingShapeClass BtBU_Simplex1to4
instance BtPolyhedralConvexShapeClass BtBU_Simplex1to4
instance BtConvexInternalShapeClass BtBU_Simplex1to4
instance BtConvexShapeClass BtBU_Simplex1to4
instance BtCollisionShapeClass BtBU_Simplex1to4
instance BtBU_Simplex1to4Class BtBU_Simplex1to4
instance BtClass BtBU_Simplex1to4 where
  withBt (BtBU_Simplex1to4 p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtBU_Simplex1to4 p) = castPtr $ unsafeForeignPtrToPtr p
class BtPolyhedralConvexAabbCachingShapeClass p => BtConvexHullShapeClass p
instance BtPolyhedralConvexAabbCachingShapeClass BtConvexHullShape
instance BtPolyhedralConvexShapeClass BtConvexHullShape
instance BtConvexInternalShapeClass BtConvexHullShape
instance BtConvexShapeClass BtConvexHullShape
instance BtCollisionShapeClass BtConvexHullShape
instance BtConvexHullShapeClass BtConvexHullShape
instance BtClass BtConvexHullShape where
  withBt (BtConvexHullShape p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtConvexHullShape p) = castPtr $ unsafeForeignPtrToPtr p
class BtPolyhedralConvexAabbCachingShapeClass p => BtConvexTriangleMeshShapeClass p
instance BtPolyhedralConvexAabbCachingShapeClass BtConvexTriangleMeshShape
instance BtPolyhedralConvexShapeClass BtConvexTriangleMeshShape
instance BtConvexInternalShapeClass BtConvexTriangleMeshShape
instance BtConvexShapeClass BtConvexTriangleMeshShape
instance BtCollisionShapeClass BtConvexTriangleMeshShape
instance BtConvexTriangleMeshShapeClass BtConvexTriangleMeshShape
instance BtClass BtConvexTriangleMeshShape where
  withBt (BtConvexTriangleMeshShape p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtConvexTriangleMeshShape p) = castPtr $ unsafeForeignPtrToPtr p
class BtBU_Simplex1to4Class p => BtTetrahedronShapeExClass p
instance BtBU_Simplex1to4Class BtTetrahedronShapeEx
instance BtPolyhedralConvexAabbCachingShapeClass BtTetrahedronShapeEx
instance BtPolyhedralConvexShapeClass BtTetrahedronShapeEx
instance BtConvexInternalShapeClass BtTetrahedronShapeEx
instance BtConvexShapeClass BtTetrahedronShapeEx
instance BtCollisionShapeClass BtTetrahedronShapeEx
instance BtTetrahedronShapeExClass BtTetrahedronShapeEx
instance BtClass BtTetrahedronShapeEx where
  withBt (BtTetrahedronShapeEx p) b = (withForeignPtr p (\a -> return $ castPtr a)) >>= b
  btToPtr (BtTetrahedronShapeEx p) = castPtr $ unsafeForeignPtrToPtr p
-- enum: ::btDbvt
e_btDbvt_SIMPLE_STACKSIZE = 64 :: Int
e_btDbvt_DOUBLE_STACKSIZE = 128 :: Int
-- enum: ::btDbvtBroadphase
e_btDbvtBroadphase_DYNAMIC_SET = 0 :: Int
e_btDbvtBroadphase_FIXED_SET = 1 :: Int
e_btDbvtBroadphase_STAGECOUNT = 2 :: Int
-- enum: ::BroadphaseNativeTypes
e_BroadphaseNativeTypes_BOX_SHAPE_PROXYTYPE = 0 :: Int
e_BroadphaseNativeTypes_TRIANGLE_SHAPE_PROXYTYPE = 1 :: Int
e_BroadphaseNativeTypes_TETRAHEDRAL_SHAPE_PROXYTYPE = 2 :: Int
e_BroadphaseNativeTypes_CONVEX_TRIANGLEMESH_SHAPE_PROXYTYPE = 3 :: Int
e_BroadphaseNativeTypes_CONVEX_HULL_SHAPE_PROXYTYPE = 4 :: Int
e_BroadphaseNativeTypes_CONVEX_POINT_CLOUD_SHAPE_PROXYTYPE = 5 :: Int
e_BroadphaseNativeTypes_CUSTOM_POLYHEDRAL_SHAPE_TYPE = 6 :: Int
e_BroadphaseNativeTypes_IMPLICIT_CONVEX_SHAPES_START_HERE = 7 :: Int
e_BroadphaseNativeTypes_SPHERE_SHAPE_PROXYTYPE = 8 :: Int
e_BroadphaseNativeTypes_MULTI_SPHERE_SHAPE_PROXYTYPE = 9 :: Int
e_BroadphaseNativeTypes_CAPSULE_SHAPE_PROXYTYPE = 10 :: Int
e_BroadphaseNativeTypes_CONE_SHAPE_PROXYTYPE = 11 :: Int
e_BroadphaseNativeTypes_CONVEX_SHAPE_PROXYTYPE = 12 :: Int
e_BroadphaseNativeTypes_CYLINDER_SHAPE_PROXYTYPE = 13 :: Int
e_BroadphaseNativeTypes_UNIFORM_SCALING_SHAPE_PROXYTYPE = 14 :: Int
e_BroadphaseNativeTypes_MINKOWSKI_SUM_SHAPE_PROXYTYPE = 15 :: Int
e_BroadphaseNativeTypes_MINKOWSKI_DIFFERENCE_SHAPE_PROXYTYPE = 16 :: Int
e_BroadphaseNativeTypes_BOX_2D_SHAPE_PROXYTYPE = 17 :: Int
e_BroadphaseNativeTypes_CONVEX_2D_SHAPE_PROXYTYPE = 18 :: Int
e_BroadphaseNativeTypes_CUSTOM_CONVEX_SHAPE_TYPE = 19 :: Int
e_BroadphaseNativeTypes_CONCAVE_SHAPES_START_HERE = 20 :: Int
e_BroadphaseNativeTypes_TRIANGLE_MESH_SHAPE_PROXYTYPE = 21 :: Int
e_BroadphaseNativeTypes_SCALED_TRIANGLE_MESH_SHAPE_PROXYTYPE = 22 :: Int
e_BroadphaseNativeTypes_FAST_CONCAVE_MESH_PROXYTYPE = 23 :: Int
e_BroadphaseNativeTypes_TERRAIN_SHAPE_PROXYTYPE = 24 :: Int
e_BroadphaseNativeTypes_GIMPACT_SHAPE_PROXYTYPE = 25 :: Int
e_BroadphaseNativeTypes_MULTIMATERIAL_TRIANGLE_MESH_PROXYTYPE = 26 :: Int
e_BroadphaseNativeTypes_EMPTY_SHAPE_PROXYTYPE = 27 :: Int
e_BroadphaseNativeTypes_STATIC_PLANE_PROXYTYPE = 28 :: Int
e_BroadphaseNativeTypes_CUSTOM_CONCAVE_SHAPE_TYPE = 29 :: Int
e_BroadphaseNativeTypes_CONCAVE_SHAPES_END_HERE = 30 :: Int
e_BroadphaseNativeTypes_COMPOUND_SHAPE_PROXYTYPE = 31 :: Int
e_BroadphaseNativeTypes_SOFTBODY_SHAPE_PROXYTYPE = 32 :: Int
e_BroadphaseNativeTypes_HFFLUID_SHAPE_PROXYTYPE = 33 :: Int
e_BroadphaseNativeTypes_HFFLUID_BUOYANT_CONVEX_SHAPE_PROXYTYPE = 34 :: Int
e_BroadphaseNativeTypes_INVALID_SHAPE_PROXYTYPE = 35 :: Int
e_BroadphaseNativeTypes_MAX_BROADPHASE_COLLISION_TYPES = 36 :: Int
-- enum: ::btBroadphaseProxy::CollisionFilterGroups
e_btBroadphaseProxy_CollisionFilterGroups_DefaultFilter = 1 :: Int
e_btBroadphaseProxy_CollisionFilterGroups_StaticFilter = 2 :: Int
e_btBroadphaseProxy_CollisionFilterGroups_KinematicFilter = 4 :: Int
e_btBroadphaseProxy_CollisionFilterGroups_DebrisFilter = 8 :: Int
e_btBroadphaseProxy_CollisionFilterGroups_SensorTrigger = 16 :: Int
e_btBroadphaseProxy_CollisionFilterGroups_CharacterFilter = 32 :: Int
e_btBroadphaseProxy_CollisionFilterGroups_AllFilter = -1 :: Int
-- enum: ::btCollisionObject::CollisionFlags
e_btCollisionObject_CollisionFlags_CF_STATIC_OBJECT = 1 :: Int
e_btCollisionObject_CollisionFlags_CF_KINEMATIC_OBJECT = 2 :: Int
e_btCollisionObject_CollisionFlags_CF_NO_CONTACT_RESPONSE = 4 :: Int
e_btCollisionObject_CollisionFlags_CF_CUSTOM_MATERIAL_CALLBACK = 8 :: Int
e_btCollisionObject_CollisionFlags_CF_CHARACTER_OBJECT = 16 :: Int
e_btCollisionObject_CollisionFlags_CF_DISABLE_VISUALIZE_OBJECT = 32 :: Int
e_btCollisionObject_CollisionFlags_CF_DISABLE_SPU_COLLISION_PROCESSING = 64 :: Int
-- enum: ::btCollisionObject::CollisionObjectTypes
e_btCollisionObject_CollisionObjectTypes_CO_COLLISION_OBJECT = 1 :: Int
e_btCollisionObject_CollisionObjectTypes_CO_RIGID_BODY = 2 :: Int
e_btCollisionObject_CollisionObjectTypes_CO_GHOST_OBJECT = 4 :: Int
e_btCollisionObject_CollisionObjectTypes_CO_SOFT_BODY = 8 :: Int
e_btCollisionObject_CollisionObjectTypes_CO_HF_FLUID = 16 :: Int
e_btCollisionObject_CollisionObjectTypes_CO_USER_TYPE = 32 :: Int
-- enum: ::btIDebugDraw::DebugDrawModes
e_btIDebugDraw_DebugDrawModes_DBG_NoDebug = 0 :: Int
e_btIDebugDraw_DebugDrawModes_DBG_DrawWireframe = 1 :: Int
e_btIDebugDraw_DebugDrawModes_DBG_DrawAabb = 2 :: Int
e_btIDebugDraw_DebugDrawModes_DBG_DrawFeaturesText = 4 :: Int
e_btIDebugDraw_DebugDrawModes_DBG_DrawContactPoints = 8 :: Int
e_btIDebugDraw_DebugDrawModes_DBG_NoDeactivation = 16 :: Int
e_btIDebugDraw_DebugDrawModes_DBG_NoHelpText = 32 :: Int
e_btIDebugDraw_DebugDrawModes_DBG_DrawText = 64 :: Int
e_btIDebugDraw_DebugDrawModes_DBG_ProfileTimings = 128 :: Int
e_btIDebugDraw_DebugDrawModes_DBG_EnableSatComparison = 256 :: Int
e_btIDebugDraw_DebugDrawModes_DBG_DisableBulletLCP = 512 :: Int
e_btIDebugDraw_DebugDrawModes_DBG_EnableCCD = 1024 :: Int
e_btIDebugDraw_DebugDrawModes_DBG_DrawConstraints = 2048 :: Int
e_btIDebugDraw_DebugDrawModes_DBG_DrawConstraintLimits = 4096 :: Int
e_btIDebugDraw_DebugDrawModes_DBG_FastWireframe = 8192 :: Int
e_btIDebugDraw_DebugDrawModes_DBG_MAX_DEBUG_DRAW_MODE = 8193 :: Int
-- enum: ::btDispatcherInfo::DispatchFunc
e_btDispatcherInfo_DispatchFunc_DISPATCH_DISCRETE = 1 :: Int
e_btDispatcherInfo_DispatchFunc_DISPATCH_CONTINUOUS = 2 :: Int
-- enum: ::btCollisionDispatcher::DispatcherFlags
e_btCollisionDispatcher_DispatcherFlags_CD_STATIC_STATIC_REPORTED = 1 :: Int
e_btCollisionDispatcher_DispatcherFlags_CD_USE_RELATIVE_CONTACT_BREAKING_THRESHOLD = 2 :: Int
e_btCollisionDispatcher_DispatcherFlags_CD_DISABLE_CONTACTPOOL_DYNAMIC_ALLOCATION = 4 :: Int
-- enum: ::PHY_ScalarType
e_PHY_ScalarType_PHY_FLOAT = 0 :: Int
e_PHY_ScalarType_PHY_DOUBLE = 1 :: Int
e_PHY_ScalarType_PHY_INTEGER = 2 :: Int
e_PHY_ScalarType_PHY_SHORT = 3 :: Int
e_PHY_ScalarType_PHY_FIXEDPOINT88 = 4 :: Int
e_PHY_ScalarType_PHY_UCHAR = 5 :: Int
-- enum: ::fDrawFlags::_
e_fDrawFlags___Nodes = 1 :: Int
e_fDrawFlags___Links = 2 :: Int
e_fDrawFlags___Faces = 4 :: Int
e_fDrawFlags___Tetras = 8 :: Int
e_fDrawFlags___Normals = 16 :: Int
e_fDrawFlags___Contacts = 32 :: Int
e_fDrawFlags___Anchors = 64 :: Int
e_fDrawFlags___Notes = 128 :: Int
e_fDrawFlags___Clusters = 256 :: Int
e_fDrawFlags___NodeTree = 512 :: Int
e_fDrawFlags___FaceTree = 1024 :: Int
e_fDrawFlags___ClusterTree = 2048 :: Int
e_fDrawFlags___Joints = 4096 :: Int
e_fDrawFlags___Std = 4302 :: Int
e_fDrawFlags___StdTetra = 4306 :: Int
-- enum: ::btSoftBody::eAeroModel::_
e_btSoftBody_eAeroModel___V_Point = 0 :: Int
e_btSoftBody_eAeroModel___V_TwoSided = 1 :: Int
e_btSoftBody_eAeroModel___V_TwoSidedLiftDrag = 2 :: Int
e_btSoftBody_eAeroModel___V_OneSided = 3 :: Int
e_btSoftBody_eAeroModel___F_TwoSided = 4 :: Int
e_btSoftBody_eAeroModel___F_TwoSidedLiftDrag = 5 :: Int
e_btSoftBody_eAeroModel___F_OneSided = 6 :: Int
e_btSoftBody_eAeroModel___END = 7 :: Int
-- enum: ::btSoftBody::eVSolver::_
e_btSoftBody_eVSolver___Linear = 0 :: Int
e_btSoftBody_eVSolver___END = 1 :: Int
-- enum: ::btSoftBody::ePSolver::_
e_btSoftBody_ePSolver___Linear = 0 :: Int
e_btSoftBody_ePSolver___Anchors = 1 :: Int
e_btSoftBody_ePSolver___RContacts = 2 :: Int
e_btSoftBody_ePSolver___SContacts = 3 :: Int
e_btSoftBody_ePSolver___END = 4 :: Int
-- enum: ::btSoftBody::eSolverPresets::_
e_btSoftBody_eSolverPresets___Positions = 0 :: Int
e_btSoftBody_eSolverPresets___Velocities = 1 :: Int
e_btSoftBody_eSolverPresets___Default = 0 :: Int
e_btSoftBody_eSolverPresets___END = 1 :: Int
-- enum: ::btSoftBody::eFeature::_
e_btSoftBody_eFeature___None = 0 :: Int
e_btSoftBody_eFeature___Node = 1 :: Int
e_btSoftBody_eFeature___Link = 2 :: Int
e_btSoftBody_eFeature___Face = 3 :: Int
e_btSoftBody_eFeature___Tetra = 4 :: Int
e_btSoftBody_eFeature___END = 5 :: Int
-- enum: ::btSoftBody::fCollision::_
e_btSoftBody_fCollision___RVSmask = 15 :: Int
e_btSoftBody_fCollision___SDF_RS = 1 :: Int
e_btSoftBody_fCollision___CL_RS = 2 :: Int
e_btSoftBody_fCollision___SVSmask = 48 :: Int
e_btSoftBody_fCollision___VF_SS = 16 :: Int
e_btSoftBody_fCollision___CL_SS = 32 :: Int
e_btSoftBody_fCollision___CL_SELF = 64 :: Int
e_btSoftBody_fCollision___Default = 1 :: Int
e_btSoftBody_fCollision___END = 2 :: Int
-- enum: ::btSoftBody::fMaterial::_
e_btSoftBody_fMaterial___DebugDraw = 1 :: Int
e_btSoftBody_fMaterial___Default = 1 :: Int
e_btSoftBody_fMaterial___END = 2 :: Int
-- enum: ::btSoftBody::Joint::eType::_
e_btSoftBody_Joint_eType___Linear = 0 :: Int
e_btSoftBody_Joint_eType___Angular = 1 :: Int
e_btSoftBody_Joint_eType___Contact = 2 :: Int
-- enum: ::bt6DofFlags
e_bt6DofFlags_BT_6DOF_FLAGS_CFM_NORM = 1 :: Int
e_bt6DofFlags_BT_6DOF_FLAGS_CFM_STOP = 2 :: Int
e_bt6DofFlags_BT_6DOF_FLAGS_ERP_STOP = 4 :: Int
-- enum: ::btConeTwistFlags
e_btConeTwistFlags_BT_CONETWIST_FLAGS_LIN_CFM = 1 :: Int
e_btConeTwistFlags_BT_CONETWIST_FLAGS_LIN_ERP = 2 :: Int
e_btConeTwistFlags_BT_CONETWIST_FLAGS_ANG_CFM = 4 :: Int
-- enum: ::btConstraintParams
e_btConstraintParams_BT_CONSTRAINT_ERP = 1 :: Int
e_btConstraintParams_BT_CONSTRAINT_STOP_ERP = 2 :: Int
e_btConstraintParams_BT_CONSTRAINT_CFM = 3 :: Int
e_btConstraintParams_BT_CONSTRAINT_STOP_CFM = 4 :: Int
-- enum: ::btContactManifoldTypes
e_btContactManifoldTypes_MIN_CONTACT_MANIFOLD_TYPE = 1024 :: Int
e_btContactManifoldTypes_BT_PERSISTENT_MANIFOLD_TYPE = 1025 :: Int
-- enum: ::btDynamicsWorldType
e_btDynamicsWorldType_BT_SIMPLE_DYNAMICS_WORLD = 1 :: Int
e_btDynamicsWorldType_BT_DISCRETE_DYNAMICS_WORLD = 2 :: Int
e_btDynamicsWorldType_BT_CONTINUOUS_DYNAMICS_WORLD = 3 :: Int
e_btDynamicsWorldType_BT_SOFT_RIGID_DYNAMICS_WORLD = 4 :: Int
-- enum: ::btHingeFlags
e_btHingeFlags_BT_HINGE_FLAGS_CFM_STOP = 1 :: Int
e_btHingeFlags_BT_HINGE_FLAGS_ERP_STOP = 2 :: Int
e_btHingeFlags_BT_HINGE_FLAGS_CFM_NORM = 4 :: Int
-- enum: ::btPoint2PointFlags
e_btPoint2PointFlags_BT_P2P_FLAGS_ERP = 1 :: Int
e_btPoint2PointFlags_BT_P2P_FLAGS_CFM = 2 :: Int
-- enum: ::btRigidBodyFlags
e_btRigidBodyFlags_BT_DISABLE_WORLD_GRAVITY = 1 :: Int
-- enum: ::btSerializationFlags
e_btSerializationFlags_BT_SERIALIZE_NO_BVH = 1 :: Int
e_btSerializationFlags_BT_SERIALIZE_NO_TRIANGLEINFOMAP = 2 :: Int
e_btSerializationFlags_BT_SERIALIZE_NO_DUPLICATE_ASSERT = 4 :: Int
-- enum: ::btSliderFlags
e_btSliderFlags_BT_SLIDER_FLAGS_CFM_DIRLIN = 1 :: Int
e_btSliderFlags_BT_SLIDER_FLAGS_ERP_DIRLIN = 2 :: Int
e_btSliderFlags_BT_SLIDER_FLAGS_CFM_DIRANG = 4 :: Int
e_btSliderFlags_BT_SLIDER_FLAGS_ERP_DIRANG = 8 :: Int
e_btSliderFlags_BT_SLIDER_FLAGS_CFM_ORTLIN = 16 :: Int
e_btSliderFlags_BT_SLIDER_FLAGS_ERP_ORTLIN = 32 :: Int
e_btSliderFlags_BT_SLIDER_FLAGS_CFM_ORTANG = 64 :: Int
e_btSliderFlags_BT_SLIDER_FLAGS_ERP_ORTANG = 128 :: Int
e_btSliderFlags_BT_SLIDER_FLAGS_CFM_LIMLIN = 256 :: Int
e_btSliderFlags_BT_SLIDER_FLAGS_ERP_LIMLIN = 512 :: Int
e_btSliderFlags_BT_SLIDER_FLAGS_CFM_LIMANG = 1024 :: Int
e_btSliderFlags_BT_SLIDER_FLAGS_ERP_LIMANG = 2048 :: Int
-- enum: ::btSolverConstraint::btSolverConstraintType
e_btSolverConstraint_btSolverConstraintType_BT_SOLVER_CONTACT_1D = 0 :: Int
e_btSolverConstraint_btSolverConstraintType_BT_SOLVER_FRICTION_1D = 1 :: Int
-- enum: ::btSolverMode
e_btSolverMode_SOLVER_RANDMIZE_ORDER = 1 :: Int
e_btSolverMode_SOLVER_FRICTION_SEPARATE = 2 :: Int
e_btSolverMode_SOLVER_USE_WARMSTARTING = 4 :: Int
e_btSolverMode_SOLVER_USE_FRICTION_WARMSTARTING = 8 :: Int
e_btSolverMode_SOLVER_USE_2_FRICTION_DIRECTIONS = 16 :: Int
e_btSolverMode_SOLVER_ENABLE_FRICTION_DIRECTION_CACHING = 32 :: Int
e_btSolverMode_SOLVER_DISABLE_VELOCITY_DEPENDENT_FRICTION_DIRECTION = 64 :: Int
e_btSolverMode_SOLVER_CACHE_FRIENDLY = 128 :: Int
e_btSolverMode_SOLVER_SIMD = 256 :: Int
e_btSolverMode_SOLVER_CUDA = 512 :: Int
-- enum: ::btQuantizedBvh::btTraversalMode
e_btQuantizedBvh_btTraversalMode_TRAVERSAL_STACKLESS = 0 :: Int
e_btQuantizedBvh_btTraversalMode_TRAVERSAL_STACKLESS_CACHE_FRIENDLY = 1 :: Int
e_btQuantizedBvh_btTraversalMode_TRAVERSAL_RECURSIVE = 2 :: Int
-- enum: ::btTypedConstraintType
e_btTypedConstraintType_POINT2POINT_CONSTRAINT_TYPE = 3 :: Int
e_btTypedConstraintType_HINGE_CONSTRAINT_TYPE = 4 :: Int
e_btTypedConstraintType_CONETWIST_CONSTRAINT_TYPE = 5 :: Int
e_btTypedConstraintType_D6_CONSTRAINT_TYPE = 6 :: Int
e_btTypedConstraintType_SLIDER_CONSTRAINT_TYPE = 7 :: Int
e_btTypedConstraintType_CONTACT_CONSTRAINT_TYPE = 8 :: Int
e_btTypedConstraintType_D6_SPRING_CONSTRAINT_TYPE = 9 :: Int
e_btTypedConstraintType_MAX_CONSTRAINT_TYPE = 10 :: Int
-- enum: ::eBT_PLANE_INTERSECTION_TYPE
e_eBT_PLANE_INTERSECTION_TYPE_BT_CONST_BACK_PLANE = 0 :: Int
e_eBT_PLANE_INTERSECTION_TYPE_BT_CONST_COLLIDE_PLANE = 1 :: Int
e_eBT_PLANE_INTERSECTION_TYPE_BT_CONST_FRONT_PLANE = 2 :: Int
-- enum: ::eGIMPACT_SHAPE_TYPE
e_eGIMPACT_SHAPE_TYPE_CONST_GIMPACT_COMPOUND_SHAPE = 0 :: Int
e_eGIMPACT_SHAPE_TYPE_CONST_GIMPACT_TRIMESH_SHAPE_PART = 1 :: Int
e_eGIMPACT_SHAPE_TYPE_CONST_GIMPACT_TRIMESH_SHAPE = 2 :: Int
-- enum: ::btGjkEpaSolver2::sResults::eStatus
e_btGjkEpaSolver2_sResults_eStatus_Separated = 0 :: Int
e_btGjkEpaSolver2_sResults_eStatus_Penetrating = 1 :: Int
e_btGjkEpaSolver2_sResults_eStatus_GJK_Failed = 2 :: Int
e_btGjkEpaSolver2_sResults_eStatus_EPA_Failed = 3 :: Int
