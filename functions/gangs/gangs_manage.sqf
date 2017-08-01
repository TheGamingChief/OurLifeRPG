if (!createDialog "UI_GangManager") exitWith { hint "Dialog Error!" };
// im copy pasting like a real dev!

{
  _index = lbAdd [1500, format ["%1 - %2", _x getVariable "OL_Name", _x]];
} forEach ([OL_PlayerGangID] call OL_gangs_getByKey) select 3;

lbAdd [1501, "Lock/Unlock"];
