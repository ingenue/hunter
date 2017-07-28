cmake_minimum_required(VERSION 3.3)

include("../common.cmake")

set(CMAKE_CXX_STANDARD 11)
set(CXX_STANDARD_REQUIRED ON)

project(download-wdc)

hunter_add_package(WDC)
find_package(WDC CONFIG REQUIRED)

hunter_add_package(OpenSSL)
find_package(OpenSSL REQUIRED)
hunter_add_package(CURL)
find_package(CURL CONFIG REQUIRED)
hunter_add_package(pugixml)
find_package(pugixml CONFIG REQUIRED)

add_executable(example init.cpp)
target_link_libraries(example WDC::libwdc)
