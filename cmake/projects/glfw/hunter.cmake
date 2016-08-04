# Copyright (c) 2016, Alexandre Pretyman
# All rights reserved.

include(hunter_add_version)
include(hunter_pick_scheme)
include(hunter_cacheable)
include(hunter_download)

hunter_add_version(
    PACKAGE_NAME
    glfw
    VERSION
    "3.2"
    URL
    "https://github.com/hunter-packages/glfw/archive/hunter-3.2.tar.gz"
    SHA1
    abf5482918d8016ef0134a62bf0327c299f77aae
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(glfw)
hunter_download(PACKAGE_NAME glfw)

