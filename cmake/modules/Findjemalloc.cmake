# - Locate jemalloc library
#
# Defines:
#
# JEMALLOC_FOUND
# JEMALLOC_LIBRARIES
# JEMALLOC_INCLUDE_DIR

find_path(JEMALLOC_ROOT_DIR NAMES include/jemalloc/jemalloc.h)
find_library(JEMALLOC_LIBRARIES NAMES jemalloc HINTS ${JEMALLOC_ROOT_DIR}/lib)
find_path(JEMALLOC_INCLUDE_DIR NAMES jemalloc/jemalloc.h HINTS ${JEMALLOC_ROOT_DIR}/include)

include(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(jemalloc DEFAULT_MSG JEMALLOC_LIBRARIES JEMALLOC_INCLUDE_DIR)

mark_as_advanced(JEMALLOC_FOUND JEMALLOC_LIBRARIES JEMALLOC_INCLUDE_DIR)
