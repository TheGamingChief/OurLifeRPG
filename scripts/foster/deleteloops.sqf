while {true} do
{
	if (playersNumber resistance < 3) then 
	{
		deleteMarker "Fire";
		deleteMarker "Fire2";
		if (not (isNil "FireObj")) then {
			deleteVehicle FireObj;
		};
		fireIsSpawned = false;
		publicVariable "fireIsSpawned";
		
		deleteMarker "GasLeak";
		deleteMarker "GasLeak2";
		gasIsSpawned = false;
		publicVariable "gasIsSpawned";
		
		deleteMarker "CarWreck";
		deleteMarker "CarWreck2";
		if (not (isNil "CarWreckObj")) then {
			_wrecks = nearestObjects [CarWreckObj, ["LADAWreck","SKODAWreck","datsun02Wreck","UralWreck","UAZWreck"], 20];
			{deleteVehicle _x} forEach _wrecks;
			deleteVehicle CarWreckObj;
		};
		wreckIsSpawned = false;
		publicVariable "wreckIsSpawned";
	};

	sleep 10;
};