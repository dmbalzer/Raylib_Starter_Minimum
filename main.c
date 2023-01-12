#include "raylib.h"
#include <stdio.h>
#include <string.h>

const char* CONSOLE_GREEN = "\e[0;32m";
const char* CONSOLE_RESET = "\e[0m";

int main(void)
{
    InitWindow(800, 450, "raylib [core] example - basic window");
	printf(CONSOLE_GREEN);
	printf("Window Initialized.\n");
	printf(CONSOLE_RESET);
    while (!WindowShouldClose())
    {
        BeginDrawing();
            ClearBackground(RAYWHITE);
            DrawText("Congrats! You created your first window!", 190, 200, 20, LIGHTGRAY);
        EndDrawing();
    }

    CloseWindow();
	printf(CONSOLE_GREEN);
	printf("Window Closed.\n");
	printf(CONSOLE_RESET);
	
    return 0;
}