#!/bin/sh

ANDROID_DIR=$1

if [ -z "$ANDROID_DIR" ]; then
	echo "$0 path_to_msm_kernel"
	exit
fi

export KERNEL_DIR=$ANDROID_DIR/htc-kernel-msm7227

export HOST_PLATFORM=msm
export ARCH=arm
export CROSS_COMPILE=arm-eabi-

cd ./platforms/os/linux

make clean
make CONFIG_FRAME_WARN=8192
