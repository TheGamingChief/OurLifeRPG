private ["_i", "_carsKilled"];

for "_i" from 0 to (count OL_BaitCars - 1) do {
	if (isNull (OL_BaitCars select _i)) then {
		OL_BaitCars = OL_BaitCars - (OL_BaitCars select _i)
	};
};

_carsKilled = 0;

{
	if (player distance _x < 1000) then {
		_x setVehicleInit "
			this setFuel 0;
			this lock true;
		";
		processInitCommands;
		_carsKilled = _carsKilled + 1;
	};
} forEach OL_BaitCars;

player groupChat format ["%1 car(s) killed", _carsKilled];
