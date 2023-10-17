# Add a single test executable target since all tests are in one file now.
add_executable(tests_main tests-main.c)

# Link with the main executable if needed. This is necessary if your tests depend on functions from your main project.
# Note: This assumes your main project creates a library target that can be linked with. If your main project doesn't
# create a library, you might need to include the necessary source files directly in your test executable.
target_link_libraries(tests_main ${CMAKE_SOURCE_DIR}/main.c)

# Register the test executable with CTest. This makes it so that the "ctest" command will run this executable as a test.
add_test(NAME MainTests COMMAND tests_main)

