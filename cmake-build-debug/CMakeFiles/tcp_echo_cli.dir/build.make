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
include CMakeFiles/tcp_echo_cli.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/tcp_echo_cli.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/tcp_echo_cli.dir/flags.make

CMakeFiles/tcp_echo_cli.dir/src/tcp_echo/clilent.c.o: CMakeFiles/tcp_echo_cli.dir/flags.make
CMakeFiles/tcp_echo_cli.dir/src/tcp_echo/clilent.c.o: ../src/tcp_echo/clilent.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/suoiccc/development/C++/sockets_toy/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/tcp_echo_cli.dir/src/tcp_echo/clilent.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/tcp_echo_cli.dir/src/tcp_echo/clilent.c.o   -c /Users/suoiccc/development/C++/sockets_toy/src/tcp_echo/clilent.c

CMakeFiles/tcp_echo_cli.dir/src/tcp_echo/clilent.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/tcp_echo_cli.dir/src/tcp_echo/clilent.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/suoiccc/development/C++/sockets_toy/src/tcp_echo/clilent.c > CMakeFiles/tcp_echo_cli.dir/src/tcp_echo/clilent.c.i

CMakeFiles/tcp_echo_cli.dir/src/tcp_echo/clilent.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/tcp_echo_cli.dir/src/tcp_echo/clilent.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/suoiccc/development/C++/sockets_toy/src/tcp_echo/clilent.c -o CMakeFiles/tcp_echo_cli.dir/src/tcp_echo/clilent.c.s

CMakeFiles/tcp_echo_cli.dir/src/tcp_echo/clilent.c.o.requires:

.PHONY : CMakeFiles/tcp_echo_cli.dir/src/tcp_echo/clilent.c.o.requires

CMakeFiles/tcp_echo_cli.dir/src/tcp_echo/clilent.c.o.provides: CMakeFiles/tcp_echo_cli.dir/src/tcp_echo/clilent.c.o.requires
	$(MAKE) -f CMakeFiles/tcp_echo_cli.dir/build.make CMakeFiles/tcp_echo_cli.dir/src/tcp_echo/clilent.c.o.provides.build
.PHONY : CMakeFiles/tcp_echo_cli.dir/src/tcp_echo/clilent.c.o.provides

CMakeFiles/tcp_echo_cli.dir/src/tcp_echo/clilent.c.o.provides.build: CMakeFiles/tcp_echo_cli.dir/src/tcp_echo/clilent.c.o


# Object files for target tcp_echo_cli
tcp_echo_cli_OBJECTS = \
"CMakeFiles/tcp_echo_cli.dir/src/tcp_echo/clilent.c.o"

# External object files for target tcp_echo_cli
tcp_echo_cli_EXTERNAL_OBJECTS =

tcp_echo_cli: CMakeFiles/tcp_echo_cli.dir/src/tcp_echo/clilent.c.o
tcp_echo_cli: CMakeFiles/tcp_echo_cli.dir/build.make
tcp_echo_cli: CMakeFiles/tcp_echo_cli.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/suoiccc/development/C++/sockets_toy/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable tcp_echo_cli"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/tcp_echo_cli.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/tcp_echo_cli.dir/build: tcp_echo_cli

.PHONY : CMakeFiles/tcp_echo_cli.dir/build

CMakeFiles/tcp_echo_cli.dir/requires: CMakeFiles/tcp_echo_cli.dir/src/tcp_echo/clilent.c.o.requires

.PHONY : CMakeFiles/tcp_echo_cli.dir/requires

CMakeFiles/tcp_echo_cli.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/tcp_echo_cli.dir/cmake_clean.cmake
.PHONY : CMakeFiles/tcp_echo_cli.dir/clean

CMakeFiles/tcp_echo_cli.dir/depend:
	cd /Users/suoiccc/development/C++/sockets_toy/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/suoiccc/development/C++/sockets_toy /Users/suoiccc/development/C++/sockets_toy /Users/suoiccc/development/C++/sockets_toy/cmake-build-debug /Users/suoiccc/development/C++/sockets_toy/cmake-build-debug /Users/suoiccc/development/C++/sockets_toy/cmake-build-debug/CMakeFiles/tcp_echo_cli.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/tcp_echo_cli.dir/depend

