/*
	Author: Karel Moricky
	Modified by Tonic for function white-listing.

	Description:
	Execute received remote execution

	Parameter(s):
	_this select 0: STRING - Packet variable name (always "OL_fnc_MP_Packet")
	_this select 1: ARRAY - Packet value (sent by life_fnc_MP function; see it's description for more details)

	Returns:
	BOOL - true if function was executed successfully
*/

private ["_params", "_functionName", "_target", "_isPersistent", "_isCall", "_varName", "_varValue", "_function", "_callerName", "_callerUID", "_exitScope"];
_exitScope = false;
_varName 	 = _this select 0;
_varValue  = _this select 1;

_mode 				= _varValue select 0;
_params 			= _varValue select 1;
_functionName =	_varValue select 2;
_target 			=	_varValue select 3;
_isPersistent =	_varValue select 4;
_isCall 			=	_varValue select 5;
_callerName 	= _varValue select 6;
_callerUID  	= _varValue select 7;



if (_callerName == "" OR _callerUID == "") exitWith {};
if (toLower(_functionName) == "bis_fnc_endmission") exitWith {false};
if (_exitScope) exitWith {false};

if (isMultiplayer && _mode == 0) then {
	if (isServer) then {
		if (typeName _target == typeName []) then {
			{
				[_varName, [_mode, _params, _functionName, _x, _isPersistent, _isCall, _callerName, _callerUID]] call Network_fnc_MPExec;
			} foreach _target;
		} else {

			private ["_ownerID", "_serverID"];
			_serverID = owner (missionNamespace getVariable ["BIS_Functions_Mainscope", objNull]);

			switch (typeName _target) do {
				case (typeName objnull): {
					_ownerID = owner _target;
				};
				case (typeName true): {
					_ownerID = [_serverID, -1] select _target;
				};
				case (typeName 0): {
					_ownerID = _target;
				};
				case (typeName grpNull);
				case (typeName sideUnknown): {
					_ownerID = -1;
				};
				case (typeName ""): {
					_ownerID = -1;
				};
			};
			OL_fnc_MP_Packet = [1, _params, _functionName, _target, _isPersistent, _isCall, "__SERVER__", "__SERVER__"];

			if (_ownerID < 0) then {
				publicVariable "OL_fnc_MP_Packet";
			} else {
				if (_ownerID != _serverID) then {
					_ownerID publicVariableClient "OL_fnc_MP_Packet";
				};
			};

			if (_ownerID < 0 || _ownerID == _serverID) then { ["OL_fnc_MP_Packet", OL_fnc_MP_Packet] spawn Network_fnc_MPExec };

			if (_isPersistent) then {
				if (typeName _target != typeName 0) then {
					private ["_logic","_queue"];
					_logic = missionNamespace getVariable ["bis_functions_mainscope",objnull];
					_queue = _logic getvariable ["BIS_fnc_MP_queue",[]];
					_queue set [
						count _queue,
						+OL_fnc_MP_Packet
					];
					_logic setvariable ["BIS_fnc_MP_queue",_queue,true];
				} else {
					diag_log format ["Persistent execution is not allowed when target is %1. Use %2 or %3 instead.",typename 0,typename objnull,typename false];
				};
			};
		};
	};

} else {
	private ["_canExecute"];
	_canExecute = switch (typeName _target) do {
		case (typeName []): {getPlayerUID player in _target};
		case (typeName grpNull): {player in units _target};
		case (typeName sideUnknown): {playerSide == _target};
		case (typeName ""): {if(!isNull player) then {getPlayerUID player == _target} else {false}};
		default {true};
	};

	if (_canExecute) then {
		_function = missionnamespace getvariable _functionName;
		if (!isNil "_function") then {
			if (_isCall) then { _params call _function } else { _params spawn _function };
			true
		} else {
			diag_log format ["Function '%1' does not exist",_functionName];
			false
		};
	};
};
