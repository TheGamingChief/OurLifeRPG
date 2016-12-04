private["_sender", "_params", "_function", "_target", "_scheduled", "_functionCode"];
diag_log format["asdasdasdasdadasdadasdasdasdasdasdsadass"];
_sender = _this select 0;
_params = _this select 1;
_function = _this select 2;
_target = _this select 3;
_scheduled = _this select 4;
if(isNil "_sender" || isNil "_params" || isNil "_function")exitWith{
	if(DD_EventLogging)then{
		systemChat "CODE EXECUTION FAILED: MISSING PARAMETERS";
	};
};

_params set[count(_params), _sender];

if(isNil "_target")then{
	_target = true;
};

if(isNil "_scheduled")then{
	_scheduled = false;
};

_functionCode = (compile format["%1", _function]);

if(isNil "_functionCode")exitWith{
	if(DD_EventLogging)then{
		systemChat "CODE EXECUTION FAILED: FUNCTION NOT FOUND";
	};
};

switch(typeName _target)do{
	case "OBJECT":
	{
		if(player == _target)then{
			if(_scheduled)then{
				_params call _functionCode;
			}else{
				_params spawn _functionCode;
			};
		};
	};

	case "BOOLEAN":
	{
		if(_target)then{
			if(_scheduled)then{
				_params call _functionCode;
			}else{
				_params spawn _functionCode;
			};		
		}else{
			if(isServer || !isMultiplayer)then{
				if(_scheduled)then{
					_params call _functionCode;
				}else{
					_params spawn _functionCode;
				};
			};
		};
	};

	case "SCALAR":
	{
		if(owner player == _target)then{
			if(_scheduled)then{
				_params call _functionCode;
			}else{
				_params spawn _functionCode;
			};
		};
	};	

	case "GROUP":
	{
		if(player in (units _target))then{
			if(_scheduled)then{
				_params call _functionCode;
			}else{
				_params spawn _functionCode;
			};
		};
	};

	case "STRING":
	{
		if(name player == _target)then{
			if(_scheduled)then{
				_params call _functionCode;
			}else{
				_params spawn _functionCode;
			};
		};
	};

	default{
		systemChat format["ERROR!! - DEADdem MP Framework - Seeking function %1 from %2 has an invalid target! Screenshot and show a developer! (TIME: %3)", _function, _sender, round(time)];
	};
};
