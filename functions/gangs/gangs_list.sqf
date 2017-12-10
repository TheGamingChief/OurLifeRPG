if (!(createDialog "UI_GangMenu")) exitWith { hint "Dialog Error!" };

if (count OL_GangsArray > 0) then {
  {
    _id       = _x select 0;
    _name     = _x select 1;
    _owner    = _x select 2;
    _members  = _x select 3;
    _locked   = _x select 4;

    _owner    = call compile _owner;
    _members  = [_members] call CP_misc_ArrayStr2Obj;

    _memberNames = [_owner getVariable ["RealName", name player]];
    {
      if (_x call OL_ISSE_UnitExists) then {
        _memberNames = _memberNames + [_x getVariable ["RealName", name player]];
      };
    } forEach _members;

    _index = lbAdd [202, format["%1 - Members: %2 - Locked: %3", _name, _memberNames, _locked]];
    lbSetData [202, _index, str _id];
  } forEach OL_GangsArray;
} else {
  player groupChat "There are no gangs to display.";
};
