#include "raylib.h"

#define SCR_W 800
#define SCR_H 600

int main(void)
{
    InitWindow(SCR_W, SCR_H, "RayLib Game");
    SetTargetFPS(60);

    while (!WindowShouldClose() ) {

        ClearBackground(BLACK);

        BeginDrawing();
            DrawRectangle(SCR_W / 2, SCR_H / 2, 10,10, GREEN);
        EndDrawing();
    }

    CloseWindow();

    return 0;
}

