# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_SOURCE_DIR = /home/longnguyen/Blink-hash/index/blink-buffer-batch

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/longnguyen/Blink-hash/index/blink-buffer-batch/build

# Include any dependencies generated for this target.
include test/CMakeFiles/tree_timestamp.dir/depend.make

# Include the progress variables for this target.
include test/CMakeFiles/tree_timestamp.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/tree_timestamp.dir/flags.make

test/CMakeFiles/tree_timestamp.dir/timestamp.cpp.o: test/CMakeFiles/tree_timestamp.dir/flags.make
test/CMakeFiles/tree_timestamp.dir/timestamp.cpp.o: ../test/timestamp.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/longnguyen/Blink-hash/index/blink-buffer-batch/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/CMakeFiles/tree_timestamp.dir/timestamp.cpp.o"
	cd /home/longnguyen/Blink-hash/index/blink-buffer-batch/build/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tree_timestamp.dir/timestamp.cpp.o -c /home/longnguyen/Blink-hash/index/blink-buffer-batch/test/timestamp.cpp

test/CMakeFiles/tree_timestamp.dir/timestamp.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tree_timestamp.dir/timestamp.cpp.i"
	cd /home/longnguyen/Blink-hash/index/blink-buffer-batch/build/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/longnguyen/Blink-hash/index/blink-buffer-batch/test/timestamp.cpp > CMakeFiles/tree_timestamp.dir/timestamp.cpp.i

test/CMakeFiles/tree_timestamp.dir/timestamp.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tree_timestamp.dir/timestamp.cpp.s"
	cd /home/longnguyen/Blink-hash/index/blink-buffer-batch/build/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/longnguyen/Blink-hash/index/blink-buffer-batch/test/timestamp.cpp -o CMakeFiles/tree_timestamp.dir/timestamp.cpp.s

# Object files for target tree_timestamp
tree_timestamp_OBJECTS = \
"CMakeFiles/tree_timestamp.dir/timestamp.cpp.o"

# External object files for target tree_timestamp
tree_timestamp_EXTERNAL_OBJECTS =

test/tree_timestamp: test/CMakeFiles/tree_timestamp.dir/timestamp.cpp.o
test/tree_timestamp: test/CMakeFiles/tree_timestamp.dir/build.make
test/tree_timestamp: lib/libblink_buffer_batch.a
test/tree_timestamp: tbb_cmake_build/tbb_cmake_build_subdir_release/libtbb.so.2
test/tree_timestamp: test/CMakeFiles/tree_timestamp.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/longnguyen/Blink-hash/index/blink-buffer-batch/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable tree_timestamp"
	cd /home/longnguyen/Blink-hash/index/blink-buffer-batch/build/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/tree_timestamp.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/tree_timestamp.dir/build: test/tree_timestamp

.PHONY : test/CMakeFiles/tree_timestamp.dir/build

test/CMakeFiles/tree_timestamp.dir/clean:
	cd /home/longnguyen/Blink-hash/index/blink-buffer-batch/build/test && $(CMAKE_COMMAND) -P CMakeFiles/tree_timestamp.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/tree_timestamp.dir/clean

test/CMakeFiles/tree_timestamp.dir/depend:
	cd /home/longnguyen/Blink-hash/index/blink-buffer-batch/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/longnguyen/Blink-hash/index/blink-buffer-batch /home/longnguyen/Blink-hash/index/blink-buffer-batch/test /home/longnguyen/Blink-hash/index/blink-buffer-batch/build /home/longnguyen/Blink-hash/index/blink-buffer-batch/build/test /home/longnguyen/Blink-hash/index/blink-buffer-batch/build/test/CMakeFiles/tree_timestamp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/tree_timestamp.dir/depend
