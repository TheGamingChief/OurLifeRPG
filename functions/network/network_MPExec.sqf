private["_sender", "_params", "_function", "_target", "_scheduled", "_functionCode"];
_sender 		= _this select 0;
_params 		= _this select 1;
_function 	= _this select 2;
_target 		= _this select 3;
_scheduled 	= _this select 4;

if (isNil "_sender" || isNil "_params" || isNil "_function") exitWith {
	if (OL_EventLogging) then {
		systemChat "CODE EXECUTION FAILED: MISSING PARAMETERS";
	};
};

if (isNil "_target") then {
	_target = true;
};

if (isNil "_scheduled") then {
	_scheduled = false;
};

_functionCode = call compile format['if (!isNil "%1") then { %1 } else { -1 }', _function];
if (typeName _functionCode == "SCALAR") exitWith {
	if (OL_EventLogging) then {
		systemChat format["CODE EXECUTION FAILED: FUNCTION [%1] NOT FOUND", _function];
	};
};

switch (typeName _target) do {
	case "OBJECT": {
		if (player == _target) then {
			if (_scheduled) then {
				_params spawn _functionCode;
			} else {
				_params call _functionCode;
			};
		};
	};
	case "BOOL": {
		if (_target) then {
			if (_scheduled) then {
				_params spawn _functionCode;
			} else {
				_params call _functionCode;
			};
		} else {
			if (isServer || !isMultiplayer) then {
				if (_scheduled) then {
					_params spawn _functionCode;
				} else {
					_params call _functionCode;
				};
			};
		};
	};
	case "ARRAY": {
		if (player in _target) then {
			if (_scheduled) then {
				_params spawn _functionCode;
			} else {
				_params call _functionCode;
			};
		};
	};
	case "SCALAR": {
		if (owner player == _target) then {
			if (_scheduled) then {
				_params spawn _functionCode;
			} else {
				_params call _functionCode;
			};
		};
	};
	case "GROUP": {
		if (player in (units _target)) then {
			if (_scheduled) then {
				_params spawn _functionCode;
			} else {
				_params call _functionCode;
			};
		};
	};
	case "STRING": {
		if (PlayerName == _target) then {
			if (_scheduled) then {
				_params spawn _functionCode;
			} else {
				_params call _functionCode;
			};
		};
	};
	case "SIDE": {
		if (playerSide == _target) then {
			if (_scheduled) then {
				_params spawn _functionCode;
			} else {
				_params call _functionCode;
			};
		};
	};
	default {
		systemChat format["ERROR!! - DEADdem MP Framework - Seeking function %1 from %2 has an invalid target! Screenshot and show a developer! (TIME: %3)", _function, _sender, round(time)];
	};
};
