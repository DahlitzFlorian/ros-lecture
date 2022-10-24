# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "publisher_subscriber: 1 messages, 1 services")

set(MSG_I_FLAGS "-Ipublisher_subscriber:/home/floriandahlitz/workspace/pnp/ros_ws/src/publisher_subscriber/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(publisher_subscriber_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/floriandahlitz/workspace/pnp/ros_ws/src/publisher_subscriber/msg/RGBColor.msg" NAME_WE)
add_custom_target(_publisher_subscriber_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "publisher_subscriber" "/home/floriandahlitz/workspace/pnp/ros_ws/src/publisher_subscriber/msg/RGBColor.msg" ""
)

get_filename_component(_filename "/home/floriandahlitz/workspace/pnp/ros_ws/src/publisher_subscriber/srv/CalculateHexCode.srv" NAME_WE)
add_custom_target(_publisher_subscriber_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "publisher_subscriber" "/home/floriandahlitz/workspace/pnp/ros_ws/src/publisher_subscriber/srv/CalculateHexCode.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(publisher_subscriber
  "/home/floriandahlitz/workspace/pnp/ros_ws/src/publisher_subscriber/msg/RGBColor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/publisher_subscriber
)

### Generating Services
_generate_srv_cpp(publisher_subscriber
  "/home/floriandahlitz/workspace/pnp/ros_ws/src/publisher_subscriber/srv/CalculateHexCode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/publisher_subscriber
)

### Generating Module File
_generate_module_cpp(publisher_subscriber
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/publisher_subscriber
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(publisher_subscriber_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(publisher_subscriber_generate_messages publisher_subscriber_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/floriandahlitz/workspace/pnp/ros_ws/src/publisher_subscriber/msg/RGBColor.msg" NAME_WE)
add_dependencies(publisher_subscriber_generate_messages_cpp _publisher_subscriber_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/floriandahlitz/workspace/pnp/ros_ws/src/publisher_subscriber/srv/CalculateHexCode.srv" NAME_WE)
add_dependencies(publisher_subscriber_generate_messages_cpp _publisher_subscriber_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(publisher_subscriber_gencpp)
add_dependencies(publisher_subscriber_gencpp publisher_subscriber_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS publisher_subscriber_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(publisher_subscriber
  "/home/floriandahlitz/workspace/pnp/ros_ws/src/publisher_subscriber/msg/RGBColor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/publisher_subscriber
)

### Generating Services
_generate_srv_eus(publisher_subscriber
  "/home/floriandahlitz/workspace/pnp/ros_ws/src/publisher_subscriber/srv/CalculateHexCode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/publisher_subscriber
)

### Generating Module File
_generate_module_eus(publisher_subscriber
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/publisher_subscriber
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(publisher_subscriber_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(publisher_subscriber_generate_messages publisher_subscriber_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/floriandahlitz/workspace/pnp/ros_ws/src/publisher_subscriber/msg/RGBColor.msg" NAME_WE)
add_dependencies(publisher_subscriber_generate_messages_eus _publisher_subscriber_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/floriandahlitz/workspace/pnp/ros_ws/src/publisher_subscriber/srv/CalculateHexCode.srv" NAME_WE)
add_dependencies(publisher_subscriber_generate_messages_eus _publisher_subscriber_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(publisher_subscriber_geneus)
add_dependencies(publisher_subscriber_geneus publisher_subscriber_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS publisher_subscriber_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(publisher_subscriber
  "/home/floriandahlitz/workspace/pnp/ros_ws/src/publisher_subscriber/msg/RGBColor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/publisher_subscriber
)

### Generating Services
_generate_srv_lisp(publisher_subscriber
  "/home/floriandahlitz/workspace/pnp/ros_ws/src/publisher_subscriber/srv/CalculateHexCode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/publisher_subscriber
)

### Generating Module File
_generate_module_lisp(publisher_subscriber
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/publisher_subscriber
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(publisher_subscriber_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(publisher_subscriber_generate_messages publisher_subscriber_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/floriandahlitz/workspace/pnp/ros_ws/src/publisher_subscriber/msg/RGBColor.msg" NAME_WE)
add_dependencies(publisher_subscriber_generate_messages_lisp _publisher_subscriber_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/floriandahlitz/workspace/pnp/ros_ws/src/publisher_subscriber/srv/CalculateHexCode.srv" NAME_WE)
add_dependencies(publisher_subscriber_generate_messages_lisp _publisher_subscriber_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(publisher_subscriber_genlisp)
add_dependencies(publisher_subscriber_genlisp publisher_subscriber_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS publisher_subscriber_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(publisher_subscriber
  "/home/floriandahlitz/workspace/pnp/ros_ws/src/publisher_subscriber/msg/RGBColor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/publisher_subscriber
)

### Generating Services
_generate_srv_nodejs(publisher_subscriber
  "/home/floriandahlitz/workspace/pnp/ros_ws/src/publisher_subscriber/srv/CalculateHexCode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/publisher_subscriber
)

### Generating Module File
_generate_module_nodejs(publisher_subscriber
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/publisher_subscriber
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(publisher_subscriber_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(publisher_subscriber_generate_messages publisher_subscriber_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/floriandahlitz/workspace/pnp/ros_ws/src/publisher_subscriber/msg/RGBColor.msg" NAME_WE)
add_dependencies(publisher_subscriber_generate_messages_nodejs _publisher_subscriber_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/floriandahlitz/workspace/pnp/ros_ws/src/publisher_subscriber/srv/CalculateHexCode.srv" NAME_WE)
add_dependencies(publisher_subscriber_generate_messages_nodejs _publisher_subscriber_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(publisher_subscriber_gennodejs)
add_dependencies(publisher_subscriber_gennodejs publisher_subscriber_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS publisher_subscriber_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(publisher_subscriber
  "/home/floriandahlitz/workspace/pnp/ros_ws/src/publisher_subscriber/msg/RGBColor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/publisher_subscriber
)

### Generating Services
_generate_srv_py(publisher_subscriber
  "/home/floriandahlitz/workspace/pnp/ros_ws/src/publisher_subscriber/srv/CalculateHexCode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/publisher_subscriber
)

### Generating Module File
_generate_module_py(publisher_subscriber
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/publisher_subscriber
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(publisher_subscriber_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(publisher_subscriber_generate_messages publisher_subscriber_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/floriandahlitz/workspace/pnp/ros_ws/src/publisher_subscriber/msg/RGBColor.msg" NAME_WE)
add_dependencies(publisher_subscriber_generate_messages_py _publisher_subscriber_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/floriandahlitz/workspace/pnp/ros_ws/src/publisher_subscriber/srv/CalculateHexCode.srv" NAME_WE)
add_dependencies(publisher_subscriber_generate_messages_py _publisher_subscriber_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(publisher_subscriber_genpy)
add_dependencies(publisher_subscriber_genpy publisher_subscriber_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS publisher_subscriber_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/publisher_subscriber)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/publisher_subscriber
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(publisher_subscriber_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/publisher_subscriber)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/publisher_subscriber
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(publisher_subscriber_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/publisher_subscriber)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/publisher_subscriber
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(publisher_subscriber_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/publisher_subscriber)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/publisher_subscriber
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(publisher_subscriber_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/publisher_subscriber)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/publisher_subscriber\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/publisher_subscriber
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(publisher_subscriber_generate_messages_py std_msgs_generate_messages_py)
endif()
