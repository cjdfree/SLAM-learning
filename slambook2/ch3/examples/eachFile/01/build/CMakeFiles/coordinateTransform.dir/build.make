# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.28

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
CMAKE_SOURCE_DIR = /home/cjd/Documents/SLAM-Code/slambook2/ch3/examples/eachFile/01

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/cjd/Documents/SLAM-Code/slambook2/ch3/examples/eachFile/01/build

# Include any dependencies generated for this target.
include CMakeFiles/coordinateTransform.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/coordinateTransform.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/coordinateTransform.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/coordinateTransform.dir/flags.make

CMakeFiles/coordinateTransform.dir/coordinateTransform.cpp.o: CMakeFiles/coordinateTransform.dir/flags.make
CMakeFiles/coordinateTransform.dir/coordinateTransform.cpp.o: /home/cjd/Documents/SLAM-Code/slambook2/ch3/examples/eachFile/01/coordinateTransform.cpp
CMakeFiles/coordinateTransform.dir/coordinateTransform.cpp.o: CMakeFiles/coordinateTransform.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/cjd/Documents/SLAM-Code/slambook2/ch3/examples/eachFile/01/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/coordinateTransform.dir/coordinateTransform.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/coordinateTransform.dir/coordinateTransform.cpp.o -MF CMakeFiles/coordinateTransform.dir/coordinateTransform.cpp.o.d -o CMakeFiles/coordinateTransform.dir/coordinateTransform.cpp.o -c /home/cjd/Documents/SLAM-Code/slambook2/ch3/examples/eachFile/01/coordinateTransform.cpp

CMakeFiles/coordinateTransform.dir/coordinateTransform.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/coordinateTransform.dir/coordinateTransform.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cjd/Documents/SLAM-Code/slambook2/ch3/examples/eachFile/01/coordinateTransform.cpp > CMakeFiles/coordinateTransform.dir/coordinateTransform.cpp.i

CMakeFiles/coordinateTransform.dir/coordinateTransform.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/coordinateTransform.dir/coordinateTransform.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cjd/Documents/SLAM-Code/slambook2/ch3/examples/eachFile/01/coordinateTransform.cpp -o CMakeFiles/coordinateTransform.dir/coordinateTransform.cpp.s

# Object files for target coordinateTransform
coordinateTransform_OBJECTS = \
"CMakeFiles/coordinateTransform.dir/coordinateTransform.cpp.o"

# External object files for target coordinateTransform
coordinateTransform_EXTERNAL_OBJECTS =

coordinateTransform: CMakeFiles/coordinateTransform.dir/coordinateTransform.cpp.o
coordinateTransform: CMakeFiles/coordinateTransform.dir/build.make
coordinateTransform: CMakeFiles/coordinateTransform.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/cjd/Documents/SLAM-Code/slambook2/ch3/examples/eachFile/01/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable coordinateTransform"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/coordinateTransform.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/coordinateTransform.dir/build: coordinateTransform
.PHONY : CMakeFiles/coordinateTransform.dir/build

CMakeFiles/coordinateTransform.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/coordinateTransform.dir/cmake_clean.cmake
.PHONY : CMakeFiles/coordinateTransform.dir/clean

CMakeFiles/coordinateTransform.dir/depend:
	cd /home/cjd/Documents/SLAM-Code/slambook2/ch3/examples/eachFile/01/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/cjd/Documents/SLAM-Code/slambook2/ch3/examples/eachFile/01 /home/cjd/Documents/SLAM-Code/slambook2/ch3/examples/eachFile/01 /home/cjd/Documents/SLAM-Code/slambook2/ch3/examples/eachFile/01/build /home/cjd/Documents/SLAM-Code/slambook2/ch3/examples/eachFile/01/build /home/cjd/Documents/SLAM-Code/slambook2/ch3/examples/eachFile/01/build/CMakeFiles/coordinateTransform.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/coordinateTransform.dir/depend

