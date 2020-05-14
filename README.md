# Haskell binding for Bullet physics engine.

Binding for bullet-2.79.

### Compile
1. download and extract bullet physics source code: [bullet-2.79-rev2440.zip](https://storage.googleapis.com/google-code-archive-downloads/v2/code.google.com/bullet/bullet-2.79-rev2440.zip)
  ```
  unzip bullet-2.79-rev2440.zip
  ```

2. compile and install the library:
  ```
  cd bullet-2.79
  cmake . -DBUILD_DEMOS=NO (on OSX for 32 bit GHC also add -DCMAKE_OSX_ARCHITECTURES='i386')
  make
  sudo make install
  ```

  on Ubuntu 16.04 x64 bullet compiles with:
  ```
  cmake . -DBUILD_SHARED_LIBS=off -DBUILD_DEMOS=off -DCMAKE_CXX_FLAGS="-fPIC -Wno-narrowing" -DCMAKE_C_FLAGS="-fPIC -Wno-narrowing" -DINSTALL_LIBS=on
  make -j4
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
