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
CMAKE_SOURCE_DIR = /home/longnguyen/Blink-hash/index/blink-buffer

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/longnguyen/Blink-hash/index/blink-buffer/build

# Include any dependencies generated for this target.
include lib/CMakeFiles/blink_buffer_flush.dir/depend.make

# Include the progress variables for this target.
include lib/CMakeFiles/blink_buffer_flush.dir/progress.make

# Include the compile flags for this target's objects.
include lib/CMakeFiles/blink_buffer_flush.dir/flags.make

lib/CMakeFiles/blink_buffer_flush.dir/hash.cpp.o: lib/CMakeFiles/blink_buffer_flush.dir/flags.make
lib/CMakeFiles/blink_buffer_flush.dir/hash.cpp.o: ../lib/hash.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/longnguyen/Blink-hash/index/blink-buffer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object lib/CMakeFiles/blink_buffer_flush.dir/hash.cpp.o"
	cd /home/longnguyen/Blink-hash/index/blink-buffer/build/lib && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/blink_buffer_flush.dir/hash.cpp.o -c /home/longnguyen/Blink-hash/index/blink-buffer/lib/hash.cpp

lib/CMakeFiles/blink_buffer_flush.dir/hash.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/blink_buffer_flush.dir/hash.cpp.i"
	cd /home/longnguyen/Blink-hash/index/blink-buffer/build/lib && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/longnguyen/Blink-hash/index/blink-buffer/lib/hash.cpp > CMakeFiles/blink_buffer_flush.dir/hash.cpp.i

lib/CMakeFiles/blink_buffer_flush.dir/hash.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/blink_buffer_flush.dir/hash.cpp.s"
	cd /home/longnguyen/Blink-hash/index/blink-buffer/build/lib && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/longnguyen/Blink-hash/index/blink-buffer/lib/hash.cpp -o CMakeFiles/blink_buffer_flush.dir/hash.cpp.s

# Object files for target blink_buffer_flush
blink_buffer_flush_OBJECTS = \
"CMakeFiles/blink_buffer_flush.dir/hash.cpp.o"

# External object files for target blink_buffer_flush
blink_buffer_flush_EXTERNAL_OBJECTS =

lib/libblink_buffer_flush.a: lib/CMakeFiles/blink_buffer_flush.dir/hash.cpp.o
lib/libblink_buffer_flush.a: lib/CMakeFiles/blink_buffer_flush.dir/build.make
lib/libblink_buffer_flush.a: lib/CMakeFiles/blink_buffer_flush.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/longnguyen/Blink-hash/index/blink-buffer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libblink_buffer_flush.a"
	cd /home/longnguyen/Blink-hash/index/blink-buffer/build/lib && $(CMAKE_COMMAND) -P CMakeFiles/blink_buffer_flush.dir/cmake_clean_target.cmake
	cd /home/longnguyen/Blink-hash/index/blink-buffer/build/lib && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/blink_buffer_flush.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
lib/CMakeFiles/blink_buffer_flush.dir/build: lib/libblink_buffer_flush.a

.PHONY : lib/CMakeFiles/blink_buffer_flush.dir/build

lib/CMakeFiles/blink_buffer_flush.dir/clean:
	cd /home/longnguyen/Blink-hash/index/blink-buffer/build/lib && $(CMAKE_COMMAND) -P CMakeFiles/blink_buffer_flush.dir/cmake_clean.cmake
.PHONY : lib/CMakeFiles/blink_buffer_flush.dir/clean

lib/CMakeFiles/blink_buffer_flush.dir/depend:
	cd /home/longnguyen/Blink-hash/index/blink-buffer/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/longnguyen/Blink-hash/index/blink-buffer /home/longnguyen/Blink-hash/index/blink-buffer/lib /home/longnguyen/Blink-hash/index/blink-buffer/build /home/longnguyen/Blink-hash/index/blink-buffer/build/lib /home/longnguyen/Blink-hash/index/blink-buffer/build/lib/CMakeFiles/blink_buffer_flush.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : lib/CMakeFiles/blink_buffer_flush.dir/depend

