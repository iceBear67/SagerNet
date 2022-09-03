#!/bin/bash

source "bin/init/env.sh"
source "bin/plugin/sosistab/build.sh"

DIR="$ROOT/x86"
mkdir -p $DIR

export CC=$ANDROID_X86_CC_21
export CXX=$ANDROID_X86_CXX_21
export RUST_ANDROID_GRADLE_CC=$ANDROID_X86_CC_21
export CARGO_TARGET_I686_LINUX_ANDROID_LINKER=$PROJECT/bin/rust-linker/linker-wrapper.sh

cargo build --release --target i686-linux-android
cp target/i686-linux-android/release/geph4-client $DIR/$LIB_OUTPUT
