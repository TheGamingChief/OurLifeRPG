_car = [] call CP_misc_NearestCars;
_car = _car select 0;

if (isNil "_car") exitWith {};

if (_car in INV_VehicleArray) exitWith { player groupChat "You already have keys to this vehicle." };
if ((_car isKindof "Tank") || (_car isKindOf "Air") || OL_isLockpicking) exitWith { player groupChat "You cannot lockpick this vehicle!" };

OL_isLockpicking = true;
[player, "repairingKneel", 0, true, 20] spawn OL_fnc_Animate;

uiSleep 20;

if ((random 100) < 40) then {
  player groupChat  "You have successfully lockpicked the vehicle!";
  INV_VehicleArray = INV_VehicleArray + [_car];
  if (call OL_misc_wasSeen) then { [player, "Vehicle Theft"] call OL_player_WarrantAdd };
} else {
	player groupChat "Your lockpick broke!";
  if (call OL_misc_wasSeen) then { [player, "Attempted Vehicle Theft"] call OL_player_WarrantAdd };
};

["lockpick", -1] call INV_AddInvItem;
OL_isLockpicking = false;

if (_car getVariable "caralarm" == 1) then {
  format ['if (iscop) then { player sideChat "Dispatch: OnStar has reported a Vehicle Theft in progress. Location: %1" }', mapGridPosition getPosATL _car] call OL_network_Swag;
  'if (iscop) then {playsound "beep";}' call OL_network_Swag;
};
