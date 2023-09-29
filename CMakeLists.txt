cmake_minimum_required(VERSION 2.8.12)

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
set(CMAKE_C_STANDARD 99)
set(CMAKE_C_STANDARD_REQUIRED ON)
set(CMAKE_C_EXTENSIONS OFF)

option(RXI_LOG_ENABLE_COLOR "Enable Colored Output" ON)
project(rxi_log C CXX)
add_library(rxi_log STATIC src/log.c)
target_include_directories(rxi_log PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/include/)

if(RXI_LOG_ENABLE_COLOR)
	target_compile_definitions(rxi_log PUBLIC LOG_USE_COLOR)
endif()

