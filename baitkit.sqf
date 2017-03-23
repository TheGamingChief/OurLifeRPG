private["_cars","_baitcar","_baitctrls"];

_cars = nearestObjects [getPos player, ["LandVehicle"], 10];

if (count _cars < 1) exitWith {
	player groupChat "No cars to bait!"
};

_baitcar = _cars select 0;

if (_baitcar in INV_VehicleArray) then {
	["Bait_Kit", -1] call INV_AddInvItem;
	_baitctrls = "Bait_Ctrl" call INV_GetItemAmount;
	if (_baitctrls < 1) then {
		["Bait_Ctrl", 1] call INV_AddInvItem;
	};
	bc_baitcars = bc_baitcars + [_baitcar];
	player groupChat "Bait Kit Set up!";
} else {
	player groupChat "You do not own this car! You cannot bait it!"
};
