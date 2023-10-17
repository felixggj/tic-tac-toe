#include "../game_logic.h"
#include <assert.h>
#include <string.h>

void test_draw() {
    // Initialize a game state representing a draw
    char draw_scenario[3][3] = {
        {'X', 'O', 'X'},
        {'X', 'X', 'O'},
        {'O', 'X', 'O'}
    };
    memcpy(grid, draw_scenario, sizeof(draw_scenario));

    // Check if the game is a draw
    assert(isDraw() && "Draw Test: The game should be a draw");
}

void test_invalid_move() {
    // Initialize a game state
    char initial_state[3][3] = {
        {'X', ' ', ' '},
        {' ', ' ', ' '},
        {' ', ' ', ' '}
    };
    memcpy(grid, initial_state, sizeof(initial_state));

    // Try to make an invalid move
    assert(!isValidMove(0, 0) && "Invalid Move Test: The move should be invalid");
}

void test_win() {
    // Initialize a game state representing a win for 'X'
    char win_scenario[3][3] = {
        {'X', 'X', 'X'},
        {' ', 'O', ' '},
        {' ', ' ', 'O'}
    };
    memcpy(grid, win_scenario, sizeof(win_scenario));

    // Check if 'X' is a winner
    assert(checkWin('X') && "Win Test: Player X should win");
}

int main() {
    // The main function will run all test cases.
    test_draw();
    printf("Draw Test passed.\n");

    test_invalid_move();
    printf("Invalid Move Test passed.\n");

    test_win();
    printf("Win Test passed.\n");

    printf("All tests passed.\n");
    return 0;
}
