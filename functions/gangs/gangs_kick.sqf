_gang = [OL_PlayerGangID] call OL_gangs_getByKey; if (count _gang == 0) exitWith { player groupChat "This gang no longer exists!" };
if (player != _gang select 2) exitWith { player groupChat "You do not own this gang!" };
_player = call compile (_this select 0);

_members = _gang select 3;
_members = _members - [_player];
_gang set [3, _members];

[["UPDATE", _gang], "Server_gangs_Update", false, true] call OL_network_MP;

player groupChat format ["You have kicked %1 from the gang!", name _player];
format ['
  if (player == %1) then {
    player groupChat "You have been removed from your gang!";
    OL_PlayerGangID = -1;
  };
', _player] call OL_network_Swag;
