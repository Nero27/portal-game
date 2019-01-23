#include <raylib.h>
#include "screens.h"

//----------------------------------------------------------------------------------
// Global Variables Definition (local to this module)
//----------------------------------------------------------------------------------

// Logo screen global variables
static int finishScreen;

//----------------------------------------------------------------------------------
// Logo Screen Functions Definition
//----------------------------------------------------------------------------------

// Logo Screen Initialization logic
void InitLogoScreen(void)
{
    finishScreen = 0;
}

// Logo Screen Update logic
void UpdateLogoScreen(void)
{
    finishScreen = true;
}

// Logo Screen Draw logic
void DrawLogoScreen(void)
{
}

// Logo Screen Unload logic
void UnloadLogoScreen(void)
{
}

// Logo Screen should finish?
int FinishLogoScreen(void)
{
    return finishScreen;
}
