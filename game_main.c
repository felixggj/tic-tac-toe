#include "game_logic.h"  // Include the header for your game logic
#include <stdio.h>


int main() {
    char currentPlayer = 'X';
    int row, col;

    while (1) {
        printf("\nCurrent Grid:\n");
        displayGrid();
        printf("Player %c's turn. Enter a row (1-3): ", currentPlayer);
        row = getValidatedInput();

        if(row < 1 || row > 3) {
            printf("Invalid row. It must be a number between 1 and 3.\n");
            continue; // Skip the rest of the loop and start from the beginning
        }

        printf("Enter a column (1-3): ");
        col = getValidatedInput();

        if(col < 1 || col > 3) {
            printf("Invalid column. It must be a number between 1 and 3.\n");
            continue; // Skip the rest of the loop and start from the beginning
        }

        // Adjust for 0 indexing
        row--;
        col--;

        if (isValidMove(row, col)) {
            grid[row][col] = currentPlayer;

            if (checkWin(currentPlayer)) {
                printf("\nCurrent Grid:\n");
                displayGrid();
                printf("Player %c wins!\n", currentPlayer);
                saveToFile();
                break;
            }

            if (isDraw()) {
                printf("\nCurrent Grid:\n");
                displayGrid();
                printf("The game is a draw!\n");
                saveToFile();
                break;
            }

            // Save current game state after every valid move.
            saveToFile();

            // Change the player for the next turn
            currentPlayer = (currentPlayer == 'X') ? 'O' : 'X';

        } else {
            printf("Invalid move. Try again.\n");
        }
    }

    return 0;
}

