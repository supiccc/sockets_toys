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
include CMakeFiles/echo_server.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/echo_server.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/echo_server.dir/flags.make

CMakeFiles/echo_server.dir/src/serv_echo/server.cpp.o: CMakeFiles/echo_server.dir/flags.make
CMakeFiles/echo_server.dir/src/serv_echo/server.cpp.o: ../src/serv_echo/server.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/suoiccc/development/C++/sockets_toy/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/echo_server.dir/src/serv_echo/server.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/echo_server.dir/src/serv_echo/server.cpp.o -c /Users/suoiccc/development/C++/sockets_toy/src/serv_echo/server.cpp

CMakeFiles/echo_server.dir/src/serv_echo/server.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/echo_server.dir/src/serv_echo/server.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/suoiccc/development/C++/sockets_toy/src/serv_echo/server.cpp > CMakeFiles/echo_server.dir/src/serv_echo/server.cpp.i

CMakeFiles/echo_server.dir/src/serv_echo/server.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/echo_server.dir/src/serv_echo/server.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/suoiccc/development/C++/sockets_toy/src/serv_echo/server.cpp -o CMakeFiles/echo_server.dir/src/serv_echo/server.cpp.s

CMakeFiles/echo_server.dir/src/serv_echo/server.cpp.o.requires:

.PHONY : CMakeFiles/echo_server.dir/src/serv_echo/server.cpp.o.requires

CMakeFiles/echo_server.dir/src/serv_echo/server.cpp.o.provides: CMakeFiles/echo_server.dir/src/serv_echo/server.cpp.o.requires
	$(MAKE) -f CMakeFiles/echo_server.dir/build.make CMakeFiles/echo_server.dir/src/serv_echo/server.cpp.o.provides.build
.PHONY : CMakeFiles/echo_server.dir/src/serv_echo/server.cpp.o.provides

CMakeFiles/echo_server.dir/src/serv_echo/server.cpp.o.provides.build: CMakeFiles/echo_server.dir/src/serv_echo/server.cpp.o


# Object files for target echo_server
echo_server_OBJECTS = \
"CMakeFiles/echo_server.dir/src/serv_echo/server.cpp.o"

# External object files for target echo_server
echo_server_EXTERNAL_OBJECTS =

echo_server: CMakeFiles/echo_server.dir/src/serv_echo/server.cpp.o
echo_server: CMakeFiles/echo_server.dir/build.make
echo_server: CMakeFiles/echo_server.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/suoiccc/development/C++/sockets_toy/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable echo_server"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/echo_server.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/echo_server.dir/build: echo_server

.PHONY : CMakeFiles/echo_server.dir/build

CMakeFiles/echo_server.dir/requires: CMakeFiles/echo_server.dir/src/serv_echo/server.cpp.o.requires

.PHONY : CMakeFiles/echo_server.dir/requires

CMakeFiles/echo_server.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/echo_server.dir/cmake_clean.cmake
.PHONY : CMakeFiles/echo_server.dir/clean

CMakeFiles/echo_server.dir/depend:
	cd /Users/suoiccc/development/C++/sockets_toy/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/suoiccc/development/C++/sockets_toy /Users/suoiccc/development/C++/sockets_toy /Users/suoiccc/development/C++/sockets_toy/cmake-build-debug /Users/suoiccc/development/C++/sockets_toy/cmake-build-debug /Users/suoiccc/development/C++/sockets_toy/cmake-build-debug/CMakeFiles/echo_server.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/echo_server.dir/depend

