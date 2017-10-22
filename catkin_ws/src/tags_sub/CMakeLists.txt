cmake_minimum_required(VERSION 2.8.3)
project(tags_sub)
add_definitions(-std=c++11)

find_package(catkin REQUIRED COMPONENTS
  apriltags
  roscpp
  rospy
  std_msgs
  rapyuta_msgs
  sensor_msgs
  message_generation
  cmake_modules
  tf
  cmake_modules
  message_filters
  geometry_msgs
)

## System dependencies are found with CMake's conventions
find_package(Boost REQUIRED COMPONENTS system signals regex date_time program_options thread)


include(FindPkgConfig)
pkg_check_modules(Yaml REQUIRED yaml-cpp)

find_package( Sophus REQUIRED )
find_package(Eigen REQUIRED)


## without catkin include sophus ,eigen3
#include_directories(
#    /usr/include/eigen3
#    /usr/local/include/sophus
#    )


## Generate messages in the 'msg' folder
#add_message_files(DIRECTORY msg FILES
#      AprilTagDetection.msg
#      AprilTagDetections.msg
#)

## Generate services in the 'srv' folder
# add_service_files(
#   FILES
#   Service1.srv
#   Service2.srv
# )

## Generate actions in the 'action' folder
# add_action_files(
#   FILES
#   Action1.action
#   Action2.action
# )

## Generate added messages and services with any dependencies listed here
generate_messages(DEPENDENCIES
    geometry_msgs
    std_msgs
    rapyuta_msgs
)

catkin_package(
  INCLUDE_DIRS include

  CATKIN_DEPENDS
  message_runtime
  message_filters
  std_msgs

  DEPENDS eigen
)

###########
## Build ##
###########

## Specify additional locations of header files
## Your package locations should be listed before other locations
# include_directories(include)
include_directories(
     include
  ${catkin_INCLUDE_DIRS}
  ${Yaml_INCLUDE_DIRS}
  ${Boost_INCLUDE_DIRS}
  ${Sophus_INCLUDE_DIRS}
  ${EIGEN_INCLUDE_DIRS}
)

add_executable(tags_sub src/node_tags_sub.cpp src/tags_sub.cpp)

add_dependencies(tags_sub tags_sub_generate_messages_cpp)

target_link_libraries(tags_sub ${catkin_LIBRARIES} ${Sophus_LIBRARIES})
