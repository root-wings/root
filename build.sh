#############armeabi-v7a##################
GCC_VERSION=4.9

if [ ! -f "android-ndk-r22b-linux-x86_64.zip" ];then
    sudo apt install p7zip-full
    sudo apt -yqq update && sudo apt install -yqq aria2 
    aria2c https://dl.google.com/android/repository/android-ndk-r22b-linux-x86_64.zip
    unzip android-ndk-r22b-linux-x86_64.zip >/dev/null 2>&1
    aria2c https://www.openssl.org/source/openssl-3.1.0.tar.gz
    tar -zxf openssl-3.1.0.tar.gz
fi


echo "start build....."
export ANDROID_NDK_ROOT=$PWD/android-ndk-r22b

PATH=$ANDROID_NDK_ROOT/toolchains/llvm/prebuilt/linux-x86_64/bin:$ANDROID_NDK_ROOT/toolchains/arm-linux-androideabi-4.9/prebuilt/linux-x86_64/bin:$ANDROID_NDK_ROOT/toolchains/aarch64-linux-android-4.9/prebuilt/linux-x86_64/bin:$PATH



output_path=$PWD/armeabi-v7a
mkdir -p $output_path


cd openssl-3.1.0
./Configure android-arm -D__ANDROID_API__=21 -static -fPIC no-shared no-tests --prefix=$output_path
make && make install
function clear_files {
    rm -rf $output_path/bin
    rm -rf $output_path/share
    rm -rf $output_path/lib/engines*
    rm -rf $output_path/lib/pkgconfig
    rm -rf $output_path/lib/ossl-modules
    rm -rf $output_path/ssl
    echo "Build completed!"
}
clear_files
make clean
cd ..


file_name=openssl-3.1.0_armeabi-v7a.7z
7z a $file_name $output_path


#############arm64-v8a##################
GCC_VERSION=4.9

if [ ! -f "android-ndk-r22b-linux-x86_64.zip" ];then
    sudo apt install p7zip-full
    sudo apt -yqq update && sudo apt install -yqq aria2 
    aria2c https://dl.google.com/android/repository/android-ndk-r22b-linux-x86_64.zip
    unzip android-ndk-r22b-linux-x86_64.zip >/dev/null 2>&1
    aria2c https://www.openssl.org/source/openssl-3.1.0.tar.gz
    tar -zxf openssl-3.1.0.tar.gz
fi


echo "start build....."
export ANDROID_NDK_ROOT=$PWD/android-ndk-r22b

PATH=$ANDROID_NDK_ROOT/toolchains/llvm/prebuilt/linux-x86_64/bin:$ANDROID_NDK_ROOT/toolchains/arm-linux-androideabi-4.9/prebuilt/linux-x86_64/bin:$ANDROID_NDK_ROOT/toolchains/aarch64-linux-android-4.9/prebuilt/linux-x86_64/bin:$PATH



output_path=$PWD/arm64-v8a
mkdir -p $output_path


cd openssl-3.1.0
./Configure android-arm64 -D__ANDROID_API__=21 -static -fPIC no-shared no-tests --prefix=$output_path
make && make install
function clear_files {
    rm -rf $output_path/bin
    rm -rf $output_path/share
    rm -rf $output_path/lib/engines*
    rm -rf $output_path/lib/pkgconfig
    rm -rf $output_path/lib/ossl-modules
    rm -rf $output_path/ssl
    echo "Build completed!"
}
clear_files
make clean
cd ..


file_name=openssl-3.1.0_arm64-v8a.7z
7z a $file_name $output_path


#############x86##################
GCC_VERSION=4.9

if [ ! -f "android-ndk-r22b-linux-x86_64.zip" ];then
    sudo apt install p7zip-full
    sudo apt -yqq update && sudo apt install -yqq aria2 
    aria2c https://dl.google.com/android/repository/android-ndk-r22b-linux-x86_64.zip
    unzip android-ndk-r22b-linux-x86_64.zip >/dev/null 2>&1
    aria2c https://www.openssl.org/source/openssl-3.1.0.tar.gz
    tar -zxf openssl-3.1.0.tar.gz
fi


echo "start build....."
export ANDROID_NDK_ROOT=$PWD/android-ndk-r22b

PATH=$ANDROID_NDK_ROOT/toolchains/llvm/prebuilt/linux-x86_64/bin:$ANDROID_NDK_ROOT/toolchains/arm-linux-androideabi-4.9/prebuilt/linux-x86_64/bin:$ANDROID_NDK_ROOT/toolchains/aarch64-linux-android-4.9/prebuilt/linux-x86_64/bin:$PATH



output_path=$PWD/x86
mkdir -p $output_path


cd openssl-3.1.0
./Configure android-x86 -D__ANDROID_API__=21 -static -fPIC no-shared no-tests --prefix=$output_path
make && make install
function clear_files {
    rm -rf $output_path/bin
    rm -rf $output_path/share
    rm -rf $output_path/lib/engines*
    rm -rf $output_path/lib/pkgconfig
    rm -rf $output_path/lib/ossl-modules
    rm -rf $output_path/ssl
    echo "Build completed!"
}
clear_files
make clean
cd ..


file_name=openssl-3.1.0_x86.7z
7z a $file_name $output_path


#############x86-64##################
GCC_VERSION=4.9

if [ ! -f "android-ndk-r22b-linux-x86_64.zip" ];then
    sudo apt install p7zip-full
    sudo apt -yqq update && sudo apt install -yqq aria2 
    aria2c https://dl.google.com/android/repository/android-ndk-r22b-linux-x86_64.zip
    unzip android-ndk-r22b-linux-x86_64.zip >/dev/null 2>&1
    aria2c https://www.openssl.org/source/openssl-3.1.0.tar.gz
    tar -zxf openssl-3.1.0.tar.gz
fi


echo "start build....."
export ANDROID_NDK_ROOT=$PWD/android-ndk-r22b

PATH=$ANDROID_NDK_ROOT/toolchains/llvm/prebuilt/linux-x86_64/bin:$ANDROID_NDK_ROOT/toolchains/arm-linux-androideabi-4.9/prebuilt/linux-x86_64/bin:$ANDROID_NDK_ROOT/toolchains/aarch64-linux-android-4.9/prebuilt/linux-x86_64/bin:$PATH



output_path=$PWD/x86-64
mkdir -p $output_path


cd openssl-3.1.0
./Configure android-x86_64 -D__ANDROID_API__=21 -static -fPIC no-shared no-tests --prefix=$output_path
make && make install
function clear_files {
    rm -rf $output_path/bin
    rm -rf $output_path/share
    rm -rf $output_path/lib/engines*
    rm -rf $output_path/lib/pkgconfig
    rm -rf $output_path/lib/ossl-modules
    rm -rf $output_path/ssl
    echo "Build completed!"
}
clear_files
make clean
cd ..


file_name=openssl-3.1.0_x86-64.7z
7z a $file_name $output_path


