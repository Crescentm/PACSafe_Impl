cmake_minimum_required(VERSION 3.5)
project(PACPass)

find_package(LLVM REQUIRED CONFIG)

set(DCMAKE_EXPORT_COMPILE_COMMANDS,1)
separate_arguments(LLVM_DEFINITIONS_LIST NATIVE_COMMAND ${LLVM_DEFINITIONS})
add_definitions(${LLVM_DEFINITIONS_LIST})
include_directories(${LLVM_INCLUDE_DIRS})

add_subdirectory(PACPass)