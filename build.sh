#!/bin/bash

if [ -d "cmake-build-debug" ]
then
    echo "Build Directory already Exists"
    cd cmake-build-debug
    rm -r *
else
    echo "Making Build Directory"
    mkdir cmake-build-debug
    cd cmake-build-debug
fi

cmake ..
make

cd ../
bash deploy.sh