# The following lines of boilerplate have to be in your project's
# CMakeLists in this exact order for cmake to work correctly
cmake_minimum_required(VERSION 3.5)



aux_source_directory(. SUBSRCS)


set(SRC_S "")
foreach(srcs ${SUBSRCS}) 
     set(TEMPVAL ${CMAKE_CURRENT_LIST_DIR}/${srcs})
     list(APPEND SRC_S ${TEMPVAL})
endforeach() 

list (APPEND PRJ_INC_DIR ${CMAKE_CURRENT_LIST_DIR})
list (APPEND PRJ_SRCS ${SRC_S})

set(PRJ_SRCS ${PRJ_SRCS} PARENT_SCOPE)
set(PRJ_INC_DIR ${PRJ_INC_DIR} PARENT_SCOPE)