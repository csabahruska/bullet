import Control.Monad
import Control.Concurrent.MVar

import Data.Char
import Data.IORef
import Data.List
import Data.Maybe

import System.Exit
import Graphics.UI.GLUT hiding (Vector3, Cube, Cone, Cylinder, Solid)
import qualified Graphics.Rendering.OpenGL as GL

import Unsafe.Coerce (unsafeCoerce) -- because realToFrac just doesn't cut it...

import Physics.Bullet.Raw
import Physics.Bullet.Raw.Class
import Physics.Bullet.Raw.Types

import Foreign hiding (rotate)

type Configuration = [(String, [Float])]

smSize = 512

initWindowSize = Size 960 720

lightPos :: Vertex4 GLfloat
lightPos = Vertex4 2 10 8 1

lightPos' :: Vertex3 GLdouble
lightPos' = Vertex3 2 10 8

lightCutoff = 45

scene = (0, grey, Vec3 0 (-2) 0, Cube 100 2 100)
        : (0, grey, Vec3 (-7) 1 5, Cone 3 2)
        : (0, grey, Vec3 12 1 8, Cone 4 3)
        : (0, grey, Vec3 2 2 18, Cone 8 5)
        : [(200, green, Vec3 (x+0.5*y-5) (y*1.5+0.75) 0, Cylinder 0.45 0.75) | y <- [0..2], x <- [0..10-y]]
        ++ [(50, yellow, Vec3 20 (y+0.5) (1.2*x+0.6*y-4), Cube 0.5 0.5 0.5) | y <- [0..2], x <- [0..10-y]]
        ++ map (\x -> (10, blue, Vec3 (5-40/(23-x)) 0.4 (1+0.5*x), trafficCone 0.2 0.8)) [0..20]
  where green = Color4 0 1 0 1
        yellow = Color4 1 1 0 1
        blue = Color4 0 0 1 1
        grey = Color4 0.7 0.7 0.7 1

carPositionInit = Vec3 (-2) 1 (-7)

camDistance = 8

uC = unsafeCoerce

timerFrequencyMillis :: Timeout
timerFrequencyMillis = 15

arcSteps = 50

nullV3 = Vec3 0 0 0

nullM3 = Mat3 nullV3 nullV3 nullV3

idM3 = Mat3 (Vec3 1 0 0) (Vec3 0 1 0) (Vec3 0 0 1)

idTransform = Transform idM3 nullV3

steerLimit = pi/4

steerSpeed = pi/40

carScaling :: GLdouble
carScaling = 5

carDimensions = (xd/zd,yd/zd,1)
  where xs = map (\(x,_,_) -> x) carVertices
        ys = map (\(_,y,_) -> y) carVertices
        zs = map (\(_,_,z) -> z) carVertices
        xd = abs (maximum xs - minimum xs)
        yd = abs (maximum ys - minimum ys)
        zd = abs (maximum zs - minimum zs)

carVertices = map adjust rawData
  where
    adjust (z,x,y) = (x*s,-y*s,(z-zc)*s)
    zs = map (\(z,_,_) -> z) rawData
    zmin = minimum zs
    zmax = maximum zs
    zc = (zmax+zmin)/2
    s = carScaling/(zmax-zmin)
    rawData =
      [(170,50,5),(150,55,-5),(120,58,-10),(65,60,-15),(15,50,-45),(-40,50,-45),(-60,50,-45),(-30,60,-15),
       (-70,60,-23),(-115,60,-20),(-140,60,-20),(-140,60,0),(-145,60,10),(-140,60,20),(-100,60,30),(-93,60,7),
       (-73,60,0),(-53,60,7),(-45,60,30),(75,60,30),(80,60,8),(100,60,0),(122,60,8),(132,56,30),
       (165,52,25),(180,0,5),(150,0,-6),(120,0,-10),(70,0,-13),(20,0,-45),(-40,0,-45),(-60,0,-45),
       (-30,0,-15),(-70,0,-23),(-120,0,-23),(-140,0,-22),(-140,0,-1),(-145,0,10),(-140,0,20),(-100,0,30),
       (-93,0,7),(-73,0,0),(-53,0,7),(-45,0,30),(75,0,30),(80,0,8),(100,0,0),(122,0,8),
       (132,0,30),(165,0,25),(170,-50,5),(150,-55,-5),(120,-58,-10),(65,-60,-15),(15,-50,-45),(-40,-50,-45),
       (-60,-50,-45),(-30,-60,-15),(-70,-60,-23),(-115,-60,-20),(-140,-60,-20),(-140,-60,0),(-145,-60,10),(-140,-60,20),
       (-100,-60,30),(-93,-60,7),(-73,-60,0),(-53,-60,7),(-45,-60,30),(75,-60,30),(80,-60,8),(100,-60,0),
       (122,-60,8),(132,-56,30),(165,-52,25)]

