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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/spgva/RobotProgramming/class5/exercise/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/spgva/RobotProgramming/class5/exercise/build

# Include any dependencies generated for this target.
include CMakeFiles/point_multisort.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/point_multisort.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/point_multisort.dir/flags.make

CMakeFiles/point_multisort.dir/point_multisort.cpp.o: CMakeFiles/point_multisort.dir/flags.make
CMakeFiles/point_multisort.dir/point_multisort.cpp.o: /home/spgva/RobotProgramming/class5/exercise/src/point_multisort.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/spgva/RobotProgramming/class5/exercise/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/point_multisort.dir/point_multisort.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/point_multisort.dir/point_multisort.cpp.o -c /home/spgva/RobotProgramming/class5/exercise/src/point_multisort.cpp

CMakeFiles/point_multisort.dir/point_multisort.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/point_multisort.dir/point_multisort.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/spgva/RobotProgramming/class5/exercise/src/point_multisort.cpp > CMakeFiles/point_multisort.dir/point_multisort.cpp.i

CMakeFiles/point_multisort.dir/point_multisort.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/point_multisort.dir/point_multisort.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/spgva/RobotProgramming/class5/exercise/src/point_multisort.cpp -o CMakeFiles/point_multisort.dir/point_multisort.cpp.s

CMakeFiles/point_multisort.dir/point_multisort.cpp.o.requires:

.PHONY : CMakeFiles/point_multisort.dir/point_multisort.cpp.o.requires

CMakeFiles/point_multisort.dir/point_multisort.cpp.o.provides: CMakeFiles/point_multisort.dir/point_multisort.cpp.o.requires
	$(MAKE) -f CMakeFiles/point_multisort.dir/build.make CMakeFiles/point_multisort.dir/point_multisort.cpp.o.provides.build
.PHONY : CMakeFiles/point_multisort.dir/point_multisort.cpp.o.provides

CMakeFiles/point_multisort.dir/point_multisort.cpp.o.provides.build: CMakeFiles/point_multisort.dir/point_multisort.cpp.o


# Object files for target point_multisort
point_multisort_OBJECTS = \
"CMakeFiles/point_multisort.dir/point_multisort.cpp.o"

# External object files for target point_multisort
point_multisort_EXTERNAL_OBJECTS =

point_multisort: CMakeFiles/point_multisort.dir/point_multisort.cpp.o
point_multisort: CMakeFiles/point_multisort.dir/build.make
point_multisort: CMakeFiles/point_multisort.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/spgva/RobotProgramming/class5/exercise/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable point_multisort"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/point_multisort.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/point_multisort.dir/build: point_multisort

.PHONY : CMakeFiles/point_multisort.dir/build

CMakeFiles/point_multisort.dir/requires: CMakeFiles/point_multisort.dir/point_multisort.cpp.o.requires

.PHONY : CMakeFiles/point_multisort.dir/requires

CMakeFiles/point_multisort.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/point_multisort.dir/cmake_clean.cmake
.PHONY : CMakeFiles/point_multisort.dir/clean

CMakeFiles/point_multisort.dir/depend:
	cd /home/spgva/RobotProgramming/class5/exercise/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/spgva/RobotProgramming/class5/exercise/src /home/spgva/RobotProgramming/class5/exercise/src /home/spgva/RobotProgramming/class5/exercise/build /home/spgva/RobotProgramming/class5/exercise/build /home/spgva/RobotProgramming/class5/exercise/build/CMakeFiles/point_multisort.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/point_multisort.dir/depend

