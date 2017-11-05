_this spawn {
	waitUntil {!(isPlayer (_this select 0))};
	private ["_unit"];
	_unit = _this select 0;
	if (!([_unit] call OL_fnc_ClothesCheck)) exitWith {};
	uiSleep 2;
	_unit setPosATL [-1, -1, 0];
	_unit setDamage 1;
	private["_i"];
	_i = 0;
	while { _i < 10 } do {
		hideBody _unit;
		_i = _i + 1;
	};
	deleteVehicle _unit;
};
