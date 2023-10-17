# Add test executable target. Assuming you have different test files for different scenarios.
add_executable(test_draw test_draw.c)
add_executable(test_invalid_move test_invalid_move.c)
add_executable(test_win test_win.c)

# Link with the main executable if needed. This is necessary if your tests depend on functions from your main project.
target_link_libraries(test_draw ${CMAKE_SOURCE_DIR}/main.c)
target_link_libraries(test_invalid_move ${CMAKE_SOURCE_DIR}/main.c)
target_link_libraries(test_win ${CMAKE_SOURCE_DIR}/main.c)

# Add the tests so CTest can recognize them
add_test(NAME DrawTest COMMAND test_draw)
add_test(NAME InvalidMoveTest COMMAND test_invalid_move)
add_test(NAME WinTest COMMAND test_win)
