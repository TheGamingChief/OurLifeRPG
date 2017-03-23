private["_gangArray", "_gangMembers", "_gangLeader"];
_gangArray = OL_Gangs select (_this select 0);

if (isNil "_gangArray") exitWith { player groupChat "Error" };
if (!alive player || player getVariable "KOED") exitWith { player groupChat "You are currently dead and cannot do this action." };
if ((player getVariable ["OL_Gang", "None"]) == "None") exitWith { player groupChat "You are not currently in a gang." };
if (!((_gangArray select 0) call OL_gangs_Exists)) exitWith { player groupChat "The gang you are trying to leave does not exist." };

_gangLeader  = _gangArray select 1;
_gangMembers = _gangArray select 2;
_gangMembers = _gangMembers - [player];


if (player getVariable ["OL_GangLeader", false]) then {
  _gangLeader = _gangMembers select 0;
  player setVariable ["OL_GangLeader", false, true];
};

OL_Gangs set [(_this select 0), [_gangArray select 0, _gangLeader, _gangMembers, _gangArray select 3]];
publicVariable  "OL_Gangs";

player setVariable ["OL_Gang", "None", true];

player groupChat format ["You have left gang (%1)", _gangArray select 0];
