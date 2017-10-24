if (!alive player || player getVariable "KOED") exitWith {};
if ("Gas_Mask" call INV_GetItemAmount > 0) exitWith {};
if ("Gas_Mask_SWAT" call INV_GetItemAmount > 0) exitWith {};
if (isTearGassed) exitWith {};

isTearGassed = true;
2 cutText ["","WHITE OUT",0];
uiSleep 5;
2 cutText ["","WHITE IN",3];
isTearGassed = false;
