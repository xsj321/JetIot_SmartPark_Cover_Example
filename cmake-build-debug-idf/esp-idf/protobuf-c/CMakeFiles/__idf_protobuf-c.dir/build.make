# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.17

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Disable VCS-based implicit rules.
% : %,v


# Disable VCS-based implicit rules.
% : RCS/%


# Disable VCS-based implicit rules.
% : RCS/%,v


# Disable VCS-based implicit rules.
% : SCCS/s.%


# Disable VCS-based implicit rules.
% : s.%


.SUFFIXES: .hpux_make_needs_suffix_list


# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

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
CMAKE_COMMAND = /opt/apps/com.jetbrains.clion/files/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /opt/apps/com.jetbrains.clion/files/bin/cmake/linux/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/xsj321/esp/mqtt/publish_test

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/xsj321/esp/mqtt/publish_test/cmake-build-debug-idf

# Include any dependencies generated for this target.
include esp-idf/protobuf-c/CMakeFiles/__idf_protobuf-c.dir/depend.make

# Include the progress variables for this target.
include esp-idf/protobuf-c/CMakeFiles/__idf_protobuf-c.dir/progress.make

# Include the compile flags for this target's objects.
include esp-idf/protobuf-c/CMakeFiles/__idf_protobuf-c.dir/flags.make

esp-idf/protobuf-c/CMakeFiles/__idf_protobuf-c.dir/protobuf-c/protobuf-c/protobuf-c.c.obj: esp-idf/protobuf-c/CMakeFiles/__idf_protobuf-c.dir/flags.make
esp-idf/protobuf-c/CMakeFiles/__idf_protobuf-c.dir/protobuf-c/protobuf-c/protobuf-c.c.obj: /home/xsj321/esp/esp-idf/components/protobuf-c/protobuf-c/protobuf-c/protobuf-c.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/xsj321/esp/mqtt/publish_test/cmake-build-debug-idf/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object esp-idf/protobuf-c/CMakeFiles/__idf_protobuf-c.dir/protobuf-c/protobuf-c/protobuf-c.c.obj"
	cd /home/xsj321/esp/mqtt/publish_test/cmake-build-debug-idf/esp-idf/protobuf-c && /home/xsj321/.espressif/tools/xtensa-esp32-elf/esp-2020r2-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/__idf_protobuf-c.dir/protobuf-c/protobuf-c/protobuf-c.c.obj   -c /home/xsj321/esp/esp-idf/components/protobuf-c/protobuf-c/protobuf-c/protobuf-c.c

esp-idf/protobuf-c/CMakeFiles/__idf_protobuf-c.dir/protobuf-c/protobuf-c/protobuf-c.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_protobuf-c.dir/protobuf-c/protobuf-c/protobuf-c.c.i"
	cd /home/xsj321/esp/mqtt/publish_test/cmake-build-debug-idf/esp-idf/protobuf-c && /home/xsj321/.espressif/tools/xtensa-esp32-elf/esp-2020r2-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/xsj321/esp/esp-idf/components/protobuf-c/protobuf-c/protobuf-c/protobuf-c.c > CMakeFiles/__idf_protobuf-c.dir/protobuf-c/protobuf-c/protobuf-c.c.i

esp-idf/protobuf-c/CMakeFiles/__idf_protobuf-c.dir/protobuf-c/protobuf-c/protobuf-c.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_protobuf-c.dir/protobuf-c/protobuf-c/protobuf-c.c.s"
	cd /home/xsj321/esp/mqtt/publish_test/cmake-build-debug-idf/esp-idf/protobuf-c && /home/xsj321/.espressif/tools/xtensa-esp32-elf/esp-2020r2-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/xsj321/esp/esp-idf/components/protobuf-c/protobuf-c/protobuf-c/protobuf-c.c -o CMakeFiles/__idf_protobuf-c.dir/protobuf-c/protobuf-c/protobuf-c.c.s

# Object files for target __idf_protobuf-c
__idf_protobuf__c_OBJECTS = \
"CMakeFiles/__idf_protobuf-c.dir/protobuf-c/protobuf-c/protobuf-c.c.obj"

# External object files for target __idf_protobuf-c
__idf_protobuf__c_EXTERNAL_OBJECTS =

esp-idf/protobuf-c/libprotobuf-c.a: esp-idf/protobuf-c/CMakeFiles/__idf_protobuf-c.dir/protobuf-c/protobuf-c/protobuf-c.c.obj
esp-idf/protobuf-c/libprotobuf-c.a: esp-idf/protobuf-c/CMakeFiles/__idf_protobuf-c.dir/build.make
esp-idf/protobuf-c/libprotobuf-c.a: esp-idf/protobuf-c/CMakeFiles/__idf_protobuf-c.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/xsj321/esp/mqtt/publish_test/cmake-build-debug-idf/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libprotobuf-c.a"
	cd /home/xsj321/esp/mqtt/publish_test/cmake-build-debug-idf/esp-idf/protobuf-c && $(CMAKE_COMMAND) -P CMakeFiles/__idf_protobuf-c.dir/cmake_clean_target.cmake
	cd /home/xsj321/esp/mqtt/publish_test/cmake-build-debug-idf/esp-idf/protobuf-c && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/__idf_protobuf-c.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
esp-idf/protobuf-c/CMakeFiles/__idf_protobuf-c.dir/build: esp-idf/protobuf-c/libprotobuf-c.a

.PHONY : esp-idf/protobuf-c/CMakeFiles/__idf_protobuf-c.dir/build

esp-idf/protobuf-c/CMakeFiles/__idf_protobuf-c.dir/clean:
	cd /home/xsj321/esp/mqtt/publish_test/cmake-build-debug-idf/esp-idf/protobuf-c && $(CMAKE_COMMAND) -P CMakeFiles/__idf_protobuf-c.dir/cmake_clean.cmake
.PHONY : esp-idf/protobuf-c/CMakeFiles/__idf_protobuf-c.dir/clean

esp-idf/protobuf-c/CMakeFiles/__idf_protobuf-c.dir/depend:
	cd /home/xsj321/esp/mqtt/publish_test/cmake-build-debug-idf && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/xsj321/esp/mqtt/publish_test /home/xsj321/esp/esp-idf/components/protobuf-c /home/xsj321/esp/mqtt/publish_test/cmake-build-debug-idf /home/xsj321/esp/mqtt/publish_test/cmake-build-debug-idf/esp-idf/protobuf-c /home/xsj321/esp/mqtt/publish_test/cmake-build-debug-idf/esp-idf/protobuf-c/CMakeFiles/__idf_protobuf-c.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : esp-idf/protobuf-c/CMakeFiles/__idf_protobuf-c.dir/depend
