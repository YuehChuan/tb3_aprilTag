# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "turtlebot3_msgs: 4 messages, 2 services")

set(MSG_I_FLAGS "-Iturtlebot3_msgs:/home/schwarm/tb3_aprilTag/catkin_ws/src/turtlebot3_msgs/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/kinetic/share/sensor_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(turtlebot3_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/schwarm/tb3_aprilTag/catkin_ws/src/turtlebot3_msgs/msg/MotorPower.msg" NAME_WE)
add_custom_target(_turtlebot3_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "turtlebot3_msgs" "/home/schwarm/tb3_aprilTag/catkin_ws/src/turtlebot3_msgs/msg/MotorPower.msg" ""
)

get_filename_component(_filename "/home/schwarm/tb3_aprilTag/catkin_ws/src/turtlebot3_msgs/msg/SensorState.msg" NAME_WE)
add_custom_target(_turtlebot3_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "turtlebot3_msgs" "/home/schwarm/tb3_aprilTag/catkin_ws/src/turtlebot3_msgs/msg/SensorState.msg" ""
)

get_filename_component(_filename "/home/schwarm/tb3_aprilTag/catkin_ws/src/turtlebot3_msgs/msg/PanoramaImg.msg" NAME_WE)
add_custom_target(_turtlebot3_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "turtlebot3_msgs" "/home/schwarm/tb3_aprilTag/catkin_ws/src/turtlebot3_msgs/msg/PanoramaImg.msg" "sensor_msgs/Image:std_msgs/Header"
)

get_filename_component(_filename "/home/schwarm/tb3_aprilTag/catkin_ws/src/turtlebot3_msgs/msg/VersionInfo.msg" NAME_WE)
add_custom_target(_turtlebot3_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "turtlebot3_msgs" "/home/schwarm/tb3_aprilTag/catkin_ws/src/turtlebot3_msgs/msg/VersionInfo.msg" ""
)

get_filename_component(_filename "/home/schwarm/tb3_aprilTag/catkin_ws/src/turtlebot3_msgs/srv/TakePanorama.srv" NAME_WE)
add_custom_target(_turtlebot3_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "turtlebot3_msgs" "/home/schwarm/tb3_aprilTag/catkin_ws/src/turtlebot3_msgs/srv/TakePanorama.srv" ""
)

get_filename_component(_filename "/home/schwarm/tb3_aprilTag/catkin_ws/src/turtlebot3_msgs/srv/SetFollowState.srv" NAME_WE)
add_custom_target(_turtlebot3_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "turtlebot3_msgs" "/home/schwarm/tb3_aprilTag/catkin_ws/src/turtlebot3_msgs/srv/SetFollowState.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(turtlebot3_msgs
  "/home/schwarm/tb3_aprilTag/catkin_ws/src/turtlebot3_msgs/msg/PanoramaImg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/turtlebot3_msgs
)
_generate_msg_cpp(turtlebot3_msgs
  "/home/schwarm/tb3_aprilTag/catkin_ws/src/turtlebot3_msgs/msg/MotorPower.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/turtlebot3_msgs
)
_generate_msg_cpp(turtlebot3_msgs
  "/home/schwarm/tb3_aprilTag/catkin_ws/src/turtlebot3_msgs/msg/VersionInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/turtlebot3_msgs
)
_generate_msg_cpp(turtlebot3_msgs
  "/home/schwarm/tb3_aprilTag/catkin_ws/src/turtlebot3_msgs/msg/SensorState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/turtlebot3_msgs
)

### Generating Services
_generate_srv_cpp(turtlebot3_msgs
  "/home/schwarm/tb3_aprilTag/catkin_ws/src/turtlebot3_msgs/srv/TakePanorama.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/turtlebot3_msgs
)
_generate_srv_cpp(turtlebot3_msgs
  "/home/schwarm/tb3_aprilTag/catkin_ws/src/turtlebot3_msgs/srv/SetFollowState.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/turtlebot3_msgs
)

