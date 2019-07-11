#!/bin/bash

if [ -d "cmake-build-debug" ]
then
    echo "Directly already Exists"
    cd cmake-build-debug
    rm -r *
else
    echo "Making Build Directory"
    mkdir cmake-build-debug
    cd cmake-build-debug
fi

cmake ..
make