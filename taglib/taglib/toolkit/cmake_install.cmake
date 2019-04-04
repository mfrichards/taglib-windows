# Install script for directory: C:/taglib/taglib/taglib/toolkit

# Set the install prefix
IF(NOT DEFINED CMAKE_INSTALL_PREFIX)
  SET(CMAKE_INSTALL_PREFIX "C:/Program Files/taglib")
ENDIF(NOT DEFINED CMAKE_INSTALL_PREFIX)
STRING(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
IF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  IF(BUILD_TYPE)
    STRING(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  ELSE(BUILD_TYPE)
    SET(CMAKE_INSTALL_CONFIG_NAME "Debug")
  ENDIF(BUILD_TYPE)
  MESSAGE(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
ENDIF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)

# Set the component getting installed.
IF(NOT CMAKE_INSTALL_COMPONENT)
  IF(COMPONENT)
    MESSAGE(STATUS "Install component: \"${COMPONENT}\"")
    SET(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  ELSE(COMPONENT)
    SET(CMAKE_INSTALL_COMPONENT)
  ENDIF(COMPONENT)
ENDIF(NOT CMAKE_INSTALL_COMPONENT)

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "C:/Program Files/taglib/include/taglib/taglib.h;C:/Program Files/taglib/include/taglib/tstring.h;C:/Program Files/taglib/include/taglib/tlist.h;C:/Program Files/taglib/include/taglib/tlist.tcc;C:/Program Files/taglib/include/taglib/tstringlist.h;C:/Program Files/taglib/include/taglib/tbytevector.h;C:/Program Files/taglib/include/taglib/tbytevectorlist.h;C:/Program Files/taglib/include/taglib/tfile.h;C:/Program Files/taglib/include/taglib/tmap.h;C:/Program Files/taglib/include/taglib/tmap.tcc")
  IF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
  IF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
FILE(INSTALL DESTINATION "C:/Program Files/taglib/include/taglib" TYPE FILE FILES
    "C:/taglib/taglib/taglib/toolkit/taglib.h"
    "C:/taglib/taglib/taglib/toolkit/tstring.h"
    "C:/taglib/taglib/taglib/toolkit/tlist.h"
    "C:/taglib/taglib/taglib/toolkit/tlist.tcc"
    "C:/taglib/taglib/taglib/toolkit/tstringlist.h"
    "C:/taglib/taglib/taglib/toolkit/tbytevector.h"
    "C:/taglib/taglib/taglib/toolkit/tbytevectorlist.h"
    "C:/taglib/taglib/taglib/toolkit/tfile.h"
    "C:/taglib/taglib/taglib/toolkit/tmap.h"
    "C:/taglib/taglib/taglib/toolkit/tmap.tcc"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

