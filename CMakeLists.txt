cmake_minimum_required(VERSION 3.7)
project(Atlas VERSION 0.1)
set(CMAKE_CXX_STANDARD 14)
add_subdirectory(src)



# include_directories(${CMAKE_CURRENT_SOURCE_DIR}/src)

# file(GLOB_RECURSE SOURCE_FILES
#         "${CMAKE_CURRENT_SOURCE_DIR}/src/*.cpp" ,
#         "${CMAKE_CURRENT_SOURCE_DIR}/include/*.h"
#         )

# add_executable(Atlas ${SOURCE_FILES})
# include_directories(${CMAKE_CURRENT_SOURCE_DIR}/include)
# target_include_directories(Atlas PUBLIC /usr/local/include/ ${CMAKE_CURRENT_SOURCE_DIR}/include)
# target_link_libraries(Atlas -pthread)
