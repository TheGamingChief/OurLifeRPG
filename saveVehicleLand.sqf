_ArryLength = count INV_SavedVehLand;
_CarCheck = 0;

if(_ArryLength >= 30 && _CarCheck == 0) then 
{
	if ((getPlayerUID player) in CarSaveIncrease3_id) then 
	{
		player groupChat "YOU CANNOT SAVE MORE THEN 30 VEHICLES";
		_CarCheck = 1;
	};
};
if (((getPlayerUID player) in CarSaveIncrease3_id) && _CarCheck != 1) then {_CarCheck = 2;};

if(_ArryLength >= 15 && _CarCheck == 0) then 
{
	if ((getPlayerUID player) in CarSaveIncrease2_id) then 
	{
		player groupChat "YOU CANNOT SAVE MORE THEN 15 VEHICLES";
		_CarCheck = 1;
	};
};
if (((getPlayerUID player) in CarSaveIncrease2_id) && _CarCheck != 1) then {_CarCheck = 2;};

if(_ArryLength >= 10 && _CarCheck == 0) then 
{
	if ((getPlayerUID player) in CarSaveIncrease1_id) then 
	{
		player groupChat "YOU CANNOT SAVE MORE THEN 10 VEHICLES";
		_CarCheck = 1;
	};
};
if (((getPlayerUID player) in CarSaveIncrease1_id) && _CarCheck != 1) then {_CarCheck = 2;};

if(_ArryLength >= 5 && _CarCheck == 0) then 
{
	player groupChat "YOU CANNOT SAVE MORE THEN 5 VEHICLES";
	_CarCheck = 1;
};

if (_CarCheck != 1) then
{
	_vcl = (nearestobjects [getpos player, ["LandVehicle"], 3] select 0);

	_vclClass = typeOf _vcl;

	player globalchat format ["VEHICLE ARRAY : %1",_vcl]; // debug

	INV_SavedVehLand set [count INV_SavedVehLand, _vclClass];

	player globalchat format ["SAVED ARRAY : %1",INV_SavedVehLand]; // debug

	deleteVehicle _vcl;

	player groupChat format ["Vehicle Saved, You may retrieve it at the vehicle retriever! You have %1 vehicle(s).",_ArryLength + 1];

	["INV_SavedVehicle",INV_SavedVehicle] spawn clientsavevar;
};