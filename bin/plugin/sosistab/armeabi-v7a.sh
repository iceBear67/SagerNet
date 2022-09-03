#!/bin/bash

source "bin/init/env.sh"
source "bin/plugin/sosistab/build.sh"

DIR="$ROOT/armeabi-v7a"
mkdir -p $DIR

export CC=$ANDROID_ARM_CC_21
export CXX=$ANDROID_ARM_CXX_21
export RUST_ANDROID_GRADLE_CC=$ANDROID_ARM_CC_21
export CARGO_TARGET_ARMV7_LINUX_ANDROIDEABI_LINKER=$PROJECT/bin/rust-linker/linker-wrapper.sh

cargo build --release --target armv7-linux-androideabi
cp target/armv7-linux-androideabi/release/geph4-client $DIR/$LIB_OUTPUT
