/*
Script made by : TheGamingChief for OurLifeRPG
Version 1.0 (Stable)
File: fnc_West_KeyEvents.sqf
Description: Creates all the key handlers for police on key press.
TeamSpeak: TS.OurLifeRPG.Net
Website: OurLifeRPG.Net
*/

[59,  [false,true,false], {[] spawn fnc_KeyPress_F1; true;}, "keydown", "KeyPress_F1"] call CBA_fnc_addKeyHandler;
[60,  [false,true,false], {[] spawn fnc_KeyPress_F2; true;}, "keydown", "KeyPress_F2"] call CBA_fnc_addKeyHandler;
[2,  [false,false,false], {[] spawn fnc_KeyPress_1; true;}, "keydown", "KeyPress_1"] call CBA_fnc_addKeyHandler;
[4,  [false,false,false], {[] spawn fnc_KeyPress_3; true;}, "keydown", "KeyPress_3"] call CBA_fnc_addKeyHandler;
[6,  [false,false,false], {[] spawn fnc_KeyPress_5; true;}, "keydown", "KeyPress_5"] call CBA_fnc_addKeyHandler;
[7,  [false,false,false], {[] spawn fnc_KeyPress_6; true;}, "keydown", "KeyPress_6"] call CBA_fnc_addKeyHandler;
[8,  [false,false,false], {[] spawn fnc_KeyPress_7; true;}, "keydown", "KeyPress_7"] call CBA_fnc_addKeyHandler;
[10,  [false,false,false], {[] spawn fnc_KeyPress_9; true;}, "keydown", "KeyPress_9"] call CBA_fnc_addKeyHandler;
[199,  [false,false,false], {[] spawn fnc_KeyPress_Home; false;}, "keydown", "KeyPress_Home"] call CBA_fnc_addKeyHandler;
[24,  [false,false,false], {[] spawn fnc_KeyPress_O; false;}, "keydown", "KeyPress_O"] call CBA_fnc_addKeyHandler;
[21,  [false,false,false], {[] spawn fnc_KeyPress_Y; false;}, "keydown", "KeyPress_Y"] call CBA_fnc_addKeyHandler;
[17,  [false,false,false], {[] spawn fnc_KeyPress_W; false;}, "keydown", "KeyPress_W"] call CBA_fnc_addKeyHandler;
[17,  [true,false,false], {[] spawn fnc_KeyPress_W; false;}, "keydown", "KeyPress_W"] call CBA_fnc_addKeyHandler;
[63,  [false,false,false], {[] spawn fnc_KeyPress_F5; true;}, "keydown", "KeyPress_F5"] call CBA_fnc_addKeyHandler;
[38,  [false,false,false], {[] spawn fnc_KeyPress_L; true;}, "keydown", "KeyPress_L"] call CBA_fnc_addKeyHandler;
[20,  [false,false,false], {[] spawn fnc_KeyPress_T; false;}, "keydown", "KeyPress_T"] call CBA_fnc_addKeyHandler;
[19,  [false,false,false], {[] spawn fnc_KeyPress_R; false;}, "keydown", "KeyPress_R"] call CBA_fnc_addKeyHandler;
[18,  [false,false,false], {[] spawn fnc_KeyPress_E; false;}, "keydown", "KeyPress_E"] call CBA_fnc_addKeyHandler;
[33,  [true,false,false], {[] spawn fnc_KeyPress_Shift_F; false;}, "keydown", "KeyPress_Shift_F"] call CBA_fnc_addKeyHandler;
[41,  [false,false,false], {[] spawn fnc_KeyPress_Tilde; false;}, "keydown", "KeyPress_Tilde"] call CBA_fnc_addKeyHandler;
[61,  [false,true,false], {[] spawn fnc_KeyPress_CtrlF3; false;}, "keydown", "KeyPress_CtrlF3"] call CBA_fnc_addKeyHandler;
[35,  [false,false,false], {[] spawn fnc_KeyPress_H; false;}, "keydown", "KeyPress_H"] call CBA_fnc_addKeyHandler;