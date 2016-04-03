# Copyright (c) 2016, Alexander Lamaison
# All rights reserved.

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_cmake_args)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
    PACKAGE_NAME
    Expat
    VERSION
    "2.1.0"
    URL
    "https://github.com/alamaison/expat/archive/R_2_1_0-hunter.tar.gz"
    SHA1
    41fdd3c882a2270c65aba8104615b8976af6acbe
)

hunter_add_version(
    PACKAGE_NAME
    Expat
    VERSION
    "2.1.1"
    URL
    "https://github.com/alamaison/expat/archive/R_2_1_1-hunter.tar.gz"
    SHA1
    10f3b5856624892bf0713c018123e4a01dbbc008
)

hunter_cmake_args(
  Expat
  CMAKE_ARGS
    BUILD_tools=OFF
    BUILD_examples=OFF
    BUILD_tests=OFF
    BUILD_shared=OFF
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(Expat)
hunter_download(PACKAGE_NAME Expat)
