if (!alive player || player getVariable "KOED" || isTearGassed || "Gas_Mask" call INV_GetItemAmount < 1) exitWith {};

isTearGassed = true;
2 cutText ["","WHITE OUT",0];
uiSleep 5;
2 cutText ["","WHITE IN",3];
isTearGassed = false;
