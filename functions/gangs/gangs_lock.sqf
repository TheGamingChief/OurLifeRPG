_gang = [OL_PlayerGangID] call OL_gangs_getByKey; if (count _gang == 0) exitWith { player groupChat "This gang no longer exists!" };
if (str player != _gang select 2) exitWith { player groupChat "You do not own this gang!" };

_locked = _gang select 4;
_locked = !_locked;

_gang set [4, _locked];
[["UPDATE", _gang], "Server_Gangs_Update", false, true, false] call OL_network_MP;

player groupChat format ["The gangs Locked status is now: %1", _locked];
