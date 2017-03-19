_ArryLength = count savedVehiclesWest;

if (_ArryLength >= OL_CarSaveLimit) then {
	player groupChat format["YOU CANNOT SAVE MORE THAN %1 VEHCILES!"];
} else {
	_vcl = (nearestobjects [getpos player, ["LandVehicle"], 3] select 0);

	if (!(_vcl in INV_VehicleArray)) exitWith { player groupChat "VEHICLE SAVE FAILED! TRY MOVING AWAY FROM OTHER OBJECTS!" };

	_vclClass = typeOf _vcl;

	player globalchat format ["VEHICLE TO SAVE : %1",_vcl]; // debug

	savedVehiclesWest set [count savedVehiclesWest, _vclClass];

	player globalchat format ["SAVED ARRAY : %1", savedVehiclesWest]; // debug

	deleteVehicle _vcl;

	player groupChat format ["Vehicle Saved, You may retrieve it at the vehicle retriever! You have %1 vehicle(s).",_ArryLength + 1];

	[] call fnc_SaveStats;
};
