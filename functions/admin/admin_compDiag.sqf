createDialog "compSystem";
compPlayers = playableUnits;
{lbAdd [696903,format ["%1 - %2", _x, name _x]];} forEach compPlayers;
lbSetCurSel [696903,0];
