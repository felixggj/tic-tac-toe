# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.27

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
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.27.7/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.27.7/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/Users/felix/Documents/Master folder/IE university/All Courses/3rd year/1st semester/Programming II/assignments/assignment1"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/Users/felix/Documents/Master folder/IE university/All Courses/3rd year/1st semester/Programming II/assignments/assignment1/build"

# Include any dependencies generated for this target.
include tests/CMakeFiles/tests_main.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include tests/CMakeFiles/tests_main.dir/compiler_depend.make

# Include the progress variables for this target.
include tests/CMakeFiles/tests_main.dir/progress.make

# Include the compile flags for this target's objects.
include tests/CMakeFiles/tests_main.dir/flags.make

tests/CMakeFiles/tests_main.dir/tests-main.c.o: tests/CMakeFiles/tests_main.dir/flags.make
tests/CMakeFiles/tests_main.dir/tests-main.c.o: /Users/felix/Documents/Master\ folder/IE\ university/All\ Courses/3rd\ year/1st\ semester/Programming\ II/assignments/assignment1/tests/tests-main.c
tests/CMakeFiles/tests_main.dir/tests-main.c.o: tests/CMakeFiles/tests_main.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="/Users/felix/Documents/Master folder/IE university/All Courses/3rd year/1st semester/Programming II/assignments/assignment1/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building C object tests/CMakeFiles/tests_main.dir/tests-main.c.o"
	cd "/Users/felix/Documents/Master folder/IE university/All Courses/3rd year/1st semester/Programming II/assignments/assignment1/build/tests" && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT tests/CMakeFiles/tests_main.dir/tests-main.c.o -MF CMakeFiles/tests_main.dir/tests-main.c.o.d -o CMakeFiles/tests_main.dir/tests-main.c.o -c "/Users/felix/Documents/Master folder/IE university/All Courses/3rd year/1st semester/Programming II/assignments/assignment1/tests/tests-main.c"

tests/CMakeFiles/tests_main.dir/tests-main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/tests_main.dir/tests-main.c.i"
	cd "/Users/felix/Documents/Master folder/IE university/All Courses/3rd year/1st semester/Programming II/assignments/assignment1/build/tests" && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/Users/felix/Documents/Master folder/IE university/All Courses/3rd year/1st semester/Programming II/assignments/assignment1/tests/tests-main.c" > CMakeFiles/tests_main.dir/tests-main.c.i

tests/CMakeFiles/tests_main.dir/tests-main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/tests_main.dir/tests-main.c.s"
	cd "/Users/felix/Documents/Master folder/IE university/All Courses/3rd year/1st semester/Programming II/assignments/assignment1/build/tests" && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/Users/felix/Documents/Master folder/IE university/All Courses/3rd year/1st semester/Programming II/assignments/assignment1/tests/tests-main.c" -o CMakeFiles/tests_main.dir/tests-main.c.s

tests/CMakeFiles/tests_main.dir/__/game_logic.c.o: tests/CMakeFiles/tests_main.dir/flags.make
tests/CMakeFiles/tests_main.dir/__/game_logic.c.o: /Users/felix/Documents/Master\ folder/IE\ university/All\ Courses/3rd\ year/1st\ semester/Programming\ II/assignments/assignment1/game_logic.c
tests/CMakeFiles/tests_main.dir/__/game_logic.c.o: tests/CMakeFiles/tests_main.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="/Users/felix/Documents/Master folder/IE university/All Courses/3rd year/1st semester/Programming II/assignments/assignment1/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Building C object tests/CMakeFiles/tests_main.dir/__/game_logic.c.o"
	cd "/Users/felix/Documents/Master folder/IE university/All Courses/3rd year/1st semester/Programming II/assignments/assignment1/build/tests" && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT tests/CMakeFiles/tests_main.dir/__/game_logic.c.o -MF CMakeFiles/tests_main.dir/__/game_logic.c.o.d -o CMakeFiles/tests_main.dir/__/game_logic.c.o -c "/Users/felix/Documents/Master folder/IE university/All Courses/3rd year/1st semester/Programming II/assignments/assignment1/game_logic.c"

tests/CMakeFiles/tests_main.dir/__/game_logic.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/tests_main.dir/__/game_logic.c.i"
	cd "/Users/felix/Documents/Master folder/IE university/All Courses/3rd year/1st semester/Programming II/assignments/assignment1/build/tests" && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/Users/felix/Documents/Master folder/IE university/All Courses/3rd year/1st semester/Programming II/assignments/assignment1/game_logic.c" > CMakeFiles/tests_main.dir/__/game_logic.c.i

tests/CMakeFiles/tests_main.dir/__/game_logic.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/tests_main.dir/__/game_logic.c.s"
	cd "/Users/felix/Documents/Master folder/IE university/All Courses/3rd year/1st semester/Programming II/assignments/assignment1/build/tests" && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/Users/felix/Documents/Master folder/IE university/All Courses/3rd year/1st semester/Programming II/assignments/assignment1/game_logic.c" -o CMakeFiles/tests_main.dir/__/game_logic.c.s

# Object files for target tests_main
tests_main_OBJECTS = \
"CMakeFiles/tests_main.dir/tests-main.c.o" \
"CMakeFiles/tests_main.dir/__/game_logic.c.o"

# External object files for target tests_main
tests_main_EXTERNAL_OBJECTS =

tests/tests_main: tests/CMakeFiles/tests_main.dir/tests-main.c.o
tests/tests_main: tests/CMakeFiles/tests_main.dir/__/game_logic.c.o
tests/tests_main: tests/CMakeFiles/tests_main.dir/build.make
tests/tests_main: tests/CMakeFiles/tests_main.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir="/Users/felix/Documents/Master folder/IE university/All Courses/3rd year/1st semester/Programming II/assignments/assignment1/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable tests_main"
	cd "/Users/felix/Documents/Master folder/IE university/All Courses/3rd year/1st semester/Programming II/assignments/assignment1/build/tests" && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/tests_main.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/CMakeFiles/tests_main.dir/build: tests/tests_main
.PHONY : tests/CMakeFiles/tests_main.dir/build

tests/CMakeFiles/tests_main.dir/clean:
	cd "/Users/felix/Documents/Master folder/IE university/All Courses/3rd year/1st semester/Programming II/assignments/assignment1/build/tests" && $(CMAKE_COMMAND) -P CMakeFiles/tests_main.dir/cmake_clean.cmake
.PHONY : tests/CMakeFiles/tests_main.dir/clean

tests/CMakeFiles/tests_main.dir/depend:
	cd "/Users/felix/Documents/Master folder/IE university/All Courses/3rd year/1st semester/Programming II/assignments/assignment1/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/Users/felix/Documents/Master folder/IE university/All Courses/3rd year/1st semester/Programming II/assignments/assignment1" "/Users/felix/Documents/Master folder/IE university/All Courses/3rd year/1st semester/Programming II/assignments/assignment1/tests" "/Users/felix/Documents/Master folder/IE university/All Courses/3rd year/1st semester/Programming II/assignments/assignment1/build" "/Users/felix/Documents/Master folder/IE university/All Courses/3rd year/1st semester/Programming II/assignments/assignment1/build/tests" "/Users/felix/Documents/Master folder/IE university/All Courses/3rd year/1st semester/Programming II/assignments/assignment1/build/tests/CMakeFiles/tests_main.dir/DependInfo.cmake" "--color=$(COLOR)"
.PHONY : tests/CMakeFiles/tests_main.dir/depend
