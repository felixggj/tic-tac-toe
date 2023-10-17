#include <stdio.h>

// Global 3x3 grid
char grid[3][3] = {{' ', ' ', ' '}, {' ', ' ', ' '}, {' ', ' ', ' '}};

void displayGrid() {
    printf("  1 | 2 | 3\n");
    printf(" -----------\n");
    printf("1 %c | %c | %c\n", grid[0][0], grid[0][1], grid[0][2]);
    printf(" -----------\n");
    printf("2 %c | %c | %c\n", grid[1][0], grid[1][1], grid[1][2]);
    printf(" -----------\n");
    printf("3 %c | %c | %c\n", grid[2][0], grid[2][1], grid[2][2]);
}

int checkWin(char player) {
    for (int i = 0; i < 3; ++i) {
        if (grid[i][0] == player && grid[i][1] == player && grid[i][2] == player) {
            return 1; // Horizontal win
        }
        if (grid[0][i] == player && grid[1][i] == player && grid[2][i] == player) {
            return 1; // Vertical win
        }
    }
    if (grid[0][0] == player && grid[1][1] == player && grid[2][2] == player) {
        return 1; // Diagonal win
    }
    if (grid[0][2] == player && grid[1][1] == player && grid[2][0] == player) {
        return 1; // Diagonal win
    }
    return 0; // No win yet
}

int isValidMove(int row, int col) {
    if (row >= 0 && row < 3 && col >= 0 && col < 3 && grid[row][col] == ' ') {
        return 1; // Valid move
    }
    return 0; // Invalid move
}

int isDraw() {
    for (int i = 0; i < 3; ++i) {
        for (int j = 0; j < 3; ++j) {
            if (grid[i][j] == ' ') {
                return 0; // Game is not a draw yet
            }
        }
    }
    return 1; // Game is a draw
}

void saveToFile() {
    FILE *filePointer = fopen("gamestate.txt", "w");

    fprintf(filePointer, "  1 | 2 | 3\n");
    fprintf(filePointer, " -----------\n");
    fprintf(filePointer, "1 %c | %c | %c\n", grid[0][0], grid[0][1], grid[0][2]);
    fprintf(filePointer, " -----------\n");
    fprintf(filePointer, "2 %c | %c | %c\n", grid[1][0], grid[1][1], grid[1][2]);
    fprintf(filePointer, " -----------\n");
    fprintf(filePointer, "3 %c | %c | %c\n", grid[2][0], grid[2][1], grid[2][2]);

    printf("Game state has been saved to gamestate.txt.\n");

    fclose(filePointer);
}

// Function to handle safe integer input with error checking
int getValidatedInput() {
    int number;
    char term;
    if(scanf("%d%c", &number, &term) != 2 || term != '\n') {
        printf("Invalid input. Please enter a number.\n");
        // Clear the buffer
        while(getchar() != '\n');
        return 0;
    } else {
        return number;
    }
}

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
