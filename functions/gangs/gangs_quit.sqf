if (OL_PlayerGangID == -1) exitWith { player groupChat "You are not a member of any gangs!" };
_gang = [_this select 0] call OL_gangs_getByKey; if (count _gang == 0) exitWith { player groupChat "Gang no longer exists!"; OL_PlayerGangID = -1; };

if (player == _gang select 2) then {
  if (count (_gang select 3) == 0) exitWith { [["REMOVE", []], "Server_gangs_Update", false, true] call OL_network_MP };
  _members = [_gang select 3, 1] call CP_misc_ArrayTrimStart;
  _gang set [2, (_gang select 3) select 0];
  _gang set [3, _members];
} else {
  _members = _gang select 3;
  _members = _members - [player];
  _gang set [3, _members];
};

[["UPDATE", _gang, "Server_gangs_Update", false, true] call OL_network_MP;
player groupChat format['You have left the "%1" gang', _gang select 1];
OL_PlayerGangID = -1;
