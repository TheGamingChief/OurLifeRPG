if (!createDialog "UI_GangMenu") exitWith { hint "Dialog Error!" };

{
  _index = lbAdd [1500, format["%1 [Leader: %2 - Members: %3]", _x select 0, _x select 1, _x select 2]];
  lbSetData [1500, _index, _x];
} forEach OL_Gangs;

if (player getVariable "KOED") then {
    ctrlEnable [1600, false];
    ctrlEnable [1601, false];
    ctrlEnable [1602, false];
    ctrlEnable [1603, false];
};

if (!(player getVariable ["OL_GangLeader", false])) then {
  ctrlEnable [1603, false]
};
