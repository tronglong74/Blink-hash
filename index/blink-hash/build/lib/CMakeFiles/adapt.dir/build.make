# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.26

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

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/longnguyen/Blink-hash/index/blink-hash

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/longnguyen/Blink-hash/index/blink-hash/build

# Include any dependencies generated for this target.
include lib/CMakeFiles/adapt.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include lib/CMakeFiles/adapt.dir/compiler_depend.make

# Include the progress variables for this target.
include lib/CMakeFiles/adapt.dir/progress.make

# Include the compile flags for this target's objects.
include lib/CMakeFiles/adapt.dir/flags.make

lib/CMakeFiles/adapt.dir/Epoche.cpp.o: lib/CMakeFiles/adapt.dir/flags.make
lib/CMakeFiles/adapt.dir/Epoche.cpp.o: /home/longnguyen/Blink-hash/index/blink-hash/lib/Epoche.cpp
lib/CMakeFiles/adapt.dir/Epoche.cpp.o: lib/CMakeFiles/adapt.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/longnguyen/Blink-hash/index/blink-hash/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object lib/CMakeFiles/adapt.dir/Epoche.cpp.o"
	cd /home/longnguyen/Blink-hash/index/blink-hash/build/lib && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT lib/CMakeFiles/adapt.dir/Epoche.cpp.o -MF CMakeFiles/adapt.dir/Epoche.cpp.o.d -o CMakeFiles/adapt.dir/Epoche.cpp.o -c /home/longnguyen/Blink-hash/index/blink-hash/lib/Epoche.cpp

lib/CMakeFiles/adapt.dir/Epoche.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/adapt.dir/Epoche.cpp.i"
	cd /home/longnguyen/Blink-hash/index/blink-hash/build/lib && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/longnguyen/Blink-hash/index/blink-hash/lib/Epoche.cpp > CMakeFiles/adapt.dir/Epoche.cpp.i

lib/CMakeFiles/adapt.dir/Epoche.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/adapt.dir/Epoche.cpp.s"
	cd /home/longnguyen/Blink-hash/index/blink-hash/build/lib && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/longnguyen/Blink-hash/index/blink-hash/lib/Epoche.cpp -o CMakeFiles/adapt.dir/Epoche.cpp.s

lib/CMakeFiles/adapt.dir/hash.cpp.o: lib/CMakeFiles/adapt.dir/flags.make
lib/CMakeFiles/adapt.dir/hash.cpp.o: /home/longnguyen/Blink-hash/index/blink-hash/lib/hash.cpp
lib/CMakeFiles/adapt.dir/hash.cpp.o: lib/CMakeFiles/adapt.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/longnguyen/Blink-hash/index/blink-hash/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object lib/CMakeFiles/adapt.dir/hash.cpp.o"
	cd /home/longnguyen/Blink-hash/index/blink-hash/build/lib && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT lib/CMakeFiles/adapt.dir/hash.cpp.o -MF CMakeFiles/adapt.dir/hash.cpp.o.d -o CMakeFiles/adapt.dir/hash.cpp.o -c /home/longnguyen/Blink-hash/index/blink-hash/lib/hash.cpp

lib/CMakeFiles/adapt.dir/hash.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/adapt.dir/hash.cpp.i"
	cd /home/longnguyen/Blink-hash/index/blink-hash/build/lib && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/longnguyen/Blink-hash/index/blink-hash/lib/hash.cpp > CMakeFiles/adapt.dir/hash.cpp.i

lib/CMakeFiles/adapt.dir/hash.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/adapt.dir/hash.cpp.s"
	cd /home/longnguyen/Blink-hash/index/blink-hash/build/lib && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/longnguyen/Blink-hash/index/blink-hash/lib/hash.cpp -o CMakeFiles/adapt.dir/hash.cpp.s

lib/CMakeFiles/adapt.dir/inode.cpp.o: lib/CMakeFiles/adapt.dir/flags.make
lib/CMakeFiles/adapt.dir/inode.cpp.o: /home/longnguyen/Blink-hash/index/blink-hash/lib/inode.cpp
lib/CMakeFiles/adapt.dir/inode.cpp.o: lib/CMakeFiles/adapt.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/longnguyen/Blink-hash/index/blink-hash/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object lib/CMakeFiles/adapt.dir/inode.cpp.o"
	cd /home/longnguyen/Blink-hash/index/blink-hash/build/lib && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT lib/CMakeFiles/adapt.dir/inode.cpp.o -MF CMakeFiles/adapt.dir/inode.cpp.o.d -o CMakeFiles/adapt.dir/inode.cpp.o -c /home/longnguyen/Blink-hash/index/blink-hash/lib/inode.cpp

lib/CMakeFiles/adapt.dir/inode.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/adapt.dir/inode.cpp.i"
	cd /home/longnguyen/Blink-hash/index/blink-hash/build/lib && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/longnguyen/Blink-hash/index/blink-hash/lib/inode.cpp > CMakeFiles/adapt.dir/inode.cpp.i

