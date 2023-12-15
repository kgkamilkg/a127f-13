#!/bin/bash


export PLATFORM_VERSION=13
export ANDROID_MAJOR_VERSION=t
export ARCH=arm64
export PATH="/home/SM-A127F_CIS_13/ccache:$PATH"
export CCACHE_DIR=/home/SM-A127F_CIS_13/ccache
export CCACHE_MAXSIZE=5G

make -C $(pwd) O=$(pwd)/out ARCH=arm64 CROSS_COMPILE=$(pwd)/toolchain/aarch64-linux-android-4.9/bin/aarch64-linux-android- 


make ARCH=arm64 exynos850-a12snsxx_defconfig
make ARCH=arm64 -j64
