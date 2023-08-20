#----------------------------------------------------------------
# Generated CMake target import file for configuration "RelWithDebInfo".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "ARX" for configuration "RelWithDebInfo"
set_property(TARGET ARX APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(ARX PROPERTIES
  IMPORTED_LOCATION_RELWITHDEBINFO "${_IMPORT_PREFIX}/lib/armeabi-v7a/libARX.so"
  IMPORTED_SONAME_RELWITHDEBINFO "libARX.so"
  )

list(APPEND _IMPORT_CHECK_TARGETS ARX )
list(APPEND _IMPORT_CHECK_FILES_FOR_ARX "${_IMPORT_PREFIX}/lib/armeabi-v7a/libARX.so" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
