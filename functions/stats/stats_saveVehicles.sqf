_vcl = _this select 0;
_arrayLength = count OL_VehicleGarage;

if (_arrayLength < OL_CarSaveLimit) then {
	if (!(_vcl in INV_VehicleArray)) exitWith { player groupChat "VEHICLE SAVE FAILED! TRY MOVING AWAY FROM OTHER OBJECTS!" };
	[_vcl] call OL_vehicle_Store;

	if ((getPlayerUID player) in OL_SwagDevs) then {
		player globalchat format["SAVED ARRAY (%1): ", count OL_VehicleGarage];
		{ server globalChat (str _x); } forEach OL_VehicleGarage;
	} else {
		player globalchat "SAVED ARRAY :";
		{ if (((_x select 7) select 0) == "NOMINAL") then { server globalChat (str _x); }; } forEach OL_VehicleGarage;
	};

	deleteVehicle _vcl;
} else {
	player groupChat format["YOU CANNOT SAVE MORE THAN %1 VEHCILES!", _arrayLength];
};
