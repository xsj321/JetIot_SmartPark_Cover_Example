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

# Utility rule file for bootloader.

# Include the progress variables for this target.
include CMakeFiles/bootloader.dir/progress.make

CMakeFiles/bootloader: CMakeFiles/bootloader-complete


CMakeFiles/bootloader-complete: bootloader-prefix/src/bootloader-stamp/bootloader-install
CMakeFiles/bootloader-complete: bootloader-prefix/src/bootloader-stamp/bootloader-mkdir
CMakeFiles/bootloader-complete: bootloader-prefix/src/bootloader-stamp/bootloader-download
CMakeFiles/bootloader-complete: bootloader-prefix/src/bootloader-stamp/bootloader-update
CMakeFiles/bootloader-complete: bootloader-prefix/src/bootloader-stamp/bootloader-patch
CMakeFiles/bootloader-complete: bootloader-prefix/src/bootloader-stamp/bootloader-configure
CMakeFiles/bootloader-complete: bootloader-prefix/src/bootloader-stamp/bootloader-build
CMakeFiles/bootloader-complete: bootloader-prefix/src/bootloader-stamp/bootloader-install
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/xsj321/esp/mqtt/publish_test/cmake-build-debug-idf/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Completed 'bootloader'"
	/opt/apps/com.jetbrains.clion/files/bin/cmake/linux/bin/cmake -E make_directory /home/xsj321/esp/mqtt/publish_test/cmake-build-debug-idf/CMakeFiles
	/opt/apps/com.jetbrains.clion/files/bin/cmake/linux/bin/cmake -E touch /home/xsj321/esp/mqtt/publish_test/cmake-build-debug-idf/CMakeFiles/bootloader-complete
	/opt/apps/com.jetbrains.clion/files/bin/cmake/linux/bin/cmake -E touch /home/xsj321/esp/mqtt/publish_test/cmake-build-debug-idf/bootloader-prefix/src/bootloader-stamp/bootloader-done

bootloader-prefix/src/bootloader-stamp/bootloader-install: bootloader-prefix/src/bootloader-stamp/bootloader-build
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/xsj321/esp/mqtt/publish_test/cmake-build-debug-idf/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "No install step for 'bootloader'"
	cd /home/xsj321/esp/mqtt/publish_test/cmake-build-debug-idf/bootloader && /opt/apps/com.jetbrains.clion/files/bin/cmake/linux/bin/cmake -E echo_append
	cd /home/xsj321/esp/mqtt/publish_test/cmake-build-debug-idf/bootloader && /opt/apps/com.jetbrains.clion/files/bin/cmake/linux/bin/cmake -E touch /home/xsj321/esp/mqtt/publish_test/cmake-build-debug-idf/bootloader-prefix/src/bootloader-stamp/bootloader-install

bootloader-prefix/src/bootloader-stamp/bootloader-mkdir:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/xsj321/esp/mqtt/publish_test/cmake-build-debug-idf/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Creating directories for 'bootloader'"
	/opt/apps/com.jetbrains.clion/files/bin/cmake/linux/bin/cmake -E make_directory /home/xsj321/esp/esp-idf/components/bootloader/subproject
	/opt/apps/com.jetbrains.clion/files/bin/cmake/linux/bin/cmake -E make_directory /home/xsj321/esp/mqtt/publish_test/cmake-build-debug-idf/bootloader
	/opt/apps/com.jetbrains.clion/files/bin/cmake/linux/bin/cmake -E make_directory /home/xsj321/esp/mqtt/publish_test/cmake-build-debug-idf/bootloader-prefix
	/opt/apps/com.jetbrains.clion/files/bin/cmake/linux/bin/cmake -E make_directory /home/xsj321/esp/mqtt/publish_test/cmake-build-debug-idf/bootloader-prefix/tmp
	/opt/apps/com.jetbrains.clion/files/bin/cmake/linux/bin/cmake -E make_directory /home/xsj321/esp/mqtt/publish_test/cmake-build-debug-idf/bootloader-prefix/src/bootloader-stamp
	/opt/apps/com.jetbrains.clion/files/bin/cmake/linux/bin/cmake -E make_directory /home/xsj321/esp/mqtt/publish_test/cmake-build-debug-idf/bootloader-prefix/src
	/opt/apps/com.jetbrains.clion/files/bin/cmake/linux/bin/cmake -E make_directory /home/xsj321/esp/mqtt/publish_test/cmake-build-debug-idf/bootloader-prefix/src/bootloader-stamp
	/opt/apps/com.jetbrains.clion/files/bin/cmake/linux/bin/cmake -E touch /home/xsj321/esp/mqtt/publish_test/cmake-build-debug-idf/bootloader-prefix/src/bootloader-stamp/bootloader-mkdir

bootloader-prefix/src/bootloader-stamp/bootloader-download: bootloader-prefix/src/bootloader-stamp/bootloader-mkdir
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/xsj321/esp/mqtt/publish_test/cmake-build-debug-idf/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "No download step for 'bootloader'"
	/opt/apps/com.jetbrains.clion/files/bin/cmake/linux/bin/cmake -E echo_append
	/opt/apps/com.jetbrains.clion/files/bin/cmake/linux/bin/cmake -E touch /home/xsj321/esp/mqtt/publish_test/cmake-build-debug-idf/bootloader-prefix/src/bootloader-stamp/bootloader-download

