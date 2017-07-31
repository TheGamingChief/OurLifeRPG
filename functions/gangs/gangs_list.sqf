if (count OL_GangsArray > 0) then {
  if (!(createDialog "gang_menu")) exitWith { hint "Dialog Error!" };

  {
    _id       = _x select 0;
    _name     = _x select 1;
    _owner    = _x select 2;
    _members  = _x select 3;
    _locked   = _x select 4;

    _index = lbAdd [202, format["%1 - Members: %2 - Locked: %3", _name, [_owner] + _members, _locked]];
    lbSetData [202, _index, str _id];
  } forEach OL_GangsArray
} else {
  closeDialog 0;
  player groupChat "You have no vehicles saved.";
};
