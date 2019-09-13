cmake_minimum_required(VERSION 3.10)
project(Atlas)

set(CMAKE_CXX_STANDARD 17)
set(SYS_ARCH ${CMAKE_SYSTEM_PROCESSOR})

if(${SYS_ARCH} STREQUAL "x86_64")
        set(CMAKE_SYSTEM_NAME Linux)
        set(CMAKE_SYSTEM_PROCESSOR arm)
        set(CMAKE_C_COMPILER "arm-linux-gnueabihf-gcc")
        set(CMAKE_CXX_COMPILER "arm-linux-gnueabihf-g++")
endif()


include_directories(${CMAKE_CURRENT_SOURCE_DIR}/src)

file(GLOB_RECURSE SOURCE_FILES
        #"${CMAKE_CURRENT_SOURCE_DIR}/src/*.c",
        "${CMAKE_CURRENT_SOURCE_DIR}/src/*.cpp" ,
        "${CMAKE_CURRENT_SOURCE_DIR}/src/*.h"
        )

add_executable(Atlas ${SOURCE_FILES})