bootloader-prefix/src/bootloader-stamp/bootloader-update: bootloader-prefix/src/bootloader-stamp/bootloader-download
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/xsj321/esp/mqtt/publish_test/cmake-build-debug-idf/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "No update step for 'bootloader'"
	/opt/apps/com.jetbrains.clion/files/bin/cmake/linux/bin/cmake -E echo_append
	/opt/apps/com.jetbrains.clion/files/bin/cmake/linux/bin/cmake -E touch /home/xsj321/esp/mqtt/publish_test/cmake-build-debug-idf/bootloader-prefix/src/bootloader-stamp/bootloader-update

bootloader-prefix/src/bootloader-stamp/bootloader-patch: bootloader-prefix/src/bootloader-stamp/bootloader-download
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/xsj321/esp/mqtt/publish_test/cmake-build-debug-idf/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "No patch step for 'bootloader'"
	/opt/apps/com.jetbrains.clion/files/bin/cmake/linux/bin/cmake -E echo_append
	/opt/apps/com.jetbrains.clion/files/bin/cmake/linux/bin/cmake -E touch /home/xsj321/esp/mqtt/publish_test/cmake-build-debug-idf/bootloader-prefix/src/bootloader-stamp/bootloader-patch

bootloader-prefix/src/bootloader-stamp/bootloader-configure: bootloader-prefix/tmp/bootloader-cfgcmd.txt
bootloader-prefix/src/bootloader-stamp/bootloader-configure: bootloader-prefix/src/bootloader-stamp/bootloader-update
bootloader-prefix/src/bootloader-stamp/bootloader-configure: bootloader-prefix/src/bootloader-stamp/bootloader-patch
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/xsj321/esp/mqtt/publish_test/cmake-build-debug-idf/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Performing configure step for 'bootloader'"
	cd /home/xsj321/esp/mqtt/publish_test/cmake-build-debug-idf/bootloader && /opt/apps/com.jetbrains.clion/files/bin/cmake/linux/bin/cmake -DSDKCONFIG=/home/xsj321/esp/mqtt/publish_test/sdkconfig -DIDF_PATH=/home/xsj321/esp/esp-idf -DIDF_TARGET=esp32 -DPYTHON_DEPS_CHECKED=1 -DPYTHON=/home/xsj321/.espressif/python_env/idf4.1_py3.7_env/bin/python -DEXTRA_COMPONENT_DIRS=/home/xsj321/esp/esp-idf/components/bootloader -DLEGACY_INCLUDE_COMMON_HEADERS= "-GCodeBlocks - Unix Makefiles" /home/xsj321/esp/esp-idf/components/bootloader/subproject
	cd /home/xsj321/esp/mqtt/publish_test/cmake-build-debug-idf/bootloader && /opt/apps/com.jetbrains.clion/files/bin/cmake/linux/bin/cmake -E touch /home/xsj321/esp/mqtt/publish_test/cmake-build-debug-idf/bootloader-prefix/src/bootloader-stamp/bootloader-configure

bootloader-prefix/src/bootloader-stamp/bootloader-build: bootloader-prefix/src/bootloader-stamp/bootloader-configure
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/xsj321/esp/mqtt/publish_test/cmake-build-debug-idf/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Performing build step for 'bootloader'"
	cd /home/xsj321/esp/mqtt/publish_test/cmake-build-debug-idf/bootloader && $(MAKE)

bootloader: CMakeFiles/bootloader
bootloader: CMakeFiles/bootloader-complete
bootloader: bootloader-prefix/src/bootloader-stamp/bootloader-install
bootloader: bootloader-prefix/src/bootloader-stamp/bootloader-mkdir
bootloader: bootloader-prefix/src/bootloader-stamp/bootloader-download
bootloader: bootloader-prefix/src/bootloader-stamp/bootloader-update
bootloader: bootloader-prefix/src/bootloader-stamp/bootloader-patch
bootloader: bootloader-prefix/src/bootloader-stamp/bootloader-configure
bootloader: bootloader-prefix/src/bootloader-stamp/bootloader-build
bootloader: CMakeFiles/bootloader.dir/build.make

.PHONY : bootloader

# Rule to build all files generated by this target.
CMakeFiles/bootloader.dir/build: bootloader

.PHONY : CMakeFiles/bootloader.dir/build

CMakeFiles/bootloader.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/bootloader.dir/cmake_clean.cmake
.PHONY : CMakeFiles/bootloader.dir/clean

CMakeFiles/bootloader.dir/depend:
	cd /home/xsj321/esp/mqtt/publish_test/cmake-build-debug-idf && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/xsj321/esp/mqtt/publish_test /home/xsj321/esp/mqtt/publish_test /home/xsj321/esp/mqtt/publish_test/cmake-build-debug-idf /home/xsj321/esp/mqtt/publish_test/cmake-build-debug-idf /home/xsj321/esp/mqtt/publish_test/cmake-build-debug-idf/CMakeFiles/bootloader.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/bootloader.dir/depend
