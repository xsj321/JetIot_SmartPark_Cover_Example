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
include esp-idf/log/CMakeFiles/__idf_log.dir/depend.make

# Include the progress variables for this target.
include esp-idf/log/CMakeFiles/__idf_log.dir/progress.make

# Include the compile flags for this target's objects.
include esp-idf/log/CMakeFiles/__idf_log.dir/flags.make

esp-idf/log/CMakeFiles/__idf_log.dir/log.c.obj: esp-idf/log/CMakeFiles/__idf_log.dir/flags.make
esp-idf/log/CMakeFiles/__idf_log.dir/log.c.obj: /home/xsj321/esp/esp-idf/components/log/log.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/xsj321/esp/mqtt/publish_test/cmake-build-debug-idf/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object esp-idf/log/CMakeFiles/__idf_log.dir/log.c.obj"
	cd /home/xsj321/esp/mqtt/publish_test/cmake-build-debug-idf/esp-idf/log && /home/xsj321/.espressif/tools/xtensa-esp32-elf/esp-2020r2-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/__idf_log.dir/log.c.obj   -c /home/xsj321/esp/esp-idf/components/log/log.c

esp-idf/log/CMakeFiles/__idf_log.dir/log.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_log.dir/log.c.i"
	cd /home/xsj321/esp/mqtt/publish_test/cmake-build-debug-idf/esp-idf/log && /home/xsj321/.espressif/tools/xtensa-esp32-elf/esp-2020r2-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/xsj321/esp/esp-idf/components/log/log.c > CMakeFiles/__idf_log.dir/log.c.i

esp-idf/log/CMakeFiles/__idf_log.dir/log.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_log.dir/log.c.s"
	cd /home/xsj321/esp/mqtt/publish_test/cmake-build-debug-idf/esp-idf/log && /home/xsj321/.espressif/tools/xtensa-esp32-elf/esp-2020r2-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/xsj321/esp/esp-idf/components/log/log.c -o CMakeFiles/__idf_log.dir/log.c.s

esp-idf/log/CMakeFiles/__idf_log.dir/log_buffers.c.obj: esp-idf/log/CMakeFiles/__idf_log.dir/flags.make
esp-idf/log/CMakeFiles/__idf_log.dir/log_buffers.c.obj: /home/xsj321/esp/esp-idf/components/log/log_buffers.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/xsj321/esp/mqtt/publish_test/cmake-build-debug-idf/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object esp-idf/log/CMakeFiles/__idf_log.dir/log_buffers.c.obj"
	cd /home/xsj321/esp/mqtt/publish_test/cmake-build-debug-idf/esp-idf/log && /home/xsj321/.espressif/tools/xtensa-esp32-elf/esp-2020r2-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/__idf_log.dir/log_buffers.c.obj   -c /home/xsj321/esp/esp-idf/components/log/log_buffers.c

esp-idf/log/CMakeFiles/__idf_log.dir/log_buffers.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_log.dir/log_buffers.c.i"
	cd /home/xsj321/esp/mqtt/publish_test/cmake-build-debug-idf/esp-idf/log && /home/xsj321/.espressif/tools/xtensa-esp32-elf/esp-2020r2-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/xsj321/esp/esp-idf/components/log/log_buffers.c > CMakeFiles/__idf_log.dir/log_buffers.c.i

esp-idf/log/CMakeFiles/__idf_log.dir/log_buffers.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_log.dir/log_buffers.c.s"
	cd /home/xsj321/esp/mqtt/publish_test/cmake-build-debug-idf/esp-idf/log && /home/xsj321/.espressif/tools/xtensa-esp32-elf/esp-2020r2-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/xsj321/esp/esp-idf/components/log/log_buffers.c -o CMakeFiles/__idf_log.dir/log_buffers.c.s

