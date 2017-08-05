_gangArray = [OL_PlayerGangID] call OL_gangs_getByKey;

if (player != (call compile(_gangArray select 2))) exitWith { player groupChat "You are not the leader of this gang." };
if (!createDialog "UI_GangManager") exitWith { hint "Dialog Error!" };

_gangArray = [OL_PlayerGangID] call OL_gangs_getByKey;
_members   = _gangArray select 3;
_members   = [_members] call CP_misc_ArrayStr2Obj;

{
  _index = lbAdd [1500, format ["%1 - %2", name _x, _x]];
  lbSetData [1500, _index, format ["%1", _x]];
} forEach _members;
