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
CMAKE_SOURCE_DIR = /home/gzh/code/tcpService

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/gzh/code/tcpService

# Include any dependencies generated for this target.
include CMakeFiles/tcpService.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/tcpService.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/tcpService.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/tcpService.dir/flags.make

CMakeFiles/tcpService.dir/main.cpp.o: CMakeFiles/tcpService.dir/flags.make
CMakeFiles/tcpService.dir/main.cpp.o: main.cpp
CMakeFiles/tcpService.dir/main.cpp.o: CMakeFiles/tcpService.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/gzh/code/tcpService/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/tcpService.dir/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/tcpService.dir/main.cpp.o -MF CMakeFiles/tcpService.dir/main.cpp.o.d -o CMakeFiles/tcpService.dir/main.cpp.o -c /home/gzh/code/tcpService/main.cpp

CMakeFiles/tcpService.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tcpService.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/gzh/code/tcpService/main.cpp > CMakeFiles/tcpService.dir/main.cpp.i

CMakeFiles/tcpService.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tcpService.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/gzh/code/tcpService/main.cpp -o CMakeFiles/tcpService.dir/main.cpp.s

# Object files for target tcpService
tcpService_OBJECTS = \
"CMakeFiles/tcpService.dir/main.cpp.o"

# External object files for target tcpService
tcpService_EXTERNAL_OBJECTS =

tcpService: CMakeFiles/tcpService.dir/main.cpp.o
tcpService: CMakeFiles/tcpService.dir/build.make
tcpService: CMakeFiles/tcpService.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/gzh/code/tcpService/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable tcpService"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/tcpService.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/tcpService.dir/build: tcpService
.PHONY : CMakeFiles/tcpService.dir/build

CMakeFiles/tcpService.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/tcpService.dir/cmake_clean.cmake
.PHONY : CMakeFiles/tcpService.dir/clean

CMakeFiles/tcpService.dir/depend:
	cd /home/gzh/code/tcpService && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/gzh/code/tcpService /home/gzh/code/tcpService /home/gzh/code/tcpService /home/gzh/code/tcpService /home/gzh/code/tcpService/CMakeFiles/tcpService.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/tcpService.dir/depend
