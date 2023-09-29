cmake_minimum_required(VERSION 2.8.12)

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
set(CMAKE_C_STANDARD 99)
set(CMAKE_C_STANDARD_REQUIRED ON)
set(CMAKE_C_EXTENSIONS OFF)

option(EnableColor "Enable Colored Output" ON)

project(rxi_log C CXX)

file(GLOB SRC_FILES src/log.c)
add_library(rxi_log STATIC ${SRC_FILES})
target_include_directories(rxi_log PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/include/)

if(EnableColor)
	target_compile_definitions(rxi_log PUBLIC LOG_USE_COLOR)
endif()

