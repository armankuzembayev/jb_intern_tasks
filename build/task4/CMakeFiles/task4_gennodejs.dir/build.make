# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/arman/jetBrains_ws/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/arman/jetBrains_ws/build

# Utility rule file for task4_gennodejs.

# Include the progress variables for this target.
include task4/CMakeFiles/task4_gennodejs.dir/progress.make

task4_gennodejs: task4/CMakeFiles/task4_gennodejs.dir/build.make

.PHONY : task4_gennodejs

# Rule to build all files generated by this target.
task4/CMakeFiles/task4_gennodejs.dir/build: task4_gennodejs

.PHONY : task4/CMakeFiles/task4_gennodejs.dir/build

task4/CMakeFiles/task4_gennodejs.dir/clean:
	cd /home/arman/jetBrains_ws/build/task4 && $(CMAKE_COMMAND) -P CMakeFiles/task4_gennodejs.dir/cmake_clean.cmake
.PHONY : task4/CMakeFiles/task4_gennodejs.dir/clean

task4/CMakeFiles/task4_gennodejs.dir/depend:
	cd /home/arman/jetBrains_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/arman/jetBrains_ws/src /home/arman/jetBrains_ws/src/task4 /home/arman/jetBrains_ws/build /home/arman/jetBrains_ws/build/task4 /home/arman/jetBrains_ws/build/task4/CMakeFiles/task4_gennodejs.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : task4/CMakeFiles/task4_gennodejs.dir/depend

