_Team       = _this select 0;
_TeamCounts = [] call Paintball_fnc_Counts;
_InTeam     = player getVariable ["OL_PB_Team", ""];

if (_TeamCounts == "[4,4]") exitWith { ["ERROR", "Unable to join team as both teams are currently full."] call Paintball_fnc_Notification };
if (_InTeam != "") exitWith { ["ERROR", "Unable to join team as user is currently in a team."] call Paintball_fnc_Notification };

[[player, _Team], "Paintball_fnc_RegisterUser", false, false, true] call Network_fnc_MP;

player setVariable ["PB_Alive", true, true];

["SUCCE", format ["You have successfully joined team %1.", if (_Team == "RED_TEAM") then { "Red" } else { "Blue" }]] call Paintball_fnc_Notification;

_TeamCounts = [] call Paintball_fnc_Counts;
if (_TeamCounts == "[4,4]") then { [[], "Paintball_fnc_StartMatch", false, false, true] call Network_fnc_MP };

OL_PB_WaitLoop = true;
[] spawn Paintball_fnc_WaitLoop;
