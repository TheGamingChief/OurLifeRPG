if (vehicle player == player) exitWith { player groupChat "You must be in a vehicle to add guns to it." };
if (player != (driver (vehicle player))) exitWith { player groupChat "You must be the Captain of the boat!" };

switch (typeOf (vehicle player)) do {
	case "Fishing_Boat": {
		_gun = "DSHkM_INS" createVehicle (getPosATL (vehicle player));
		_gun attachTo [vehicle player, [0.5, 5, -1]];
	};
	case "smallboat_1": {
		_gun2 = "DSHkM_INS" createvehicle (getpos (vehicle player));
		_gun2 attachto [_vcl, [0.2, 2, 1]];	};
	case "smallboat_2": {
		_gun3 = "DSHkM_INS" createvehicle (getpos (vehicle player));
		_gun3 attachto [_vcl, [0.2, 2, 1]];
	};
	case "big_boat": {
		_gun = "DSHkM_INS" createVehicle (getPosATL (vehicle player));
		_gun attachTo [_vcl, [0, -3.25, 2.25]];
		_gun = "DSHkM_INS" createVehicle (getPosATL (vehicle player));
		_gun attachTo [_vcl, [0, 10, 0]];
		_gun = "SPG9_CDF" createVehicle (getPosATL (vehicle player));
		_gun attachTo [_vcl, [0, -7.5, -2.5]];

		for "_i" from 0 to 10 do { _gun removeMagazine "PG9_AT" };

		format ["%1 setDir 180", _gun] call OL_network_Swag;
	};
};

[(_this select 1), -1] call INV_AddInvItem;