lib/CMakeFiles/adapt.dir/inode.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/adapt.dir/inode.cpp.s"
	cd /home/longnguyen/Blink-hash/index/blink-hash/build/lib && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/longnguyen/Blink-hash/index/blink-hash/lib/inode.cpp -o CMakeFiles/adapt.dir/inode.cpp.s

lib/CMakeFiles/adapt.dir/lnode.cpp.o: lib/CMakeFiles/adapt.dir/flags.make
lib/CMakeFiles/adapt.dir/lnode.cpp.o: /home/longnguyen/Blink-hash/index/blink-hash/lib/lnode.cpp
lib/CMakeFiles/adapt.dir/lnode.cpp.o: lib/CMakeFiles/adapt.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/longnguyen/Blink-hash/index/blink-hash/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object lib/CMakeFiles/adapt.dir/lnode.cpp.o"
	cd /home/longnguyen/Blink-hash/index/blink-hash/build/lib && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT lib/CMakeFiles/adapt.dir/lnode.cpp.o -MF CMakeFiles/adapt.dir/lnode.cpp.o.d -o CMakeFiles/adapt.dir/lnode.cpp.o -c /home/longnguyen/Blink-hash/index/blink-hash/lib/lnode.cpp

lib/CMakeFiles/adapt.dir/lnode.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/adapt.dir/lnode.cpp.i"
	cd /home/longnguyen/Blink-hash/index/blink-hash/build/lib && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/longnguyen/Blink-hash/index/blink-hash/lib/lnode.cpp > CMakeFiles/adapt.dir/lnode.cpp.i

lib/CMakeFiles/adapt.dir/lnode.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/adapt.dir/lnode.cpp.s"
	cd /home/longnguyen/Blink-hash/index/blink-hash/build/lib && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/longnguyen/Blink-hash/index/blink-hash/lib/lnode.cpp -o CMakeFiles/adapt.dir/lnode.cpp.s

lib/CMakeFiles/adapt.dir/lnode_btree.cpp.o: lib/CMakeFiles/adapt.dir/flags.make
lib/CMakeFiles/adapt.dir/lnode_btree.cpp.o: /home/longnguyen/Blink-hash/index/blink-hash/lib/lnode_btree.cpp
lib/CMakeFiles/adapt.dir/lnode_btree.cpp.o: lib/CMakeFiles/adapt.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/longnguyen/Blink-hash/index/blink-hash/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object lib/CMakeFiles/adapt.dir/lnode_btree.cpp.o"
	cd /home/longnguyen/Blink-hash/index/blink-hash/build/lib && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT lib/CMakeFiles/adapt.dir/lnode_btree.cpp.o -MF CMakeFiles/adapt.dir/lnode_btree.cpp.o.d -o CMakeFiles/adapt.dir/lnode_btree.cpp.o -c /home/longnguyen/Blink-hash/index/blink-hash/lib/lnode_btree.cpp

lib/CMakeFiles/adapt.dir/lnode_btree.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/adapt.dir/lnode_btree.cpp.i"
	cd /home/longnguyen/Blink-hash/index/blink-hash/build/lib && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/longnguyen/Blink-hash/index/blink-hash/lib/lnode_btree.cpp > CMakeFiles/adapt.dir/lnode_btree.cpp.i

lib/CMakeFiles/adapt.dir/lnode_btree.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/adapt.dir/lnode_btree.cpp.s"
	cd /home/longnguyen/Blink-hash/index/blink-hash/build/lib && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/longnguyen/Blink-hash/index/blink-hash/lib/lnode_btree.cpp -o CMakeFiles/adapt.dir/lnode_btree.cpp.s

lib/CMakeFiles/adapt.dir/lnode_hash.cpp.o: lib/CMakeFiles/adapt.dir/flags.make
lib/CMakeFiles/adapt.dir/lnode_hash.cpp.o: /home/longnguyen/Blink-hash/index/blink-hash/lib/lnode_hash.cpp
lib/CMakeFiles/adapt.dir/lnode_hash.cpp.o: lib/CMakeFiles/adapt.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/longnguyen/Blink-hash/index/blink-hash/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object lib/CMakeFiles/adapt.dir/lnode_hash.cpp.o"
	cd /home/longnguyen/Blink-hash/index/blink-hash/build/lib && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT lib/CMakeFiles/adapt.dir/lnode_hash.cpp.o -MF CMakeFiles/adapt.dir/lnode_hash.cpp.o.d -o CMakeFiles/adapt.dir/lnode_hash.cpp.o -c /home/longnguyen/Blink-hash/index/blink-hash/lib/lnode_hash.cpp

lib/CMakeFiles/adapt.dir/lnode_hash.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/adapt.dir/lnode_hash.cpp.i"
	cd /home/longnguyen/Blink-hash/index/blink-hash/build/lib && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/longnguyen/Blink-hash/index/blink-hash/lib/lnode_hash.cpp > CMakeFiles/adapt.dir/lnode_hash.cpp.i

