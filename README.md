# Haskell binding for Bullet physics engine.

Binding for bullet-2.79.

### Compile
1. get bullet-2.79 physics engine from http://code.google.com/p/bullet/downloads/list
  ```
  svn checkout http://bullet.googlecode.com/svn/trunk/@2440 bullet-read-only-2.79
  ```

2. compile and install the library:
  ```
  cd bullet-2.79
  cmake . -DBUILD_DEMOS=NO (on OSX for 32 bit GHC also add -DCMAKE_OSX_ARCHITECTURES='i386')
  make
  sudo make install
  ```

3. compile and install the haskell bullet binding:
  `cabal install` (run command in the bullet.cabal's directory)

4. compile and run the example (needs OpenGL and GLUT):
  ```
  cd Examples
  ghc --make -O2 BulletExample
  ./BulletExample
  ```

### Howto generate binding
 1. copy and run `prepareHeaders.hs` executable to `bullet/src`
 2. move the generated bullet directory to bullet binding directory
 3. from `cbits` folder copy `HaskellBulletAPI.h` and `GLDebugDrawer.h` to generated `bullet` folder
      and copy `bullet.py` to generated `bullet` folder also
 4. execute `bullet.py` in bullet directory
 5. copy generated files
  - `Physics` directory to binding directory
  - Bullet.[h/cpp] to `cbits` directory