carFaces = [(0,23,24,0),(1,23,0,0),(22,23,1,0),(2,22,1,0),(21,22,2,0),(3,21,2,0),(20,21,3,0),(19,20,3,0),
  (18,19,3,0),(7,18,3,0),(7,17,18,0),(8,17,7,0),(16,17,8,0),(9,16,8,0),(15,16,9,0),(10,15,9,0),
  (14,15,10,0),(11,14,10,0),(13,14,11,0),(11,12,13,0),(9,8,6,1),(6,8,7,0),(5,6,7,0),(4,5,7,1),
  (3,4,7,1),(74,73,50,0),(50,73,51,0),(51,73,72,0),(51,72,52,0),(52,72,71,0),(52,71,53,0),(53,71,70,0),
  (53,70,69,0),(53,69,68,0),(53,68,57,0),(68,67,57,0),(57,67,58,0),(58,67,66,0),(58,66,59,0),(59,66,65,0),
  (59,65,60,0),(60,65,64,0),(60,64,61,0),(61,64,63,0),(63,62,61,0),(56,58,59,1),(57,58,56,0),(57,56,55,0),
  (57,55,54,1),(57,54,53,1),(23,48,49,2),(49,24,23,2),(24,49,25,0),(25,0,24,0),(0,25,26,0),(26,1,0,0),
  (1,26,27,0),(27,2,1,0),(2,27,28,0),(28,3,2,0),(3,28,29,1),(29,4,3,1),(4,29,30,0),(30,5,4,0),
  (5,30,31,0),(31,6,5,0),(6,31,34,1),(34,9,6,1),(9,34,35,0),(35,10,9,0),(10,35,36,0),(36,11,10,0),
  (11,36,37,0),(37,12,11,0),(12,37,38,0),(38,13,12,0),(13,38,39,2),(39,14,13,2),(18,43,44,2),(44,19,18,2),
  (73,74,49,2),(49,48,73,2),(74,50,25,0),(25,49,74,0),(50,51,26,0),(26,25,50,0),(51,52,27,0),(27,26,51,0),
  (52,53,28,0),(28,27,52,0),(53,54,29,1),(29,28,53,1),(54,55,30,0),(30,29,54,0),(55,56,31,0),(31,30,55,0),
  (56,59,34,1),(34,31,56,1),(59,60,35,0),(35,34,59,0),(60,61,36,0),(36,35,60,0),(61,62,37,0),(37,36,61,0),
  (62,63,38,0),(38,37,62,0),(63,64,39,2),(39,38,63,2),(68,69,44,2),(44,43,68,2)]

data Shape = Cube GLfloat GLfloat GLfloat
           | Cone GLfloat GLfloat
           | Cylinder GLfloat GLfloat
           | Compound [(Transform, Shape)]

data Solid = Solid
  { solShape  :: Shape
  , solMotion :: BtDefaultMotionState
  , solColour :: Color4 GLfloat
  }

data CamState = Follow | Fly

data State = State
  { dworld     :: BtDiscreteDynamicsWorld
  , solids     :: [Solid]
  , player     :: BtRaycastVehicle
  , camState   :: IORef CamState
  , camAngle   :: IORef GLdouble
  , steerLeft  :: IORef Bool
  , steerRight :: IORef Bool
  , steerLock  :: IORef Bool
  , isAccel    :: IORef Bool
  , isReverse  :: IORef Bool
  , paused     :: MVar Bool
  , shadowTex  :: TextureObject
  , vpSize     :: IORef Size
  }

createShape dw (mass, col, pos, Cube w h d) = createCube dw mass col pos w h d
createShape dw (mass, col, pos, Cone r h) = createCone dw mass col pos r h
createShape dw (mass, col, pos, Cylinder r h) = createCylinder dw mass col pos r h
createShape dw (mass, col, pos, Compound tss) = createCompound dw mass col pos tss

createCube dw mass col pos w h d = do
  shape <- btBoxShape (Vec3 (uC w) (uC h) (uC d))
  motionState <- btDefaultMotionState (Transform idM3 pos) idTransform
  inertia <- btCollisionShape_calculateLocalInertia shape mass nullV3
  body <- btRigidBody1 mass motionState shape inertia
  btDynamicsWorld_addRigidBody dw body
  return $ Solid
    { solShape = Cube w h d
    , solMotion = motionState
    , solColour = col
    }

createCone dw mass col pos r h = do
  shape <- btConeShape (uC r) (uC h)
  motionState <- btDefaultMotionState (Transform idM3 pos) idTransform
  inertia <- btCollisionShape_calculateLocalInertia shape mass nullV3
  body <- btRigidBody1 mass motionState shape inertia
  btDynamicsWorld_addRigidBody dw body
  return $ Solid
    { solShape = Cone r h
    , solMotion = motionState
    , solColour = col
    }

