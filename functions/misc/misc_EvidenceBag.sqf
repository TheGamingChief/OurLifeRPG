_deleted = 0;

if (vehicle player == player) then {
	{
		deleteVehicle _x;
		_deleted = _deleted + 1;
	} forEach (player nearObjects ["Suitcase", 10]);

	player groupChat format ["%1 items were deleted.", _deleted];
} else {
	player groupchat "You must be on foot to use an evidence bag."
};

if (_deleted > 0) then { [(_this select 1), -1] call INV_AddInvItem };
