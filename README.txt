Following https://medium.com/@au42/the-useful-raspberrypi-cross-compile-guide-ea56054de187
In this directory do:

1) Clone this repo in the proper location and cd to the project directory

2) In project directory clone tools:

$ git clone https://github.com/raspberrypi/tools.git

3) run make application script 
$./make-application.sh

4) Copy the missing library to you raspberry pi (change IP in command)
$ scp include/libstdc++.so.6 root@192.168.0.60:/usr/lib/

5) Copy compiled program to raspberry pi (change IP in command)
$ scp blinkLed root@192.168.0.60:/usr/bin/

6) run program on rpi
$ blinking-service
