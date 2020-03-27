# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "task4: 0 messages, 1 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(task4_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/arman/jetBrains_ws/src/task4/srv/remove_runner.srv" NAME_WE)
add_custom_target(_task4_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "task4" "/home/arman/jetBrains_ws/src/task4/srv/remove_runner.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(task4
  "/home/arman/jetBrains_ws/src/task4/srv/remove_runner.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/task4
)

### Generating Module File
_generate_module_cpp(task4
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/task4
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(task4_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(task4_generate_messages task4_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/arman/jetBrains_ws/src/task4/srv/remove_runner.srv" NAME_WE)
add_dependencies(task4_generate_messages_cpp _task4_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(task4_gencpp)
add_dependencies(task4_gencpp task4_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS task4_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(task4
  "/home/arman/jetBrains_ws/src/task4/srv/remove_runner.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/task4
)

### Generating Module File
_generate_module_eus(task4
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/task4
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(task4_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(task4_generate_messages task4_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/arman/jetBrains_ws/src/task4/srv/remove_runner.srv" NAME_WE)
add_dependencies(task4_generate_messages_eus _task4_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(task4_geneus)
add_dependencies(task4_geneus task4_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS task4_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(task4
  "/home/arman/jetBrains_ws/src/task4/srv/remove_runner.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/task4
)

### Generating Module File
_generate_module_lisp(task4
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/task4
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(task4_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(task4_generate_messages task4_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/arman/jetBrains_ws/src/task4/srv/remove_runner.srv" NAME_WE)
add_dependencies(task4_generate_messages_lisp _task4_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(task4_genlisp)
add_dependencies(task4_genlisp task4_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS task4_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(task4
  "/home/arman/jetBrains_ws/src/task4/srv/remove_runner.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/task4
)

### Generating Module File
_generate_module_nodejs(task4
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/task4
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(task4_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(task4_generate_messages task4_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/arman/jetBrains_ws/src/task4/srv/remove_runner.srv" NAME_WE)
add_dependencies(task4_generate_messages_nodejs _task4_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(task4_gennodejs)
add_dependencies(task4_gennodejs task4_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS task4_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(task4
  "/home/arman/jetBrains_ws/src/task4/srv/remove_runner.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/task4
)

### Generating Module File
_generate_module_py(task4
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/task4
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(task4_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(task4_generate_messages task4_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/arman/jetBrains_ws/src/task4/srv/remove_runner.srv" NAME_WE)
add_dependencies(task4_generate_messages_py _task4_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(task4_genpy)
add_dependencies(task4_genpy task4_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS task4_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/task4)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/task4
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(task4_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/task4)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/task4
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(task4_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/task4)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/task4
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(task4_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/task4)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/task4
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(task4_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/task4)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/task4\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/task4
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(task4_generate_messages_py std_msgs_generate_messages_py)
endif()
