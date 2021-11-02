# The following lines of boilerplate have to be in your project's
# CMakeLists in this exact order for cmake to work correctly
cmake_minimum_required(VERSION 3.5)

add_subdirectory(CFG)
add_subdirectory(Hal)
add_subdirectory(MiddleLayer)
add_subdirectory(APP)
add_subdirectory(User)

set(PRJ_SRCS ${PRJ_SRCS} PARENT_SCOPE)
set(PRJ_INC_DIR ${PRJ_INC_DIR} PARENT_SCOPE)