createCylinder dw mass col pos r h = do
  shape <- btCylinderShape (Vec3 (uC r) (uC h) (uC r))
  motionState <- btDefaultMotionState (Transform idM3 pos) idTransform
  inertia <- btCollisionShape_calculateLocalInertia shape mass nullV3
  body <- btRigidBody1 mass motionState shape inertia
  btDynamicsWorld_addRigidBody dw body
  return $ Solid
    { solShape = Cylinder r h
    , solMotion = motionState
    , solColour = col
    }

createCompound dw mass col pos tss = do
  shape <- btCompoundShape False
  let addShape t s = btCompoundShape_addChildShape shape t s
      addShapes tss = forM_ tss $ \(t,s) -> do
        case s of
          Cube w h d -> addShape t =<< btBoxShape (Vec3 (uC w) (uC h) (uC d))
          Cone r h -> addShape t =<< btConeShape (uC r) (uC h)
          Cylinder r h -> addShape t =<< btCylinderShape (Vec3 (uC r) (uC h) (uC r))
          Compound tss -> addShapes tss >> return idTransform -- note: this is not correct, because the transformations should be multiplied by t!
  addShapes tss
  motionState <- btDefaultMotionState (Transform idM3 pos) idTransform
  inertia <- btCollisionShape_calculateLocalInertia shape mass nullV3
  body <- btRigidBody1 mass motionState shape inertia
  btDynamicsWorld_addRigidBody dw body
  return $ Solid
    { solShape = Compound tss
    , solMotion = motionState
    , solColour = col
    }

trafficCone r h = Compound
  [ (idTransform, Cone r h)
  , (Transform idM3 (Vec3 0 (-0.45*uC h) 0), Cube r (0.1*h) r)
  ]

localCreateRigidBody dw mass startTransform shape = do
  inertia <- case mass /= 0 of
    True -> btCollisionShape_calculateLocalInertia shape mass nullV3
    False -> return nullV3
  motionState <- btDefaultMotionState startTransform idTransform
  body <- btRigidBody1 mass motionState shape inertia
  btCollisionObject_setContactProcessingThreshold body (1e30)
  btDynamicsWorld_addRigidBody dw body
  return (motionState,body)

configureVehicle vehicle = do
  config <- loadConfig
  let getF = getFloat config
      getV = getVec3 config
      wheelDirectionCS        = getV "wheelDirectionCS"
      wheelAxleCS             = getV "wheelAxleCS"
      suspensionRestLength    = getF "suspensionRestLength"
      suspensionStiffness     = getF "suspensionStiffness"
      suspensionDamping       = getF "suspensionDamping"
      suspensionCompression   = getF "suspensionCompression"
      rollInfluence           = getF "rollInfluence"
      wheelFriction           = getF "wheelFriction"

  numWheels <- btRaycastVehicle_getNumWheels vehicle
  forM_ [0..numWheels-1] $ \i -> do
    wheel <- btRaycastVehicle_getWheelInfo vehicle i
    btWheelInfo_m_wheelDirectionCS_set wheel wheelDirectionCS
    btWheelInfo_m_wheelAxleCS_set wheel wheelAxleCS
    btWheelInfo_m_suspensionRestLength1_set wheel suspensionRestLength
    btWheelInfo_m_suspensionStiffness_set wheel suspensionStiffness
    btWheelInfo_m_wheelsDampingRelaxation_set wheel suspensionDamping
    btWheelInfo_m_wheelsDampingCompression_set wheel suspensionCompression
    btWheelInfo_m_frictionSlip_set wheel wheelFriction
    btWheelInfo_m_rollInfluence_set wheel rollInfluence

