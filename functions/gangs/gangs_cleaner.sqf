for "_i" from 0 to (count OL_GangsArray - 1) do {
  _needsUpdate = false;

  _gang = OL_GangsArray select _i;
  _owner = _gang select 2;
  _members_old = _gang select 3;
  _members = [];

  if (!(isNil "_members_old")) then {
    {
      if (!(_x call OL_ISSE_UnitExists)) then {
        _needsUpdate = true;
      } else {
        _members = _members + [_x];
      };
    } forEach _members_old;
  };

  _gang set [3, _members];
  if (!(_owner call OL_ISSE_UnitExists)) then {
    _members = [_gang select 3, 1] call CP_misc_ArrayTrimStart;
    _gang set [2, (_gang select 3) select 0];
    _gang set [3, _members];

    _needsUpdate = true;
  };

  [["UPDATE", _gang, "Server_gangs_Update", false, true] call OL_network_MP;
};
