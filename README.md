Haskell binding for Bullet physics engine.
======

Binding for bullet-2.79.

Compile:
 * get bullet-2.79 physics engine from http://code.google.com/p/bullet/downloads/list

 * compile and install the library:
  * cd bullet-2.79
  * cmake .
  * make
  * sudo make install

 * compile and install the haskell bullet binding:
  * cabal install (run command in the bullet.cabal's directory)

 * compile and run the example (needs OpenGL and GLUT):
  * cd Examples
  * ghc --make -O2 BulletExample
  * ./BulletExample

Howto generate binding:
 * copy and run prepareHeaders.hs executable to bullet/src
 * move the generated bullet directory to bullet binding directory
 * from cbits folder copy HaskellBulletAPI.h and GLDebugDrawer.h to generated bullet folder
      and copy bullet.py to generated bullet folder also
 * execute bullet.py in bullet directory
 * copy generated files
  * (Physics directory to binding directory)
  * (Bullet.[h/cpp] to cbits directory)
