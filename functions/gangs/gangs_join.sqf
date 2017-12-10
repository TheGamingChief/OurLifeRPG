if (OL_PlayerGangID != -1) exitWith { player globalChat "You already are in a gang!" };
_gang = [_this select 0] call OL_gangs_getByKey; if (count _gang == 0) exitWith { player groupChat "Gang no longer exists!" };

_locked = _gang select 4;
if (_locked) exitWith { player groupChat "This gang is current not recruiting!" };

if (count (_gang select 3) >= OL_GangMaxSize) exitWith { player groupChat "This gang is full!" };

_gang set [3, (_gang select 3) + [str player]];
[["UPDATE", _gang], "Server_gangs_Update", false, true] call OL_network_MP;

_ownerObj   = call compile (_gang select 2);
_membersObj = [_gang select 3] call CP_misc_ArrayStr2Obj;

gangmember = true;
OL_PlayerGangID = (_gang select 0);
player groupChat format['You have joined the %1 gang', _gang select 1];
format ['
  if ((player in ([%1] + %2)) && (player != %3)) then {
    player groupChat (name %3 + " has joined your gang!");
  };
', _ownerObj, _membersObj, player] call OL_network_Swag;
