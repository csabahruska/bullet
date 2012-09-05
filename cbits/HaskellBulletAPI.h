// this turn every method and attribute public
//#define class struct
#define private public
#define protected public

#define USE_PTHREADS 1

// Collision
// Dynamics
#include "btBulletDynamicsCommon.h"
#include "BulletCollision/CollisionDispatch/btGhostObject.h"

// Gimpact
#include "BulletCollision/Gimpact/btGImpactShape.h"
#include "BulletCollision/Gimpact/btGImpactCollisionAlgorithm.h"

// MultiThreaded
/*
#include "BulletMultiThreaded/SpuGatheringCollisionDispatcher.h"
#include "BulletMultiThreaded/PlatformDefinitions.h"

//#ifdef USE_LIBSPE2
//#include "BulletMultiThreaded/SpuLibspe2Support.h"
//#elif defined (_WIN32)
//#include "BulletMultiThreaded/Win32ThreadSupport.h"
//#include "BulletMultiThreaded/SpuNarrowPhaseCollisionTask/SpuGatheringCollisionTask.h"

//#elif defined (USE_PTHREADS)

#include "BulletMultiThreaded/PosixThreadSupport.h"
#include "BulletMultiThreaded/SpuNarrowPhaseCollisionTask/SpuGatheringCollisionTask.h"

//#else
//other platforms run the parallel code sequentially (until pthread support or other parallel implementation is added)

//#include "BulletMultiThreaded/SpuNarrowPhaseCollisionTask/SpuGatheringCollisionTask.h"
//#endif //USE_LIBSPE2

#include "BulletMultiThreaded/btParallelConstraintSolver.h"
#include "BulletMultiThreaded/SequentialThreadSupport.h"
*/

// SoftBody
#include "BulletSoftBody/btSoftBody.h"
#include "BulletSoftBody/btSoftRigidDynamicsWorld.h"
#include "BulletSoftBody/btSoftBodyRigidBodyCollisionConfiguration.h"
#include "BulletSoftBody/btSoftBodyHelpers.h"

#include "GLDebugDrawer.h"

//ConvexDecomposition
//#include "ConvexBuilder.h"

//GimpactUtils
//BulletFileLoader
//BulletWorldImporter
