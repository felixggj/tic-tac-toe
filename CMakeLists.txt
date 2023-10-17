cmake_minimum_required(VERSION 3.10)

# Name your project
project(tic-tac-toe)

# Enable testing for the project
enable_testing()

# Specify your executable
add_executable(main src/main.c)

# Add test executable
add_executable(tests tests/test_main.c)

# Add a test to the project
add_test(NAME YourTest COMMAND tests)
