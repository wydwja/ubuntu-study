# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/gzh/code/tcpClirent

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/gzh/code/tcpClirent

# Include any dependencies generated for this target.
include CMakeFiles/tcpclirent.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/tcpclirent.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/tcpclirent.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/tcpclirent.dir/flags.make

CMakeFiles/tcpclirent.dir/main.cpp.o: CMakeFiles/tcpclirent.dir/flags.make
CMakeFiles/tcpclirent.dir/main.cpp.o: main.cpp
CMakeFiles/tcpclirent.dir/main.cpp.o: CMakeFiles/tcpclirent.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/gzh/code/tcpClirent/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/tcpclirent.dir/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/tcpclirent.dir/main.cpp.o -MF CMakeFiles/tcpclirent.dir/main.cpp.o.d -o CMakeFiles/tcpclirent.dir/main.cpp.o -c /home/gzh/code/tcpClirent/main.cpp

CMakeFiles/tcpclirent.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tcpclirent.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/gzh/code/tcpClirent/main.cpp > CMakeFiles/tcpclirent.dir/main.cpp.i

CMakeFiles/tcpclirent.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tcpclirent.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/gzh/code/tcpClirent/main.cpp -o CMakeFiles/tcpclirent.dir/main.cpp.s

# Object files for target tcpclirent
tcpclirent_OBJECTS = \
"CMakeFiles/tcpclirent.dir/main.cpp.o"

# External object files for target tcpclirent
tcpclirent_EXTERNAL_OBJECTS =

tcpclirent: CMakeFiles/tcpclirent.dir/main.cpp.o
tcpclirent: CMakeFiles/tcpclirent.dir/build.make
tcpclirent: CMakeFiles/tcpclirent.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/gzh/code/tcpClirent/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable tcpclirent"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/tcpclirent.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/tcpclirent.dir/build: tcpclirent
.PHONY : CMakeFiles/tcpclirent.dir/build

CMakeFiles/tcpclirent.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/tcpclirent.dir/cmake_clean.cmake
.PHONY : CMakeFiles/tcpclirent.dir/clean

CMakeFiles/tcpclirent.dir/depend:
	cd /home/gzh/code/tcpClirent && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/gzh/code/tcpClirent /home/gzh/code/tcpClirent /home/gzh/code/tcpClirent /home/gzh/code/tcpClirent /home/gzh/code/tcpClirent/CMakeFiles/tcpclirent.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/tcpclirent.dir/depend

