#!/bin/bash

cmake . -DCMAKE_TOOLCHAIN_FILE=toolchain-rpi.cmake

make
