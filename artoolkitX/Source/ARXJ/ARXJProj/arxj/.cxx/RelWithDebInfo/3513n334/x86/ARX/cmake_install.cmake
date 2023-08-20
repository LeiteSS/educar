# Install script for directory: /bitrise/src/Source/ARX

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/bitrise/src/Source/../SDK")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "RelWithDebInfo")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "TRUE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/opt/android-sdk-linux/ndk/21.4.7075529/toolchains/llvm/prebuilt/linux-x86_64/bin/i686-linux-android-objdump")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/x86" TYPE SHARED_LIBRARY FILES "/bitrise/src/Source/ARXJ/ARXJProj/arxj/build/intermediates/cxx/RelWithDebInfo/3513n334/obj/x86/libARX.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/x86/libARX.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/x86/libARX.so")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/opt/android-sdk-linux/ndk/21.4.7075529/toolchains/llvm/prebuilt/linux-x86_64/bin/i686-linux-android-strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/x86/libARX.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ARX" TYPE FILE FILES
    "/bitrise/src/Source/ARX/include/ARX/ARX_c.h"
    "/bitrise/src/Source/ARX/include/ARX/ARController.h"
    "/bitrise/src/Source/ARX/include/ARX/ARTrackable.h"
    "/bitrise/src/Source/ARX/include/ARX/ARTrackableMultiSquareAuto.h"
    "/bitrise/src/Source/ARX/include/ARX/ARTrackableMultiSquare.h"
    "/bitrise/src/Source/ARX/include/ARX/ARTrackableNFT.h"
    "/bitrise/src/Source/ARX/include/ARX/ARTrackable2d.h"
    "/bitrise/src/Source/ARX/include/ARX/ARTrackableSquare.h"
    "/bitrise/src/Source/ARX/include/ARX/ARTracker.h"
    "/bitrise/src/Source/ARX/include/ARX/ARTrackerVideo.h"
    "/bitrise/src/Source/ARX/include/ARX/ARTrackerNFT.h"
    "/bitrise/src/Source/ARX/include/ARX/ARTracker2d.h"
    "/bitrise/src/Source/ARX/include/ARX/ARTrackerSquare.h"
    "/bitrise/src/Source/ARX/include/ARX/Error.h"
    "/bitrise/src/Source/ARX/include/ARX/Platform.h"
    "/bitrise/src/Source/ARX/include/ARX/ARVideoSource.h"
    "/bitrise/src/Source/ARX/include/ARX/ARVideoView.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ARX/AR" TYPE FILE FILES "/bitrise/src/Source/ARXJ/ARXJProj/arxj/.cxx/RelWithDebInfo/3513n334/x86/ARX/AR/include/ARX/AR/config.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ARX/AR" TYPE FILE FILES "/bitrise/src/Source/ARX/AR/include/ARX/AR/ar.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ARX/AR" TYPE FILE FILES "/bitrise/src/Source/ARX/AR/include/ARX/AR/arConfig.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ARX/AR" TYPE FILE FILES "/bitrise/src/Source/ARX/AR/include/ARX/AR/arFilterTransMat.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ARX/AR" TYPE FILE FILES "/bitrise/src/Source/ARX/AR/include/ARX/AR/arImageProc.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ARX/AR" TYPE FILE FILES "/bitrise/src/Source/ARX/AR/include/ARX/AR/arMulti.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ARX/AR" TYPE FILE FILES "/bitrise/src/Source/ARX/AR/include/ARX/AR/icp.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ARX/AR" TYPE FILE FILES "/bitrise/src/Source/ARX/AR/include/ARX/AR/icpCalib.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ARX/AR" TYPE FILE FILES "/bitrise/src/Source/ARX/AR/include/ARX/AR/icpCore.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ARX/AR" TYPE FILE FILES "/bitrise/src/Source/ARX/AR/include/ARX/AR/matrix.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ARX/AR" TYPE FILE FILES "/bitrise/src/Source/ARX/AR/include/ARX/AR/param.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ARX/AR" TYPE FILE FILES "/bitrise/src/Source/ARX/AR/include/ARX/AR/paramGL.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ARX/ARVideo" TYPE FILE FILES "/bitrise/src/Source/ARX/ARVideo/include/ARX/ARVideo/video.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ARX/ARVideo" TYPE FILE FILES "/bitrise/src/Source/ARX/ARVideo/include/ARX/ARVideo/videoConfig.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ARX/ARVideo" TYPE FILE FILES "/bitrise/src/Source/ARX/ARVideo/include/ARX/ARVideo/videoLuma.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ARX/ARVideo" TYPE FILE FILES "/bitrise/src/Source/ARX/ARVideo/include/ARX/ARVideo/videoRGBA.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ARX/ARUtil" TYPE FILE FILES "/bitrise/src/Source/ARX/ARUtil/include/ARX/ARUtil/types.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ARX/ARUtil" TYPE FILE FILES "/bitrise/src/Source/ARX/ARUtil/include/ARX/ARUtil/log.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ARX/ARUtil" TYPE FILE FILES "/bitrise/src/Source/ARX/ARUtil/include/ARX/ARUtil/profile.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ARX/ARUtil" TYPE FILE FILES "/bitrise/src/Source/ARX/ARUtil/include/ARX/ARUtil/thread_sub.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ARX/ARUtil" TYPE FILE FILES "/bitrise/src/Source/ARX/ARUtil/include/ARX/ARUtil/system.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ARX/ARUtil" TYPE FILE FILES "/bitrise/src/Source/ARX/ARUtil/include/ARX/ARUtil/android.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ARX/ARUtil" TYPE FILE FILES "/bitrise/src/Source/ARX/ARUtil/include/ARX/ARUtil/time.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ARX/ARUtil" TYPE FILE FILES "/bitrise/src/Source/ARX/ARUtil/include/ARX/ARUtil/file_utils.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ARX/ARUtil" TYPE FILE FILES "/bitrise/src/Source/ARX/ARUtil/include/ARX/ARUtil/image_utils.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ARX/ARG" TYPE FILE FILES "/bitrise/src/Source/ARX/ARG/include/ARX/ARG/arg.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ARX/ARG" TYPE FILE FILES "/bitrise/src/Source/ARX/ARG/include/ARX/ARG/mtx.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ARX/ARG" TYPE FILE FILES "/bitrise/src/Source/ARX/ARG/include/ARX/ARG/glStateCache2.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ARX/ARG" TYPE FILE FILES "/bitrise/src/Source/ARX/ARG/include/ARX/ARG/shader_gl.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ARX/AR2" TYPE FILE FILES "/bitrise/src/Source/ARX/AR2/include/ARX/AR2/config.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ARX/AR2" TYPE FILE FILES "/bitrise/src/Source/ARX/AR2/include/ARX/AR2/coord.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ARX/AR2" TYPE FILE FILES "/bitrise/src/Source/ARX/AR2/include/ARX/AR2/featureSet.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ARX/AR2" TYPE FILE FILES "/bitrise/src/Source/ARX/AR2/include/ARX/AR2/imageFormat.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ARX/AR2" TYPE FILE FILES "/bitrise/src/Source/ARX/AR2/include/ARX/AR2/imageSet.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ARX/AR2" TYPE FILE FILES "/bitrise/src/Source/ARX/AR2/include/ARX/AR2/marker.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ARX/AR2" TYPE FILE FILES "/bitrise/src/Source/ARX/AR2/include/ARX/AR2/searchPoint.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ARX/AR2" TYPE FILE FILES "/bitrise/src/Source/ARX/AR2/include/ARX/AR2/template.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ARX/AR2" TYPE FILE FILES "/bitrise/src/Source/ARX/AR2/include/ARX/AR2/tracking.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ARX/AR2" TYPE FILE FILES "/bitrise/src/Source/ARX/AR2/include/ARX/AR2/util.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ARX/KPM" TYPE FILE FILES "/bitrise/src/Source/ARX/KPM/include/ARX/KPM/kpm.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ARX/KPM" TYPE FILE FILES "/bitrise/src/Source/ARX/KPM/include/ARX/KPM/kpmType.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ARX/OCVT" TYPE FILE FILES "/bitrise/src/Source/ARX/OCVT/include/ARX/OCVT/PlanarTracker.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/x86" TYPE FILE FILES "/opt/android-sdk-linux/ndk/21.4.7075529/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/lib/i686-linux-android/libc++_shared.so")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/ARX/ARX.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/ARX/ARX.cmake"
         "/bitrise/src/Source/ARXJ/ARXJProj/arxj/.cxx/RelWithDebInfo/3513n334/x86/ARX/CMakeFiles/Export/lib/ARX/ARX.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/ARX/ARX-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/ARX/ARX.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/ARX" TYPE FILE FILES "/bitrise/src/Source/ARXJ/ARXJProj/arxj/.cxx/RelWithDebInfo/3513n334/x86/ARX/CMakeFiles/Export/lib/ARX/ARX.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/ARX" TYPE FILE FILES "/bitrise/src/Source/ARXJ/ARXJProj/arxj/.cxx/RelWithDebInfo/3513n334/x86/ARX/CMakeFiles/Export/lib/ARX/ARX-relwithdebinfo.cmake")
  endif()
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/bitrise/src/Source/ARXJ/ARXJProj/arxj/.cxx/RelWithDebInfo/3513n334/x86/ARX/AR/cmake_install.cmake")
  include("/bitrise/src/Source/ARXJ/ARXJProj/arxj/.cxx/RelWithDebInfo/3513n334/x86/ARX/ARVideo/cmake_install.cmake")
  include("/bitrise/src/Source/ARXJ/ARXJProj/arxj/.cxx/RelWithDebInfo/3513n334/x86/ARX/ARUtil/cmake_install.cmake")
  include("/bitrise/src/Source/ARXJ/ARXJProj/arxj/.cxx/RelWithDebInfo/3513n334/x86/ARX/ARG/cmake_install.cmake")
  include("/bitrise/src/Source/ARXJ/ARXJProj/arxj/.cxx/RelWithDebInfo/3513n334/x86/ARX/AR2/cmake_install.cmake")
  include("/bitrise/src/Source/ARXJ/ARXJProj/arxj/.cxx/RelWithDebInfo/3513n334/x86/ARX/KPM/cmake_install.cmake")
  include("/bitrise/src/Source/ARXJ/ARXJProj/arxj/.cxx/RelWithDebInfo/3513n334/x86/ARX/OCVT/cmake_install.cmake")

endif()

