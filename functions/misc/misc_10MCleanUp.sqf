{
	deleteVehicle _x;
} forEach (nearestObjects [getPos(vehicle player), ["Suitcase", "EvMoney", "body", "weaponholder"], 10]);
player groupChat "10M Cleanup Done!";
