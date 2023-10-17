cmake_minimum_required(VERSION 3.10)

# Name your project
project(tic-tac-toe)

# Enable testing for the project
enable_testing()

# Specify your executable
add_executable(main game_main.c game_logic.c)  # Compiles your program entry point with your game logic

# Include the tests subdirectory
add_subdirectory(tests)

