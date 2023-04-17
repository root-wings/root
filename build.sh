#!/bin/bash
GCC_VERSION=4.9
current_path=$PWD
sudo apt -yqq update && sudo apt install -yqq aria2 
aria2c https://dl.google.com/android/repository/android-ndk-r22b-linux-x86_64.zip
unzip android-ndk-r22b-linux-x86_64.zip >/dev/null 2>&1
aria2c https://www.openssl.org/source/openssl-3.1.0.tar.gz
tar -zxf openssl-3.1.0.tar.gz


echo "start build....."
export ANDROID_NDK_ROOT=$PWD/android-ndk-r22b

PATH=$ANDROID_NDK_ROOT/toolchains/llvm/prebuilt/linux-x86_64/bin:$ANDROID_NDK_ROOT/toolchains/arm-linux-androideabi-4.9/prebuilt/linux-x86_64/bin:$ANDROID_NDK_ROOT/toolchains/aarch64-linux-android-4.9/prebuilt/linux-x86_64/bin:$PATH
cd openssl-3.1.0


output_path=$current_path/arm64-v8a
mkdir -p $output_path

./Configure android-arm64 -D__ANDROID_API__=21 -static no-shared no-tests --prefix=$output_path

make && make install

cd $current_path
tar -zcf OpenSSL_3.1.0_arm64-v8a.tar.gz $output_path
