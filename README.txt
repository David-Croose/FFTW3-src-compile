This is a project compiles FFTW3 source code not it's library with user code. Thus, it's convenient to port it between different OS.

How to use:
$ tar xzf fftw-3.3.8.tar.gz
$ cp -r fftw-src-compile/* fftw-3.3.8
$ cd fftw-3.3.8
$ vim userapp/main.c    # edit your code
$ make

