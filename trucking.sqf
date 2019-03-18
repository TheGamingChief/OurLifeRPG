private ["_art", "_vcl", "_cargo", "_deleted"];
_art  = ((_this select 3) select 0);
_vcl = (nearestobjects [getPos player, ["cl_del_mackr", "cl_trucktest_mackr", "cl_flatbed_mackr"], 10] select 0);

if (_art == 4) then { player setPos [(getPos _vcl select 0), (getPos _vcl select 1), (getPos _vcl select 2)+2] };
if (_art == 5) then {
	_cargo = (nearestobjects [getPos player, ["Land_Bag_EP1"], 5]) select 0;
	_deleted = 0;
	if (isNil "_cargo") exitwith { player groupChat "There is nothing illegal on this truck" };
	{
		deleteVehicle _x;
		_deleted = _deleted + 1;
	} forEach (nearestObjects [player, ["Land_bags_stack_EP1", "Land_Bag_EP1"], 10]);
	player groupChat "Illegal Items Removed, ticket the driver";
};
