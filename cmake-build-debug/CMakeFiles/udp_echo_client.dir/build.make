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
include CMakeFiles/udp_echo_client.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/udp_echo_client.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/udp_echo_client.dir/flags.make

CMakeFiles/udp_echo_client.dir/src/udp_echo/client.cpp.o: CMakeFiles/udp_echo_client.dir/flags.make
CMakeFiles/udp_echo_client.dir/src/udp_echo/client.cpp.o: ../src/udp_echo/client.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/suoiccc/development/C++/sockets_toy/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/udp_echo_client.dir/src/udp_echo/client.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/udp_echo_client.dir/src/udp_echo/client.cpp.o -c /Users/suoiccc/development/C++/sockets_toy/src/udp_echo/client.cpp

CMakeFiles/udp_echo_client.dir/src/udp_echo/client.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/udp_echo_client.dir/src/udp_echo/client.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/suoiccc/development/C++/sockets_toy/src/udp_echo/client.cpp > CMakeFiles/udp_echo_client.dir/src/udp_echo/client.cpp.i

CMakeFiles/udp_echo_client.dir/src/udp_echo/client.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/udp_echo_client.dir/src/udp_echo/client.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/suoiccc/development/C++/sockets_toy/src/udp_echo/client.cpp -o CMakeFiles/udp_echo_client.dir/src/udp_echo/client.cpp.s

CMakeFiles/udp_echo_client.dir/src/udp_echo/client.cpp.o.requires:

.PHONY : CMakeFiles/udp_echo_client.dir/src/udp_echo/client.cpp.o.requires

CMakeFiles/udp_echo_client.dir/src/udp_echo/client.cpp.o.provides: CMakeFiles/udp_echo_client.dir/src/udp_echo/client.cpp.o.requires
	$(MAKE) -f CMakeFiles/udp_echo_client.dir/build.make CMakeFiles/udp_echo_client.dir/src/udp_echo/client.cpp.o.provides.build
.PHONY : CMakeFiles/udp_echo_client.dir/src/udp_echo/client.cpp.o.provides

CMakeFiles/udp_echo_client.dir/src/udp_echo/client.cpp.o.provides.build: CMakeFiles/udp_echo_client.dir/src/udp_echo/client.cpp.o


# Object files for target udp_echo_client
udp_echo_client_OBJECTS = \
"CMakeFiles/udp_echo_client.dir/src/udp_echo/client.cpp.o"

# External object files for target udp_echo_client
udp_echo_client_EXTERNAL_OBJECTS =

udp_echo_client: CMakeFiles/udp_echo_client.dir/src/udp_echo/client.cpp.o
udp_echo_client: CMakeFiles/udp_echo_client.dir/build.make
udp_echo_client: CMakeFiles/udp_echo_client.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/suoiccc/development/C++/sockets_toy/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable udp_echo_client"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/udp_echo_client.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/udp_echo_client.dir/build: udp_echo_client

.PHONY : CMakeFiles/udp_echo_client.dir/build

CMakeFiles/udp_echo_client.dir/requires: CMakeFiles/udp_echo_client.dir/src/udp_echo/client.cpp.o.requires

.PHONY : CMakeFiles/udp_echo_client.dir/requires

CMakeFiles/udp_echo_client.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/udp_echo_client.dir/cmake_clean.cmake
.PHONY : CMakeFiles/udp_echo_client.dir/clean

CMakeFiles/udp_echo_client.dir/depend:
	cd /Users/suoiccc/development/C++/sockets_toy/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/suoiccc/development/C++/sockets_toy /Users/suoiccc/development/C++/sockets_toy /Users/suoiccc/development/C++/sockets_toy/cmake-build-debug /Users/suoiccc/development/C++/sockets_toy/cmake-build-debug /Users/suoiccc/development/C++/sockets_toy/cmake-build-debug/CMakeFiles/udp_echo_client.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/udp_echo_client.dir/depend
