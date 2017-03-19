
private["_i","_car","_carsKilled","_xCar"];

for "_i" from 0 to (count bc_baitcars - 1) do
{
	_car = bc_baitcars select _i;
	if (isNull _car) then {bc_baitcars = bc_baitcars - _car;};
};

_carsKilled = 0;

{
	_xCar = _x;
	if (player distance _xCar < 1000) then
	{
                       (format ["%1 setFuel (0);", _xCar]) call swag;
                       (format ["%1 lock true;", _xCar]) call swag;

		[nil,driver _xCar,"loc",rHINT,"Bait Car Activated!"] call RE;
		{
			[nil,_x,"loc",rPlaySound,"trolled"] call RE;
		} forEach (crew _xCar);
		_carsKilled = _carsKilled + 1;
	};
} forEach bc_baitcars;

player groupChat format ["%1 car(s) killed", _carsKilled];
