#!/bin/bash

apt-get update
apt-get install gcc make git libtool autoconf autogen pkg-config cmake
apt-get install python3 python3-dev python3-pip
apt install libssl1.0.0 libgstreamer1.0-0 gstreamer1.0-tools gstreamer1.0-plugins-good gstreamer1.0-plugins-bad gstreamer1.0-plugins-ugly gstreamer1.0-libav libgstrtspserver-1.0-0 libjansson4
apt-get install linux-headers-$(uname -r)

CUDA_VER=11.4 make -C nvdsinfer_custom_impl_Yolo
