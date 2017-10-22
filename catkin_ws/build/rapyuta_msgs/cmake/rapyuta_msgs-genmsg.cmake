# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "rapyuta_msgs: 3 messages, 0 services")

set(MSG_I_FLAGS "-Irapyuta_msgs:/home/schwarm/tb3_aprilTag/catkin_ws/src/rapyuta_msgs/msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/kinetic/share/sensor_msgs/cmake/../msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(rapyuta_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/schwarm/tb3_aprilTag/catkin_ws/src/rapyuta_msgs/msg/AprilTagDetection.msg" NAME_WE)
add_custom_target(_rapyuta_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rapyuta_msgs" "/home/schwarm/tb3_aprilTag/catkin_ws/src/rapyuta_msgs/msg/AprilTagDetection.msg" "geometry_msgs/Quaternion:geometry_msgs/Point32:geometry_msgs/Pose:std_msgs/Header:geometry_msgs/Point"
)

get_filename_component(_filename "/home/schwarm/tb3_aprilTag/catkin_ws/src/rapyuta_msgs/msg/AprilTagDetections.msg" NAME_WE)
add_custom_target(_rapyuta_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rapyuta_msgs" "/home/schwarm/tb3_aprilTag/catkin_ws/src/rapyuta_msgs/msg/AprilTagDetections.msg" "std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/Point32:geometry_msgs/Point:rapyuta_msgs/AprilTagDetection:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/schwarm/tb3_aprilTag/catkin_ws/src/rapyuta_msgs/msg/pose.msg" NAME_WE)
add_custom_target(_rapyuta_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rapyuta_msgs" "/home/schwarm/tb3_aprilTag/catkin_ws/src/rapyuta_msgs/msg/pose.msg" "std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(rapyuta_msgs
  "/home/schwarm/tb3_aprilTag/catkin_ws/src/rapyuta_msgs/msg/AprilTagDetection.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rapyuta_msgs
)
_generate_msg_cpp(rapyuta_msgs
  "/home/schwarm/tb3_aprilTag/catkin_ws/src/rapyuta_msgs/msg/AprilTagDetections.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/schwarm/tb3_aprilTag/catkin_ws/src/rapyuta_msgs/msg/AprilTagDetection.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rapyuta_msgs
)
_generate_msg_cpp(rapyuta_msgs
  "/home/schwarm/tb3_aprilTag/catkin_ws/src/rapyuta_msgs/msg/pose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rapyuta_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(rapyuta_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rapyuta_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(rapyuta_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(rapyuta_msgs_generate_messages rapyuta_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/schwarm/tb3_aprilTag/catkin_ws/src/rapyuta_msgs/msg/AprilTagDetection.msg" NAME_WE)
add_dependencies(rapyuta_msgs_generate_messages_cpp _rapyuta_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/schwarm/tb3_aprilTag/catkin_ws/src/rapyuta_msgs/msg/AprilTagDetections.msg" NAME_WE)
add_dependencies(rapyuta_msgs_generate_messages_cpp _rapyuta_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/schwarm/tb3_aprilTag/catkin_ws/src/rapyuta_msgs/msg/pose.msg" NAME_WE)
add_dependencies(rapyuta_msgs_generate_messages_cpp _rapyuta_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rapyuta_msgs_gencpp)
add_dependencies(rapyuta_msgs_gencpp rapyuta_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rapyuta_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(rapyuta_msgs
  "/home/schwarm/tb3_aprilTag/catkin_ws/src/rapyuta_msgs/msg/AprilTagDetection.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rapyuta_msgs
)
_generate_msg_eus(rapyuta_msgs
  "/home/schwarm/tb3_aprilTag/catkin_ws/src/rapyuta_msgs/msg/AprilTagDetections.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/schwarm/tb3_aprilTag/catkin_ws/src/rapyuta_msgs/msg/AprilTagDetection.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rapyuta_msgs
)
_generate_msg_eus(rapyuta_msgs
  "/home/schwarm/tb3_aprilTag/catkin_ws/src/rapyuta_msgs/msg/pose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rapyuta_msgs
)

### Generating Services

### Generating Module File
_generate_module_eus(rapyuta_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rapyuta_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(rapyuta_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(rapyuta_msgs_generate_messages rapyuta_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/schwarm/tb3_aprilTag/catkin_ws/src/rapyuta_msgs/msg/AprilTagDetection.msg" NAME_WE)
add_dependencies(rapyuta_msgs_generate_messages_eus _rapyuta_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/schwarm/tb3_aprilTag/catkin_ws/src/rapyuta_msgs/msg/AprilTagDetections.msg" NAME_WE)
add_dependencies(rapyuta_msgs_generate_messages_eus _rapyuta_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/schwarm/tb3_aprilTag/catkin_ws/src/rapyuta_msgs/msg/pose.msg" NAME_WE)
add_dependencies(rapyuta_msgs_generate_messages_eus _rapyuta_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rapyuta_msgs_geneus)
add_dependencies(rapyuta_msgs_geneus rapyuta_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rapyuta_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(rapyuta_msgs
  "/home/schwarm/tb3_aprilTag/catkin_ws/src/rapyuta_msgs/msg/AprilTagDetection.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rapyuta_msgs
)
_generate_msg_lisp(rapyuta_msgs
  "/home/schwarm/tb3_aprilTag/catkin_ws/src/rapyuta_msgs/msg/AprilTagDetections.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/schwarm/tb3_aprilTag/catkin_ws/src/rapyuta_msgs/msg/AprilTagDetection.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rapyuta_msgs
)
_generate_msg_lisp(rapyuta_msgs
  "/home/schwarm/tb3_aprilTag/catkin_ws/src/rapyuta_msgs/msg/pose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rapyuta_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(rapyuta_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rapyuta_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(rapyuta_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(rapyuta_msgs_generate_messages rapyuta_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/schwarm/tb3_aprilTag/catkin_ws/src/rapyuta_msgs/msg/AprilTagDetection.msg" NAME_WE)
add_dependencies(rapyuta_msgs_generate_messages_lisp _rapyuta_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/schwarm/tb3_aprilTag/catkin_ws/src/rapyuta_msgs/msg/AprilTagDetections.msg" NAME_WE)
add_dependencies(rapyuta_msgs_generate_messages_lisp _rapyuta_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/schwarm/tb3_aprilTag/catkin_ws/src/rapyuta_msgs/msg/pose.msg" NAME_WE)
add_dependencies(rapyuta_msgs_generate_messages_lisp _rapyuta_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rapyuta_msgs_genlisp)
add_dependencies(rapyuta_msgs_genlisp rapyuta_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rapyuta_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(rapyuta_msgs
  "/home/schwarm/tb3_aprilTag/catkin_ws/src/rapyuta_msgs/msg/AprilTagDetection.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rapyuta_msgs
)
_generate_msg_nodejs(rapyuta_msgs
  "/home/schwarm/tb3_aprilTag/catkin_ws/src/rapyuta_msgs/msg/AprilTagDetections.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/schwarm/tb3_aprilTag/catkin_ws/src/rapyuta_msgs/msg/AprilTagDetection.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rapyuta_msgs
)
_generate_msg_nodejs(rapyuta_msgs
  "/home/schwarm/tb3_aprilTag/catkin_ws/src/rapyuta_msgs/msg/pose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rapyuta_msgs
)

### Generating Services

### Generating Module File
_generate_module_nodejs(rapyuta_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rapyuta_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(rapyuta_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(rapyuta_msgs_generate_messages rapyuta_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/schwarm/tb3_aprilTag/catkin_ws/src/rapyuta_msgs/msg/AprilTagDetection.msg" NAME_WE)
add_dependencies(rapyuta_msgs_generate_messages_nodejs _rapyuta_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/schwarm/tb3_aprilTag/catkin_ws/src/rapyuta_msgs/msg/AprilTagDetections.msg" NAME_WE)
add_dependencies(rapyuta_msgs_generate_messages_nodejs _rapyuta_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/schwarm/tb3_aprilTag/catkin_ws/src/rapyuta_msgs/msg/pose.msg" NAME_WE)
add_dependencies(rapyuta_msgs_generate_messages_nodejs _rapyuta_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rapyuta_msgs_gennodejs)
add_dependencies(rapyuta_msgs_gennodejs rapyuta_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rapyuta_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(rapyuta_msgs
  "/home/schwarm/tb3_aprilTag/catkin_ws/src/rapyuta_msgs/msg/AprilTagDetection.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rapyuta_msgs
)
_generate_msg_py(rapyuta_msgs
  "/home/schwarm/tb3_aprilTag/catkin_ws/src/rapyuta_msgs/msg/AprilTagDetections.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/schwarm/tb3_aprilTag/catkin_ws/src/rapyuta_msgs/msg/AprilTagDetection.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rapyuta_msgs
)
_generate_msg_py(rapyuta_msgs
  "/home/schwarm/tb3_aprilTag/catkin_ws/src/rapyuta_msgs/msg/pose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rapyuta_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(rapyuta_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rapyuta_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(rapyuta_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(rapyuta_msgs_generate_messages rapyuta_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/schwarm/tb3_aprilTag/catkin_ws/src/rapyuta_msgs/msg/AprilTagDetection.msg" NAME_WE)
add_dependencies(rapyuta_msgs_generate_messages_py _rapyuta_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/schwarm/tb3_aprilTag/catkin_ws/src/rapyuta_msgs/msg/AprilTagDetections.msg" NAME_WE)
add_dependencies(rapyuta_msgs_generate_messages_py _rapyuta_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/schwarm/tb3_aprilTag/catkin_ws/src/rapyuta_msgs/msg/pose.msg" NAME_WE)
add_dependencies(rapyuta_msgs_generate_messages_py _rapyuta_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rapyuta_msgs_genpy)
add_dependencies(rapyuta_msgs_genpy rapyuta_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rapyuta_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rapyuta_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rapyuta_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(rapyuta_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(rapyuta_msgs_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(rapyuta_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rapyuta_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rapyuta_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(rapyuta_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(rapyuta_msgs_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(rapyuta_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rapyuta_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rapyuta_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(rapyuta_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(rapyuta_msgs_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(rapyuta_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rapyuta_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rapyuta_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(rapyuta_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(rapyuta_msgs_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(rapyuta_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rapyuta_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rapyuta_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rapyuta_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(rapyuta_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(rapyuta_msgs_generate_messages_py sensor_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(rapyuta_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
