include_directories(${Atlas_SOURCE_DIR}/include)

file(GLOB_RECURSE SOURCE_FILES
        "${CMAKE_CURRENT_SOURCE_DIR}/*.cpp" ,
        "${CMAKE_CURRENT_SOURCE_DIR}/*.h"
        )

add_executable(Atlas ${SOURCE_FILES})
include_directories(${Atlas_SOURCE_DIR}/include)
target_include_directories(Atlas PUBLIC /usr/local/include/)
target_link_libraries(Atlas)
