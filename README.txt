Following https://medium.com/@au42/the-useful-raspberrypi-cross-compile-guide-ea56054de187
In this directory do:

1) Clone tools:

$ git clone https://github.com/raspberrypi/tools.git

2) run $ cmake . -DCMAKE_TOOLCHAIN_FILE=toolchain-rpi.cmake

3) run $ make