createVehicle dw = do
  let (xd,yd,zd) = carDimensions
      hxd = realToFrac (xd*carScaling/2)
      hyd = realToFrac (yd*carScaling/2)
      hzd = realToFrac (zd*carScaling/2)

  chassisShape <- do
    mi <- btTriangleMesh True True
    forM_ carFaces $ \(i1,i2,i3,_ ) -> do
      let (x1,y1,z1) = carVertices !! i1
          (x2,y2,z2) = carVertices !! i2
          (x3,y3,z3) = carVertices !! i3
          v1 = Vec3 (realToFrac x1) (realToFrac y1) (realToFrac z1)
          v2 = Vec3 (realToFrac x2) (realToFrac y2) (realToFrac z2)
          v3 = Vec3 (realToFrac x3) (realToFrac y3) (realToFrac z3)
      btTriangleMesh_addTriangle mi v3 v2 v1 True
    btConvexTriangleMeshShape mi True

  compound <- btCompoundShape True
  let localTrans = Transform idM3 $ Vec3 0 0 0
      wheelRadius = 0.38
      wheelWidth = 0.3
  btCompoundShape_addChildShape compound localTrans chassisShape

  (carMotionSate,carChassis) <- localCreateRigidBody dw 550 idTransform compound
  btRigidBody_setCenterOfMassTransform carChassis (Transform idM3 carPositionInit)
  btRigidBody_setLinearVelocity carChassis nullV3
  btRigidBody_setAngularVelocity carChassis nullV3

  tuning <- btRaycastVehicle_btVehicleTuning
  vehicleRayCaster <- btDefaultVehicleRaycaster dw
  vehicle <- btRaycastVehicle tuning carChassis vehicleRayCaster
  btCollisionObject_setActivationState carChassis 4 -- #define DISABLE_DEACTIVATION 4
  btDynamicsWorld_addVehicle dw vehicle

  btRaycastVehicle_setCoordinateSystem vehicle 0 1 2

  config <- loadConfig

  let getF = getFloat config
      getV = getVec3 config
      connectionHeight        = getF "connectionHeight"
      wheelDirectionCS        = getV "wheelDirectionCS"
      wheelAxleCS             = getV "wheelAxleCS"
      suspensionRestLength    = getF "suspensionRestLength"

  btRaycastVehicle_addWheel vehicle
    (Vec3 (hxd-(0.3*wheelWidth)) connectionHeight (0.7*hzd-wheelRadius))
    wheelDirectionCS wheelAxleCS suspensionRestLength wheelRadius tuning True

  btRaycastVehicle_addWheel vehicle
    (Vec3 (-hxd+(0.3*wheelWidth)) connectionHeight (0.7*hzd-wheelRadius))
    wheelDirectionCS wheelAxleCS suspensionRestLength wheelRadius tuning True

  btRaycastVehicle_addWheel vehicle
    (Vec3 (-hxd+(0.3*wheelWidth)) connectionHeight (-0.7*hzd+wheelRadius))
    wheelDirectionCS wheelAxleCS suspensionRestLength wheelRadius tuning False

  btRaycastVehicle_addWheel vehicle
    (Vec3 (hxd-(0.3*wheelWidth)) connectionHeight (-0.7*hzd+wheelRadius))
    wheelDirectionCS wheelAxleCS suspensionRestLength wheelRadius tuning False

  configureVehicle vehicle
  return vehicle

vertex3 x y z = Vertex3 (realToFrac x) (realToFrac y) (realToFrac z :: GLfloat)
vector3 x y z = GL.Vector3 (realToFrac x) (realToFrac y) (realToFrac z :: GLfloat)
normal3 x y z = Normal3 (realToFrac x) (realToFrac y) (realToFrac z :: GLfloat)
texCoord2 x y = TexCoord2 (realToFrac x) (realToFrac y :: GLfloat)
color4 r g b a = Color4 (realToFrac r) (realToFrac g) (realToFrac b) (realToFrac a :: GLfloat)

drawVehicle vehicle carsec = do
  materialDiffuse Front $= Color4 1 0 0 1
  numWheels <- btRaycastVehicle_getNumWheels vehicle
  forM_ [0..numWheels-1] $ \i -> preservingMatrix $ do
    btRaycastVehicle_updateWheelTransform vehicle i True
    wheel <- btRaycastVehicle_getWheelInfo vehicle i
    multMatrix =<< mkGLMatrix =<< btWheelInfo_m_worldTransform_get wheel
    r <- fmap uC $ btWheelInfo_m_wheelsRadius_get wheel
    rotate (90 :: GLfloat) (GL.Vector3 0 0 1)
    drawCylinder r (0.3*r)

  materialDiffuse Front $= Color4 1 0 1 1
  preservingMatrix $ do
    multMatrix =<< getGLMatrix =<< btRigidBody_getMotionState =<< btRaycastVehicle_getRigidBody vehicle
    callList carsec

drawShape (Cube w h d) = drawCube w h d
drawShape (Cone r h) = drawCone r h
drawShape (Cylinder r h) = drawCylinder r h
drawShape (Compound tss) = drawCompound tss

drawFace ::  GL.Normal3 GLfloat -> Vertex3 GLfloat -> Vertex3 GLfloat
             -> Vertex3 GLfloat -> Vertex3 GLfloat -> IO ()
drawFace p q r s t = do
  let texCoord2f = texCoord :: TexCoord2 GLfloat -> IO ()
  normal p
  texCoord2f (TexCoord2 1 1)
  vertex q
  texCoord2f (TexCoord2 0 1)
  vertex r
  texCoord2f (TexCoord2 0 0)
  vertex s
  texCoord2f (TexCoord2 1 0)
  vertex t