lib/CMakeFiles/adapt.dir/lnode_hash.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/adapt.dir/lnode_hash.cpp.s"
	cd /home/longnguyen/Blink-hash/index/blink-hash/build/lib && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/longnguyen/Blink-hash/index/blink-hash/lib/lnode_hash.cpp -o CMakeFiles/adapt.dir/lnode_hash.cpp.s

lib/CMakeFiles/adapt.dir/tree.cpp.o: lib/CMakeFiles/adapt.dir/flags.make
lib/CMakeFiles/adapt.dir/tree.cpp.o: /home/longnguyen/Blink-hash/index/blink-hash/lib/tree.cpp
lib/CMakeFiles/adapt.dir/tree.cpp.o: lib/CMakeFiles/adapt.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/longnguyen/Blink-hash/index/blink-hash/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object lib/CMakeFiles/adapt.dir/tree.cpp.o"
	cd /home/longnguyen/Blink-hash/index/blink-hash/build/lib && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT lib/CMakeFiles/adapt.dir/tree.cpp.o -MF CMakeFiles/adapt.dir/tree.cpp.o.d -o CMakeFiles/adapt.dir/tree.cpp.o -c /home/longnguyen/Blink-hash/index/blink-hash/lib/tree.cpp

lib/CMakeFiles/adapt.dir/tree.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/adapt.dir/tree.cpp.i"
	cd /home/longnguyen/Blink-hash/index/blink-hash/build/lib && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/longnguyen/Blink-hash/index/blink-hash/lib/tree.cpp > CMakeFiles/adapt.dir/tree.cpp.i

lib/CMakeFiles/adapt.dir/tree.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/adapt.dir/tree.cpp.s"
	cd /home/longnguyen/Blink-hash/index/blink-hash/build/lib && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/longnguyen/Blink-hash/index/blink-hash/lib/tree.cpp -o CMakeFiles/adapt.dir/tree.cpp.s

# Object files for target adapt
adapt_OBJECTS = \
"CMakeFiles/adapt.dir/Epoche.cpp.o" \
"CMakeFiles/adapt.dir/hash.cpp.o" \
"CMakeFiles/adapt.dir/inode.cpp.o" \
"CMakeFiles/adapt.dir/lnode.cpp.o" \
"CMakeFiles/adapt.dir/lnode_btree.cpp.o" \
"CMakeFiles/adapt.dir/lnode_hash.cpp.o" \
"CMakeFiles/adapt.dir/tree.cpp.o"

# External object files for target adapt
adapt_EXTERNAL_OBJECTS =

lib/libadapt.a: lib/CMakeFiles/adapt.dir/Epoche.cpp.o
lib/libadapt.a: lib/CMakeFiles/adapt.dir/hash.cpp.o
lib/libadapt.a: lib/CMakeFiles/adapt.dir/inode.cpp.o
lib/libadapt.a: lib/CMakeFiles/adapt.dir/lnode.cpp.o
lib/libadapt.a: lib/CMakeFiles/adapt.dir/lnode_btree.cpp.o
lib/libadapt.a: lib/CMakeFiles/adapt.dir/lnode_hash.cpp.o
lib/libadapt.a: lib/CMakeFiles/adapt.dir/tree.cpp.o
lib/libadapt.a: lib/CMakeFiles/adapt.dir/build.make
lib/libadapt.a: lib/CMakeFiles/adapt.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/longnguyen/Blink-hash/index/blink-hash/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Linking CXX static library libadapt.a"
	cd /home/longnguyen/Blink-hash/index/blink-hash/build/lib && $(CMAKE_COMMAND) -P CMakeFiles/adapt.dir/cmake_clean_target.cmake
	cd /home/longnguyen/Blink-hash/index/blink-hash/build/lib && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/adapt.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
lib/CMakeFiles/adapt.dir/build: lib/libadapt.a
.PHONY : lib/CMakeFiles/adapt.dir/build

lib/CMakeFiles/adapt.dir/clean:
	cd /home/longnguyen/Blink-hash/index/blink-hash/build/lib && $(CMAKE_COMMAND) -P CMakeFiles/adapt.dir/cmake_clean.cmake
.PHONY : lib/CMakeFiles/adapt.dir/clean

lib/CMakeFiles/adapt.dir/depend:
	cd /home/longnguyen/Blink-hash/index/blink-hash/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/longnguyen/Blink-hash/index/blink-hash /home/longnguyen/Blink-hash/index/blink-hash/lib /home/longnguyen/Blink-hash/index/blink-hash/build /home/longnguyen/Blink-hash/index/blink-hash/build/lib /home/longnguyen/Blink-hash/index/blink-hash/build/lib/CMakeFiles/adapt.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : lib/CMakeFiles/adapt.dir/depend

