if (lbCurSel 1500 == -1) exitWith { player groupChat "No player selected." };
_gang = [OL_PlayerGangID] call OL_gangs_getByKey; if (count _gang == 0) exitWith { player groupChat "This gang no longer exists!" };
if (str player != _gang select 2) exitWith { player groupChat "You do not own this gang!" };
_player = call compile (_this select 0);

_members = _gang select 3;
_members = _members - [str _player];
_gang set [3, _members];

[["UPDATE", _gang], "Server_Gangs_Update", false, true, false] call OL_network_MP;

player groupChat format ["You have kicked %1 from the gang!", _player getVariable ["RealName", name player]];
format ['
  if (player == %1) then {
    player groupChat "You have been kicked from your gang!";
    OL_PlayerGangID = -1;
  };
', _player] call OL_network_Swag;