esp-idf/log/CMakeFiles/__idf_log.dir/log_freertos.c.obj: esp-idf/log/CMakeFiles/__idf_log.dir/flags.make
esp-idf/log/CMakeFiles/__idf_log.dir/log_freertos.c.obj: /home/xsj321/esp/esp-idf/components/log/log_freertos.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/xsj321/esp/mqtt/publish_test/cmake-build-debug-idf/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object esp-idf/log/CMakeFiles/__idf_log.dir/log_freertos.c.obj"
	cd /home/xsj321/esp/mqtt/publish_test/cmake-build-debug-idf/esp-idf/log && /home/xsj321/.espressif/tools/xtensa-esp32-elf/esp-2020r2-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/__idf_log.dir/log_freertos.c.obj   -c /home/xsj321/esp/esp-idf/components/log/log_freertos.c

esp-idf/log/CMakeFiles/__idf_log.dir/log_freertos.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_log.dir/log_freertos.c.i"
	cd /home/xsj321/esp/mqtt/publish_test/cmake-build-debug-idf/esp-idf/log && /home/xsj321/.espressif/tools/xtensa-esp32-elf/esp-2020r2-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/xsj321/esp/esp-idf/components/log/log_freertos.c > CMakeFiles/__idf_log.dir/log_freertos.c.i

esp-idf/log/CMakeFiles/__idf_log.dir/log_freertos.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_log.dir/log_freertos.c.s"
	cd /home/xsj321/esp/mqtt/publish_test/cmake-build-debug-idf/esp-idf/log && /home/xsj321/.espressif/tools/xtensa-esp32-elf/esp-2020r2-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/xsj321/esp/esp-idf/components/log/log_freertos.c -o CMakeFiles/__idf_log.dir/log_freertos.c.s

# Object files for target __idf_log
__idf_log_OBJECTS = \
"CMakeFiles/__idf_log.dir/log.c.obj" \
"CMakeFiles/__idf_log.dir/log_buffers.c.obj" \
"CMakeFiles/__idf_log.dir/log_freertos.c.obj"

# External object files for target __idf_log
__idf_log_EXTERNAL_OBJECTS =

esp-idf/log/liblog.a: esp-idf/log/CMakeFiles/__idf_log.dir/log.c.obj
esp-idf/log/liblog.a: esp-idf/log/CMakeFiles/__idf_log.dir/log_buffers.c.obj
esp-idf/log/liblog.a: esp-idf/log/CMakeFiles/__idf_log.dir/log_freertos.c.obj
esp-idf/log/liblog.a: esp-idf/log/CMakeFiles/__idf_log.dir/build.make
esp-idf/log/liblog.a: esp-idf/log/CMakeFiles/__idf_log.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/xsj321/esp/mqtt/publish_test/cmake-build-debug-idf/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX static library liblog.a"
	cd /home/xsj321/esp/mqtt/publish_test/cmake-build-debug-idf/esp-idf/log && $(CMAKE_COMMAND) -P CMakeFiles/__idf_log.dir/cmake_clean_target.cmake
	cd /home/xsj321/esp/mqtt/publish_test/cmake-build-debug-idf/esp-idf/log && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/__idf_log.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
esp-idf/log/CMakeFiles/__idf_log.dir/build: esp-idf/log/liblog.a

.PHONY : esp-idf/log/CMakeFiles/__idf_log.dir/build

esp-idf/log/CMakeFiles/__idf_log.dir/clean:
	cd /home/xsj321/esp/mqtt/publish_test/cmake-build-debug-idf/esp-idf/log && $(CMAKE_COMMAND) -P CMakeFiles/__idf_log.dir/cmake_clean.cmake
.PHONY : esp-idf/log/CMakeFiles/__idf_log.dir/clean

esp-idf/log/CMakeFiles/__idf_log.dir/depend:
	cd /home/xsj321/esp/mqtt/publish_test/cmake-build-debug-idf && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/xsj321/esp/mqtt/publish_test /home/xsj321/esp/esp-idf/components/log /home/xsj321/esp/mqtt/publish_test/cmake-build-debug-idf /home/xsj321/esp/mqtt/publish_test/cmake-build-debug-idf/esp-idf/log /home/xsj321/esp/mqtt/publish_test/cmake-build-debug-idf/esp-idf/log/CMakeFiles/__idf_log.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : esp-idf/log/CMakeFiles/__idf_log.dir/depend

