_ArryLength = count savedVehiclesWest;
_CarCheck = 0;

if(_ArryLength >= 30 && _CarCheck == 0) then 
{
	if ((getPlayerUID player) in CarSaveIncrease3_id) then 
	{
		player sideChat "You can not save more than 30 Police vehicles in storage.";
		_CarCheck = 1;
	};
};
if (((getPlayerUID player) in CarSaveIncrease3_id) && _CarCheck != 1) then {_CarCheck = 2;};

if(_ArryLength >= 15 && _CarCheck == 0) then 
{
	if ((getPlayerUID player) in CarSaveIncrease2_id) then 
	{
		player sideChat "You can not save more than 15 Police vehicles in storage.";
		_CarCheck = 1;
	};
};
if (((getPlayerUID player) in CarSaveIncrease2_id) && _CarCheck != 1) then {_CarCheck = 2;};

if(_ArryLength >= 10 && _CarCheck == 0) then 
{
	if ((getPlayerUID player) in CarSaveIncrease1_id) then 
	{
		player sideChat "You can not save more than 10 Police vehicles in storage.";
		_CarCheck = 1;
	};
};
if (((getPlayerUID player) in CarSaveIncrease1_id) && _CarCheck != 1) then {_CarCheck = 2;};

if(_ArryLength >= 5 && _CarCheck == 0) then 
{
	player sideChat "You can not save more than 5 Police vehicles in storage.";
	_CarCheck = 1;
};

if (_CarCheck != 1) then
{
	_vcl = (nearestObjects [getPos player, ["Air", "Ship", "LandVehicle"], 3] select 0);

	_vclClass = typeOf _vcl;

	player sideChat format ["VEHICLE ARRAY : %1",_vcl]; // debug

	savedVehiclesWest set [count savedVehiclesWest, _vclClass];

	player sideChat format ["SAVED ARRAY : %1",savedVehiclesWest]; // debug

	deleteVehicle _vcl;
		
	player sideChat format ["Vehicle Saved, You may retrieve it at the cop vehicle retriever! You have %1 vehicle(s).",_ArryLength + 1];

	["savedVehiclesWest",savedVehiclesWest] spawn clientsavevar;
};