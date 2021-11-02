# The following lines of boilerplate have to be in your project's
# CMakeLists in this exact order for cmake to work correctly
cmake_minimum_required(VERSION 3.5)

project(prj)

set(PRJ_SRCS "")
set(PRJ_INC_DIR "")
message("target-->:${TARGET}")


if("${TARGET}" STREQUAL "esp32")
    # Include for ESP-IDF build system functions
    include($ENV{IDF_PATH}/tools/cmake/idf.cmake)
    # Create idf::esp32 and idf::freertos static libraries
    message("==================Build Process Begin==================")
    idf_build_process(esp32
                    COMPONENTS esp32 freertos esptool_py
                    SDKCONFIG ${CMAKE_CURRENT_LIST_DIR}/sdkconfig
                    BUILD_DIR ${CMAKE_BINARY_DIR})
    message("==================Build Process End==================")
                  
else()

endif()

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)


message("==================User Code Begin==================")
add_subdirectory(${CMAKE_CURRENT_LIST_DIR}/Src) 
include_directories(${PRJ_INC_DIR})
message(">>SRC:${PRJ_SRCS}")
message(">>INC:${PRJ_INC_DIR}")
message("==================User Code End==================")
set(elf_file ${CMAKE_PROJECT_NAME}.elf)
add_executable(${elf_file} ${PRJ_SRCS})

# Link the static libraries to the executable
if("${TARGET}" STREQUAL "esp32")
    target_link_libraries(${elf_file} idf::esp32 idf::freertos idf::spi_flash)
    # Attach additional targets to the executable file for flashing,
    # linker script generation, partition_table generation, etc.
    idf_build_executable(${elf_file})
else()
    
endif()