### Generating Module File
_generate_module_cpp(turtlebot3_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/turtlebot3_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(turtlebot3_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(turtlebot3_msgs_generate_messages turtlebot3_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/schwarm/tb3_aprilTag/catkin_ws/src/turtlebot3_msgs/msg/MotorPower.msg" NAME_WE)
add_dependencies(turtlebot3_msgs_generate_messages_cpp _turtlebot3_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/schwarm/tb3_aprilTag/catkin_ws/src/turtlebot3_msgs/msg/SensorState.msg" NAME_WE)
add_dependencies(turtlebot3_msgs_generate_messages_cpp _turtlebot3_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/schwarm/tb3_aprilTag/catkin_ws/src/turtlebot3_msgs/msg/PanoramaImg.msg" NAME_WE)
add_dependencies(turtlebot3_msgs_generate_messages_cpp _turtlebot3_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/schwarm/tb3_aprilTag/catkin_ws/src/turtlebot3_msgs/msg/VersionInfo.msg" NAME_WE)
add_dependencies(turtlebot3_msgs_generate_messages_cpp _turtlebot3_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/schwarm/tb3_aprilTag/catkin_ws/src/turtlebot3_msgs/srv/TakePanorama.srv" NAME_WE)
add_dependencies(turtlebot3_msgs_generate_messages_cpp _turtlebot3_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/schwarm/tb3_aprilTag/catkin_ws/src/turtlebot3_msgs/srv/SetFollowState.srv" NAME_WE)
add_dependencies(turtlebot3_msgs_generate_messages_cpp _turtlebot3_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(turtlebot3_msgs_gencpp)
add_dependencies(turtlebot3_msgs_gencpp turtlebot3_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS turtlebot3_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(turtlebot3_msgs
  "/home/schwarm/tb3_aprilTag/catkin_ws/src/turtlebot3_msgs/msg/PanoramaImg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/turtlebot3_msgs
)
_generate_msg_eus(turtlebot3_msgs
  "/home/schwarm/tb3_aprilTag/catkin_ws/src/turtlebot3_msgs/msg/MotorPower.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/turtlebot3_msgs
)
_generate_msg_eus(turtlebot3_msgs
  "/home/schwarm/tb3_aprilTag/catkin_ws/src/turtlebot3_msgs/msg/VersionInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/turtlebot3_msgs
)
_generate_msg_eus(turtlebot3_msgs
  "/home/schwarm/tb3_aprilTag/catkin_ws/src/turtlebot3_msgs/msg/SensorState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/turtlebot3_msgs
)

### Generating Services
_generate_srv_eus(turtlebot3_msgs
  "/home/schwarm/tb3_aprilTag/catkin_ws/src/turtlebot3_msgs/srv/TakePanorama.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/turtlebot3_msgs
)
_generate_srv_eus(turtlebot3_msgs
  "/home/schwarm/tb3_aprilTag/catkin_ws/src/turtlebot3_msgs/srv/SetFollowState.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/turtlebot3_msgs
)

### Generating Module File
_generate_module_eus(turtlebot3_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/turtlebot3_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(turtlebot3_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(turtlebot3_msgs_generate_messages turtlebot3_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/schwarm/tb3_aprilTag/catkin_ws/src/turtlebot3_msgs/msg/MotorPower.msg" NAME_WE)
add_dependencies(turtlebot3_msgs_generate_messages_eus _turtlebot3_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/schwarm/tb3_aprilTag/catkin_ws/src/turtlebot3_msgs/msg/SensorState.msg" NAME_WE)
add_dependencies(turtlebot3_msgs_generate_messages_eus _turtlebot3_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/schwarm/tb3_aprilTag/catkin_ws/src/turtlebot3_msgs/msg/PanoramaImg.msg" NAME_WE)
add_dependencies(turtlebot3_msgs_generate_messages_eus _turtlebot3_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/schwarm/tb3_aprilTag/catkin_ws/src/turtlebot3_msgs/msg/VersionInfo.msg" NAME_WE)
add_dependencies(turtlebot3_msgs_generate_messages_eus _turtlebot3_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/schwarm/tb3_aprilTag/catkin_ws/src/turtlebot3_msgs/srv/TakePanorama.srv" NAME_WE)
add_dependencies(turtlebot3_msgs_generate_messages_eus _turtlebot3_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/schwarm/tb3_aprilTag/catkin_ws/src/turtlebot3_msgs/srv/SetFollowState.srv" NAME_WE)
add_dependencies(turtlebot3_msgs_generate_messages_eus _turtlebot3_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(turtlebot3_msgs_geneus)
add_dependencies(turtlebot3_msgs_geneus turtlebot3_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS turtlebot3_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(turtlebot3_msgs
  "/home/schwarm/tb3_aprilTag/catkin_ws/src/turtlebot3_msgs/msg/PanoramaImg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/turtlebot3_msgs
)
_generate_msg_lisp(turtlebot3_msgs
  "/home/schwarm/tb3_aprilTag/catkin_ws/src/turtlebot3_msgs/msg/MotorPower.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/turtlebot3_msgs
)
_generate_msg_lisp(turtlebot3_msgs
  "/home/schwarm/tb3_aprilTag/catkin_ws/src/turtlebot3_msgs/msg/VersionInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/turtlebot3_msgs
)
_generate_msg_lisp(turtlebot3_msgs
  "/home/schwarm/tb3_aprilTag/catkin_ws/src/turtlebot3_msgs/msg/SensorState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/turtlebot3_msgs
)

### Generating Services
_generate_srv_lisp(turtlebot3_msgs
  "/home/schwarm/tb3_aprilTag/catkin_ws/src/turtlebot3_msgs/srv/TakePanorama.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/turtlebot3_msgs
)
_generate_srv_lisp(turtlebot3_msgs
  "/home/schwarm/tb3_aprilTag/catkin_ws/src/turtlebot3_msgs/srv/SetFollowState.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/turtlebot3_msgs
)

### Generating Module File
_generate_module_lisp(turtlebot3_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/turtlebot3_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(turtlebot3_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(turtlebot3_msgs_generate_messages turtlebot3_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/schwarm/tb3_aprilTag/catkin_ws/src/turtlebot3_msgs/msg/MotorPower.msg" NAME_WE)
add_dependencies(turtlebot3_msgs_generate_messages_lisp _turtlebot3_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/schwarm/tb3_aprilTag/catkin_ws/src/turtlebot3_msgs/msg/SensorState.msg" NAME_WE)
add_dependencies(turtlebot3_msgs_generate_messages_lisp _turtlebot3_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/schwarm/tb3_aprilTag/catkin_ws/src/turtlebot3_msgs/msg/PanoramaImg.msg" NAME_WE)
add_dependencies(turtlebot3_msgs_generate_messages_lisp _turtlebot3_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/schwarm/tb3_aprilTag/catkin_ws/src/turtlebot3_msgs/msg/VersionInfo.msg" NAME_WE)
add_dependencies(turtlebot3_msgs_generate_messages_lisp _turtlebot3_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/schwarm/tb3_aprilTag/catkin_ws/src/turtlebot3_msgs/srv/TakePanorama.srv" NAME_WE)
add_dependencies(turtlebot3_msgs_generate_messages_lisp _turtlebot3_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/schwarm/tb3_aprilTag/catkin_ws/src/turtlebot3_msgs/srv/SetFollowState.srv" NAME_WE)
add_dependencies(turtlebot3_msgs_generate_messages_lisp _turtlebot3_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(turtlebot3_msgs_genlisp)
add_dependencies(turtlebot3_msgs_genlisp turtlebot3_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS turtlebot3_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(turtlebot3_msgs
  "/home/schwarm/tb3_aprilTag/catkin_ws/src/turtlebot3_msgs/msg/PanoramaImg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/turtlebot3_msgs
)
_generate_msg_nodejs(turtlebot3_msgs
  "/home/schwarm/tb3_aprilTag/catkin_ws/src/turtlebot3_msgs/msg/MotorPower.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/turtlebot3_msgs
)
_generate_msg_nodejs(turtlebot3_msgs
  "/home/schwarm/tb3_aprilTag/catkin_ws/src/turtlebot3_msgs/msg/VersionInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/turtlebot3_msgs
)
_generate_msg_nodejs(turtlebot3_msgs
  "/home/schwarm/tb3_aprilTag/catkin_ws/src/turtlebot3_msgs/msg/SensorState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/turtlebot3_msgs
)

### Generating Services
_generate_srv_nodejs(turtlebot3_msgs
  "/home/schwarm/tb3_aprilTag/catkin_ws/src/turtlebot3_msgs/srv/TakePanorama.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/turtlebot3_msgs
)
_generate_srv_nodejs(turtlebot3_msgs
  "/home/schwarm/tb3_aprilTag/catkin_ws/src/turtlebot3_msgs/srv/SetFollowState.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/turtlebot3_msgs
)

### Generating Module File
_generate_module_nodejs(turtlebot3_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/turtlebot3_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(turtlebot3_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(turtlebot3_msgs_generate_messages turtlebot3_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/schwarm/tb3_aprilTag/catkin_ws/src/turtlebot3_msgs/msg/MotorPower.msg" NAME_WE)
add_dependencies(turtlebot3_msgs_generate_messages_nodejs _turtlebot3_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/schwarm/tb3_aprilTag/catkin_ws/src/turtlebot3_msgs/msg/SensorState.msg" NAME_WE)
add_dependencies(turtlebot3_msgs_generate_messages_nodejs _turtlebot3_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/schwarm/tb3_aprilTag/catkin_ws/src/turtlebot3_msgs/msg/PanoramaImg.msg" NAME_WE)
add_dependencies(turtlebot3_msgs_generate_messages_nodejs _turtlebot3_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/schwarm/tb3_aprilTag/catkin_ws/src/turtlebot3_msgs/msg/VersionInfo.msg" NAME_WE)
add_dependencies(turtlebot3_msgs_generate_messages_nodejs _turtlebot3_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/schwarm/tb3_aprilTag/catkin_ws/src/turtlebot3_msgs/srv/TakePanorama.srv" NAME_WE)
add_dependencies(turtlebot3_msgs_generate_messages_nodejs _turtlebot3_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/schwarm/tb3_aprilTag/catkin_ws/src/turtlebot3_msgs/srv/SetFollowState.srv" NAME_WE)
add_dependencies(turtlebot3_msgs_generate_messages_nodejs _turtlebot3_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(turtlebot3_msgs_gennodejs)
add_dependencies(turtlebot3_msgs_gennodejs turtlebot3_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS turtlebot3_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(turtlebot3_msgs
  "/home/schwarm/tb3_aprilTag/catkin_ws/src/turtlebot3_msgs/msg/PanoramaImg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/turtlebot3_msgs
)
_generate_msg_py(turtlebot3_msgs
  "/home/schwarm/tb3_aprilTag/catkin_ws/src/turtlebot3_msgs/msg/MotorPower.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/turtlebot3_msgs
)
_generate_msg_py(turtlebot3_msgs
  "/home/schwarm/tb3_aprilTag/catkin_ws/src/turtlebot3_msgs/msg/VersionInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/turtlebot3_msgs
)
_generate_msg_py(turtlebot3_msgs
  "/home/schwarm/tb3_aprilTag/catkin_ws/src/turtlebot3_msgs/msg/SensorState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/turtlebot3_msgs
)

### Generating Services
_generate_srv_py(turtlebot3_msgs
  "/home/schwarm/tb3_aprilTag/catkin_ws/src/turtlebot3_msgs/srv/TakePanorama.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/turtlebot3_msgs
)
_generate_srv_py(turtlebot3_msgs
  "/home/schwarm/tb3_aprilTag/catkin_ws/src/turtlebot3_msgs/srv/SetFollowState.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/turtlebot3_msgs
)

### Generating Module File
_generate_module_py(turtlebot3_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/turtlebot3_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(turtlebot3_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(turtlebot3_msgs_generate_messages turtlebot3_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/schwarm/tb3_aprilTag/catkin_ws/src/turtlebot3_msgs/msg/MotorPower.msg" NAME_WE)
add_dependencies(turtlebot3_msgs_generate_messages_py _turtlebot3_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/schwarm/tb3_aprilTag/catkin_ws/src/turtlebot3_msgs/msg/SensorState.msg" NAME_WE)
add_dependencies(turtlebot3_msgs_generate_messages_py _turtlebot3_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/schwarm/tb3_aprilTag/catkin_ws/src/turtlebot3_msgs/msg/PanoramaImg.msg" NAME_WE)
add_dependencies(turtlebot3_msgs_generate_messages_py _turtlebot3_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/schwarm/tb3_aprilTag/catkin_ws/src/turtlebot3_msgs/msg/VersionInfo.msg" NAME_WE)
add_dependencies(turtlebot3_msgs_generate_messages_py _turtlebot3_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/schwarm/tb3_aprilTag/catkin_ws/src/turtlebot3_msgs/srv/TakePanorama.srv" NAME_WE)
add_dependencies(turtlebot3_msgs_generate_messages_py _turtlebot3_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/schwarm/tb3_aprilTag/catkin_ws/src/turtlebot3_msgs/srv/SetFollowState.srv" NAME_WE)
add_dependencies(turtlebot3_msgs_generate_messages_py _turtlebot3_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(turtlebot3_msgs_genpy)
add_dependencies(turtlebot3_msgs_genpy turtlebot3_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS turtlebot3_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/turtlebot3_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/turtlebot3_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(turtlebot3_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(turtlebot3_msgs_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/turtlebot3_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/turtlebot3_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(turtlebot3_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(turtlebot3_msgs_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/turtlebot3_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/turtlebot3_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(turtlebot3_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(turtlebot3_msgs_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/turtlebot3_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/turtlebot3_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(turtlebot3_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(turtlebot3_msgs_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/turtlebot3_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/turtlebot3_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/turtlebot3_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(turtlebot3_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(turtlebot3_msgs_generate_messages_py sensor_msgs_generate_messages_py)
endif()
