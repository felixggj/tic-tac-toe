cmake_minimum_required(VERSION 3.10)

# Name your project
project(tic-tac-toe)

# Enable testing for the project
enable_testing()

# Specify your executable
add_executable(main main.c)

# Include the tests subdirectory
add_subdirectory(tests)

