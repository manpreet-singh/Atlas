include_directories(${Atlas_SOURCE_DIR}/include)

file(GLOB_RECURSE SOURCE_FILES
        "${CMAKE_CURRENT_SOURCE_DIR}/src/*.cpp" ,
        "${CMAKE_CURRENT_SOURCE_DIR}/include/*.h"
        )

add_executable(Atlas ${SOURCE_FILES})
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/include)
target_include_directories(Atlas PUBLIC /usr/local/include/ ${CMAKE_CURRENT_SOURCE_DIR}/include)
target_link_libraries(Atlas -pthread)
