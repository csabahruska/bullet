module Physics.Bullet.Raw.Types(
    Transform(..),
    allocaVec3,
    withVec3,
    pokeVec3,
    peekVec3,
    allocaVec4,
    withVec4,
    pokeVec4,
    peekVec4,
    allocaUnitQuaternion,
    withUnitQuaternion,
    pokeUnitQuaternion,
    peekUnitQuaternion,
    allocaMat3,
    withMat3,
    pokeMat3,
    peekMat3,
    allocaTransform,
    withTransform,
    pokeTransform,
    peekTransform,
    module Data.Vect.Float,
    module Data.Vect.Float.Util.Quaternion
    ) where

import Foreign.Marshal.Alloc
import Foreign.Marshal.Array
import Foreign.ForeignPtr
import Foreign.Storable
import Foreign.Ptr

import Data.Vect.Float
import Data.Vect.Float.Instances
import Data.Vect.Float.Util.Quaternion

data Transform  = Transform !Mat3 !Vec3
    deriving (Show,Eq)

-- Vec3
allocaVec3 :: (Storable a) => (Ptr a -> IO b) -> IO b
allocaVec3 = allocaBytes 12

withVec3 :: Vec3 -> (Ptr a -> IO  b) -> IO  b
withVec3 v f = allocaVec3 $ \p -> do
    pokeVec3 v p
    f $ castPtr p

pokeVec3 (Vec3 x y z) p = do
    pokeElemOff p 0 x 
    pokeElemOff p 1 y
    pokeElemOff p 2 z

peekVec3 :: Ptr a -> IO Vec3
peekVec3 p' = do
    let p = castPtr p'
    x <- peekElemOff p 0
    y <- peekElemOff p 1
    z <- peekElemOff p 2
    return $ Vec3 x y z

-- Vec4
allocaVec4 :: (Storable a) => (Ptr a -> IO b) -> IO b
allocaVec4 = allocaBytes 16

withVec4 :: Vec4 -> (Ptr a -> IO  b) -> IO  b
withVec4 v f = allocaVec4 $ \p -> do
    pokeVec4 v p
    f $ castPtr p

pokeVec4 (Vec4 x y z w) p = do
    pokeElemOff p 0 x 
    pokeElemOff p 1 y
    pokeElemOff p 2 z
    pokeElemOff p 3 w

peekVec4 :: Ptr a -> IO Vec4
peekVec4 p' = do
    let p = castPtr p'
    x <- peekElemOff p 0
    y <- peekElemOff p 1
    z <- peekElemOff p 2
    w <- peekElemOff p 3
    return $ Vec4 x y z w

-- UnitQuaternion
allocaUnitQuaternion :: (Storable a) => (Ptr a -> IO b) -> IO b
allocaUnitQuaternion = allocaBytes 16

withUnitQuaternion :: UnitQuaternion -> (Ptr a -> IO  b) -> IO  b
withUnitQuaternion v f = allocaUnitQuaternion $ \p -> do
    pokeUnitQuaternion v p
    f $ castPtr p

pokeUnitQuaternion (U (Vec4 x y z w)) p = do
    pokeElemOff p 0 x 
    pokeElemOff p 1 y
    pokeElemOff p 2 z
    pokeElemOff p 3 w

peekUnitQuaternion :: Ptr a -> IO UnitQuaternion
peekUnitQuaternion p' = do
    let p = castPtr p'
    x <- peekElemOff p 0
    y <- peekElemOff p 1
    z <- peekElemOff p 2
    w <- peekElemOff p 3
    return $ mkU $ Vec4 x y z w

-- Mat3
allocaMat3 :: (Storable a) => (Ptr a -> IO b) -> IO b
allocaMat3 = allocaBytes 36

withMat3 :: Mat3 -> (Ptr a -> IO  b) -> IO  b
withMat3 v f = allocaMat3 $ \p -> do
    pokeMat3 v p
    f $ castPtr p

pokeMat3 (Mat3 a b c) p = do
    pokeVec3 a p
    pokeVec3 b $ plusPtr p 12
    pokeVec3 c $ plusPtr p 24

peekMat3 :: Ptr a -> IO Mat3
peekMat3 p = do
    a <- peekVec3 p
    b <- peekVec3 $ plusPtr p 12
    c <- peekVec3 $ plusPtr p 24
    return $ Mat3 a b c

-- Transform
allocaTransform :: (Storable a) => (Ptr a -> IO b) -> IO b
allocaTransform = allocaBytes 48

withTransform :: Transform -> (Ptr a -> IO  b) -> IO  b
withTransform v f = allocaTransform $ \p -> do
    pokeTransform v p
    f $ castPtr p

pokeTransform (Transform m v) p = do
    pokeMat3 m p
    pokeVec3 v $ plusPtr p 36

peekTransform :: Ptr a -> IO Transform
peekTransform p = do
    m <- peekMat3 p
    v <- peekVec3 $ plusPtr p 36
    return $ Transform m v
