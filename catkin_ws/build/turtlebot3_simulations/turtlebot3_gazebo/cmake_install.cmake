# Install script for directory: /home/schwarm/tb3_aprilTag/catkin_ws/src/turtlebot3_simulations/turtlebot3_gazebo

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/schwarm/tb3_aprilTag/catkin_ws/build/turtlebot3_simulations/turtlebot3_gazebo/catkin_generated/installspace/turtlebot3_gazebo.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turtlebot3_gazebo/cmake" TYPE FILE FILES
    "/home/schwarm/tb3_aprilTag/catkin_ws/build/turtlebot3_simulations/turtlebot3_gazebo/catkin_generated/installspace/turtlebot3_gazeboConfig.cmake"
    "/home/schwarm/tb3_aprilTag/catkin_ws/build/turtlebot3_simulations/turtlebot3_gazebo/catkin_generated/installspace/turtlebot3_gazeboConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turtlebot3_gazebo" TYPE FILE FILES "/home/schwarm/tb3_aprilTag/catkin_ws/src/turtlebot3_simulations/turtlebot3_gazebo/package.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/turtlebot3_gazebo/gazebo_ros_turtlebot3" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/turtlebot3_gazebo/gazebo_ros_turtlebot3")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/turtlebot3_gazebo/gazebo_ros_turtlebot3"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/turtlebot3_gazebo" TYPE EXECUTABLE FILES "/home/schwarm/tb3_aprilTag/catkin_ws/devel/lib/turtlebot3_gazebo/gazebo_ros_turtlebot3")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/turtlebot3_gazebo/gazebo_ros_turtlebot3" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/turtlebot3_gazebo/gazebo_ros_turtlebot3")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/turtlebot3_gazebo/gazebo_ros_turtlebot3"
         OLD_RPATH "/usr/lib/x86_64-linux-gnu/gazebo-8/plugins:/opt/ros/kinetic/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/turtlebot3_gazebo/gazebo_ros_turtlebot3")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/turtlebot3_gazebo" TYPE DIRECTORY FILES "/home/schwarm/tb3_aprilTag/catkin_ws/src/turtlebot3_simulations/turtlebot3_gazebo/include/turtlebot3_gazebo/")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turtlebot3_gazebo" TYPE DIRECTORY FILES "/home/schwarm/tb3_aprilTag/catkin_ws/src/turtlebot3_simulations/turtlebot3_gazebo/launch")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turtlebot3_gazebo" TYPE DIRECTORY FILES "/home/schwarm/tb3_aprilTag/catkin_ws/src/turtlebot3_simulations/turtlebot3_gazebo/rviz")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turtlebot3_gazebo" TYPE DIRECTORY FILES "/home/schwarm/tb3_aprilTag/catkin_ws/src/turtlebot3_simulations/turtlebot3_gazebo/models")
endif()

