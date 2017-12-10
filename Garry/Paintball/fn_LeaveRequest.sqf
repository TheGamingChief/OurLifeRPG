_User = _this select 0;
_Team = _User getVariable ["OL_PB_Team", ""];

if (_Team == "") exitWith {};

[[_User], "Paintball_fnc_RemoveUser", false, false, true] call Network_fnc_MP;

["SUCCE", "Removed user from paintball match."] call Paintball_fnc_Notification;

if (str(call Paintball_fnc_Counts) == "[0,0]") then { ["NO_PLAYERS"] call Paintball_fnc_Cleanup };

OL_PB_WaitLoop = false;
