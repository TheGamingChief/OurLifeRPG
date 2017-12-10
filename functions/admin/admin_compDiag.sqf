createDialog "compSystem";
compPlayers = playableUnits;
{
  lbAdd [696903, format ["%1 - %2", _x, _x getVariable ["RealName", name player]]];
} forEach compPlayers;
lbSetCurSel [696903, 0];
