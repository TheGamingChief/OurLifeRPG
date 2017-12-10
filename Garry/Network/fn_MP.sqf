/*
	Author: Karel Moricky

	Description:
	Send function for remote execution (and executes locally if conditions are met)

	Parameter(s):
		0: ANY - function params
		1: STRING - function name
		2 (Optional):
			BOOL - true to execute on every client, false to execute it on server only
			OBJECT - the function will be executed only where unit is local [default: everyone]
			GROUP - the function will be executed only on client who is member of the group
			SIDE - the function will be executed on all players of the given side
			NUMBER - the function will be executed only on client with the given ID
			ARRAY - array of previous data types
		3 (Optional): BOOL - true for persistent call (will be called now and for every JIP client) [default: false]

	Returns:
	ARRAY - sent packet
*/

with missionNamespace do {
	private ["_params", "_functionName", "_target", "_isPersistent", "_isCall"];

	_params = _this select 0;
	_functionName =	_this select 1;
	_target =	_this select 2;
	_isPersistent =	false;
	_isCall =	_this select 4;

	if(isServer && isDedicated) then {
		OL_fnc_MP_Packet = [0, _params, _functionName, _target, _isPersistent, _isCall, "__SERVER__", "__SERVER__"];
	} else {
		OL_fnc_MP_Packet = [0, _params, _functionName, _target, _isPersistent, _isCall, player getVariable ["realname", name player], getPlayerUID player];
	};
	publicVariableServer "OL_fnc_MP_Packet";

	if !(isMultiplayer) then { ["OL_fnc_MP_Packet", OL_fnc_MP_Packet] spawn Network_fnc_MPExec };

	OL_fnc_MP_Packet
};
