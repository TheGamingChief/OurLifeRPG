_gang = [str OL_PlayerGangID] call OL_gangs_getByKey; if (count _gang == 0) exitWith { player groupChat "You are not the owner of this gang!" };
if (player != _gang select 2) exitWith { player groupChat "You do not own this gang!" };

_newName = _this select 0;
_gang set [1, _newName];

[["UPDATE", _gang, "Server_gangs_Update", false, true] call OL_network_MP;

player groupChat format ["Your gang is now know as: ", _gang select 1];
format ['
  if (player in %1) then {
    player groupChat "%2 has renamed the gang to: %3!";
  };
' _gang select 3, _gang select 2, _gang select 1] call OL_network_Swag;
