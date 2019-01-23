#include <raylib.h>
#include "screens.h"

//----------------------------------------------------------------------------------
// Global Variables Definition (local to this module)
//----------------------------------------------------------------------------------

// Title screen global variables
typedef enum Selected { PLAY=0, OPTION } Selected;
static int finishScreen;
static Selected selected;
extern const int screenWidth;
extern const int screenHeight; 
//----------------------------------------------------------------------------------
// Title Screen Functions Definition
//----------------------------------------------------------------------------------

// Title Screen Initialization logic
void InitTitleScreen(void)
{
    // TODO: Initialize TITLE screen variables here!
    finishScreen = 0;
    selected = PLAY;
}

// Title Screen Update logic
void UpdateTitleScreen(void)
{
    // TODO: Update TITLE screen variables here!
    int key = GetKeyPressed();
    switch (key)
    {
        case KEY_UP: 
        case KEY_DOWN:
            ~selected;
            break;
        case KEY_ENTER:
            if (selected == PLAY)
                finishScreen = 2;
            else
                finishScreen = 1;
            break;
    }
}

// Title Screen Draw logic
void DrawTitleScreen(void)
{
    if (selected == PLAY)
        DrawRectangle(screenWidth/4, (screenHeight/6)*2, screenWidth/6, screenHeight/2, DARKGRAY);
    else
        DrawRectangle(screenWidth/4, (screenHeight/6)*2, screenWidth/6, screenHeight/2, LIGHTGRAY);
    if (selected == OPTION)
        DrawRectangle(screenWidth/4, (screenHeight/6)*3, screenWidth/6, screenHeight/2, DARKGRAY);
    else
        DrawRectangle(screenWidth/4, (screenHeight/6)*3, screenWidth/6, screenHeight/2, LIGHTGRAY);
    
}

// Title Screen Unload logic
void UnloadTitleScreen(void)
{
    // TODO: Unload TITLE screen variables here!
}

// Title Screen should finish?
int FinishTitleScreen(void)
{
    return finishScreen;
}
