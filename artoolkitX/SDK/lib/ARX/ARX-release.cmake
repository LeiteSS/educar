#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "ARX" for configuration "Release"
set_property(TARGET ARX APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(ARX PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/x86_64/libARX.so"
  IMPORTED_SONAME_RELEASE "libARX.so"
  )

list(APPEND _IMPORT_CHECK_TARGETS ARX )
list(APPEND _IMPORT_CHECK_FILES_FOR_ARX "${_IMPORT_PREFIX}/lib/x86_64/libARX.so" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
