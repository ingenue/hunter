# Copyright (c) 2015, Ruslan Baratov
# All rights reserved.

cmake_minimum_required(VERSION 3.0)

# Emulate HunterGate:
# * https://github.com/hunter-packages/gate
set(TESTING_CONFIG_OPT FILEPATH ${CMAKE_CURRENT_SOURCE_DIR}/cmake/Hunter/config.cmake) # Force OpenSSL 1.1.0a

include("../common.cmake")

project(download-curl)

hunter_add_package(OpenSSL)
find_package(OpenSSL REQUIRED)

# This will now look for OpenSSL again
hunter_add_package(CURL)
find_package(CURL CONFIG REQUIRED)


add_executable(foo foo.cpp)


target_link_libraries(foo PRIVATE CURL::libcurl OpenSSL::SSL)
