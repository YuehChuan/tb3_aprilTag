# Install script for directory: /home/schwarm/tb3_aprilTag/catkin_ws/src/turtlebot3_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/schwarm/tb3_aprilTag/catkin_ws/install")
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

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turtlebot3_msgs/msg" TYPE FILE FILES
    "/home/schwarm/tb3_aprilTag/catkin_ws/src/turtlebot3_msgs/msg/SensorState.msg"
    "/home/schwarm/tb3_aprilTag/catkin_ws/src/turtlebot3_msgs/msg/MotorPower.msg"
    "/home/schwarm/tb3_aprilTag/catkin_ws/src/turtlebot3_msgs/msg/VersionInfo.msg"
    "/home/schwarm/tb3_aprilTag/catkin_ws/src/turtlebot3_msgs/msg/PanoramaImg.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turtlebot3_msgs/srv" TYPE FILE FILES
    "/home/schwarm/tb3_aprilTag/catkin_ws/src/turtlebot3_msgs/srv/TakePanorama.srv"
    "/home/schwarm/tb3_aprilTag/catkin_ws/src/turtlebot3_msgs/srv/SetFollowState.srv"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turtlebot3_msgs/cmake" TYPE FILE FILES "/home/schwarm/tb3_aprilTag/catkin_ws/build/turtlebot3_msgs/catkin_generated/installspace/turtlebot3_msgs-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/schwarm/tb3_aprilTag/catkin_ws/devel/include/turtlebot3_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/schwarm/tb3_aprilTag/catkin_ws/devel/share/roseus/ros/turtlebot3_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/schwarm/tb3_aprilTag/catkin_ws/devel/share/common-lisp/ros/turtlebot3_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/schwarm/tb3_aprilTag/catkin_ws/devel/share/gennodejs/ros/turtlebot3_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/schwarm/tb3_aprilTag/catkin_ws/devel/lib/python2.7/dist-packages/turtlebot3_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/schwarm/tb3_aprilTag/catkin_ws/devel/lib/python2.7/dist-packages/turtlebot3_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/schwarm/tb3_aprilTag/catkin_ws/build/turtlebot3_msgs/catkin_generated/installspace/turtlebot3_msgs.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turtlebot3_msgs/cmake" TYPE FILE FILES "/home/schwarm/tb3_aprilTag/catkin_ws/build/turtlebot3_msgs/catkin_generated/installspace/turtlebot3_msgs-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turtlebot3_msgs/cmake" TYPE FILE FILES
    "/home/schwarm/tb3_aprilTag/catkin_ws/build/turtlebot3_msgs/catkin_generated/installspace/turtlebot3_msgsConfig.cmake"
    "/home/schwarm/tb3_aprilTag/catkin_ws/build/turtlebot3_msgs/catkin_generated/installspace/turtlebot3_msgsConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turtlebot3_msgs" TYPE FILE FILES "/home/schwarm/tb3_aprilTag/catkin_ws/src/turtlebot3_msgs/package.xml")
endif()