drawCube sx sy sz = do
  let a = Vertex3   sx    sy    sz
      b = Vertex3   sx    sy  (-sz)
      c = Vertex3   sx  (-sy) (-sz)
      d = Vertex3   sx  (-sy)   sz
      e = Vertex3 (-sx)   sy    sz
      f = Vertex3 (-sx)   sy  (-sz)
      g = Vertex3 (-sx) (-sy) (-sz)
      h = Vertex3 (-sx) (-sy)   sz

      i = Normal3   1    0    0
      k = Normal3 (-1)   0    0
      l = Normal3   0    0  (-1)
      m = Normal3   0    0    1
      n = Normal3   0    1    0
      o = Normal3   0  (-1)   0

  renderPrimitive Quads $ do
    drawFace i d c b a
    drawFace k g h e f
    drawFace l c g f b
    drawFace m h d a e
    drawFace n e a b f
    drawFace o g c d h

drawCone r h = do
  let l = recip (sqrt (r*r+h*h))
      n = arcSteps
      s = 2*pi/n
      h2 = h/2

  renderPrimitive TriangleStrip $ forM_ [0..n] $ \i -> do
    normal $ Normal3 (l*h*sin (i*s)) (l*r) (l*h*cos (i*s))
    vertex $ Vertex3 0 h2 (0::GLfloat)
    vertex $ Vertex3 (r*sin (i*s)) (-h2) (r*cos (i*s))

  normal $ Normal3 0 (-1) (0::GLfloat)
  renderPrimitive TriangleStrip $ forM_ [0..n] $ \i -> do
    vertex $ Vertex3 (r*sin (i*s)) (-h2) (r*cos (i*s))
    vertex $ Vertex3 0 (-h2) 0

drawCylinder r h = do
  let n = arcSteps
      s = 2*pi/n

  renderPrimitive TriangleStrip $ forM_ [0..n] $ \i -> do
    normal $ Normal3 (sin (i*s)) 0 (cos (i*s))
    vertex $ Vertex3 (r*sin (i*s)) h (r*cos (i*s))
    vertex $ Vertex3 (r*sin (i*s)) (-h) (r*cos (i*s))

  normal $ Normal3 0 (-1) (0::GLfloat)
  renderPrimitive TriangleStrip $ forM_ [0..n] $ \i -> do
    vertex $ Vertex3 (r*sin (i*s)) (-h) (r*cos (i*s))
    vertex $ Vertex3 0 (-h) 0
  normal $ Normal3 0 1 (0::GLfloat)
  renderPrimitive TriangleStrip $ forM_ [0..n] $ \i -> do
    vertex $ Vertex3 0 h 0
    vertex $ Vertex3 (r*sin (i*s)) h (r*cos (i*s))

drawCompound tss = forM_ tss $ \(t, s) -> preservingMatrix $ do
  multMatrix =<< mkGLMatrix t
  drawShape s

createCarDisplaySection = defineNewList Compile $ do
  let (glassFaces,metalFaces) = partition isGlass carFaces
      isGlass (_,_,_,c) = odd c
      makeFace (i1,i2,i3,_) = do
        let (x1,y1,z1) = carVertices !! i1
            (x2,y2,z2) = carVertices !! i2
            (x3,y3,z3) = carVertices !! i3
            (xa,ya,za) = (x2-x1,y2-y1,z2-z1)
            (xb,yb,zb) = (x3-x1,y3-y1,z3-z1)
            nx = ya*zb-yb*za
            ny = za*xb-zb*xa
            nz = xa*yb-xb*ya
            nl = -sqrt (nx*nx+ny*ny+nz*nz)
        normal $ normal3 (nx/nl) (ny/nl) (nz/nl)
        vertex $ vertex3 x3 y3 z3
        vertex $ vertex3 x2 y2 z2
        vertex $ vertex3 x1 y1 z1
  renderPrimitive Triangles $ forM_ metalFaces makeFace
  oldAmbient <- get (materialAmbient Front)
  oldSpecular <- get (materialSpecular Front)
  materialDiffuse Front $= Color4 0 0 0 1
  materialAmbient Front $= Color4 0 0 0.2 1
  materialSpecular Front $= Color4 0 0 0.2 1
  renderPrimitive Triangles $ forM_ glassFaces makeFace
  materialAmbient Front $= oldAmbient
  materialSpecular Front $= oldSpecular

simpleBtDiscreteDynamicsWorld = do
  dc <- btDefaultCollisionConstructionInfo
  c <- btDefaultCollisionConfiguration dc
  d <- btCollisionDispatcher c
  hc <- btHashedOverlappingPairCache
  b <- btDbvtBroadphase hc
  s <- btSequentialImpulseConstraintSolver
  btDiscreteDynamicsWorld d b s c

makeState :: IO State
makeState = do
  dw <- simpleBtDiscreteDynamicsWorld
  slt <- newIORef False
  srt <- newIORef False
  slk <- newIORef False
  acc <- newIORef False
  rev <- newIORef False
  p <- newMVar False

  v <- createVehicle dw
  ss <- mapM (createShape dw) scene
  cs <- newIORef Follow
  ca <- newIORef 0

  vps <- newIORef initWindowSize
  [tex] <- genObjectNames 1

  return $ State
    { dworld = dw
    , solids = ss
    , player = v
    , camState = cs
    , camAngle = ca
    , steerLeft = slt
    , steerRight = srt
    , steerLock = slk
    , isAccel = acc
    , isReverse = rev
    , paused = p
    , shadowTex = tex
    , vpSize = vps
    }

