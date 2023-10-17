// game_logic.h
#ifndef GAME_LOGIC_H
#define GAME_LOGIC_H

// Function declarations
void displayGrid();
int getValidatedInput();
int isValidMove(int row, int col);
int checkWin(char player);
int isDraw();
void saveToFile();

// Global variable declaration
extern char grid[3][3];  // 'extern' means the definition is in another file

#endif //GAME_LOGIC_H
