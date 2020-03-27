#!/bin/bash

if [ -d "cmake-build-debug" ]
then
    echo "Using existing build directory"
    cd cmake-build-debug
else
    echo "Making Build Directory"
    mkdir cmake-build-debug
    cd cmake-build-debug
fi

cmake ..
make

cd ../
#bash deploy.sh