getGLMatrix :: BtMotionStateClass ms => ms -> IO (GLmatrix GLfloat)
getGLMatrix motionState = mkGLMatrix =<< btMotionState_getWorldTransform motionState idTransform

mkGLMatrix :: Transform -> IO (GLmatrix GLfloat)
mkGLMatrix (Transform (Mat3 (Vec3 a1 a2 a3) (Vec3 b1 b2 b3) (Vec3 c1 c2 c3)) (Vec3 p1 p2 p3)) =
  newMatrix ColumnMajor $ [uC a1,uC b1,uC c1,0,uC a2,uC b2,uC c2,0,uC a3,uC b3,uC c3,0,uC p1,uC p2,uC p3,1]

display :: State -> DisplayList -> DisplayCallback
display state carsec = do
  let vehicle = player state
  cang <- readIORef (camAngle state)
  cst <- readIORef (camState state)

  (Vec3 px py pz, Vec3 vx vy vz) <- do
    b <- btRaycastVehicle_getRigidBody vehicle
    ms <- btRigidBody_getMotionState b
    Transform _ pos <- btMotionState_getWorldTransform' ms
    vel <- btRigidBody_getLinearVelocity b -- This seems to return garbage!
    return (pos, vel)
  let (px', py', pz') = (realToFrac px, realToFrac py, realToFrac pz)
      (vx', vy', vz') = (realToFrac vx, realToFrac vy, realToFrac vz)
      Vertex3 lx ly lz = lightPos'
      cld = sqrt ((lx-px')^2+(ly-py')^2+(lz-pz')^2)
      camSpeed = 0.02
      vang = atan2 vx' vz'
      bigd = pi < abs (vang-cang)
      sig = signum (vang-cang)*if bigd then -1 else 1
      cang' = cang+sig*camSpeed
      cang'' = if cang' > pi then cang'-2*pi else
                 if cang' < (-pi) then cang'+2*pi else cang'
      cang''' = if (cang' == cang'') && bigd then cang'' else (if sig < 0 then max else min) vang cang''
      cang'''' = if vx*vx+vy*vy < 0.1 then cang else cang'''
      dl = 7
      (dx, dy, dz) = case cst of
        Follow -> (-dl*sin cang'''', 3, -dl*cos cang'''')
        Fly -> (-20, 30, 0)
  writeIORef (camAngle state) cang''''

  -- Prepare camera and light matrices
  matrixMode $= Modelview 0
  loadIdentity
  Size vpw vph <- readIORef (vpSize state)

  cp <- preservingMatrix $ do
    perspective 45 (fromIntegral vpw / fromIntegral vph) 1 200
    get (matrix (Just (Modelview 0))) :: IO (GLmatrix GLdouble)
  cv <- preservingMatrix $ do
    lookAt (Vertex3 (px'+dx) (py'+dy) (pz'+dz)) (Vertex3 px' py' pz') (GL.Vector3 0 1 0)
    get (matrix (Just (Modelview 0))) :: IO (GLmatrix GLdouble)
  lp <- preservingMatrix $ do
    --let Vertex3 lx ly lz = lightPos'
    --    cld = sqrt ((lx-px')^2+(ly-py')^2+(lz-pz')^2)
    --    msize = 15 -- more or less the distance from the car where shadows can still appear
    --    ang = atan (msize/cld) * 360 / pi
    --perspective ang 1 1 200
    perspective (realToFrac lightCutoff) 1 1 200
    get (matrix (Just (Modelview 0))) :: IO (GLmatrix GLfloat)
  lv <- preservingMatrix $ do
    lookAt lightPos' (Vertex3 px' py' pz') (GL.Vector3 0 1 0)
    get (matrix (Just (Modelview 0))) :: IO (GLmatrix GLfloat)

  let drawScene = do
        forM_ (solids state) $ \Solid { solShape = s, solMotion = body, solColour = col } -> do
          materialDiffuse Front $= col
          preservingMatrix $ do
            m <- getGLMatrix body
            multMatrix m
            drawShape s
        drawVehicle vehicle carsec

  --First pass - from light's point of view
  clear [ColorBuffer, DepthBuffer]
  matrix (Just Projection) $= lp
  matrix (Just $ Modelview 0) $= lv
  --Use viewport the same size as the shadow map
  --Ensure that the border stays untouched, so no shadow is added outside the cone
  viewport $= (Position 1 1, Size (smSize-2) (smSize-2))
  --Draw back faces into the shadow map
  cullFace $= Just Front

  --Disable color writes, and use flat shading for speed
  shadeModel $= Flat
  colorMask $= Color4 Disabled Disabled Disabled Disabled

  --Draw the scene
  --polygonOffset $= (0.5,1)
  --translate $ Vec3 0 0 (0::GLfloat)
  drawScene
  finish

  --Read the depth buffer into the shadow map texture
  textureBinding Texture2D $= Just (shadowTex state)
  copyTexSubImage2D Nothing 0 (TexturePosition2D 0 0) (Position 0 0) (TextureSize2D smSize smSize)

  --restore states
  cullFace $= Just Back
  shadeModel $= Smooth
  colorMask $= Color4 Enabled Enabled Enabled Enabled

  --2nd pass - Draw from camera's point of view
  clear [DepthBuffer]
  matrix (Just Projection) $= cp
  matrix (Just $ Modelview 0) $= cv
  viewport $= (Position 0 0, Size vpw vph)

  --Use dim light to represent shadowed areas
  position (Light 0) $= lightPos
  ambient  (Light 0) $= Color4 0 0 0 1
  diffuse  (Light 0) $= Color4 0 0 0 1
  specular (Light 0) $= Color4 0 0 0 1
  spotCutoff (Light 0) $= 180
  spotExponent (Light 0) $= 0
  spotDirection (Light 0) $= Normal3 0 0 (-1)

  position (Light 1) $= lightPos
  ambient  (Light 1) $= Color4 0 0 0 1
  diffuse  (Light 1) $= Color4 0.15 0.15 0.15 1
  specular (Light 1) $= Color4 0 0 0 1

  light (Light 0) $= Enabled
  light (Light 1) $= Enabled
  lighting $= Enabled
  drawScene

  --3rd pass
  --Draw with bright light
  diffuse  (Light 0) $= Color4 1 1 1 1
  specular (Light 0) $= Color4 1 1 1 1
  spotCutoff (Light 0) $= lightCutoff/2
  spotExponent (Light 0) $= 64
  spotDirection (Light 0) $= Normal3 (realToFrac $ (px'-lx)/cld)
    (realToFrac $ (py'-ly)/cld) (realToFrac $ (pz'-lz)/cld)

  --Calculate texture matrix for projection
  --This matrix takes us from eye space to the light's clip space
  --It is postmultiplied by the inverse of the current view matrix when specifying texgen
  matrixMode $= Modelview 0
  tm <- preservingMatrix $ do
      loadIdentity
      scale 0.5 0.5 (0.5::GLfloat)
      translate $ GL.Vector3 1 1 (1::GLfloat)
      multMatrix lp
      multMatrix lv
      get (matrix (Just (Modelview 0)))

  [sx, sy, sz, sw, tx, ty, tz, tw, rx, ry, rz, rw, qx, qy, qz, qw] <-
    getMatrixComponents RowMajor (tm :: GLmatrix GLdouble)

  --Set up texture coordinate generation.
  textureGenMode S $= Just (EyeLinear (Plane sx sy sz sw))
  textureGenMode T $= Just (EyeLinear (Plane tx ty tz tw))
  textureGenMode R $= Just (EyeLinear (Plane rx ry rz rw))
  textureGenMode GL.Q $= Just (EyeLinear (Plane qx qy qz qw))

  textureBinding Texture2D $= Just (shadowTex state)
  texture Texture2D $= Enabled

  --Enable shadow comparison
  --glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_COMPARE_MODE_ARB, GL_COMPARE_R_TO_TEXTURE);
  --Shadow comparison should be true (ie not in shadow) if r<=texture
  --glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_COMPARE_FUNC_ARB, GL_LEQUAL);
  textureCompareMode Texture2D $= Just Lequal

  --Shadow comparison should generate an INTENSITY result
  --glTexParameteri(GL_TEXTURE_2D, GL_DEPTH_TEXTURE_MODE_ARB, GL_INTENSITY);
  depthTextureMode Texture2D $= Intensity

  --Set alpha test to discard false comparisons
  --glAlphaFunc(GL_GEQUAL, 0.99f);
  --glEnable(GL_ALPHA_TEST);
  alphaFunc $= Just (Gequal,0.99)

  --polygonOffset $= (1.5,1.0)
  drawScene

  --Disable textures and texgen
  texture Texture2D $= Disabled

  textureGenMode S $= Nothing
  textureGenMode T $= Nothing
  textureGenMode R $= Nothing
  textureGenMode GL.Q $= Nothing

  --Restore other states
  lighting $= Disabled
  alphaFunc $= Nothing

  finish
  swapBuffers

keyboard :: State -> KeyboardMouseCallback
keyboard state key keyState mods _ =
  case (key, keyState) of
    (Char 'q', Down) -> exitWith ExitSuccess
    (Char '\27', Down) -> exitWith ExitSuccess
    (SpecialKey KeyLeft, down) -> writeIORef (steerLeft state) (down == Down)
    (SpecialKey KeyRight, down) -> writeIORef (steerRight state) (down == Down)
    (SpecialKey KeyUp, down) -> writeIORef (isAccel state) (down == Down)
    (SpecialKey KeyDown, down) -> writeIORef (isReverse state) (down == Down)
    (Char 'p', Down) -> modifyMVar_ (paused state) (return . not)
    (Char 'c', Down) -> modifyIORef (camState state) stepState
    (Char 'r', Down) -> do
      carChassis <- btRaycastVehicle_getRigidBody (player state)
      btRigidBody_setCenterOfMassTransform carChassis (Transform idM3 carPositionInit)
      btRigidBody_setLinearVelocity carChassis nullV3
      btRigidBody_setAngularVelocity carChassis nullV3
      return ()
    (Char 'l', Down) -> configureVehicle (player state)
    (_, _) -> return ()
  where stepState Follow = Fly
        stepState Fly    = Follow

reshape :: State -> ReshapeCallback
reshape state size = do
  viewport $= (Position 0 0, size)
  writeIORef (vpSize state) size

timer :: State -> TimerCallback
timer state = do
  addTimerCallback timerFrequencyMillis (timer state)
  isPaused <- readMVar $ paused state
  when (not isPaused) $ do
    let vehicle = player state
        getPos = do
          b <- btRaycastVehicle_getRigidBody vehicle
          ms <- btRigidBody_getMotionState b
          Transform _ pos <- btMotionState_getWorldTransform' ms
          return pos

    slt <- readIORef (steerLeft state)
    srt <- readIORef (steerRight state)
    slk <- readIORef (steerLock state)
    ang <- btRaycastVehicle_getSteeringValue vehicle 0

    let ang' = min steerLimit $ max (-steerLimit) $
               (if slk then ang else
                  if ang > 0 then max 0 (ang-steerSpeed)
                  else min 0 (ang+steerSpeed))
               - (if srt then steerSpeed*(if slk then 1 else 2) else 0)
               + (if slt then steerSpeed*(if slk then 1 else 2) else 0)
    btRaycastVehicle_setSteeringValue vehicle ang' 0
    btRaycastVehicle_setSteeringValue vehicle ang' 1

    acc <- readIORef (isAccel state)
    rev <- readIORef (isReverse state)

    let force = (if acc then 1000 else 0) - if rev then 500 else 0
    btRaycastVehicle_applyEngineForce vehicle force 2
    btRaycastVehicle_applyEngineForce vehicle force 3

    btDynamicsWorld_stepSimulation (dworld state) (fromIntegral timerFrequencyMillis/1000) 10 (1/60)
    return ()
  postRedisplay Nothing

loadConfig :: IO Configuration
loadConfig = do
  rawCfg <- readFile "car-params.txt"
  let cfg = map parseLine . filter ('=' `elem`) . lines $ rawCfg
      parseLine s = (filter (not . isSpace) key, params)
        where (key, _:rest) = break (=='=') s
              params = map read (words rest)
  return cfg

getFloat :: Configuration -> String -> Float
getFloat config key = head . fromMaybe (error $ "no key " ++ key) . lookup key $ config

getVec3 :: Configuration -> String -> Vec3
getVec3 config key = (\[x,y,z] -> Vec3 x y z) . fromMaybe (error $ "no key " ++ key) . lookup key $ config

main = do
  getArgsAndInitialize
  initialDisplayMode $= [RGBAMode, WithDepthBuffer, DoubleBuffered, Multisampling]
  initialWindowSize $= initWindowSize
  createWindow "Bullet Example"

  state <- makeState

  matrixMode $= Modelview 0
  loadIdentity

  shadeModel $= Smooth
  clearColor $= Color4 0 0 0 0
  color $ Color4 1 1 1 (1::GLfloat)
  hint PerspectiveCorrection $= Nicest
  clearDepth $= 1
  depthFunc $= Just Lequal
  GL.normalize $= Enabled
  textureBinding Texture2D $= Just (shadowTex state)
  texImage2D Nothing NoProxy 0 DepthComponent' (TextureSize2D smSize smSize) 0
    (PixelData DepthComponent UnsignedByte nullPtr)
  textureWrapMode Texture2D S $= (Repeated, Clamp)
  textureWrapMode Texture2D T $= (Repeated, Clamp)
  textureFilter Texture2D $= ((Nearest, Nothing), Nearest)

  --colorMaterial $= Just (Front, AmbientAndDiffuse)
  materialAmbient Front $= Color4 0 0 0 1
  materialSpecular Front $= Color4 1 1 1 1
  materialShininess Front $= 16

  carsec <- createCarDisplaySection
  displayCallback $= display state carsec
  keyboardMouseCallback $= Just (keyboard state)
  reshapeCallback $= Just (reshape state)
  addTimerCallback timerFrequencyMillis (timer state)

  mainLoop

