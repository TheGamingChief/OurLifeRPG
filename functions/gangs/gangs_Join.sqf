_gangArray = OL_Gangs select (_this select 0);

if (isNil "_gangArray") exitWith { player groupChat "The gang you tried to join no longer exists." };
if (player getVariable ["OL_Gang", "None"] != "None") exitWith { player groupChat "You are currently in a gang and cannot join one." };

_gangMembers  = _gangArray select 1;
_gangJoinable = _gangArray select 2;

if (!_gangJoinable) exitWith { player groupChat "This gang is currently not recruiting." };
if (count(_gangMembers) >= 5) exitWith { player groupChat "Only 5 people are allowed to be in a gang." };

_gangMembers set [count(_gangMembers), [name player]];
_gangArray set [1, _gangMembers];

OL_Gangs set[(_this select 0), _gangArray];
publicVariable "OL_Gangs";

player setVariable ["OL_Gang", (_gangArray select 0), true];

player groupChat format ["You have joined gang %1.", _gangArray select 0];
