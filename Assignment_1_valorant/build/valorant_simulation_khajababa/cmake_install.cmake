# Install script for directory: /Users/khajababa/Documents/Work/ROS/Assignment_1_valorant/src/valorant_simulation_khajababa

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/Users/khajababa/Documents/Work/ROS/Assignment_1_valorant/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
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

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/Users/khajababa/miniconda3/envs/ROS/bin/llvm-objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/valorant_simulation_khajababa/msg" TYPE FILE FILES "/Users/khajababa/Documents/Work/ROS/Assignment_1_valorant/src/valorant_simulation_khajababa/msg/valorant.msg")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/valorant_simulation_khajababa/cmake" TYPE FILE FILES "/Users/khajababa/Documents/Work/ROS/Assignment_1_valorant/build/valorant_simulation_khajababa/catkin_generated/installspace/valorant_simulation_khajababa-msg-paths.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/Users/khajababa/Documents/Work/ROS/Assignment_1_valorant/devel/include/valorant_simulation_khajababa")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/Users/khajababa/Documents/Work/ROS/Assignment_1_valorant/devel/share/roseus/ros/valorant_simulation_khajababa")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/Users/khajababa/Documents/Work/ROS/Assignment_1_valorant/devel/share/common-lisp/ros/valorant_simulation_khajababa")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/Users/khajababa/Documents/Work/ROS/Assignment_1_valorant/devel/share/gennodejs/ros/valorant_simulation_khajababa")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/Users/khajababa/miniconda3/envs/ROS/bin/python3.9" -m compileall "/Users/khajababa/Documents/Work/ROS/Assignment_1_valorant/devel/lib/python3.9/site-packages/valorant_simulation_khajababa")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.9/site-packages" TYPE DIRECTORY FILES "/Users/khajababa/Documents/Work/ROS/Assignment_1_valorant/devel/lib/python3.9/site-packages/valorant_simulation_khajababa")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/Users/khajababa/Documents/Work/ROS/Assignment_1_valorant/build/valorant_simulation_khajababa/catkin_generated/installspace/valorant_simulation_khajababa.pc")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/valorant_simulation_khajababa/cmake" TYPE FILE FILES "/Users/khajababa/Documents/Work/ROS/Assignment_1_valorant/build/valorant_simulation_khajababa/catkin_generated/installspace/valorant_simulation_khajababa-msg-extras.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/valorant_simulation_khajababa/cmake" TYPE FILE FILES
    "/Users/khajababa/Documents/Work/ROS/Assignment_1_valorant/build/valorant_simulation_khajababa/catkin_generated/installspace/valorant_simulation_khajababaConfig.cmake"
    "/Users/khajababa/Documents/Work/ROS/Assignment_1_valorant/build/valorant_simulation_khajababa/catkin_generated/installspace/valorant_simulation_khajababaConfig-version.cmake"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/valorant_simulation_khajababa" TYPE FILE FILES "/Users/khajababa/Documents/Work/ROS/Assignment_1_valorant/src/valorant_simulation_khajababa/package.xml")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/valorant_simulation_khajababa" TYPE PROGRAM FILES "/Users/khajababa/Documents/Work/ROS/Assignment_1_valorant/build/valorant_simulation_khajababa/catkin_generated/installspace/agent_controller.py")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/valorant_simulation_khajababa" TYPE PROGRAM FILES "/Users/khajababa/Documents/Work/ROS/Assignment_1_valorant/build/valorant_simulation_khajababa/catkin_generated/installspace/sage_the_healer.py")
endif()

