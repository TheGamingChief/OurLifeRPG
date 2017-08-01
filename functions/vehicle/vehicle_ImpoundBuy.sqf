_key 			= call compile (_this select 0);
_location = _this select 1;

if(count (nearestobjects [getpos _location, ["Ship","car","motorcycle","truck"], 3]) > 0) exitwith { player groupchat "There is a vehicle blocking the spawn!" };

if(("geld" call INV_getitemamount) < impoundpay) exitwith { player groupchat "You do not have enough money!" };
["geld", -(impoundpay)] call INV_AddInvItem;

switch (str _location) do {
	case "impoundbuy": {
		[impoundarea2, _key] spawn OL_Vehicle_Retrieve;
	};
	case "impoundbuy_pd": {
		[ctrafficspawn, _key] spawn OL_Vehicle_Retrieve;
	};
};

player groupchat format["You paid the $%1 fine and retrieved your vehicle!", impoundpay];
