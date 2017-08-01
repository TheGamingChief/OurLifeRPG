if (OL_PlayerGangID == -1) exitWith { player groupChat "You are not a member of any gangs!" };
_gang = [_this select 0] call OL_gangs_getByKey; if (count _gang == 0) exitWith { player groupChat "Gang no longer exists!"; OL_PlayerGangID = -1; };
_newOwner = false;

if (count (_gang select 3) == 0) exitWith {
  [["REMOVE", [OL_PlayerGangID]], "Server_gangs_Update", false, true] call OL_network_MP;
  player groupChat format['You have disbanded the "%1" gang', _gang select 1];
  OL_PlayerGangID = -1;
};

if (str player == _gang select 2) then {
  _members = [_gang select 3, 1] call CP_misc_ArrayTrimStart;
  _gang set [2, (_gang select 3) select 0];
  _gang set [3, _members];
  _newOwner = true;
} else {
  _members = _gang select 3;
  _members = _members - [str player];
  _gang set [3, _members];
};

[["UPDATE", _gang], "Server_gangs_Update", false, true] call OL_network_MP;
OL_PlayerGangID = -1;

_ownerObj   = call compile (_gang select 2);
_membersObj = [_gang select 3] call CP_misc_ArrayStr2Obj;

player groupChat format['You have left the %1 gang!', _gang select 1];
format ['
  if (player in ([%1] + %2)) then {
    player groupChat "%3 has left your gang!";
  };
  if (player == %1 && (%4)) then { player groupChat "You are the new gang leader" };
', _ownerObj, _membersObj, name player, _newOwner] call OL_network_Swag;
