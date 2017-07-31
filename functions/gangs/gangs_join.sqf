if (OL_PlayerGangID != -1) exitWith { player globalChat "You already are in a gang!" };
_gang = [_this select 0] call OL_gangs_getByKey; if (count _gang == 0) exitWith { player groupChat "Gang no longer exists!" };

_locked = _gang select 4;
if (_locked) exitWith { player groupChat "This gang is current not recruiting!" };

_gang set [3, (_gang select 3) + [player]];
[["UPDATE", _gang], "Server_gangs_Update", false, true] call OL_network_MP;

player groupChat format['You have joined the "%1" gang', _gang select 1];
OL_PlayerGangID = _id;
