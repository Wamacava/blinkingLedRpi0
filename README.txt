Following https://medium.com/@au42/the-useful-raspberrypi-cross-compile-guide-ea56054de187
In this directory do:

1) Clone tools:

$ git clone https://github.com/raspberrypi/tools.git

2) run $ cmake . -DCMAKE_TOOLCHAIN_FILE=toolchain-rpi.cmake

3) run $ make

4) scp include/libstdc++.so.6 root@192.168.0.60:/usr/lib/

5) scp blinkLed root@192.168.0.60:/home/root/

6) run program on rpi
