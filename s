#include <stdio.h>

int main() {
    char board[3][3] = {{' ', ' ', ' '}, {' ', ' ', ' '}, {' ', ' ', ' '}};
    int row, col;
    char player = 'X';

    printf("Welcome to Tic Tac Toe!\n");
    printf("-----------------------\n");

    // Print the initial empty board
    printf("   1   2   3\n");
    printf("1  %c | %c | %c \n", board[0][0], board[0][1], board[0][2]);
    printf("  ---+---+---\n");
    printf("2  %c | %c | %c \n", board[1][0], board[1][1], board[1][2]);
    printf("  ---+---+---\n");
    printf("3  %c | %c | %c \n", board[2][0], board[2][1], board[2][2]);

    // Main game loop
    for (int i = 0; i < 9; i++) {
        // Get the player's move
        printf("\nPlayer %c's turn.\n", player);
        printf("Enter row (1-3): ");
        scanf("%d", &row);
        printf("Enter column (1-3): ");
        scanf("%d", &col);

        // Check for valid move
        if (row < 1 || row > 3 || col < 1 || col > 3) {
            printf("Invalid move! Row and column must be between 1 and 3.\n");
            i--; // Re-do this turn
            continue;
        }
        if (board[row-1][col-1] != ' ') {
            printf("Invalid move! That space is already taken.\n");
            i--; // Re-do this turn
            continue;
        }

        // Update the board
        board[row-1][col-1] = player;

        // Print the updated board
        printf("\n   1   2   3\n");
        printf("1  %c | %c | %c \n", board[0][0], board[0][1], board[0][2]);
        printf("  ---+---+---\n");
        printf("2  %c | %c | %c \n", board[1][0], board[1][1], board[1][2]);
        printf("  ---+---+---\n");
        printf("3  %c | %c | %c \n", board[2][0], board[2][1], board[2][2]);

        // Check for a win
        if (board[0][0] == player && board[0][1] == player && board[0][2] == player ||
            board[1][0] == player && board[1][1] == player && board[1][2] == player ||
            board[2][0] == player && board[2][1] == player && board[2][2] == player ||
            board[0][0] == player && board[1][0] == player && board[2][0] == player ||
            board[0][1] == player && board[1][1] == player && board[2][1] == player ||
            board[0][2] == player && board[1][2] == player && board[2
