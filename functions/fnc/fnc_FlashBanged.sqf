if (!alive player || player getVariable "KOED" || isFlashBanged) exitWith {};

player say ["flash_bang",5];
2 cutText ["","WHITE OUT",0];
uiSleep 10;
2 cutText ["","WHITE IN",3];
