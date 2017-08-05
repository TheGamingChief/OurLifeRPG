_gang = [OL_PlayerGangID] call OL_gangs_getByKey; if (count _gang == 0) exitWith { player groupChat "You are not the owner of this gang!" };
if (str player != _gang select 2) exitWith { player groupChat "You do not own this gang!" };

_newName = _this select 0;

_dupeCheck = [_newName] call OL_gangs_getByName;
if (count _dupeCheck > 0) exitWith { player groupChat "A gang with that name already exists!" };

_gang set [1, _newName];

[["UPDATE", _gang], "Server_gangs_Update", false, true] call OL_network_MP;

_ownerObj   = call compile (_gang select 2);
_membersObj = [_gang select 3] call CP_misc_ArrayStr2Obj;

player groupChat format ["Your gang is now know as: %1", _gang select 1];
format ['
  if (player in %1) then {
    player groupChat "%2 has renamed the gang to: %3!";
  };
', _membersObj, name _ownerObj, _gang select 1] call OL_network_Swag;
