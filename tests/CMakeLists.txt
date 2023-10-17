# Add a single test executable target since all tests are in one file now.
add_executable(tests_main tests-main.c ../game_logic.c)

# Register the test executable with CTest. This makes it so that the "ctest" command will run this executable as a test.
add_test(NAME MainTests COMMAND tests_main)

