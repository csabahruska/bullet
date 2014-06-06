{-#LANGUAGE ForeignFunctionInterface#-}
#include "Bullet.h"
module Physics.Bullet.Raw.BulletCollision.Gimpact (
module Physics.Bullet.Raw.BulletCollision.Gimpact
) where
import Control.Monad
import Foreign.Marshal.Alloc
import Foreign.ForeignPtr.Unsafe
import Foreign.Ptr
import Physics.Bullet.Raw.C2HS
import Physics.Bullet.Raw.Types
import Physics.Bullet.Raw.Class
-- * BT_BOX_BOX_TRANSFORM_CACHE
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btBoxCollision.h?r=2223#187>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btBoxCollision.cpp?r=2223>
-}
{#fun bT_BOX_BOX_TRANSFORM_CACHE_new as bT_BOX_BOX_TRANSFORM_CACHE    {  } -> `BT_BOX_BOX_TRANSFORM_CACHE' mkBT_BOX_BOX_TRANSFORM_CACHE* #}
{#fun bT_BOX_BOX_TRANSFORM_CACHE_free    `( BT_BOX_BOX_TRANSFORM_CACHEClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btBoxCollision.h?r=2223#208>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btBoxCollision.cpp?r=2223>
-}
{#fun bT_BOX_BOX_TRANSFORM_CACHE_calc_from_full_invert as bT_BOX_BOX_TRANSFORM_CACHE_calc_from_full_invert    `( BT_BOX_BOX_TRANSFORM_CACHEClass bc )' =>     { withBt* `bc'  -- ^ 
, withTransform* `Transform'  peekTransform* -- ^ trans0
, withTransform* `Transform'  peekTransform* -- ^ trans1
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btBoxCollision.h?r=2223#208>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btBoxCollision.cpp?r=2223>
-}
{#fun bT_BOX_BOX_TRANSFORM_CACHE_calc_from_full_invert as bT_BOX_BOX_TRANSFORM_CACHE_calc_from_full_invert'    `( BT_BOX_BOX_TRANSFORM_CACHEClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaTransform-  `Transform'  peekTransform* -- ^ trans0
, allocaTransform-  `Transform'  peekTransform* -- ^ trans1
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btBoxCollision.h?r=2223#194>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btBoxCollision.cpp?r=2223>
-}
{#fun bT_BOX_BOX_TRANSFORM_CACHE_calc_from_homogenic as bT_BOX_BOX_TRANSFORM_CACHE_calc_from_homogenic    `( BT_BOX_BOX_TRANSFORM_CACHEClass bc )' =>     { withBt* `bc'  -- ^ 
, withTransform* `Transform'  peekTransform* -- ^ trans0
, withTransform* `Transform'  peekTransform* -- ^ trans1
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btBoxCollision.h?r=2223#194>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btBoxCollision.cpp?r=2223>
-}
{#fun bT_BOX_BOX_TRANSFORM_CACHE_calc_from_homogenic as bT_BOX_BOX_TRANSFORM_CACHE_calc_from_homogenic'    `( BT_BOX_BOX_TRANSFORM_CACHEClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaTransform-  `Transform'  peekTransform* -- ^ trans0
, allocaTransform-  `Transform'  peekTransform* -- ^ trans1
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btBoxCollision.h?r=2223#219>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btBoxCollision.cpp?r=2223>
-}
{#fun bT_BOX_BOX_TRANSFORM_CACHE_transform as bT_BOX_BOX_TRANSFORM_CACHE_transform    `( BT_BOX_BOX_TRANSFORM_CACHEClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ point
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btBoxCollision.h?r=2223#219>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btBoxCollision.cpp?r=2223>
-}
{#fun bT_BOX_BOX_TRANSFORM_CACHE_transform as bT_BOX_BOX_TRANSFORM_CACHE_transform'    `( BT_BOX_BOX_TRANSFORM_CACHEClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ point
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btBoxCollision.h?r=2223#168>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btBoxCollision.cpp?r=2223>
-}
{#fun bT_BOX_BOX_TRANSFORM_CACHE_calc_absolute_matrix as bT_BOX_BOX_TRANSFORM_CACHE_calc_absolute_matrix    `( BT_BOX_BOX_TRANSFORM_CACHEClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btBoxCollision.h?r=2223#164>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btBoxCollision.cpp?r=2223>
-}
{#fun bT_BOX_BOX_TRANSFORM_CACHE_m_T1to0_set    `( BT_BOX_BOX_TRANSFORM_CACHEClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btBoxCollision.h?r=2223#164>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btBoxCollision.cpp?r=2223>
-}
{#fun bT_BOX_BOX_TRANSFORM_CACHE_m_T1to0_get    `( BT_BOX_BOX_TRANSFORM_CACHEClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btBoxCollision.h?r=2223#165>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btBoxCollision.cpp?r=2223>
-}
{#fun bT_BOX_BOX_TRANSFORM_CACHE_m_R1to0_set    `( BT_BOX_BOX_TRANSFORM_CACHEClass bc )' =>     { withBt* `bc' , withMat3* `Mat3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btBoxCollision.h?r=2223#165>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btBoxCollision.cpp?r=2223>
-}
{#fun bT_BOX_BOX_TRANSFORM_CACHE_m_R1to0_get    `( BT_BOX_BOX_TRANSFORM_CACHEClass bc )' =>     { withBt* `bc' , allocaMat3-  `Mat3'  peekMat3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btBoxCollision.h?r=2223#166>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btBoxCollision.cpp?r=2223>
-}
{#fun bT_BOX_BOX_TRANSFORM_CACHE_m_AR_set    `( BT_BOX_BOX_TRANSFORM_CACHEClass bc )' =>     { withBt* `bc' , withMat3* `Mat3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btBoxCollision.h?r=2223#166>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btBoxCollision.cpp?r=2223>
-}
{#fun bT_BOX_BOX_TRANSFORM_CACHE_m_AR_get    `( BT_BOX_BOX_TRANSFORM_CACHEClass bc )' =>     { withBt* `bc' , allocaMat3-  `Mat3'  peekMat3* } -> `()' #}
-- * BT_QUANTIZED_BVH_NODE
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactQuantizedBvh.h?r=2223#44>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactQuantizedBvh.cpp?r=2223>
-}
{#fun bT_QUANTIZED_BVH_NODE_new as bT_QUANTIZED_BVH_NODE    {  } -> `BT_QUANTIZED_BVH_NODE' mkBT_QUANTIZED_BVH_NODE* #}
{#fun bT_QUANTIZED_BVH_NODE_free    `( BT_QUANTIZED_BVH_NODEClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactQuantizedBvh.h?r=2223#55>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactQuantizedBvh.cpp?r=2223>
-}
{#fun bT_QUANTIZED_BVH_NODE_getEscapeIndex as bT_QUANTIZED_BVH_NODE_getEscapeIndex    `( BT_QUANTIZED_BVH_NODEClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactQuantizedBvh.h?r=2223#66>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactQuantizedBvh.cpp?r=2223>
-}
{#fun bT_QUANTIZED_BVH_NODE_getDataIndex as bT_QUANTIZED_BVH_NODE_getDataIndex    `( BT_QUANTIZED_BVH_NODEClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactQuantizedBvh.h?r=2223#61>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactQuantizedBvh.cpp?r=2223>
-}
{#fun bT_QUANTIZED_BVH_NODE_setEscapeIndex as bT_QUANTIZED_BVH_NODE_setEscapeIndex    `( BT_QUANTIZED_BVH_NODEClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ index
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactQuantizedBvh.h?r=2223#73>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactQuantizedBvh.cpp?r=2223>
-}
{#fun bT_QUANTIZED_BVH_NODE_setDataIndex as bT_QUANTIZED_BVH_NODE_setDataIndex    `( BT_QUANTIZED_BVH_NODEClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ index
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactQuantizedBvh.h?r=2223#49>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactQuantizedBvh.cpp?r=2223>
-}
{#fun bT_QUANTIZED_BVH_NODE_isLeafNode as bT_QUANTIZED_BVH_NODE_isLeafNode    `( BT_QUANTIZED_BVH_NODEClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactQuantizedBvh.h?r=2223#42>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactQuantizedBvh.cpp?r=2223>
-}
{#fun bT_QUANTIZED_BVH_NODE_m_escapeIndexOrDataIndex_set    `( BT_QUANTIZED_BVH_NODEClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactQuantizedBvh.h?r=2223#42>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactQuantizedBvh.cpp?r=2223>
-}
{#fun bT_QUANTIZED_BVH_NODE_m_escapeIndexOrDataIndex_get    `( BT_QUANTIZED_BVH_NODEClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
-- * CompoundPrimitiveManager
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#317>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactCompoundShape_CompoundPrimitiveManager_new0 as btGImpactCompoundShape_CompoundPrimitiveManager0    `( BtGImpactCompoundShapeClass p0 )' =>     {  withBt* `p0'  } -> `BtGImpactCompoundShape_CompoundPrimitiveManager' mkBtGImpactCompoundShape_CompoundPrimitiveManager* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#322>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactCompoundShape_CompoundPrimitiveManager_new1 as btGImpactCompoundShape_CompoundPrimitiveManager1    {  } -> `BtGImpactCompoundShape_CompoundPrimitiveManager' mkBtGImpactCompoundShape_CompoundPrimitiveManager* #}
{#fun btGImpactCompoundShape_CompoundPrimitiveManager_free    `( BtGImpactCompoundShape_CompoundPrimitiveManagerClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#332>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactCompoundShape_CompoundPrimitiveManager_get_primitive_count as btGImpactCompoundShape_CompoundPrimitiveManager_get_primitive_count    `( BtGImpactCompoundShape_CompoundPrimitiveManagerClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#352>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactCompoundShape_CompoundPrimitiveManager_get_primitive_triangle as btGImpactCompoundShape_CompoundPrimitiveManager_get_primitive_triangle    `( BtGImpactCompoundShape_CompoundPrimitiveManagerClass bc , BtPrimitiveTriangleClass p1 )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ prim_index
, withBt* `p1'  -- ^ triangle
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#337>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactCompoundShape_CompoundPrimitiveManager_get_primitive_box as btGImpactCompoundShape_CompoundPrimitiveManager_get_primitive_box    `( BtGImpactCompoundShape_CompoundPrimitiveManagerClass bc , BtAABBClass p1 )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ prim_index
, withBt* `p1'  -- ^ primbox
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#327>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactCompoundShape_CompoundPrimitiveManager_is_trimesh as btGImpactCompoundShape_CompoundPrimitiveManager_is_trimesh    `( BtGImpactCompoundShape_CompoundPrimitiveManagerClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#308>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactCompoundShape_CompoundPrimitiveManager_m_compoundShape_set    `( BtGImpactCompoundShape_CompoundPrimitiveManagerClass bc , BtGImpactCompoundShapeClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#308>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactCompoundShape_CompoundPrimitiveManager_m_compoundShape_get    `( BtGImpactCompoundShape_CompoundPrimitiveManagerClass bc )' =>     { withBt* `bc'  } ->  `BtGImpactCompoundShape'  mkBtGImpactCompoundShape* #}
-- * CreateFunc
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactCollisionAlgorithm.h?r=2223#215>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactCollisionAlgorithm.cpp?r=2223>
-}
{#fun btGImpactCollisionAlgorithm_CreateFunc_new as btGImpactCollisionAlgorithm_CreateFunc    {  } -> `BtGImpactCollisionAlgorithm_CreateFunc' mkBtGImpactCollisionAlgorithm_CreateFunc* #}
{#fun btGImpactCollisionAlgorithm_CreateFunc_free    `( BtGImpactCollisionAlgorithm_CreateFuncClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactCollisionAlgorithm.h?r=2223#216>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactCollisionAlgorithm.cpp?r=2223>
-}
{#fun btGImpactCollisionAlgorithm_CreateFunc_CreateCollisionAlgorithm as btGImpactCollisionAlgorithm_CreateFunc_CreateCollisionAlgorithm    `( BtGImpactCollisionAlgorithm_CreateFuncClass bc , BtCollisionAlgorithmConstructionInfoClass p0 , BtCollisionObjectClass p1 , BtCollisionObjectClass p2 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ ci
, withBt* `p1'  -- ^ body0
, withBt* `p2'  -- ^ body1
 } ->  `BtCollisionAlgorithm'  mkBtCollisionAlgorithm* #}
-- * GIM_BVH_DATA
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.h?r=2223#80>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.cpp?r=2223>
-}
{#fun gIM_BVH_DATA_new as gIM_BVH_DATA    {  } -> `GIM_BVH_DATA' mkGIM_BVH_DATA* #}
{#fun gIM_BVH_DATA_free    `( GIM_BVH_DATAClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.h?r=2223#81>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.cpp?r=2223>
-}
{#fun gIM_BVH_DATA_m_bound_set    `( GIM_BVH_DATAClass bc , BtAABBClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.h?r=2223#81>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.cpp?r=2223>
-}
{#fun gIM_BVH_DATA_m_bound_get    `( GIM_BVH_DATAClass bc )' =>     { withBt* `bc'  } ->  `BtAABB'  mkBtAABB* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.h?r=2223#82>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.cpp?r=2223>
-}
{#fun gIM_BVH_DATA_m_data_set    `( GIM_BVH_DATAClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.h?r=2223#82>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.cpp?r=2223>
-}
{#fun gIM_BVH_DATA_m_data_get    `( GIM_BVH_DATAClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
-- * GIM_BVH_DATA_ARRAY
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.h?r=2223#131>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.cpp?r=2223>
-}
{#fun gIM_BVH_DATA_ARRAY_new as gIM_BVH_DATA_ARRAY    {  } -> `GIM_BVH_DATA_ARRAY' mkGIM_BVH_DATA_ARRAY* #}
{#fun gIM_BVH_DATA_ARRAY_free    `( GIM_BVH_DATA_ARRAYClass bc )' =>     { withBt* `bc'  } -> `()' #}
-- * GIM_BVH_TREE_NODE
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.h?r=2223#93>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.cpp?r=2223>
-}
{#fun gIM_BVH_TREE_NODE_new as gIM_BVH_TREE_NODE    {  } -> `GIM_BVH_TREE_NODE' mkGIM_BVH_TREE_NODE* #}
{#fun gIM_BVH_TREE_NODE_free    `( GIM_BVH_TREE_NODEClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.h?r=2223#122>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.cpp?r=2223>
-}
{#fun gIM_BVH_TREE_NODE_setDataIndex as gIM_BVH_TREE_NODE_setDataIndex    `( GIM_BVH_TREE_NODEClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ index
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.h?r=2223#104>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.cpp?r=2223>
-}
{#fun gIM_BVH_TREE_NODE_getEscapeIndex as gIM_BVH_TREE_NODE_getEscapeIndex    `( GIM_BVH_TREE_NODEClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.h?r=2223#115>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.cpp?r=2223>
-}
{#fun gIM_BVH_TREE_NODE_getDataIndex as gIM_BVH_TREE_NODE_getDataIndex    `( GIM_BVH_TREE_NODEClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.h?r=2223#110>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.cpp?r=2223>
-}
{#fun gIM_BVH_TREE_NODE_setEscapeIndex as gIM_BVH_TREE_NODE_setEscapeIndex    `( GIM_BVH_TREE_NODEClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ index
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.h?r=2223#98>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.cpp?r=2223>
-}
{#fun gIM_BVH_TREE_NODE_isLeafNode as gIM_BVH_TREE_NODE_isLeafNode    `( GIM_BVH_TREE_NODEClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.h?r=2223#89>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.cpp?r=2223>
-}
{#fun gIM_BVH_TREE_NODE_m_bound_set    `( GIM_BVH_TREE_NODEClass bc , BtAABBClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.h?r=2223#89>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.cpp?r=2223>
-}
{#fun gIM_BVH_TREE_NODE_m_bound_get    `( GIM_BVH_TREE_NODEClass bc )' =>     { withBt* `bc'  } ->  `BtAABB'  mkBtAABB* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.h?r=2223#91>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.cpp?r=2223>
-}
{#fun gIM_BVH_TREE_NODE_m_escapeIndexOrDataIndex_set    `( GIM_BVH_TREE_NODEClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.h?r=2223#91>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.cpp?r=2223>
-}
{#fun gIM_BVH_TREE_NODE_m_escapeIndexOrDataIndex_get    `( GIM_BVH_TREE_NODEClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
-- * GIM_BVH_TREE_NODE_ARRAY
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.h?r=2223#136>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.cpp?r=2223>
-}
{#fun gIM_BVH_TREE_NODE_ARRAY_new as gIM_BVH_TREE_NODE_ARRAY    {  } -> `GIM_BVH_TREE_NODE_ARRAY' mkGIM_BVH_TREE_NODE_ARRAY* #}
{#fun gIM_BVH_TREE_NODE_ARRAY_free    `( GIM_BVH_TREE_NODE_ARRAYClass bc )' =>     { withBt* `bc'  } -> `()' #}
-- * GIM_PAIR
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.h?r=2223#42>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.cpp?r=2223>
-}
{#fun gIM_PAIR_new0 as gIM_PAIR0    {  } -> `GIM_PAIR' mkGIM_PAIR* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.h?r=2223#51>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.cpp?r=2223>
-}
{#fun gIM_PAIR_new1 as gIM_PAIR1    {   `Int' ,  `Int'  } -> `GIM_PAIR' mkGIM_PAIR* #}
{#fun gIM_PAIR_free    `( GIM_PAIRClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.h?r=2223#40>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.cpp?r=2223>
-}
{#fun gIM_PAIR_m_index1_set    `( GIM_PAIRClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.h?r=2223#40>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.cpp?r=2223>
-}
{#fun gIM_PAIR_m_index1_get    `( GIM_PAIRClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.h?r=2223#41>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.cpp?r=2223>
-}
{#fun gIM_PAIR_m_index2_set    `( GIM_PAIRClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.h?r=2223#41>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.cpp?r=2223>
-}
{#fun gIM_PAIR_m_index2_get    `( GIM_PAIRClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
-- * GIM_QUANTIZED_BVH_NODE_ARRAY
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactQuantizedBvh.h?r=2223#98>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactQuantizedBvh.cpp?r=2223>
-}
{#fun gIM_QUANTIZED_BVH_NODE_ARRAY_new as gIM_QUANTIZED_BVH_NODE_ARRAY    {  } -> `GIM_QUANTIZED_BVH_NODE_ARRAY' mkGIM_QUANTIZED_BVH_NODE_ARRAY* #}
{#fun gIM_QUANTIZED_BVH_NODE_ARRAY_free    `( GIM_QUANTIZED_BVH_NODE_ARRAYClass bc )' =>     { withBt* `bc'  } -> `()' #}
-- * GIM_TRIANGLE_CONTACT
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btTriangleShapeEx.h?r=2223#57>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btTriangleShapeEx.cpp?r=2223>
-}
{#fun gIM_TRIANGLE_CONTACT_new as gIM_TRIANGLE_CONTACT    {  } -> `GIM_TRIANGLE_CONTACT' mkGIM_TRIANGLE_CONTACT* #}
{#fun gIM_TRIANGLE_CONTACT_free    `( GIM_TRIANGLE_CONTACTClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btTriangleShapeEx.h?r=2223#45>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btTriangleShapeEx.cpp?r=2223>
-}
{#fun gIM_TRIANGLE_CONTACT_copy_from as gIM_TRIANGLE_CONTACT_copy_from    `( GIM_TRIANGLE_CONTACTClass bc , GIM_TRIANGLE_CONTACTClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ other
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btTriangleShapeEx.h?r=2223#40>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btTriangleShapeEx.cpp?r=2223>
-}
{#fun gIM_TRIANGLE_CONTACT_m_penetration_depth_set    `( GIM_TRIANGLE_CONTACTClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btTriangleShapeEx.h?r=2223#40>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btTriangleShapeEx.cpp?r=2223>
-}
{#fun gIM_TRIANGLE_CONTACT_m_penetration_depth_get    `( GIM_TRIANGLE_CONTACTClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btTriangleShapeEx.h?r=2223#41>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btTriangleShapeEx.cpp?r=2223>
-}
{#fun gIM_TRIANGLE_CONTACT_m_point_count_set    `( GIM_TRIANGLE_CONTACTClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btTriangleShapeEx.h?r=2223#41>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btTriangleShapeEx.cpp?r=2223>
-}
{#fun gIM_TRIANGLE_CONTACT_m_point_count_get    `( GIM_TRIANGLE_CONTACTClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btTriangleShapeEx.h?r=2223#42>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btTriangleShapeEx.cpp?r=2223>
-}
{#fun gIM_TRIANGLE_CONTACT_m_separating_normal_set    `( GIM_TRIANGLE_CONTACTClass bc )' =>     { withBt* `bc' , withVec4* `Vec4'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btTriangleShapeEx.h?r=2223#42>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btTriangleShapeEx.cpp?r=2223>
-}
{#fun gIM_TRIANGLE_CONTACT_m_separating_normal_get    `( GIM_TRIANGLE_CONTACTClass bc )' =>     { withBt* `bc' , allocaVec4-  `Vec4'  peekVec4* } -> `()' #}
-- * TrimeshPrimitiveManager
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#545>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactMeshShapePart_TrimeshPrimitiveManager_new0 as btGImpactMeshShapePart_TrimeshPrimitiveManager0    {  } -> `BtGImpactMeshShapePart_TrimeshPrimitiveManager' mkBtGImpactMeshShapePart_TrimeshPrimitiveManager* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#578>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactMeshShapePart_TrimeshPrimitiveManager_new1 as btGImpactMeshShapePart_TrimeshPrimitiveManager1    `( BtStridingMeshInterfaceClass p0 )' =>     {  withBt* `p0' ,  `Int'  } -> `BtGImpactMeshShapePart_TrimeshPrimitiveManager' mkBtGImpactMeshShapePart_TrimeshPrimitiveManager* #}
{#fun btGImpactMeshShapePart_TrimeshPrimitiveManager_free    `( BtGImpactMeshShapePart_TrimeshPrimitiveManagerClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#633>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactMeshShapePart_TrimeshPrimitiveManager_get_vertex_count as btGImpactMeshShapePart_TrimeshPrimitiveManager_get_vertex_count    `( BtGImpactMeshShapePart_TrimeshPrimitiveManagerClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#656>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactMeshShapePart_TrimeshPrimitiveManager_get_vertex as btGImpactMeshShapePart_TrimeshPrimitiveManager_get_vertex    `( BtGImpactMeshShapePart_TrimeshPrimitiveManagerClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ vertex_index
, withVec3* `Vec3'  peekVec3* -- ^ vertex
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#656>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactMeshShapePart_TrimeshPrimitiveManager_get_vertex as btGImpactMeshShapePart_TrimeshPrimitiveManager_get_vertex'    `( BtGImpactMeshShapePart_TrimeshPrimitiveManagerClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ vertex_index
, allocaVec3-  `Vec3'  peekVec3* -- ^ vertex
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#623>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactMeshShapePart_TrimeshPrimitiveManager_is_trimesh as btGImpactMeshShapePart_TrimeshPrimitiveManager_is_trimesh    `( BtGImpactMeshShapePart_TrimeshPrimitiveManagerClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#596>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactMeshShapePart_TrimeshPrimitiveManager_lock as btGImpactMeshShapePart_TrimeshPrimitiveManager_lock    `( BtGImpactMeshShapePart_TrimeshPrimitiveManagerClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#674>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactMeshShapePart_TrimeshPrimitiveManager_get_primitive_box as btGImpactMeshShapePart_TrimeshPrimitiveManager_get_primitive_box    `( BtGImpactMeshShapePart_TrimeshPrimitiveManagerClass bc , BtAABBClass p1 )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ prim_index
, withBt* `p1'  -- ^ primbox
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#683>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactMeshShapePart_TrimeshPrimitiveManager_get_primitive_triangle as btGImpactMeshShapePart_TrimeshPrimitiveManager_get_primitive_triangle    `( BtGImpactMeshShapePart_TrimeshPrimitiveManagerClass bc , BtPrimitiveTriangleClass p1 )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ prim_index
, withBt* `p1'  -- ^ triangle
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#610>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactMeshShapePart_TrimeshPrimitiveManager_unlock as btGImpactMeshShapePart_TrimeshPrimitiveManager_unlock    `( BtGImpactMeshShapePart_TrimeshPrimitiveManagerClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#693>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactMeshShapePart_TrimeshPrimitiveManager_get_bullet_triangle as btGImpactMeshShapePart_TrimeshPrimitiveManager_get_bullet_triangle    `( BtGImpactMeshShapePart_TrimeshPrimitiveManagerClass bc , BtTriangleShapeExClass p1 )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ prim_index
, withBt* `p1'  -- ^ triangle
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#628>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactMeshShapePart_TrimeshPrimitiveManager_get_primitive_count as btGImpactMeshShapePart_TrimeshPrimitiveManager_get_primitive_count    `( BtGImpactMeshShapePart_TrimeshPrimitiveManagerClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#531>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactMeshShapePart_TrimeshPrimitiveManager_m_margin_set    `( BtGImpactMeshShapePart_TrimeshPrimitiveManagerClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#531>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactMeshShapePart_TrimeshPrimitiveManager_m_margin_get    `( BtGImpactMeshShapePart_TrimeshPrimitiveManagerClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#532>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactMeshShapePart_TrimeshPrimitiveManager_m_meshInterface_set    `( BtGImpactMeshShapePart_TrimeshPrimitiveManagerClass bc , BtStridingMeshInterfaceClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#532>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactMeshShapePart_TrimeshPrimitiveManager_m_meshInterface_get    `( BtGImpactMeshShapePart_TrimeshPrimitiveManagerClass bc )' =>     { withBt* `bc'  } ->  `BtStridingMeshInterface'  mkBtStridingMeshInterface* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#533>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactMeshShapePart_TrimeshPrimitiveManager_m_scale_set    `( BtGImpactMeshShapePart_TrimeshPrimitiveManagerClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#533>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactMeshShapePart_TrimeshPrimitiveManager_m_scale_get    `( BtGImpactMeshShapePart_TrimeshPrimitiveManagerClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#534>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactMeshShapePart_TrimeshPrimitiveManager_m_part_set    `( BtGImpactMeshShapePart_TrimeshPrimitiveManagerClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#534>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactMeshShapePart_TrimeshPrimitiveManager_m_part_get    `( BtGImpactMeshShapePart_TrimeshPrimitiveManagerClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#535>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactMeshShapePart_TrimeshPrimitiveManager_m_lock_count_set    `( BtGImpactMeshShapePart_TrimeshPrimitiveManagerClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#535>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactMeshShapePart_TrimeshPrimitiveManager_m_lock_count_get    `( BtGImpactMeshShapePart_TrimeshPrimitiveManagerClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#537>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactMeshShapePart_TrimeshPrimitiveManager_numverts_set    `( BtGImpactMeshShapePart_TrimeshPrimitiveManagerClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#537>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactMeshShapePart_TrimeshPrimitiveManager_numverts_get    `( BtGImpactMeshShapePart_TrimeshPrimitiveManagerClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#539>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactMeshShapePart_TrimeshPrimitiveManager_stride_set    `( BtGImpactMeshShapePart_TrimeshPrimitiveManagerClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#539>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactMeshShapePart_TrimeshPrimitiveManager_stride_get    `( BtGImpactMeshShapePart_TrimeshPrimitiveManagerClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#541>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactMeshShapePart_TrimeshPrimitiveManager_indexstride_set    `( BtGImpactMeshShapePart_TrimeshPrimitiveManagerClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#541>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactMeshShapePart_TrimeshPrimitiveManager_indexstride_get    `( BtGImpactMeshShapePart_TrimeshPrimitiveManagerClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#542>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactMeshShapePart_TrimeshPrimitiveManager_numfaces_set    `( BtGImpactMeshShapePart_TrimeshPrimitiveManagerClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#542>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactMeshShapePart_TrimeshPrimitiveManager_numfaces_get    `( BtGImpactMeshShapePart_TrimeshPrimitiveManagerClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
-- * btAABB
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btBoxCollision.h?r=2223#237>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btBoxCollision.cpp?r=2223>
-}
{#fun btAABB_new0 as btAABB0    {  } -> `BtAABB' mkBtAABB* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btBoxCollision.h?r=2223#243>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btBoxCollision.cpp?r=2223>
-}
{#fun btAABB_new1 as btAABB1    {  withVec3* `Vec3' , withVec3* `Vec3' , withVec3* `Vec3'  } -> `BtAABB' mkBtAABB* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btBoxCollision.h?r=2223#257>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btBoxCollision.cpp?r=2223>
-}
{#fun btAABB_new2 as btAABB2    {  withVec3* `Vec3' , withVec3* `Vec3' , withVec3* `Vec3' ,  `Float'  } -> `BtAABB' mkBtAABB* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btBoxCollision.h?r=2223#280>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btBoxCollision.cpp?r=2223>
-}
{#fun btAABB_new3 as btAABB3    `( BtAABBClass p0 )' =>     {  withBt* `p0' ,  `Float'  } -> `BtAABB' mkBtAABB* #}
{#fun btAABB_free    `( BtAABBClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btBoxCollision.h?r=2223#507>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btBoxCollision.cpp?r=2223>
-}
{#fun btAABB_overlapping_trans_conservative as btAABB_overlapping_trans_conservative    `( BtAABBClass bc , BtAABBClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ box
, withTransform* `Transform'  peekTransform* -- ^ trans1_to_0
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btBoxCollision.h?r=2223#507>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btBoxCollision.cpp?r=2223>
-}
{#fun btAABB_overlapping_trans_conservative as btAABB_overlapping_trans_conservative'    `( BtAABBClass bc , BtAABBClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ box
, allocaTransform-  `Transform'  peekTransform* -- ^ trans1_to_0
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btBoxCollision.h?r=2223#360>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btBoxCollision.cpp?r=2223>
-}
{#fun btAABB_appy_transform as btAABB_appy_transform    `( BtAABBClass bc )' =>     { withBt* `bc'  -- ^ 
, withTransform* `Transform'  peekTransform* -- ^ trans
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btBoxCollision.h?r=2223#360>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btBoxCollision.cpp?r=2223>
-}
{#fun btAABB_appy_transform as btAABB_appy_transform'    `( BtAABBClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaTransform-  `Transform'  peekTransform* -- ^ trans
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btBoxCollision.h?r=2223#425>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btBoxCollision.cpp?r=2223>
-}
{#fun btAABB_find_intersection as btAABB_find_intersection    `( BtAABBClass bc , BtAABBClass p0 , BtAABBClass p1 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ other
, withBt* `p1'  -- ^ intersection
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btBoxCollision.h?r=2223#456>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btBoxCollision.cpp?r=2223>
-}
{#fun btAABB_collide_ray as btAABB_collide_ray    `( BtAABBClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ vorigin
, withVec3* `Vec3'  peekVec3* -- ^ vdir
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btBoxCollision.h?r=2223#456>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btBoxCollision.cpp?r=2223>
-}
{#fun btAABB_collide_ray as btAABB_collide_ray'    `( BtAABBClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ vorigin
, allocaVec3-  `Vec3'  peekVec3* -- ^ vdir
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btBoxCollision.h?r=2223#524>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btBoxCollision.cpp?r=2223>
-}
{#fun btAABB_overlapping_trans_cache as btAABB_overlapping_trans_cache    `( BtAABBClass bc , BtAABBClass p0 , BT_BOX_BOX_TRANSFORM_CACHEClass p1 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ box
, withBt* `p1'  -- ^ transcache
,  `Bool'  -- ^ fulltest
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btBoxCollision.h?r=2223#418>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btBoxCollision.cpp?r=2223>
-}
{#fun btAABB_get_center_extend as btAABB_get_center_extend    `( BtAABBClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ center
, withVec3* `Vec3'  peekVec3* -- ^ extend
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btBoxCollision.h?r=2223#418>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btBoxCollision.cpp?r=2223>
-}
{#fun btAABB_get_center_extend as btAABB_get_center_extend'    `( BtAABBClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ center
, allocaVec3-  `Vec3'  peekVec3* -- ^ extend
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btBoxCollision.h?r=2223#291>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btBoxCollision.cpp?r=2223>
-}
{#fun btAABB_invalidate as btAABB_invalidate    `( BtAABBClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btBoxCollision.h?r=2223#437>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btBoxCollision.cpp?r=2223>
-}
{#fun btAABB_has_collision as btAABB_has_collision    `( BtAABBClass bc , BtAABBClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ other
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btBoxCollision.h?r=2223#377>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btBoxCollision.cpp?r=2223>
-}
{#fun btAABB_appy_transform_trans_cache as btAABB_appy_transform_trans_cache    `( BtAABBClass bc , BT_BOX_BOX_TRANSFORM_CACHEClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ trans
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btBoxCollision.h?r=2223#341>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btBoxCollision.cpp?r=2223>
-}
{#fun btAABB_calc_from_triangle_margin as btAABB_calc_from_triangle_margin    `( BtAABBClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ V1
, withVec3* `Vec3'  peekVec3* -- ^ V2
, withVec3* `Vec3'  peekVec3* -- ^ V3
,  `Float'  -- ^ margin
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btBoxCollision.h?r=2223#341>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btBoxCollision.cpp?r=2223>
-}
{#fun btAABB_calc_from_triangle_margin as btAABB_calc_from_triangle_margin'    `( BtAABBClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ V1
, allocaVec3-  `Vec3'  peekVec3* -- ^ V2
, allocaVec3-  `Vec3'  peekVec3* -- ^ V3
,  `Float'  -- ^ margin
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btBoxCollision.h?r=2223#301>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btBoxCollision.cpp?r=2223>
-}
{#fun btAABB_increment_margin as btAABB_increment_margin    `( BtAABBClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ margin
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btBoxCollision.h?r=2223#393>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btBoxCollision.cpp?r=2223>
-}
{#fun btAABB_merge as btAABB_merge    `( BtAABBClass bc , BtAABBClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ box
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btBoxCollision.h?r=2223#578>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btBoxCollision.cpp?r=2223>
-}
{#fun btAABB_collide_plane as btAABB_collide_plane    `( BtAABBClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec4* `Vec4'  peekVec4* -- ^ plane
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btBoxCollision.h?r=2223#578>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btBoxCollision.cpp?r=2223>
-}
{#fun btAABB_collide_plane as btAABB_collide_plane'    `( BtAABBClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec4-  `Vec4'  peekVec4* -- ^ plane
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btBoxCollision.h?r=2223#515>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btBoxCollision.cpp?r=2223>
-}
{#fun btAABB_overlapping_trans_conservative2 as btAABB_overlapping_trans_conservative2    `( BtAABBClass bc , BtAABBClass p0 , BT_BOX_BOX_TRANSFORM_CACHEClass p1 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ box
, withBt* `p1'  -- ^ trans1_to_0
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btBoxCollision.h?r=2223#311>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btBoxCollision.cpp?r=2223>
-}
{#fun btAABB_copy_with_margin as btAABB_copy_with_margin    `( BtAABBClass bc , BtAABBClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ other
,  `Float'  -- ^ margin
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btBoxCollision.h?r=2223#589>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btBoxCollision.cpp?r=2223>
-}
{#fun btAABB_collide_triangle_exact as btAABB_collide_triangle_exact    `( BtAABBClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ p1
, withVec3* `Vec3'  peekVec3* -- ^ p2
, withVec3* `Vec3'  peekVec3* -- ^ p3
, withVec4* `Vec4'  peekVec4* -- ^ triangle_plane
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btBoxCollision.h?r=2223#589>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btBoxCollision.cpp?r=2223>
-}
{#fun btAABB_collide_triangle_exact as btAABB_collide_triangle_exact'    `( BtAABBClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ p1
, allocaVec3-  `Vec3'  peekVec3* -- ^ p2
, allocaVec3-  `Vec3'  peekVec3* -- ^ p3
, allocaVec4-  `Vec4'  peekVec4* -- ^ triangle_plane
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btBoxCollision.h?r=2223#235>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btBoxCollision.cpp?r=2223>
-}
{#fun btAABB_m_max_set    `( BtAABBClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btBoxCollision.h?r=2223#235>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btBoxCollision.cpp?r=2223>
-}
{#fun btAABB_m_max_get    `( BtAABBClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btBoxCollision.h?r=2223#234>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btBoxCollision.cpp?r=2223>
-}
{#fun btAABB_m_min_set    `( BtAABBClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btBoxCollision.h?r=2223#234>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btBoxCollision.cpp?r=2223>
-}
{#fun btAABB_m_min_get    `( BtAABBClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
-- * btBvhTree
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.h?r=2223#157>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.cpp?r=2223>
-}
{#fun btBvhTree_new as btBvhTree    {  } -> `BtBvhTree' mkBtBvhTree* #}
{#fun btBvhTree_free    `( BtBvhTreeClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.h?r=2223#173>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.cpp?r=2223>
-}
{#fun btBvhTree_getNodeCount as btBvhTree_getNodeCount    `( BtBvhTreeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.h?r=2223#164>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.cpp?r=2223>
-}
{#fun btBvhTree_build_tree as btBvhTree_build_tree    `( BtBvhTreeClass bc , GIM_BVH_DATA_ARRAYClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ primitive_boxes
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.h?r=2223#194>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.cpp?r=2223>
-}
{#fun btBvhTree_setNodeBound as btBvhTree_setNodeBound    `( BtBvhTreeClass bc , BtAABBClass p1 )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ nodeindex
, withBt* `p1'  -- ^ bound
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.h?r=2223#199>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.cpp?r=2223>
-}
{#fun btBvhTree_getLeftNode as btBvhTree_getLeftNode    `( BtBvhTreeClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ nodeindex
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.h?r=2223#155>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.cpp?r=2223>
-}
{#fun btBvhTree__build_sub_tree as btBvhTree__build_sub_tree    `( BtBvhTreeClass bc , GIM_BVH_DATA_ARRAYClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ primitive_boxes
,  `Int'  -- ^ startIndex
,  `Int'  -- ^ endIndex
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.h?r=2223#166>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.cpp?r=2223>
-}
{#fun btBvhTree_clearNodes as btBvhTree_clearNodes    `( BtBvhTreeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.h?r=2223#151>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.cpp?r=2223>
-}
{#fun btBvhTree__sort_and_calc_splitting_index as btBvhTree__sort_and_calc_splitting_index    `( BtBvhTreeClass bc , GIM_BVH_DATA_ARRAYClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ primitive_boxes
,  `Int'  -- ^ startIndex
,  `Int'  -- ^ endIndex
,  `Int'  -- ^ splitAxis
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.h?r=2223#210>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.cpp?r=2223>
-}
{#fun btBvhTree_getEscapeNodeIndex as btBvhTree_getEscapeNodeIndex    `( BtBvhTreeClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ nodeindex
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.h?r=2223#179>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.cpp?r=2223>
-}
{#fun btBvhTree_isLeafNode as btBvhTree_isLeafNode    `( BtBvhTreeClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ nodeindex
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.h?r=2223#215>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.cpp?r=2223>
-}
{#fun btBvhTree_get_node_pointer as btBvhTree_get_node_pointer    `( BtBvhTreeClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ index
 } ->  `GIM_BVH_TREE_NODE'  mkGIM_BVH_TREE_NODE* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.h?r=2223#184>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.cpp?r=2223>
-}
{#fun btBvhTree_getNodeData as btBvhTree_getNodeData    `( BtBvhTreeClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ nodeindex
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.h?r=2223#189>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.cpp?r=2223>
-}
{#fun btBvhTree_getNodeBound as btBvhTree_getNodeBound    `( BtBvhTreeClass bc , BtAABBClass p1 )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ nodeindex
, withBt* `p1'  -- ^ bound
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.h?r=2223#204>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.cpp?r=2223>
-}
{#fun btBvhTree_getRightNode as btBvhTree_getRightNode    `( BtBvhTreeClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ nodeindex
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.h?r=2223#153>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.cpp?r=2223>
-}
{#fun btBvhTree__calc_splitting_axis as btBvhTree__calc_splitting_axis    `( BtBvhTreeClass bc , GIM_BVH_DATA_ARRAYClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ primitive_boxes
,  `Int'  -- ^ startIndex
,  `Int'  -- ^ endIndex
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.h?r=2223#146>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.cpp?r=2223>
-}
{#fun btBvhTree_m_num_nodes_set    `( BtBvhTreeClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.h?r=2223#146>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.cpp?r=2223>
-}
{#fun btBvhTree_m_num_nodes_get    `( BtBvhTreeClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.h?r=2223#147>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.cpp?r=2223>
-}
{#fun btBvhTree_m_node_array_set    `( BtBvhTreeClass bc , GIM_BVH_TREE_NODE_ARRAYClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.h?r=2223#147>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.cpp?r=2223>
-}
{#fun btBvhTree_m_node_array_get    `( BtBvhTreeClass bc )' =>     { withBt* `bc'  } ->  `GIM_BVH_TREE_NODE_ARRAY'  mkGIM_BVH_TREE_NODE_ARRAY* #}
-- * btGImpactBvh
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.h?r=2223#262>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.cpp?r=2223>
-}
{#fun btGImpactBvh_new0 as btGImpactBvh0    {  } -> `BtGImpactBvh' mkBtGImpactBvh* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.h?r=2223#268>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.cpp?r=2223>
-}
{#fun btGImpactBvh_new1 as btGImpactBvh1    `( BtPrimitiveManagerBaseClass p0 )' =>     {  withBt* `p0'  } -> `BtGImpactBvh' mkBtGImpactBvh* #}
{#fun btGImpactBvh_free    `( BtGImpactBvhClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.h?r=2223#354>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.cpp?r=2223>
-}
{#fun btGImpactBvh_setNodeBound as btGImpactBvh_setNodeBound    `( BtGImpactBvhClass bc , BtAABBClass p1 )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ nodeindex
, withBt* `p1'  -- ^ bound
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.h?r=2223#370>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.cpp?r=2223>
-}
{#fun btGImpactBvh_getEscapeNodeIndex as btGImpactBvh_getEscapeNodeIndex    `( BtGImpactBvhClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ nodeindex
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.h?r=2223#339>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.cpp?r=2223>
-}
{#fun btGImpactBvh_isLeafNode as btGImpactBvh_isLeafNode    `( BtGImpactBvhClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ nodeindex
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.h?r=2223#285>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.cpp?r=2223>
-}
{#fun btGImpactBvh_getPrimitiveManager as btGImpactBvh_getPrimitiveManager    `( BtGImpactBvhClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtPrimitiveManagerBase'  mkBtPrimitiveManagerBase* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.h?r=2223#349>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.cpp?r=2223>
-}
{#fun btGImpactBvh_getNodeBound as btGImpactBvh_getNodeBound    `( BtGImpactBvhClass bc , BtAABBClass p1 )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ nodeindex
, withBt* `p1'  -- ^ bound
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.h?r=2223#365>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.cpp?r=2223>
-}
{#fun btGImpactBvh_getRightNode as btGImpactBvh_getRightNode    `( BtGImpactBvhClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ nodeindex
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.h?r=2223#360>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.cpp?r=2223>
-}
{#fun btGImpactBvh_getLeftNode as btGImpactBvh_getLeftNode    `( BtGImpactBvhClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ nodeindex
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.h?r=2223#280>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.cpp?r=2223>
-}
{#fun btGImpactBvh_setPrimitiveManager as btGImpactBvh_setPrimitiveManager    `( BtGImpactBvhClass bc , BtPrimitiveManagerBaseClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ primitive_manager
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.h?r=2223#301>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.cpp?r=2223>
-}
{#fun btGImpactBvh_buildSet as btGImpactBvh_buildSet    `( BtGImpactBvhClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.h?r=2223#375>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.cpp?r=2223>
-}
{#fun btGImpactBvh_getNodeTriangle as btGImpactBvh_getNodeTriangle    `( BtGImpactBvhClass bc , BtPrimitiveTriangleClass p1 )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ nodeindex
, withBt* `p1'  -- ^ triangle
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.h?r=2223#333>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.cpp?r=2223>
-}
{#fun btGImpactBvh_getNodeCount as btGImpactBvh_getNodeCount    `( BtGImpactBvhClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.h?r=2223#321>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.cpp?r=2223>
-}
{#fun btGImpactBvh_hasHierarchy as btGImpactBvh_hasHierarchy    `( BtGImpactBvhClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.h?r=2223#318>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.cpp?r=2223>
-}
{#fun btGImpactBvh_rayQuery as btGImpactBvh_rayQuery    `( BtGImpactBvhClass bc , BtAlignedObjectArray_int_Class p2 )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ ray_dir
, withVec3* `Vec3'  peekVec3* -- ^ ray_origin
, withBt* `p2'  -- ^ collided_results
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.h?r=2223#318>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.cpp?r=2223>
-}
{#fun btGImpactBvh_rayQuery as btGImpactBvh_rayQuery'    `( BtGImpactBvhClass bc , BtAlignedObjectArray_int_Class p2 )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ ray_dir
, allocaVec3-  `Vec3'  peekVec3* -- ^ ray_origin
, withBt* `p2'  -- ^ collided_results
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.h?r=2223#295>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.cpp?r=2223>
-}
{#fun btGImpactBvh_update as btGImpactBvh_update    `( BtGImpactBvhClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.h?r=2223#258>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.cpp?r=2223>
-}
{#fun btGImpactBvh_refit as btGImpactBvh_refit    `( BtGImpactBvhClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.h?r=2223#327>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.cpp?r=2223>
-}
{#fun btGImpactBvh_isTrimesh as btGImpactBvh_isTrimesh    `( BtGImpactBvhClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.h?r=2223#304>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.cpp?r=2223>
-}
{#fun btGImpactBvh_boxQuery as btGImpactBvh_boxQuery    `( BtGImpactBvhClass bc , BtAABBClass p0 , BtAlignedObjectArray_int_Class p1 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ box
, withBt* `p1'  -- ^ collided_results
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.h?r=2223#392>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.cpp?r=2223>
-}
{#fun btGImpactBvh_find_collision as btGImpactBvh_find_collision    `(  BtGImpactBvhClass p0 , BtGImpactBvhClass p2 , BtPairSetClass p4 )' =>     {  withBt* `p0'  -- ^ boxset1
, withTransform* `Transform'  peekTransform* -- ^ trans1
, withBt* `p2'  -- ^ boxset2
, withTransform* `Transform'  peekTransform* -- ^ trans2
, withBt* `p4'  -- ^ collision_pairs
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.h?r=2223#392>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.cpp?r=2223>
-}
{#fun btGImpactBvh_find_collision as btGImpactBvh_find_collision'    `(  BtGImpactBvhClass p0 , BtGImpactBvhClass p2 , BtPairSetClass p4 )' =>     {  withBt* `p0'  -- ^ boxset1
, allocaTransform-  `Transform'  peekTransform* -- ^ trans1
, withBt* `p2'  -- ^ boxset2
, allocaTransform-  `Transform'  peekTransform* -- ^ trans2
, withBt* `p4'  -- ^ collision_pairs
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.h?r=2223#381>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.cpp?r=2223>
-}
{#fun btGImpactBvh_get_node_pointer as btGImpactBvh_get_node_pointer    `( BtGImpactBvhClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ index
 } ->  `GIM_BVH_TREE_NODE'  mkGIM_BVH_TREE_NODE* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.h?r=2223#308>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.cpp?r=2223>
-}
{#fun btGImpactBvh_boxQueryTrans as btGImpactBvh_boxQueryTrans    `( BtGImpactBvhClass bc , BtAABBClass p0 , BtAlignedObjectArray_int_Class p2 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ box
, withTransform* `Transform'  peekTransform* -- ^ transform
, withBt* `p2'  -- ^ collided_results
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.h?r=2223#308>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.cpp?r=2223>
-}
{#fun btGImpactBvh_boxQueryTrans as btGImpactBvh_boxQueryTrans'    `( BtGImpactBvhClass bc , BtAABBClass p0 , BtAlignedObjectArray_int_Class p2 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ box
, allocaTransform-  `Transform'  peekTransform* -- ^ transform
, withBt* `p2'  -- ^ collided_results
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.h?r=2223#344>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.cpp?r=2223>
-}
{#fun btGImpactBvh_getNodeData as btGImpactBvh_getNodeData    `( BtGImpactBvhClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ nodeindex
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.h?r=2223#253>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.cpp?r=2223>
-}
{#fun btGImpactBvh_m_box_tree_set    `( BtGImpactBvhClass bc , BtBvhTreeClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.h?r=2223#253>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.cpp?r=2223>
-}
{#fun btGImpactBvh_m_box_tree_get    `( BtGImpactBvhClass bc )' =>     { withBt* `bc'  } ->  `BtBvhTree'  mkBtBvhTree* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.h?r=2223#254>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.cpp?r=2223>
-}
{#fun btGImpactBvh_m_primitive_manager_set    `( BtGImpactBvhClass bc , BtPrimitiveManagerBaseClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.h?r=2223#254>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.cpp?r=2223>
-}
{#fun btGImpactBvh_m_primitive_manager_get    `( BtGImpactBvhClass bc )' =>     { withBt* `bc'  } ->  `BtPrimitiveManagerBase'  mkBtPrimitiveManagerBase* #}
-- * btGImpactCollisionAlgorithm
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactCollisionAlgorithm.h?r=2223#199>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactCollisionAlgorithm.cpp?r=2223>
-}
{#fun btGImpactCollisionAlgorithm_new as btGImpactCollisionAlgorithm    `( BtCollisionAlgorithmConstructionInfoClass p0 , BtCollisionObjectClass p1 , BtCollisionObjectClass p2 )' =>     {  withBt* `p0' , withBt* `p1' , withBt* `p2'  } -> `BtGImpactCollisionAlgorithm' mkBtGImpactCollisionAlgorithm* #}
{#fun btGImpactCollisionAlgorithm_free    `( BtGImpactCollisionAlgorithmClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactCollisionAlgorithm.h?r=2223#276>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactCollisionAlgorithm.cpp?r=2223>
-}
{#fun btGImpactCollisionAlgorithm_getFace1 as btGImpactCollisionAlgorithm_getFace1    `( BtGImpactCollisionAlgorithmClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactCollisionAlgorithm.h?r=2223#268>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactCollisionAlgorithm.cpp?r=2223>
-}
{#fun btGImpactCollisionAlgorithm_getFace0 as btGImpactCollisionAlgorithm_getFace0    `( BtGImpactCollisionAlgorithmClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactCollisionAlgorithm.h?r=2223#252>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactCollisionAlgorithm.cpp?r=2223>
-}
{#fun btGImpactCollisionAlgorithm_gimpact_vs_compoundshape as btGImpactCollisionAlgorithm_gimpact_vs_compoundshape    `( BtGImpactCollisionAlgorithmClass bc , BtCollisionObjectClass p0 , BtCollisionObjectClass p1 , BtGImpactShapeInterfaceClass p2 , BtCompoundShapeClass p3 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ body0
, withBt* `p1'  -- ^ body1
, withBt* `p2'  -- ^ shape0
, withBt* `p3'  -- ^ shape1
,  `Bool'  -- ^ swapped
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactCollisionAlgorithm.h?r=2223#247>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactCollisionAlgorithm.cpp?r=2223>
-}
{#fun btGImpactCollisionAlgorithm_gimpact_vs_shape as btGImpactCollisionAlgorithm_gimpact_vs_shape    `( BtGImpactCollisionAlgorithmClass bc , BtCollisionObjectClass p0 , BtCollisionObjectClass p1 , BtGImpactShapeInterfaceClass p2 , BtCollisionShapeClass p3 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ body0
, withBt* `p1'  -- ^ body1
, withBt* `p2'  -- ^ shape0
, withBt* `p3'  -- ^ shape1
,  `Bool'  -- ^ swapped
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactCollisionAlgorithm.h?r=2223#172>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactCollisionAlgorithm.cpp?r=2223>
-}
{#fun btGImpactCollisionAlgorithm_convex_vs_convex_collision as btGImpactCollisionAlgorithm_convex_vs_convex_collision    `( BtGImpactCollisionAlgorithmClass bc , BtCollisionObjectClass p0 , BtCollisionObjectClass p1 , BtCollisionShapeClass p2 , BtCollisionShapeClass p3 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ body0
, withBt* `p1'  -- ^ body1
, withBt* `p2'  -- ^ shape0
, withBt* `p3'  -- ^ shape1
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactCollisionAlgorithm.h?r=2223#264>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactCollisionAlgorithm.cpp?r=2223>
-}
{#fun btGImpactCollisionAlgorithm_setFace0 as btGImpactCollisionAlgorithm_setFace0    `( BtGImpactCollisionAlgorithmClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ value
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactCollisionAlgorithm.h?r=2223#272>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactCollisionAlgorithm.cpp?r=2223>
-}
{#fun btGImpactCollisionAlgorithm_setFace1 as btGImpactCollisionAlgorithm_setFace1    `( BtGImpactCollisionAlgorithmClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ value
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactCollisionAlgorithm.h?r=2223#109>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactCollisionAlgorithm.cpp?r=2223>
-}
{#fun btGImpactCollisionAlgorithm_checkManifold as btGImpactCollisionAlgorithm_checkManifold    `( BtGImpactCollisionAlgorithmClass bc , BtCollisionObjectClass p0 , BtCollisionObjectClass p1 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ body0
, withBt* `p1'  -- ^ body1
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactCollisionAlgorithm.h?r=2223#68>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactCollisionAlgorithm.cpp?r=2223>
-}
{#fun btGImpactCollisionAlgorithm_newContactManifold as btGImpactCollisionAlgorithm_newContactManifold    `( BtGImpactCollisionAlgorithmClass bc , BtCollisionObjectClass p0 , BtCollisionObjectClass p1 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ body0
, withBt* `p1'  -- ^ body1
 } ->  `BtPersistentManifold'  mkBtPersistentManifold* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactCollisionAlgorithm.h?r=2223#143>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactCollisionAlgorithm.cpp?r=2223>
-}
{#fun btGImpactCollisionAlgorithm_addContactPoint as btGImpactCollisionAlgorithm_addContactPoint    `( BtGImpactCollisionAlgorithmClass bc , BtCollisionObjectClass p0 , BtCollisionObjectClass p1 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ body0
, withBt* `p1'  -- ^ body1
, withVec3* `Vec3'  peekVec3* -- ^ point
, withVec3* `Vec3'  peekVec3* -- ^ normal
,  `Float'  -- ^ distance
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactCollisionAlgorithm.h?r=2223#143>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactCollisionAlgorithm.cpp?r=2223>
-}
{#fun btGImpactCollisionAlgorithm_addContactPoint as btGImpactCollisionAlgorithm_addContactPoint'    `( BtGImpactCollisionAlgorithmClass bc , BtCollisionObjectClass p0 , BtCollisionObjectClass p1 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ body0
, withBt* `p1'  -- ^ body1
, allocaVec3-  `Vec3'  peekVec3* -- ^ point
, allocaVec3-  `Vec3'  peekVec3* -- ^ normal
,  `Float'  -- ^ distance
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactCollisionAlgorithm.h?r=2223#194>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactCollisionAlgorithm.cpp?r=2223>
-}
{#fun btGImpactCollisionAlgorithm_gimpacttrimeshpart_vs_plane_collision as btGImpactCollisionAlgorithm_gimpacttrimeshpart_vs_plane_collision    `( BtGImpactCollisionAlgorithmClass bc , BtCollisionObjectClass p0 , BtCollisionObjectClass p1 , BtGImpactMeshShapePartClass p2 , BtStaticPlaneShapeClass p3 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ body0
, withBt* `p1'  -- ^ body1
, withBt* `p2'  -- ^ shape0
, withBt* `p3'  -- ^ shape1
,  `Bool'  -- ^ swapped
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactCollisionAlgorithm.h?r=2223#224>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactCollisionAlgorithm.cpp?r=2223>
-}
{#fun btGImpactCollisionAlgorithm_registerAlgorithm as btGImpactCollisionAlgorithm_registerAlgorithm    `(  BtCollisionDispatcherClass p0 )' =>     {  withBt* `p0'  -- ^ dispatcher
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactCollisionAlgorithm.h?r=2223#203>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactCollisionAlgorithm.cpp?r=2223>
-}
{#fun btGImpactCollisionAlgorithm_processCollision as btGImpactCollisionAlgorithm_processCollision    `( BtGImpactCollisionAlgorithmClass bc , BtCollisionObjectClass p0 , BtCollisionObjectClass p1 , BtDispatcherInfoClass p2 , BtManifoldResultClass p3 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ body0
, withBt* `p1'  -- ^ body1
, withBt* `p2'  -- ^ dispatchInfo
, withBt* `p3'  -- ^ resultOut
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactCollisionAlgorithm.h?r=2223#84>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactCollisionAlgorithm.cpp?r=2223>
-}
{#fun btGImpactCollisionAlgorithm_destroyContactManifolds as btGImpactCollisionAlgorithm_destroyContactManifolds    `( BtGImpactCollisionAlgorithmClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactCollisionAlgorithm.h?r=2223#180>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactCollisionAlgorithm.cpp?r=2223>
-}
{#fun btGImpactCollisionAlgorithm_gimpact_vs_gimpact_find_pairs as btGImpactCollisionAlgorithm_gimpact_vs_gimpact_find_pairs    `( BtGImpactCollisionAlgorithmClass bc , BtGImpactShapeInterfaceClass p2 , BtGImpactShapeInterfaceClass p3 , BtPairSetClass p4 )' =>     { withBt* `bc'  -- ^ 
, withTransform* `Transform'  peekTransform* -- ^ trans0
, withTransform* `Transform'  peekTransform* -- ^ trans1
, withBt* `p2'  -- ^ shape0
, withBt* `p3'  -- ^ shape1
, withBt* `p4'  -- ^ pairset
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactCollisionAlgorithm.h?r=2223#180>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactCollisionAlgorithm.cpp?r=2223>
-}
{#fun btGImpactCollisionAlgorithm_gimpact_vs_gimpact_find_pairs as btGImpactCollisionAlgorithm_gimpact_vs_gimpact_find_pairs'    `( BtGImpactCollisionAlgorithmClass bc , BtGImpactShapeInterfaceClass p2 , BtGImpactShapeInterfaceClass p3 , BtPairSetClass p4 )' =>     { withBt* `bc'  -- ^ 
, allocaTransform-  `Transform'  peekTransform* -- ^ trans0
, allocaTransform-  `Transform'  peekTransform* -- ^ trans1
, withBt* `p2'  -- ^ shape0
, withBt* `p3'  -- ^ shape1
, withBt* `p4'  -- ^ pairset
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactCollisionAlgorithm.h?r=2223#102>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactCollisionAlgorithm.cpp?r=2223>
-}
{#fun btGImpactCollisionAlgorithm_getLastManifold as btGImpactCollisionAlgorithm_getLastManifold    `( BtGImpactCollisionAlgorithmClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtPersistentManifold'  mkBtPersistentManifold* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactCollisionAlgorithm.h?r=2223#187>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactCollisionAlgorithm.cpp?r=2223>
-}
{#fun btGImpactCollisionAlgorithm_gimpact_vs_shape_find_pairs as btGImpactCollisionAlgorithm_gimpact_vs_shape_find_pairs    `( BtGImpactCollisionAlgorithmClass bc , BtGImpactShapeInterfaceClass p2 , BtCollisionShapeClass p3 , BtAlignedObjectArray_int_Class p4 )' =>     { withBt* `bc'  -- ^ 
, withTransform* `Transform'  peekTransform* -- ^ trans0
, withTransform* `Transform'  peekTransform* -- ^ trans1
, withBt* `p2'  -- ^ shape0
, withBt* `p3'  -- ^ shape1
, withBt* `p4'  -- ^ collided_primitives
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactCollisionAlgorithm.h?r=2223#187>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactCollisionAlgorithm.cpp?r=2223>
-}
{#fun btGImpactCollisionAlgorithm_gimpact_vs_shape_find_pairs as btGImpactCollisionAlgorithm_gimpact_vs_shape_find_pairs'    `( BtGImpactCollisionAlgorithmClass bc , BtGImpactShapeInterfaceClass p2 , BtCollisionShapeClass p3 , BtAlignedObjectArray_int_Class p4 )' =>     { withBt* `bc'  -- ^ 
, allocaTransform-  `Transform'  peekTransform* -- ^ trans0
, allocaTransform-  `Transform'  peekTransform* -- ^ trans1
, withBt* `p2'  -- ^ shape0
, withBt* `p3'  -- ^ shape1
, withBt* `p4'  -- ^ collided_primitives
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactCollisionAlgorithm.h?r=2223#74>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactCollisionAlgorithm.cpp?r=2223>
-}
{#fun btGImpactCollisionAlgorithm_destroyConvexAlgorithm as btGImpactCollisionAlgorithm_destroyConvexAlgorithm    `( BtGImpactCollisionAlgorithmClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactCollisionAlgorithm.h?r=2223#130>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactCollisionAlgorithm.cpp?r=2223>
-}
{#fun btGImpactCollisionAlgorithm_checkConvexAlgorithm as btGImpactCollisionAlgorithm_checkConvexAlgorithm    `( BtGImpactCollisionAlgorithmClass bc , BtCollisionObjectClass p0 , BtCollisionObjectClass p1 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ body0
, withBt* `p1'  -- ^ body1
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactCollisionAlgorithm.h?r=2223#120>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactCollisionAlgorithm.cpp?r=2223>
-}
{#fun btGImpactCollisionAlgorithm_newAlgorithm as btGImpactCollisionAlgorithm_newAlgorithm    `( BtGImpactCollisionAlgorithmClass bc , BtCollisionObjectClass p0 , BtCollisionObjectClass p1 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ body0
, withBt* `p1'  -- ^ body1
 } ->  `BtCollisionAlgorithm'  mkBtCollisionAlgorithm* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactCollisionAlgorithm.h?r=2223#167>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactCollisionAlgorithm.cpp?r=2223>
-}
{#fun btGImpactCollisionAlgorithm_shape_vs_shape_collision as btGImpactCollisionAlgorithm_shape_vs_shape_collision    `( BtGImpactCollisionAlgorithmClass bc , BtCollisionObjectClass p0 , BtCollisionObjectClass p1 , BtCollisionShapeClass p2 , BtCollisionShapeClass p3 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ body0
, withBt* `p1'  -- ^ body1
, withBt* `p2'  -- ^ shape0
, withBt* `p3'  -- ^ shape1
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactCollisionAlgorithm.h?r=2223#288>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactCollisionAlgorithm.cpp?r=2223>
-}
{#fun btGImpactCollisionAlgorithm_setPart1 as btGImpactCollisionAlgorithm_setPart1    `( BtGImpactCollisionAlgorithmClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ value
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactCollisionAlgorithm.h?r=2223#280>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactCollisionAlgorithm.cpp?r=2223>
-}
{#fun btGImpactCollisionAlgorithm_setPart0 as btGImpactCollisionAlgorithm_setPart0    `( BtGImpactCollisionAlgorithmClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ value
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactCollisionAlgorithm.h?r=2223#91>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactCollisionAlgorithm.cpp?r=2223>
-}
{#fun btGImpactCollisionAlgorithm_clearCache as btGImpactCollisionAlgorithm_clearCache    `( BtGImpactCollisionAlgorithmClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactCollisionAlgorithm.h?r=2223#292>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactCollisionAlgorithm.cpp?r=2223>
-}
{#fun btGImpactCollisionAlgorithm_getPart1 as btGImpactCollisionAlgorithm_getPart1    `( BtGImpactCollisionAlgorithmClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactCollisionAlgorithm.h?r=2223#284>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactCollisionAlgorithm.cpp?r=2223>
-}
{#fun btGImpactCollisionAlgorithm_getPart0 as btGImpactCollisionAlgorithm_getPart0    `( BtGImpactCollisionAlgorithmClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactCollisionAlgorithm.h?r=2223#258>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactCollisionAlgorithm.cpp?r=2223>
-}
{#fun btGImpactCollisionAlgorithm_gimpact_vs_concave as btGImpactCollisionAlgorithm_gimpact_vs_concave    `( BtGImpactCollisionAlgorithmClass bc , BtCollisionObjectClass p0 , BtCollisionObjectClass p1 , BtGImpactShapeInterfaceClass p2 , BtConcaveShapeClass p3 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ body0
, withBt* `p1'  -- ^ body1
, withBt* `p2'  -- ^ shape0
, withBt* `p3'  -- ^ shape1
,  `Bool'  -- ^ swapped
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactCollisionAlgorithm.h?r=2223#205>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactCollisionAlgorithm.cpp?r=2223>
-}
{#fun btGImpactCollisionAlgorithm_calculateTimeOfImpact as btGImpactCollisionAlgorithm_calculateTimeOfImpact    `( BtGImpactCollisionAlgorithmClass bc , BtCollisionObjectClass p0 , BtCollisionObjectClass p1 , BtDispatcherInfoClass p2 , BtManifoldResultClass p3 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ body0
, withBt* `p1'  -- ^ body1
, withBt* `p2'  -- ^ dispatchInfo
, withBt* `p3'  -- ^ resultOut
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactCollisionAlgorithm.h?r=2223#242>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactCollisionAlgorithm.cpp?r=2223>
-}
{#fun btGImpactCollisionAlgorithm_gimpact_vs_gimpact as btGImpactCollisionAlgorithm_gimpact_vs_gimpact    `( BtGImpactCollisionAlgorithmClass bc , BtCollisionObjectClass p0 , BtCollisionObjectClass p1 , BtGImpactShapeInterfaceClass p2 , BtGImpactShapeInterfaceClass p3 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ body0
, withBt* `p1'  -- ^ body1
, withBt* `p2'  -- ^ shape0
, withBt* `p3'  -- ^ shape1
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactCollisionAlgorithm.h?r=2223#207>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactCollisionAlgorithm.cpp?r=2223>
-}
{#fun btGImpactCollisionAlgorithm_getAllContactManifolds as btGImpactCollisionAlgorithm_getAllContactManifolds    `( BtGImpactCollisionAlgorithmClass bc , BtAlignedObjectArray_btPersistentManifold_ptr_Class p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ manifoldArray
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactCollisionAlgorithm.h?r=2223#57>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactCollisionAlgorithm.cpp?r=2223>
-}
{#fun btGImpactCollisionAlgorithm_m_convex_algorithm_set    `( BtGImpactCollisionAlgorithmClass bc , BtCollisionAlgorithmClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactCollisionAlgorithm.h?r=2223#57>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactCollisionAlgorithm.cpp?r=2223>
-}
{#fun btGImpactCollisionAlgorithm_m_convex_algorithm_get    `( BtGImpactCollisionAlgorithmClass bc )' =>     { withBt* `bc'  } ->  `BtCollisionAlgorithm'  mkBtCollisionAlgorithm* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactCollisionAlgorithm.h?r=2223#58>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactCollisionAlgorithm.cpp?r=2223>
-}
{#fun btGImpactCollisionAlgorithm_m_manifoldPtr_set    `( BtGImpactCollisionAlgorithmClass bc , BtPersistentManifoldClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactCollisionAlgorithm.h?r=2223#58>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactCollisionAlgorithm.cpp?r=2223>
-}
{#fun btGImpactCollisionAlgorithm_m_manifoldPtr_get    `( BtGImpactCollisionAlgorithmClass bc )' =>     { withBt* `bc'  } ->  `BtPersistentManifold'  mkBtPersistentManifold* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactCollisionAlgorithm.h?r=2223#59>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactCollisionAlgorithm.cpp?r=2223>
-}
{#fun btGImpactCollisionAlgorithm_m_resultOut_set    `( BtGImpactCollisionAlgorithmClass bc , BtManifoldResultClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactCollisionAlgorithm.h?r=2223#59>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactCollisionAlgorithm.cpp?r=2223>
-}
{#fun btGImpactCollisionAlgorithm_m_resultOut_get    `( BtGImpactCollisionAlgorithmClass bc )' =>     { withBt* `bc'  } ->  `BtManifoldResult'  mkBtManifoldResult* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactCollisionAlgorithm.h?r=2223#60>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactCollisionAlgorithm.cpp?r=2223>
-}
{#fun btGImpactCollisionAlgorithm_m_dispatchInfo_set    `( BtGImpactCollisionAlgorithmClass bc , BtDispatcherInfoClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactCollisionAlgorithm.h?r=2223#60>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactCollisionAlgorithm.cpp?r=2223>
-}
{#fun btGImpactCollisionAlgorithm_m_dispatchInfo_get    `( BtGImpactCollisionAlgorithmClass bc )' =>     { withBt* `bc'  } ->  `BtDispatcherInfo'  mkBtDispatcherInfo* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactCollisionAlgorithm.h?r=2223#61>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactCollisionAlgorithm.cpp?r=2223>
-}
{#fun btGImpactCollisionAlgorithm_m_triface0_set    `( BtGImpactCollisionAlgorithmClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactCollisionAlgorithm.h?r=2223#61>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactCollisionAlgorithm.cpp?r=2223>
-}
{#fun btGImpactCollisionAlgorithm_m_triface0_get    `( BtGImpactCollisionAlgorithmClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactCollisionAlgorithm.h?r=2223#62>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactCollisionAlgorithm.cpp?r=2223>
-}
{#fun btGImpactCollisionAlgorithm_m_part0_set    `( BtGImpactCollisionAlgorithmClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactCollisionAlgorithm.h?r=2223#62>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactCollisionAlgorithm.cpp?r=2223>
-}
{#fun btGImpactCollisionAlgorithm_m_part0_get    `( BtGImpactCollisionAlgorithmClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactCollisionAlgorithm.h?r=2223#63>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactCollisionAlgorithm.cpp?r=2223>
-}
{#fun btGImpactCollisionAlgorithm_m_triface1_set    `( BtGImpactCollisionAlgorithmClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactCollisionAlgorithm.h?r=2223#63>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactCollisionAlgorithm.cpp?r=2223>
-}
{#fun btGImpactCollisionAlgorithm_m_triface1_get    `( BtGImpactCollisionAlgorithmClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactCollisionAlgorithm.h?r=2223#64>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactCollisionAlgorithm.cpp?r=2223>
-}
{#fun btGImpactCollisionAlgorithm_m_part1_set    `( BtGImpactCollisionAlgorithmClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactCollisionAlgorithm.h?r=2223#64>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactCollisionAlgorithm.cpp?r=2223>
-}
{#fun btGImpactCollisionAlgorithm_m_part1_get    `( BtGImpactCollisionAlgorithmClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
-- * btGImpactCompoundShape
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#370>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactCompoundShape_new as btGImpactCompoundShape    {   `Bool'  } -> `BtGImpactCompoundShape' mkBtGImpactCompoundShape* #}
{#fun btGImpactCompoundShape_free    `( BtGImpactCompoundShapeClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#498>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactCompoundShape_calculateLocalInertia as btGImpactCompoundShape_calculateLocalInertia    `( BtGImpactCompoundShapeClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ mass
, withVec3* `Vec3'  peekVec3* -- ^ inertia
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#498>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactCompoundShape_calculateLocalInertia as btGImpactCompoundShape_calculateLocalInertia'    `( BtGImpactCompoundShapeClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ mass
, allocaVec3-  `Vec3'  peekVec3* -- ^ inertia
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#410>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactCompoundShape_addChildShape0 as btGImpactCompoundShape_addChildShape    `( BtGImpactCompoundShapeClass bc , BtCollisionShapeClass p1 )' =>     { withBt* `bc'  -- ^ 
, withTransform* `Transform'  peekTransform* -- ^ localTransform
, withBt* `p1'  -- ^ shape
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#410>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactCompoundShape_addChildShape0 as btGImpactCompoundShape_addChildShape'    `( BtGImpactCompoundShapeClass bc , BtCollisionShapeClass p1 )' =>     { withBt* `bc'  -- ^ 
, allocaTransform-  `Transform'  peekTransform* -- ^ localTransform
, withBt* `p1'  -- ^ shape
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#410>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactCompoundShape_addChildShape0 as btGImpactCompoundShape_addChildShape0    `( BtGImpactCompoundShapeClass bc , BtCollisionShapeClass p1 )' =>     { withBt* `bc'  -- ^ 
, withTransform* `Transform'  peekTransform* -- ^ localTransform
, withBt* `p1'  -- ^ shape
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#410>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactCompoundShape_addChildShape0 as btGImpactCompoundShape_addChildShape0'    `( BtGImpactCompoundShapeClass bc , BtCollisionShapeClass p1 )' =>     { withBt* `bc'  -- ^ 
, allocaTransform-  `Transform'  peekTransform* -- ^ localTransform
, withBt* `p1'  -- ^ shape
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#418>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactCompoundShape_addChildShape1 as btGImpactCompoundShape_addChildShape1    `( BtGImpactCompoundShapeClass bc , BtCollisionShapeClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ shape
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#397>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactCompoundShape_getCompoundPrimitiveManager as btGImpactCompoundShape_getCompoundPrimitiveManager    `( BtGImpactCompoundShapeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtGImpactCompoundShape_CompoundPrimitiveManager'  mkBtGImpactCompoundShape_CompoundPrimitiveManager* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#464>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactCompoundShape_setChildTransform as btGImpactCompoundShape_setChildTransform    `( BtGImpactCompoundShapeClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ index
, withTransform* `Transform'  peekTransform* -- ^ transform
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#464>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactCompoundShape_setChildTransform as btGImpactCompoundShape_setChildTransform'    `( BtGImpactCompoundShapeClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ index
, allocaTransform-  `Transform'  peekTransform* -- ^ transform
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#454>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactCompoundShape_getChildTransform as btGImpactCompoundShape_getChildTransform    `( BtGImpactCompoundShapeClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ index
, allocaTransform-  `Transform'  peekTransform* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#490>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactCompoundShape_getBulletTetrahedron as btGImpactCompoundShape_getBulletTetrahedron    `( BtGImpactCompoundShapeClass bc , BtTetrahedronShapeExClass p1 )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ prim_index
, withBt* `p1'  -- ^ tetrahedron
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#500>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactCompoundShape_getName as btGImpactCompoundShape_getName    `( BtGImpactCompoundShapeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `String'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#478>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactCompoundShape_needsRetrieveTetrahedrons as btGImpactCompoundShape_needsRetrieveTetrahedrons    `( BtGImpactCompoundShapeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#425>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactCompoundShape_getChildShape0 as btGImpactCompoundShape_getChildShape    `( BtGImpactCompoundShapeClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ index
 } ->  `BtCollisionShape'  mkBtCollisionShape* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#425>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactCompoundShape_getChildShape0 as btGImpactCompoundShape_getChildShape0    `( BtGImpactCompoundShapeClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ index
 } ->  `BtCollisionShape'  mkBtCollisionShape* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#431>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactCompoundShape_getChildShape1 as btGImpactCompoundShape_getChildShape1    `( BtGImpactCompoundShapeClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ index
 } ->  `BtCollisionShape'  mkBtCollisionShape* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#484>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactCompoundShape_getBulletTriangle as btGImpactCompoundShape_getBulletTriangle    `( BtGImpactCompoundShapeClass bc , BtTriangleShapeExClass p1 )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ prim_index
, withBt* `p1'  -- ^ triangle
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#472>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactCompoundShape_needsRetrieveTriangles as btGImpactCompoundShape_needsRetrieveTriangles    `( BtGImpactCompoundShapeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#383>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactCompoundShape_childrenHasTransform as btGImpactCompoundShape_childrenHasTransform    `( BtGImpactCompoundShapeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#403>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactCompoundShape_getNumChildShapes as btGImpactCompoundShape_getNumChildShapes    `( BtGImpactCompoundShapeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#391>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactCompoundShape_getPrimitiveManager as btGImpactCompoundShape_getPrimitiveManager    `( BtGImpactCompoundShapeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtPrimitiveManagerBase'  mkBtPrimitiveManagerBase* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#439>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactCompoundShape_getChildAabb as btGImpactCompoundShape_getChildAabb    `( BtGImpactCompoundShapeClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ child_index
, withTransform* `Transform'  peekTransform* -- ^ t
, withVec3* `Vec3'  peekVec3* -- ^ aabbMin
, withVec3* `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#439>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactCompoundShape_getChildAabb as btGImpactCompoundShape_getChildAabb'    `( BtGImpactCompoundShapeClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ child_index
, allocaTransform-  `Transform'  peekTransform* -- ^ t
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMin
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#365>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactCompoundShape_m_childShapes_set    `( BtGImpactCompoundShapeClass bc , BtAlignedObjectArray_btCollisionShape_ptr_Class a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#365>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactCompoundShape_m_childShapes_get    `( BtGImpactCompoundShapeClass bc )' =>     { withBt* `bc'  } ->  `BtAlignedObjectArray_btCollisionShape_ptr_'  mkBtAlignedObjectArray_btCollisionShape_ptr_* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#364>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactCompoundShape_m_childTransforms_set    `( BtGImpactCompoundShapeClass bc , BtAlignedObjectArray_btTransform_Class a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#364>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactCompoundShape_m_childTransforms_get    `( BtGImpactCompoundShapeClass bc )' =>     { withBt* `bc'  } ->  `BtAlignedObjectArray_btTransform_'  mkBtAlignedObjectArray_btTransform_* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#363>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactCompoundShape_m_primitive_manager_set    `( BtGImpactCompoundShapeClass bc , BtGImpactCompoundShape_CompoundPrimitiveManagerClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#363>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactCompoundShape_m_primitive_manager_get    `( BtGImpactCompoundShapeClass bc )' =>     { withBt* `bc'  } ->  `BtGImpactCompoundShape_CompoundPrimitiveManager'  mkBtGImpactCompoundShape_CompoundPrimitiveManager* #}
-- * btGImpactMeshShape
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#927>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactMeshShape_new as btGImpactMeshShape    `( BtStridingMeshInterfaceClass p0 )' =>     {  withBt* `p0'  } -> `BtGImpactMeshShape' mkBtGImpactMeshShape* #}
{#fun btGImpactMeshShape_free    `( BtGImpactMeshShapeClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#1014>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactMeshShape_calculateLocalInertia as btGImpactMeshShape_calculateLocalInertia    `( BtGImpactMeshShapeClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ mass
, withVec3* `Vec3'  peekVec3* -- ^ inertia
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#1014>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactMeshShape_calculateLocalInertia as btGImpactMeshShape_calculateLocalInertia'    `( BtGImpactMeshShapeClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ mass
, allocaVec3-  `Vec3'  peekVec3* -- ^ inertia
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#1118>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactMeshShape_setChildTransform as btGImpactMeshShape_setChildTransform    `( BtGImpactMeshShapeClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ index
, withTransform* `Transform'  peekTransform* -- ^ transform
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#1118>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactMeshShape_setChildTransform as btGImpactMeshShape_setChildTransform'    `( BtGImpactMeshShapeClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ index
, allocaTransform-  `Transform'  peekTransform* -- ^ transform
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#945>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactMeshShape_getMeshInterface0 as btGImpactMeshShape_getMeshInterface    `( BtGImpactMeshShapeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtStridingMeshInterface'  mkBtStridingMeshInterface* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#945>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactMeshShape_getMeshInterface0 as btGImpactMeshShape_getMeshInterface0    `( BtGImpactMeshShapeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtStridingMeshInterface'  mkBtStridingMeshInterface* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#950>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactMeshShape_getMeshInterface1 as btGImpactMeshShape_getMeshInterface1    `( BtGImpactMeshShapeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtStridingMeshInterface'  mkBtStridingMeshInterface* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#1018>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactMeshShape_getPrimitiveManager as btGImpactMeshShape_getPrimitiveManager    `( BtGImpactMeshShapeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtPrimitiveManagerBase'  mkBtPrimitiveManagerBase* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#1142>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactMeshShape_processAllTriangles as btGImpactMeshShape_processAllTriangles    `( BtGImpactMeshShapeClass bc , BtTriangleCallbackClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ callback
, withVec3* `Vec3'  peekVec3* -- ^ aabbMin
, withVec3* `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#1142>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactMeshShape_processAllTriangles as btGImpactMeshShape_processAllTriangles'    `( BtGImpactMeshShapeClass bc , BtTriangleCallbackClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ callback
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMin
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#955>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactMeshShape_getMeshPartCount as btGImpactMeshShape_getMeshPartCount    `( BtGImpactMeshShapeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#1165>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactMeshShape_calculateSerializeBufferSize as btGImpactMeshShape_calculateSerializeBufferSize    `( BtGImpactMeshShapeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#1136>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactMeshShape_rayTest as btGImpactMeshShape_rayTest    `( BtGImpactMeshShapeClass bc , BtCollisionWorld_RayResultCallbackClass p2 )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ rayFrom
, withVec3* `Vec3'  peekVec3* -- ^ rayTo
, withBt* `p2'  -- ^ resultCallback
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#1136>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactMeshShape_rayTest as btGImpactMeshShape_rayTest'    `( BtGImpactMeshShapeClass bc , BtCollisionWorld_RayResultCallbackClass p2 )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ rayFrom
, allocaVec3-  `Vec3'  peekVec3* -- ^ rayTo
, withBt* `p2'  -- ^ resultCallback
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#905>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactMeshShape_buildMeshParts as btGImpactMeshShape_buildMeshParts    `( BtGImpactMeshShapeClass bc , BtStridingMeshInterfaceClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ meshInterface
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#1131>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactMeshShape_getName as btGImpactMeshShape_getName    `( BtGImpactMeshShapeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `String'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#1054>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactMeshShape_getBulletTriangle as btGImpactMeshShape_getBulletTriangle    `( BtGImpactMeshShapeClass bc , BtTriangleShapeExClass p1 )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ prim_index
, withBt* `p1'  -- ^ triangle
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#973>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactMeshShape_setLocalScaling as btGImpactMeshShape_setLocalScaling    `( BtGImpactMeshShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ scaling
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#973>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactMeshShape_setLocalScaling as btGImpactMeshShape_setLocalScaling'    `( BtGImpactMeshShapeClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ scaling
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#1041>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactMeshShape_needsRetrieveTriangles as btGImpactMeshShape_needsRetrieveTriangles    `( BtGImpactMeshShapeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#1034>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactMeshShape_childrenHasTransform as btGImpactMeshShape_childrenHasTransform    `( BtGImpactMeshShapeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#1090>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactMeshShape_getChildShape0 as btGImpactMeshShape_getChildShape    `( BtGImpactMeshShapeClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ index
 } ->  `BtCollisionShape'  mkBtCollisionShape* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#1090>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactMeshShape_getChildShape0 as btGImpactMeshShape_getChildShape0    `( BtGImpactMeshShapeClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ index
 } ->  `BtCollisionShape'  mkBtCollisionShape* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#1099>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactMeshShape_getChildShape1 as btGImpactMeshShape_getChildShape1    `( BtGImpactMeshShapeClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ index
 } ->  `BtCollisionShape'  mkBtCollisionShape* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#915>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactMeshShape_calcLocalAABB as btGImpactMeshShape_calcLocalAABB    `( BtGImpactMeshShapeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#1107>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactMeshShape_getChildTransform as btGImpactMeshShape_getChildTransform    `( BtGImpactMeshShapeClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ index
, allocaTransform-  `Transform'  peekTransform* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#1147>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactMeshShape_serialize as btGImpactMeshShape_serialize    `( BtGImpactMeshShapeClass bc , BtSerializerClass p1 )' =>     { withBt* `bc'  -- ^ 
, withVoidPtr* `VoidPtr'  -- ^ dataBuffer
, withBt* `p1'  -- ^ serializer
 } ->  `String'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#1067>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactMeshShape_lockChildShapes as btGImpactMeshShape_lockChildShapes    `( BtGImpactMeshShapeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#987>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactMeshShape_setMargin as btGImpactMeshShape_setMargin    `( BtGImpactMeshShapeClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ margin
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#1026>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactMeshShape_getNumChildShapes as btGImpactMeshShape_getNumChildShapes    `( BtGImpactMeshShapeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#1083>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactMeshShape_getChildAabb as btGImpactMeshShape_getChildAabb    `( BtGImpactMeshShapeClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ child_index
, withTransform* `Transform'  peekTransform* -- ^ t
, withVec3* `Vec3'  peekVec3* -- ^ aabbMin
, withVec3* `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#1083>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactMeshShape_getChildAabb as btGImpactMeshShape_getChildAabb'    `( BtGImpactMeshShapeClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ child_index
, allocaTransform-  `Transform'  peekTransform* -- ^ t
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMin
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#1060>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactMeshShape_getBulletTetrahedron as btGImpactMeshShape_getBulletTetrahedron    `( BtGImpactMeshShapeClass bc , BtTetrahedronShapeExClass p1 )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ prim_index
, withBt* `p1'  -- ^ tetrahedron
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#1048>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactMeshShape_needsRetrieveTetrahedrons as btGImpactMeshShape_needsRetrieveTetrahedrons    `( BtGImpactMeshShapeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#1072>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactMeshShape_unlockChildShapes as btGImpactMeshShape_unlockChildShapes    `( BtGImpactMeshShapeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#960>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactMeshShape_getMeshPart0 as btGImpactMeshShape_getMeshPart    `( BtGImpactMeshShapeClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ index
 } ->  `BtGImpactMeshShapePart'  mkBtGImpactMeshShapePart* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#960>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactMeshShape_getMeshPart0 as btGImpactMeshShape_getMeshPart0    `( BtGImpactMeshShapeClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ index
 } ->  `BtGImpactMeshShapePart'  mkBtGImpactMeshShapePart* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#967>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactMeshShape_getMeshPart1 as btGImpactMeshShape_getMeshPart1    `( BtGImpactMeshShapeClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ index
 } ->  `BtGImpactMeshShapePart'  mkBtGImpactMeshShapePart* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#1002>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactMeshShape_postUpdate as btGImpactMeshShape_postUpdate    `( BtGImpactMeshShapeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#901>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactMeshShape_m_meshInterface_set    `( BtGImpactMeshShapeClass bc , BtStridingMeshInterfaceClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#901>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactMeshShape_m_meshInterface_get    `( BtGImpactMeshShapeClass bc )' =>     { withBt* `bc'  } ->  `BtStridingMeshInterface'  mkBtStridingMeshInterface* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#904>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactMeshShape_m_mesh_parts_set    `( BtGImpactMeshShapeClass bc , BtAlignedObjectArray_btGImpactMeshShapePart_ptr_Class a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#904>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactMeshShape_m_mesh_parts_get    `( BtGImpactMeshShapeClass bc )' =>     { withBt* `bc'  } ->  `BtAlignedObjectArray_btGImpactMeshShapePart_ptr_'  mkBtAlignedObjectArray_btGImpactMeshShapePart_ptr_* #}
-- * btGImpactMeshShapeData
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#1153>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactMeshShapeData_new as btGImpactMeshShapeData    {  } -> `BtGImpactMeshShapeData' mkBtGImpactMeshShapeData* #}
{#fun btGImpactMeshShapeData_free    `( BtGImpactMeshShapeDataClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#1154>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactMeshShapeData_m_collisionShapeData_set    `( BtGImpactMeshShapeDataClass bc , BtCollisionShapeDataClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#1154>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactMeshShapeData_m_collisionShapeData_get    `( BtGImpactMeshShapeDataClass bc )' =>     { withBt* `bc'  } ->  `BtCollisionShapeData'  mkBtCollisionShapeData* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#1156>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactMeshShapeData_m_meshInterface_set    `( BtGImpactMeshShapeDataClass bc , BtStridingMeshInterfaceDataClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#1156>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactMeshShapeData_m_meshInterface_get    `( BtGImpactMeshShapeDataClass bc )' =>     { withBt* `bc'  } ->  `BtStridingMeshInterfaceData'  mkBtStridingMeshInterfaceData* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#1158>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactMeshShapeData_m_localScaling_set    `( BtGImpactMeshShapeDataClass bc , BtVector3FloatDataClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#1158>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactMeshShapeData_m_localScaling_get    `( BtGImpactMeshShapeDataClass bc )' =>     { withBt* `bc'  } ->  `BtVector3FloatData'  mkBtVector3FloatData* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#1160>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactMeshShapeData_m_collisionMargin_set    `( BtGImpactMeshShapeDataClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#1160>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactMeshShapeData_m_collisionMargin_get    `( BtGImpactMeshShapeDataClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#1162>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactMeshShapeData_m_gimpactSubType_set    `( BtGImpactMeshShapeDataClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#1162>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactMeshShapeData_m_gimpactSubType_get    `( BtGImpactMeshShapeDataClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
-- * btGImpactMeshShapePart
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#710>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactMeshShapePart_new0 as btGImpactMeshShapePart0    {  } -> `BtGImpactMeshShapePart' mkBtGImpactMeshShapePart* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#716>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactMeshShapePart_new1 as btGImpactMeshShapePart1    `( BtStridingMeshInterfaceClass p0 )' =>     {  withBt* `p0' ,  `Int'  } -> `BtGImpactMeshShapePart' mkBtGImpactMeshShapePart* #}
{#fun btGImpactMeshShapePart_free    `( BtGImpactMeshShapePartClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#809>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactMeshShapePart_calculateLocalInertia as btGImpactMeshShapePart_calculateLocalInertia    `( BtGImpactMeshShapePartClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ mass
, withVec3* `Vec3'  peekVec3* -- ^ inertia
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#809>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactMeshShapePart_calculateLocalInertia as btGImpactMeshShapePart_calculateLocalInertia'    `( BtGImpactMeshShapePartClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ mass
, allocaVec3-  `Vec3'  peekVec3* -- ^ inertia
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#786>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactMeshShapePart_setChildTransform as btGImpactMeshShapePart_setChildTransform    `( BtGImpactMeshShapePartClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ index
, withTransform* `Transform'  peekTransform* -- ^ transform
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#786>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactMeshShapePart_setChildTransform as btGImpactMeshShapePart_setChildTransform'    `( BtGImpactMeshShapePartClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ index
, allocaTransform-  `Transform'  peekTransform* -- ^ transform
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#877>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactMeshShapePart_getLocalScaling as btGImpactMeshShapePart_getLocalScaling    `( BtGImpactMeshShapePartClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#855>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactMeshShapePart_getVertex as btGImpactMeshShapePart_getVertex    `( BtGImpactMeshShapePartClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ vertex_index
, withVec3* `Vec3'  peekVec3* -- ^ vertex
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#855>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactMeshShapePart_getVertex as btGImpactMeshShapePart_getVertex'    `( BtGImpactMeshShapePartClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ vertex_index
, allocaVec3-  `Vec3'  peekVec3* -- ^ vertex
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#887>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactMeshShapePart_processAllTriangles as btGImpactMeshShapePart_processAllTriangles    `( BtGImpactMeshShapePartClass bc , BtTriangleCallbackClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ callback
, withVec3* `Vec3'  peekVec3* -- ^ aabbMin
, withVec3* `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#887>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactMeshShapePart_processAllTriangles as btGImpactMeshShapePart_processAllTriangles'    `( BtGImpactMeshShapePartClass bc , BtTriangleCallbackClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ callback
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMin
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#814>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactMeshShapePart_getName as btGImpactMeshShapePart_getName    `( BtGImpactMeshShapePartClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `String'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#836>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactMeshShapePart_getBulletTriangle as btGImpactMeshShapePart_getBulletTriangle    `( BtGImpactMeshShapePartClass bc , BtTriangleShapeExClass p1 )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ prim_index
, withBt* `p1'  -- ^ triangle
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#871>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactMeshShapePart_setLocalScaling as btGImpactMeshShapePart_setLocalScaling    `( BtGImpactMeshShapePartClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ scaling
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#871>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactMeshShapePart_setLocalScaling as btGImpactMeshShapePart_setLocalScaling'    `( BtGImpactMeshShapePartClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ scaling
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#882>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactMeshShapePart_getPart as btGImpactMeshShapePart_getPart    `( BtGImpactMeshShapePartClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#728>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactMeshShapePart_childrenHasTransform as btGImpactMeshShapePart_childrenHasTransform    `( BtGImpactMeshShapePartClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#825>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactMeshShapePart_needsRetrieveTriangles as btGImpactMeshShapePart_needsRetrieveTriangles    `( BtGImpactMeshShapePartClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#757>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactMeshShapePart_getChildShape0 as btGImpactMeshShapePart_getChildShape    `( BtGImpactMeshShapePartClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ index
 } ->  `BtCollisionShape'  mkBtCollisionShape* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#757>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactMeshShapePart_getChildShape0 as btGImpactMeshShapePart_getChildShape0    `( BtGImpactMeshShapePartClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ index
 } ->  `BtCollisionShape'  mkBtCollisionShape* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#767>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactMeshShapePart_getChildShape1 as btGImpactMeshShapePart_getChildShape1    `( BtGImpactMeshShapePartClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ index
 } ->  `BtCollisionShape'  mkBtCollisionShape* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#775>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactMeshShapePart_getChildTransform as btGImpactMeshShapePart_getChildTransform    `( BtGImpactMeshShapePartClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ index
, allocaTransform-  `Transform'  peekTransform* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#735>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactMeshShapePart_lockChildShapes as btGImpactMeshShapePart_lockChildShapes    `( BtGImpactMeshShapePartClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#866>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactMeshShapePart_getMargin as btGImpactMeshShapePart_getMargin    `( BtGImpactMeshShapePartClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#860>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactMeshShapePart_setMargin as btGImpactMeshShapePart_setMargin    `( BtGImpactMeshShapePartClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ margin
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#795>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactMeshShapePart_getPrimitiveManager as btGImpactMeshShapePart_getPrimitiveManager    `( BtGImpactMeshShapePartClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtPrimitiveManagerBase'  mkBtPrimitiveManagerBase* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#750>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactMeshShapePart_getNumChildShapes as btGImpactMeshShapePart_getNumChildShapes    `( BtGImpactMeshShapePartClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#841>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactMeshShapePart_getBulletTetrahedron as btGImpactMeshShapePart_getBulletTetrahedron    `( BtGImpactMeshShapePartClass bc , BtTetrahedronShapeExClass p1 )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ prim_index
, withBt* `p1'  -- ^ tetrahedron
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#800>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactMeshShapePart_getTrimeshPrimitiveManager as btGImpactMeshShapePart_getTrimeshPrimitiveManager    `( BtGImpactMeshShapePartClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtGImpactMeshShapePart_TrimeshPrimitiveManager'  mkBtGImpactMeshShapePart_TrimeshPrimitiveManager* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#831>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactMeshShapePart_needsRetrieveTetrahedrons as btGImpactMeshShapePart_needsRetrieveTetrahedrons    `( BtGImpactMeshShapePartClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#742>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactMeshShapePart_unlockChildShapes as btGImpactMeshShapePart_unlockChildShapes    `( BtGImpactMeshShapePartClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#850>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactMeshShapePart_getVertexCount as btGImpactMeshShapePart_getVertexCount    `( BtGImpactMeshShapePartClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#707>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactMeshShapePart_m_primitive_manager_set    `( BtGImpactMeshShapePartClass bc , BtGImpactMeshShapePart_TrimeshPrimitiveManagerClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#707>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactMeshShapePart_m_primitive_manager_get    `( BtGImpactMeshShapePartClass bc )' =>     { withBt* `bc'  } ->  `BtGImpactMeshShapePart_TrimeshPrimitiveManager'  mkBtGImpactMeshShapePart_TrimeshPrimitiveManager* #}
-- * btGImpactQuantizedBvh
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactQuantizedBvh.h?r=2223#238>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactQuantizedBvh.cpp?r=2223>
-}
{#fun btGImpactQuantizedBvh_new0 as btGImpactQuantizedBvh0    {  } -> `BtGImpactQuantizedBvh' mkBtGImpactQuantizedBvh* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactQuantizedBvh.h?r=2223#244>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactQuantizedBvh.cpp?r=2223>
-}
{#fun btGImpactQuantizedBvh_new1 as btGImpactQuantizedBvh1    `( BtPrimitiveManagerBaseClass p0 )' =>     {  withBt* `p0'  } -> `BtGImpactQuantizedBvh' mkBtGImpactQuantizedBvh* #}
{#fun btGImpactQuantizedBvh_free    `( BtGImpactQuantizedBvhClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactQuantizedBvh.h?r=2223#330>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactQuantizedBvh.cpp?r=2223>
-}
{#fun btGImpactQuantizedBvh_setNodeBound as btGImpactQuantizedBvh_setNodeBound    `( BtGImpactQuantizedBvhClass bc , BtAABBClass p1 )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ nodeindex
, withBt* `p1'  -- ^ bound
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactQuantizedBvh.h?r=2223#346>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactQuantizedBvh.cpp?r=2223>
-}
{#fun btGImpactQuantizedBvh_getEscapeNodeIndex as btGImpactQuantizedBvh_getEscapeNodeIndex    `( BtGImpactQuantizedBvhClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ nodeindex
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactQuantizedBvh.h?r=2223#315>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactQuantizedBvh.cpp?r=2223>
-}
{#fun btGImpactQuantizedBvh_isLeafNode as btGImpactQuantizedBvh_isLeafNode    `( BtGImpactQuantizedBvhClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ nodeindex
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactQuantizedBvh.h?r=2223#261>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactQuantizedBvh.cpp?r=2223>
-}
{#fun btGImpactQuantizedBvh_getPrimitiveManager as btGImpactQuantizedBvh_getPrimitiveManager    `( BtGImpactQuantizedBvhClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtPrimitiveManagerBase'  mkBtPrimitiveManagerBase* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactQuantizedBvh.h?r=2223#325>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactQuantizedBvh.cpp?r=2223>
-}
{#fun btGImpactQuantizedBvh_getNodeBound as btGImpactQuantizedBvh_getNodeBound    `( BtGImpactQuantizedBvhClass bc , BtAABBClass p1 )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ nodeindex
, withBt* `p1'  -- ^ bound
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactQuantizedBvh.h?r=2223#341>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactQuantizedBvh.cpp?r=2223>
-}
{#fun btGImpactQuantizedBvh_getRightNode as btGImpactQuantizedBvh_getRightNode    `( BtGImpactQuantizedBvhClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ nodeindex
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactQuantizedBvh.h?r=2223#336>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactQuantizedBvh.cpp?r=2223>
-}
{#fun btGImpactQuantizedBvh_getLeftNode as btGImpactQuantizedBvh_getLeftNode    `( BtGImpactQuantizedBvhClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ nodeindex
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactQuantizedBvh.h?r=2223#256>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactQuantizedBvh.cpp?r=2223>
-}
{#fun btGImpactQuantizedBvh_setPrimitiveManager as btGImpactQuantizedBvh_setPrimitiveManager    `( BtGImpactQuantizedBvhClass bc , BtPrimitiveManagerBaseClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ primitive_manager
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactQuantizedBvh.h?r=2223#277>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactQuantizedBvh.cpp?r=2223>
-}
{#fun btGImpactQuantizedBvh_buildSet as btGImpactQuantizedBvh_buildSet    `( BtGImpactQuantizedBvhClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactQuantizedBvh.h?r=2223#351>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactQuantizedBvh.cpp?r=2223>
-}
{#fun btGImpactQuantizedBvh_getNodeTriangle as btGImpactQuantizedBvh_getNodeTriangle    `( BtGImpactQuantizedBvhClass bc , BtPrimitiveTriangleClass p1 )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ nodeindex
, withBt* `p1'  -- ^ triangle
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactQuantizedBvh.h?r=2223#309>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactQuantizedBvh.cpp?r=2223>
-}
{#fun btGImpactQuantizedBvh_getNodeCount as btGImpactQuantizedBvh_getNodeCount    `( BtGImpactQuantizedBvhClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactQuantizedBvh.h?r=2223#297>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactQuantizedBvh.cpp?r=2223>
-}
{#fun btGImpactQuantizedBvh_hasHierarchy as btGImpactQuantizedBvh_hasHierarchy    `( BtGImpactQuantizedBvhClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactQuantizedBvh.h?r=2223#294>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactQuantizedBvh.cpp?r=2223>
-}
{#fun btGImpactQuantizedBvh_rayQuery as btGImpactQuantizedBvh_rayQuery    `( BtGImpactQuantizedBvhClass bc , BtAlignedObjectArray_int_Class p2 )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ ray_dir
, withVec3* `Vec3'  peekVec3* -- ^ ray_origin
, withBt* `p2'  -- ^ collided_results
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactQuantizedBvh.h?r=2223#294>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactQuantizedBvh.cpp?r=2223>
-}
{#fun btGImpactQuantizedBvh_rayQuery as btGImpactQuantizedBvh_rayQuery'    `( BtGImpactQuantizedBvhClass bc , BtAlignedObjectArray_int_Class p2 )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ ray_dir
, allocaVec3-  `Vec3'  peekVec3* -- ^ ray_origin
, withBt* `p2'  -- ^ collided_results
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactQuantizedBvh.h?r=2223#271>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactQuantizedBvh.cpp?r=2223>
-}
{#fun btGImpactQuantizedBvh_update as btGImpactQuantizedBvh_update    `( BtGImpactQuantizedBvhClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactQuantizedBvh.h?r=2223#234>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactQuantizedBvh.cpp?r=2223>
-}
{#fun btGImpactQuantizedBvh_refit as btGImpactQuantizedBvh_refit    `( BtGImpactQuantizedBvhClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactQuantizedBvh.h?r=2223#303>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactQuantizedBvh.cpp?r=2223>
-}
{#fun btGImpactQuantizedBvh_isTrimesh as btGImpactQuantizedBvh_isTrimesh    `( BtGImpactQuantizedBvhClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactQuantizedBvh.h?r=2223#280>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactQuantizedBvh.cpp?r=2223>
-}
{#fun btGImpactQuantizedBvh_boxQuery as btGImpactQuantizedBvh_boxQuery    `( BtGImpactQuantizedBvhClass bc , BtAABBClass p0 , BtAlignedObjectArray_int_Class p1 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ box
, withBt* `p1'  -- ^ collided_results
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactQuantizedBvh.h?r=2223#368>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactQuantizedBvh.cpp?r=2223>
-}
{#fun btGImpactQuantizedBvh_find_collision as btGImpactQuantizedBvh_find_collision    `(  BtGImpactQuantizedBvhClass p0 , BtGImpactQuantizedBvhClass p2 , BtPairSetClass p4 )' =>     {  withBt* `p0'  -- ^ boxset1
, withTransform* `Transform'  peekTransform* -- ^ trans1
, withBt* `p2'  -- ^ boxset2
, withTransform* `Transform'  peekTransform* -- ^ trans2
, withBt* `p4'  -- ^ collision_pairs
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactQuantizedBvh.h?r=2223#368>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactQuantizedBvh.cpp?r=2223>
-}
{#fun btGImpactQuantizedBvh_find_collision as btGImpactQuantizedBvh_find_collision'    `(  BtGImpactQuantizedBvhClass p0 , BtGImpactQuantizedBvhClass p2 , BtPairSetClass p4 )' =>     {  withBt* `p0'  -- ^ boxset1
, allocaTransform-  `Transform'  peekTransform* -- ^ trans1
, withBt* `p2'  -- ^ boxset2
, allocaTransform-  `Transform'  peekTransform* -- ^ trans2
, withBt* `p4'  -- ^ collision_pairs
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactQuantizedBvh.h?r=2223#357>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactQuantizedBvh.cpp?r=2223>
-}
{#fun btGImpactQuantizedBvh_get_node_pointer as btGImpactQuantizedBvh_get_node_pointer    `( BtGImpactQuantizedBvhClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ index
 } ->  `BT_QUANTIZED_BVH_NODE'  mkBT_QUANTIZED_BVH_NODE* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactQuantizedBvh.h?r=2223#284>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactQuantizedBvh.cpp?r=2223>
-}
{#fun btGImpactQuantizedBvh_boxQueryTrans as btGImpactQuantizedBvh_boxQueryTrans    `( BtGImpactQuantizedBvhClass bc , BtAABBClass p0 , BtAlignedObjectArray_int_Class p2 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ box
, withTransform* `Transform'  peekTransform* -- ^ transform
, withBt* `p2'  -- ^ collided_results
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactQuantizedBvh.h?r=2223#284>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactQuantizedBvh.cpp?r=2223>
-}
{#fun btGImpactQuantizedBvh_boxQueryTrans as btGImpactQuantizedBvh_boxQueryTrans'    `( BtGImpactQuantizedBvhClass bc , BtAABBClass p0 , BtAlignedObjectArray_int_Class p2 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ box
, allocaTransform-  `Transform'  peekTransform* -- ^ transform
, withBt* `p2'  -- ^ collided_results
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactQuantizedBvh.h?r=2223#320>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactQuantizedBvh.cpp?r=2223>
-}
{#fun btGImpactQuantizedBvh_getNodeData as btGImpactQuantizedBvh_getNodeData    `( BtGImpactQuantizedBvhClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ nodeindex
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactQuantizedBvh.h?r=2223#229>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactQuantizedBvh.cpp?r=2223>
-}
{#fun btGImpactQuantizedBvh_m_box_tree_set    `( BtGImpactQuantizedBvhClass bc , BtQuantizedBvhTreeClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactQuantizedBvh.h?r=2223#229>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactQuantizedBvh.cpp?r=2223>
-}
{#fun btGImpactQuantizedBvh_m_box_tree_get    `( BtGImpactQuantizedBvhClass bc )' =>     { withBt* `bc'  } ->  `BtQuantizedBvhTree'  mkBtQuantizedBvhTree* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactQuantizedBvh.h?r=2223#230>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactQuantizedBvh.cpp?r=2223>
-}
{#fun btGImpactQuantizedBvh_m_primitive_manager_set    `( BtGImpactQuantizedBvhClass bc , BtPrimitiveManagerBaseClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactQuantizedBvh.h?r=2223#230>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactQuantizedBvh.cpp?r=2223>
-}
{#fun btGImpactQuantizedBvh_m_primitive_manager_get    `( BtGImpactQuantizedBvhClass bc )' =>     { withBt* `bc'  } ->  `BtPrimitiveManagerBase'  mkBtPrimitiveManagerBase* #}
-- * btGImpactShapeInterface
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#239>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactShapeInterface_getPrimitiveTriangle as btGImpactShapeInterface_getPrimitiveTriangle    `( BtGImpactShapeInterfaceClass bc , BtPrimitiveTriangleClass p1 )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ index
, withBt* `p1'  -- ^ triangle
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#271>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactShapeInterface_setChildTransform as btGImpactShapeInterface_setChildTransform    `( BtGImpactShapeInterfaceClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ index
, withTransform* `Transform'  peekTransform* -- ^ transform
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#271>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactShapeInterface_setChildTransform as btGImpactShapeInterface_setChildTransform'    `( BtGImpactShapeInterfaceClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ index
, allocaTransform-  `Transform'  peekTransform* -- ^ transform
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#168>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactShapeInterface_getLocalScaling as btGImpactShapeInterface_getLocalScaling    `( BtGImpactShapeInterfaceClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#148>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactShapeInterface_getLocalBox as btGImpactShapeInterface_getLocalBox    `( BtGImpactShapeInterfaceClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtAABB'  mkBtAABB* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#208>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactShapeInterface_getPrimitiveManager as btGImpactShapeInterface_getPrimitiveManager    `( BtGImpactShapeInterfaceClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtPrimitiveManagerBase'  mkBtPrimitiveManagerBase* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#286>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactShapeInterface_processAllTriangles as btGImpactShapeInterface_processAllTriangles    `( BtGImpactShapeInterfaceClass bc , BtTriangleCallbackClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ callback
, withVec3* `Vec3'  peekVec3* -- ^ aabbMin
, withVec3* `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#286>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactShapeInterface_processAllTriangles as btGImpactShapeInterface_processAllTriangles'    `( BtGImpactShapeInterfaceClass bc , BtTriangleCallbackClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ callback
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMin
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#201>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactShapeInterface_hasBoxSet as btGImpactShapeInterface_hasBoxSet    `( BtGImpactShapeInterfaceClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#277>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactShapeInterface_rayTest as btGImpactShapeInterface_rayTest    `( BtGImpactShapeInterfaceClass bc , BtCollisionWorld_RayResultCallbackClass p2 )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ rayFrom
, withVec3* `Vec3'  peekVec3* -- ^ rayTo
, withBt* `p2'  -- ^ resultCallback
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#277>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactShapeInterface_rayTest as btGImpactShapeInterface_rayTest'    `( BtGImpactShapeInterfaceClass bc , BtCollisionWorld_RayResultCallbackClass p2 )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ rayFrom
, allocaVec3-  `Vec3'  peekVec3* -- ^ rayTo
, withBt* `p2'  -- ^ resultCallback
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#195>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactShapeInterface_getBoxSet as btGImpactShapeInterface_getBoxSet    `( BtGImpactShapeInterfaceClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `BtGImpactQuantizedBvh'  mkBtGImpactQuantizedBvh* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#223>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactShapeInterface_getBulletTriangle as btGImpactShapeInterface_getBulletTriangle    `( BtGImpactShapeInterfaceClass bc , BtTriangleShapeExClass p1 )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ prim_index
, withBt* `p1'  -- ^ triangle
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#162>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactShapeInterface_setLocalScaling as btGImpactShapeInterface_setLocalScaling    `( BtGImpactShapeInterfaceClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ scaling
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#162>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactShapeInterface_setLocalScaling as btGImpactShapeInterface_setLocalScaling'    `( BtGImpactShapeInterfaceClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ scaling
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#218>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactShapeInterface_needsRetrieveTriangles as btGImpactShapeInterface_needsRetrieveTriangles    `( BtGImpactShapeInterfaceClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#215>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactShapeInterface_childrenHasTransform as btGImpactShapeInterface_childrenHasTransform    `( BtGImpactShapeInterfaceClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#133>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactShapeInterface_getAabb as btGImpactShapeInterface_getAabb    `( BtGImpactShapeInterfaceClass bc )' =>     { withBt* `bc'  -- ^ 
, withTransform* `Transform'  peekTransform* -- ^ t
, withVec3* `Vec3'  peekVec3* -- ^ aabbMin
, withVec3* `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#133>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactShapeInterface_getAabb as btGImpactShapeInterface_getAabb'    `( BtGImpactShapeInterfaceClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaTransform-  `Transform'  peekTransform* -- ^ t
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMin
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#258>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactShapeInterface_getChildShape0 as btGImpactShapeInterface_getChildShape    `( BtGImpactShapeInterfaceClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ index
 } ->  `BtCollisionShape'  mkBtCollisionShape* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#258>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactShapeInterface_getChildShape0 as btGImpactShapeInterface_getChildShape0    `( BtGImpactShapeInterfaceClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ index
 } ->  `BtCollisionShape'  mkBtCollisionShape* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#262>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactShapeInterface_getChildShape1 as btGImpactShapeInterface_getChildShape1    `( BtGImpactShapeInterfaceClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ index
 } ->  `BtCollisionShape'  mkBtCollisionShape* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#88>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactShapeInterface_calcLocalAABB as btGImpactShapeInterface_calcLocalAABB    `( BtGImpactShapeInterfaceClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#265>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactShapeInterface_getChildTransform as btGImpactShapeInterface_getChildTransform    `( BtGImpactShapeInterfaceClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ index
, allocaTransform-  `Transform'  peekTransform* -- ^ 
 } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#230>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactShapeInterface_lockChildShapes as btGImpactShapeInterface_lockChildShapes    `( BtGImpactShapeInterfaceClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#174>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactShapeInterface_setMargin as btGImpactShapeInterface_setMargin    `( BtGImpactShapeInterfaceClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Float'  -- ^ margin
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#212>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactShapeInterface_getNumChildShapes as btGImpactShapeInterface_getNumChildShapes    `( BtGImpactShapeInterfaceClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#248>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactShapeInterface_getChildAabb as btGImpactShapeInterface_getChildAabb    `( BtGImpactShapeInterfaceClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ child_index
, withTransform* `Transform'  peekTransform* -- ^ t
, withVec3* `Vec3'  peekVec3* -- ^ aabbMin
, withVec3* `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#248>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactShapeInterface_getChildAabb as btGImpactShapeInterface_getChildAabb'    `( BtGImpactShapeInterfaceClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ child_index
, allocaTransform-  `Transform'  peekTransform* -- ^ t
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMin
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#154>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactShapeInterface_getShapeType as btGImpactShapeInterface_getShapeType    `( BtGImpactShapeInterfaceClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#225>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactShapeInterface_getBulletTetrahedron as btGImpactShapeInterface_getBulletTetrahedron    `( BtGImpactShapeInterfaceClass bc , BtTetrahedronShapeExClass p1 )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ prim_index
, withBt* `p1'  -- ^ tetrahedron
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#221>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactShapeInterface_needsRetrieveTetrahedrons as btGImpactShapeInterface_needsRetrieveTetrahedrons    `( BtGImpactShapeInterfaceClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#234>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactShapeInterface_unlockChildShapes as btGImpactShapeInterface_unlockChildShapes    `( BtGImpactShapeInterfaceClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#142>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactShapeInterface_postUpdate as btGImpactShapeInterface_postUpdate    `( BtGImpactShapeInterfaceClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#122>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactShapeInterface_updateBound as btGImpactShapeInterface_updateBound    `( BtGImpactShapeInterfaceClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#83>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactShapeInterface_localScaling_set    `( BtGImpactShapeInterfaceClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#83>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactShapeInterface_localScaling_get    `( BtGImpactShapeInterfaceClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#84>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactShapeInterface_m_box_set_set    `( BtGImpactShapeInterfaceClass bc , BtGImpactQuantizedBvhClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#84>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactShapeInterface_m_box_set_get    `( BtGImpactShapeInterfaceClass bc )' =>     { withBt* `bc'  } ->  `BtGImpactQuantizedBvh'  mkBtGImpactQuantizedBvh* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#81>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactShapeInterface_m_localAABB_set    `( BtGImpactShapeInterfaceClass bc , BtAABBClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#81>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactShapeInterface_m_localAABB_get    `( BtGImpactShapeInterfaceClass bc )' =>     { withBt* `bc'  } ->  `BtAABB'  mkBtAABB* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#82>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactShapeInterface_m_needs_update_set    `( BtGImpactShapeInterfaceClass bc )' =>     { withBt* `bc' ,  `Bool'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#82>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btGImpactShapeInterface_m_needs_update_get    `( BtGImpactShapeInterfaceClass bc )' =>     { withBt* `bc'  } ->  `Bool'   #}
-- * btPairSet
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.h?r=2223#62>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.cpp?r=2223>
-}
{#fun btPairSet_new as btPairSet    {  } -> `BtPairSet' mkBtPairSet* #}
{#fun btPairSet_free    `( BtPairSetClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.h?r=2223#71>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.cpp?r=2223>
-}
{#fun btPairSet_push_pair_inv as btPairSet_push_pair_inv    `( BtPairSetClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ index1
,  `Int'  -- ^ index2
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.h?r=2223#66>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.cpp?r=2223>
-}
{#fun btPairSet_push_pair as btPairSet_push_pair    `( BtPairSetClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ index1
,  `Int'  -- ^ index2
 } ->  `()'   #}
-- * btPrimitiveManagerBase
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.h?r=2223#239>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.cpp?r=2223>
-}
{#fun btPrimitiveManagerBase_get_primitive_box as btPrimitiveManagerBase_get_primitive_box    `( BtPrimitiveManagerBaseClass bc , BtAABBClass p1 )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ prim_index
, withBt* `p1'  -- ^ primbox
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.h?r=2223#241>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.cpp?r=2223>
-}
{#fun btPrimitiveManagerBase_get_primitive_triangle as btPrimitiveManagerBase_get_primitive_triangle    `( BtPrimitiveManagerBaseClass bc , BtPrimitiveTriangleClass p1 )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ prim_index
, withBt* `p1'  -- ^ triangle
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.h?r=2223#237>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.cpp?r=2223>
-}
{#fun btPrimitiveManagerBase_is_trimesh as btPrimitiveManagerBase_is_trimesh    `( BtPrimitiveManagerBaseClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.h?r=2223#238>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactBvh.cpp?r=2223>
-}
{#fun btPrimitiveManagerBase_get_primitive_count as btPrimitiveManagerBase_get_primitive_count    `( BtPrimitiveManagerBaseClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Int'   #}
-- * btPrimitiveTriangle
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btTriangleShapeEx.h?r=2223#81>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btTriangleShapeEx.cpp?r=2223>
-}
{#fun btPrimitiveTriangle_new as btPrimitiveTriangle    {  } -> `BtPrimitiveTriangle' mkBtPrimitiveTriangle* #}
{#fun btPrimitiveTriangle_free    `( BtPrimitiveTriangleClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btTriangleShapeEx.h?r=2223#101>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btTriangleShapeEx.cpp?r=2223>
-}
{#fun btPrimitiveTriangle_get_edge_plane as btPrimitiveTriangle_get_edge_plane    `( BtPrimitiveTriangleClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ edge_index
, withVec4* `Vec4'  peekVec4* -- ^ plane
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btTriangleShapeEx.h?r=2223#101>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btTriangleShapeEx.cpp?r=2223>
-}
{#fun btPrimitiveTriangle_get_edge_plane as btPrimitiveTriangle_get_edge_plane'    `( BtPrimitiveTriangleClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ edge_index
, allocaVec4-  `Vec4'  peekVec4* -- ^ plane
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btTriangleShapeEx.h?r=2223#95>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btTriangleShapeEx.cpp?r=2223>
-}
{#fun btPrimitiveTriangle_overlap_test_conservative as btPrimitiveTriangle_overlap_test_conservative    `( BtPrimitiveTriangleClass bc , BtPrimitiveTriangleClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ other
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btTriangleShapeEx.h?r=2223#87>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btTriangleShapeEx.cpp?r=2223>
-}
{#fun btPrimitiveTriangle_buildTriPlane as btPrimitiveTriangle_buildTriPlane    `( BtPrimitiveTriangleClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btTriangleShapeEx.h?r=2223#108>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btTriangleShapeEx.cpp?r=2223>
-}
{#fun btPrimitiveTriangle_applyTransform as btPrimitiveTriangle_applyTransform    `( BtPrimitiveTriangleClass bc )' =>     { withBt* `bc'  -- ^ 
, withTransform* `Transform'  peekTransform* -- ^ t
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btTriangleShapeEx.h?r=2223#108>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btTriangleShapeEx.cpp?r=2223>
-}
{#fun btPrimitiveTriangle_applyTransform as btPrimitiveTriangle_applyTransform'    `( BtPrimitiveTriangleClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaTransform-  `Transform'  peekTransform* -- ^ t
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btTriangleShapeEx.h?r=2223#126>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btTriangleShapeEx.cpp?r=2223>
-}
{#fun btPrimitiveTriangle_find_triangle_collision_clip_method as btPrimitiveTriangle_find_triangle_collision_clip_method    `( BtPrimitiveTriangleClass bc , BtPrimitiveTriangleClass p0 , GIM_TRIANGLE_CONTACTClass p1 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ other
, withBt* `p1'  -- ^ contacts
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btTriangleShapeEx.h?r=2223#80>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btTriangleShapeEx.cpp?r=2223>
-}
{#fun btPrimitiveTriangle_m_dummy_set    `( BtPrimitiveTriangleClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btTriangleShapeEx.h?r=2223#80>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btTriangleShapeEx.cpp?r=2223>
-}
{#fun btPrimitiveTriangle_m_dummy_get    `( BtPrimitiveTriangleClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btTriangleShapeEx.h?r=2223#79>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btTriangleShapeEx.cpp?r=2223>
-}
{#fun btPrimitiveTriangle_m_margin_set    `( BtPrimitiveTriangleClass bc )' =>     { withBt* `bc' ,  `Float'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btTriangleShapeEx.h?r=2223#79>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btTriangleShapeEx.cpp?r=2223>
-}
{#fun btPrimitiveTriangle_m_margin_get    `( BtPrimitiveTriangleClass bc )' =>     { withBt* `bc'  } ->  `Float'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btTriangleShapeEx.h?r=2223#78>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btTriangleShapeEx.cpp?r=2223>
-}
{#fun btPrimitiveTriangle_m_plane_set    `( BtPrimitiveTriangleClass bc )' =>     { withBt* `bc' , withVec4* `Vec4'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btTriangleShapeEx.h?r=2223#78>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btTriangleShapeEx.cpp?r=2223>
-}
{#fun btPrimitiveTriangle_m_plane_get    `( BtPrimitiveTriangleClass bc )' =>     { withBt* `bc' , allocaVec4-  `Vec4'  peekVec4* } -> `()' #}
-- * btQuantizedBvhTree
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactQuantizedBvh.h?r=2223#123>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvhTree_new as btQuantizedBvhTree    {  } -> `BtQuantizedBvhTree' mkBtQuantizedBvhTree* #}
{#fun btQuantizedBvhTree_free    `( BtQuantizedBvhTreeClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactQuantizedBvh.h?r=2223#153>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvhTree_getNodeCount as btQuantizedBvhTree_getNodeCount    `( BtQuantizedBvhTreeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactQuantizedBvh.h?r=2223#113>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvhTree_calc_quantization as btQuantizedBvhTree_calc_quantization    `( BtQuantizedBvhTreeClass bc , GIM_BVH_DATA_ARRAYClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ primitive_boxes
,  `Float'  -- ^ boundMargin
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactQuantizedBvh.h?r=2223#130>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvhTree_build_tree as btQuantizedBvhTree_build_tree    `( BtQuantizedBvhTreeClass bc , GIM_BVH_DATA_ARRAYClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ primitive_boxes
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactQuantizedBvh.h?r=2223#180>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvhTree_setNodeBound as btQuantizedBvhTree_setNodeBound    `( BtQuantizedBvhTreeClass bc , BtAABBClass p1 )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ nodeindex
, withBt* `p1'  -- ^ bound
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactQuantizedBvh.h?r=2223#195>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvhTree_getLeftNode as btQuantizedBvhTree_getLeftNode    `( BtQuantizedBvhTreeClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ nodeindex
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactQuantizedBvh.h?r=2223#121>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvhTree__build_sub_tree as btQuantizedBvhTree__build_sub_tree    `( BtQuantizedBvhTreeClass bc , GIM_BVH_DATA_ARRAYClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ primitive_boxes
,  `Int'  -- ^ startIndex
,  `Int'  -- ^ endIndex
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactQuantizedBvh.h?r=2223#146>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvhTree_clearNodes as btQuantizedBvhTree_clearNodes    `( BtQuantizedBvhTreeClass bc )' =>     { withBt* `bc'  -- ^ 
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactQuantizedBvh.h?r=2223#117>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvhTree__sort_and_calc_splitting_index as btQuantizedBvhTree__sort_and_calc_splitting_index    `( BtQuantizedBvhTreeClass bc , GIM_BVH_DATA_ARRAYClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ primitive_boxes
,  `Int'  -- ^ startIndex
,  `Int'  -- ^ endIndex
,  `Int'  -- ^ splitAxis
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactQuantizedBvh.h?r=2223#206>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvhTree_getEscapeNodeIndex as btQuantizedBvhTree_getEscapeNodeIndex    `( BtQuantizedBvhTreeClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ nodeindex
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactQuantizedBvh.h?r=2223#159>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvhTree_isLeafNode as btQuantizedBvhTree_isLeafNode    `( BtQuantizedBvhTreeClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ nodeindex
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactQuantizedBvh.h?r=2223#211>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvhTree_get_node_pointer as btQuantizedBvhTree_get_node_pointer    `( BtQuantizedBvhTreeClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ index
 } ->  `BT_QUANTIZED_BVH_NODE'  mkBT_QUANTIZED_BVH_NODE* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactQuantizedBvh.h?r=2223#164>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvhTree_getNodeData as btQuantizedBvhTree_getNodeData    `( BtQuantizedBvhTreeClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ nodeindex
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactQuantizedBvh.h?r=2223#169>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvhTree_getNodeBound as btQuantizedBvhTree_getNodeBound    `( BtQuantizedBvhTreeClass bc , BtAABBClass p1 )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ nodeindex
, withBt* `p1'  -- ^ bound
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactQuantizedBvh.h?r=2223#200>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvhTree_getRightNode as btQuantizedBvhTree_getRightNode    `( BtQuantizedBvhTreeClass bc )' =>     { withBt* `bc'  -- ^ 
,  `Int'  -- ^ nodeindex
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactQuantizedBvh.h?r=2223#119>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvhTree__calc_splitting_axis as btQuantizedBvhTree__calc_splitting_axis    `( BtQuantizedBvhTreeClass bc , GIM_BVH_DATA_ARRAYClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ primitive_boxes
,  `Int'  -- ^ startIndex
,  `Int'  -- ^ endIndex
 } ->  `Int'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactQuantizedBvh.h?r=2223#111>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvhTree_m_bvhQuantization_set    `( BtQuantizedBvhTreeClass bc )' =>     { withBt* `bc' , withVec3* `Vec3'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactQuantizedBvh.h?r=2223#111>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvhTree_m_bvhQuantization_get    `( BtQuantizedBvhTreeClass bc )' =>     { withBt* `bc' , allocaVec3-  `Vec3'  peekVec3* } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactQuantizedBvh.h?r=2223#110>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvhTree_m_global_bound_set    `( BtQuantizedBvhTreeClass bc , BtAABBClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactQuantizedBvh.h?r=2223#110>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvhTree_m_global_bound_get    `( BtQuantizedBvhTreeClass bc )' =>     { withBt* `bc'  } ->  `BtAABB'  mkBtAABB* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactQuantizedBvh.h?r=2223#109>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvhTree_m_node_array_set    `( BtQuantizedBvhTreeClass bc , GIM_QUANTIZED_BVH_NODE_ARRAYClass a )' =>     { withBt* `bc' , withBt* `a'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactQuantizedBvh.h?r=2223#109>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvhTree_m_node_array_get    `( BtQuantizedBvhTreeClass bc )' =>     { withBt* `bc'  } ->  `GIM_QUANTIZED_BVH_NODE_ARRAY'  mkGIM_QUANTIZED_BVH_NODE_ARRAY* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactQuantizedBvh.h?r=2223#108>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvhTree_m_num_nodes_set    `( BtQuantizedBvhTreeClass bc )' =>     { withBt* `bc' ,  `Int'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactQuantizedBvh.h?r=2223#108>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactQuantizedBvh.cpp?r=2223>
-}
{#fun btQuantizedBvhTree_m_num_nodes_get    `( BtQuantizedBvhTreeClass bc )' =>     { withBt* `bc'  } ->  `Int'   #}
-- * btTetrahedronShapeEx
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#58>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btTetrahedronShapeEx_new as btTetrahedronShapeEx    {  } -> `BtTetrahedronShapeEx' mkBtTetrahedronShapeEx* #}
{#fun btTetrahedronShapeEx_free    `( BtTetrahedronShapeExClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#66>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btTetrahedronShapeEx_setVertices as btTetrahedronShapeEx_setVertices    `( BtTetrahedronShapeExClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec3* `Vec3'  peekVec3* -- ^ v0
, withVec3* `Vec3'  peekVec3* -- ^ v1
, withVec3* `Vec3'  peekVec3* -- ^ v2
, withVec3* `Vec3'  peekVec3* -- ^ v3
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.h?r=2223#66>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btGImpactShape.cpp?r=2223>
-}
{#fun btTetrahedronShapeEx_setVertices as btTetrahedronShapeEx_setVertices'    `( BtTetrahedronShapeExClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec3-  `Vec3'  peekVec3* -- ^ v0
, allocaVec3-  `Vec3'  peekVec3* -- ^ v1
, allocaVec3-  `Vec3'  peekVec3* -- ^ v2
, allocaVec3-  `Vec3'  peekVec3* -- ^ v3
 } ->  `()'   #}
-- * btTriangleShapeEx
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btTriangleShapeEx.h?r=2223#139>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btTriangleShapeEx.cpp?r=2223>
-}
{#fun btTriangleShapeEx_new0 as btTriangleShapeEx0    {  } -> `BtTriangleShapeEx' mkBtTriangleShapeEx* #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btTriangleShapeEx.h?r=2223#143>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btTriangleShapeEx.cpp?r=2223>
-}
{#fun btTriangleShapeEx_new1 as btTriangleShapeEx1    {  withVec3* `Vec3' , withVec3* `Vec3' , withVec3* `Vec3'  } -> `BtTriangleShapeEx' mkBtTriangleShapeEx* #}
{#fun btTriangleShapeEx_free    `( BtTriangleShapeExClass bc )' =>     { withBt* `bc'  } -> `()' #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btTriangleShapeEx.h?r=2223#176>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btTriangleShapeEx.cpp?r=2223>
-}
{#fun btTriangleShapeEx_overlap_test_conservative as btTriangleShapeEx_overlap_test_conservative    `( BtTriangleShapeExClass bc , BtTriangleShapeExClass p0 )' =>     { withBt* `bc'  -- ^ 
, withBt* `p0'  -- ^ other
 } ->  `Bool'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btTriangleShapeEx.h?r=2223#169>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btTriangleShapeEx.cpp?r=2223>
-}
{#fun btTriangleShapeEx_buildTriPlane as btTriangleShapeEx_buildTriPlane    `( BtTriangleShapeExClass bc )' =>     { withBt* `bc'  -- ^ 
, withVec4* `Vec4'  peekVec4* -- ^ plane
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btTriangleShapeEx.h?r=2223#169>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btTriangleShapeEx.cpp?r=2223>
-}
{#fun btTriangleShapeEx_buildTriPlane as btTriangleShapeEx_buildTriPlane'    `( BtTriangleShapeExClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaVec4-  `Vec4'  peekVec4* -- ^ plane
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btTriangleShapeEx.h?r=2223#162>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btTriangleShapeEx.cpp?r=2223>
-}
{#fun btTriangleShapeEx_applyTransform as btTriangleShapeEx_applyTransform    `( BtTriangleShapeExClass bc )' =>     { withBt* `bc'  -- ^ 
, withTransform* `Transform'  peekTransform* -- ^ t
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btTriangleShapeEx.h?r=2223#162>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btTriangleShapeEx.cpp?r=2223>
-}
{#fun btTriangleShapeEx_applyTransform as btTriangleShapeEx_applyTransform'    `( BtTriangleShapeExClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaTransform-  `Transform'  peekTransform* -- ^ t
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btTriangleShapeEx.h?r=2223#151>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btTriangleShapeEx.cpp?r=2223>
-}
{#fun btTriangleShapeEx_getAabb as btTriangleShapeEx_getAabb    `( BtTriangleShapeExClass bc )' =>     { withBt* `bc'  -- ^ 
, withTransform* `Transform'  peekTransform* -- ^ t
, withVec3* `Vec3'  peekVec3* -- ^ aabbMin
, withVec3* `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
{- | <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btTriangleShapeEx.h?r=2223#151>
     <http://code.google.com/p/bullet/source/browse/trunk/src/BulletCollision/Gimpact/btTriangleShapeEx.cpp?r=2223>
-}
{#fun btTriangleShapeEx_getAabb as btTriangleShapeEx_getAabb'    `( BtTriangleShapeExClass bc )' =>     { withBt* `bc'  -- ^ 
, allocaTransform-  `Transform'  peekTransform* -- ^ t
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMin
, allocaVec3-  `Vec3'  peekVec3* -- ^ aabbMax
 } ->  `()'   #}
