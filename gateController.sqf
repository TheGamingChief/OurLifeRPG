private ["_gate"];

_gate = (_this select 3) select 0;

if (_gate getVariable "raised") then {

	//Lower
	_gate setPosATL [(getPosATL _gate select 0),(getPosATL _gate select 1), -10];
	_gate setvariable ["raised", false, true];

} else {

	//Raise
	_gate setPosATL [(getPosATL _gate select 0),(getPosATL _gate select 1), 0];
	_gate setvariable ["raised", true, true];

};
