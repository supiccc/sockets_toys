# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/suoiccc/development/C++/sockets_toy

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/suoiccc/development/C++/sockets_toy/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/ntop6_toy.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/ntop6_toy.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ntop6_toy.dir/flags.make

CMakeFiles/ntop6_toy.dir/src/inect_fun/ntop6_toy.cpp.o: CMakeFiles/ntop6_toy.dir/flags.make
CMakeFiles/ntop6_toy.dir/src/inect_fun/ntop6_toy.cpp.o: ../src/inect_fun/ntop6_toy.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/suoiccc/development/C++/sockets_toy/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/ntop6_toy.dir/src/inect_fun/ntop6_toy.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ntop6_toy.dir/src/inect_fun/ntop6_toy.cpp.o -c /Users/suoiccc/development/C++/sockets_toy/src/inect_fun/ntop6_toy.cpp

CMakeFiles/ntop6_toy.dir/src/inect_fun/ntop6_toy.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ntop6_toy.dir/src/inect_fun/ntop6_toy.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/suoiccc/development/C++/sockets_toy/src/inect_fun/ntop6_toy.cpp > CMakeFiles/ntop6_toy.dir/src/inect_fun/ntop6_toy.cpp.i

CMakeFiles/ntop6_toy.dir/src/inect_fun/ntop6_toy.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ntop6_toy.dir/src/inect_fun/ntop6_toy.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/suoiccc/development/C++/sockets_toy/src/inect_fun/ntop6_toy.cpp -o CMakeFiles/ntop6_toy.dir/src/inect_fun/ntop6_toy.cpp.s

CMakeFiles/ntop6_toy.dir/src/inect_fun/ntop6_toy.cpp.o.requires:

.PHONY : CMakeFiles/ntop6_toy.dir/src/inect_fun/ntop6_toy.cpp.o.requires

CMakeFiles/ntop6_toy.dir/src/inect_fun/ntop6_toy.cpp.o.provides: CMakeFiles/ntop6_toy.dir/src/inect_fun/ntop6_toy.cpp.o.requires
	$(MAKE) -f CMakeFiles/ntop6_toy.dir/build.make CMakeFiles/ntop6_toy.dir/src/inect_fun/ntop6_toy.cpp.o.provides.build
.PHONY : CMakeFiles/ntop6_toy.dir/src/inect_fun/ntop6_toy.cpp.o.provides

CMakeFiles/ntop6_toy.dir/src/inect_fun/ntop6_toy.cpp.o.provides.build: CMakeFiles/ntop6_toy.dir/src/inect_fun/ntop6_toy.cpp.o


# Object files for target ntop6_toy
ntop6_toy_OBJECTS = \
"CMakeFiles/ntop6_toy.dir/src/inect_fun/ntop6_toy.cpp.o"

# External object files for target ntop6_toy
ntop6_toy_EXTERNAL_OBJECTS =

ntop6_toy: CMakeFiles/ntop6_toy.dir/src/inect_fun/ntop6_toy.cpp.o
ntop6_toy: CMakeFiles/ntop6_toy.dir/build.make
ntop6_toy: CMakeFiles/ntop6_toy.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/suoiccc/development/C++/sockets_toy/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ntop6_toy"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ntop6_toy.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ntop6_toy.dir/build: ntop6_toy

.PHONY : CMakeFiles/ntop6_toy.dir/build

CMakeFiles/ntop6_toy.dir/requires: CMakeFiles/ntop6_toy.dir/src/inect_fun/ntop6_toy.cpp.o.requires

.PHONY : CMakeFiles/ntop6_toy.dir/requires

CMakeFiles/ntop6_toy.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ntop6_toy.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ntop6_toy.dir/clean

CMakeFiles/ntop6_toy.dir/depend:
	cd /Users/suoiccc/development/C++/sockets_toy/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/suoiccc/development/C++/sockets_toy /Users/suoiccc/development/C++/sockets_toy /Users/suoiccc/development/C++/sockets_toy/cmake-build-debug /Users/suoiccc/development/C++/sockets_toy/cmake-build-debug /Users/suoiccc/development/C++/sockets_toy/cmake-build-debug/CMakeFiles/ntop6_toy.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ntop6_toy.dir/depend

