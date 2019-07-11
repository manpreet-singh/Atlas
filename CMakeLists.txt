cmake_minimum_required(VERSION 3.10)
project(Atlas)

set(CMAKE_CXX_STANDARD 17)
set(SFML_DIR "${CMAKE_CURRENT_SOURCE_DIR}/cmake_config")
set(SFML_STATIC_LIBRARIES TRUE)

include_directories(${CMAKE_CURRENT_SOURCE_DIR}/src)

file(GLOB_RECURSE SOURCE_FILES
        "${CMAKE_CURRENT_SOURCE_DIR}/src/*.cpp" ,
        "${CMAKE_CURRENT_SOURCE_DIR}/src/*.h"
        )

add_executable(Atlas ${SOURCE_FILES})



