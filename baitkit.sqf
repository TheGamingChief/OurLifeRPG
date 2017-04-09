private ["_vehicle"];
_vehicle = vehicle player;

if (_vehicle == player) exitWith { player groupChat "You must be inside the vehicle to bait kit it!" };
if (!(_vehicle in INV_VehicleArray)) exitWith { player groupChat "You do not own this car! You cannot bait it!" };
if ("Bait_Kit" call INV_GetItemAmount < 1) exitWith { player groupChat "You do not have a bait kit!" };

["Bait_Kit", -1] call INV_AddInvItem;

if ("Bait_Ctrl" call INV_GetItemAmount < 1) then {
	["Bait_Ctrl", 1] call INV_AddInvItem
};

OL_BaitCars set [count OL_BaitCars, _vehicle];
player groupChat "Bait kit setup!";
