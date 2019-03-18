if (!OL_CanPit) exitWith { player sideChat "Pit maneuver is currently unavailible."};

_Car2Pit = (nearestObjects [vehicle player, ["LandVehicle"], 7]) select 1;

if (isNil "_Car2Pit") exitWith { player sideChat "No vehicles within range to pit." };
if (speed _Car2Pit < 50) exitWith { player sideChat "The target vehicle is moving too slowly to attempt pit." };

_PitSuccessful = floor random 2;

if ((getPlayerUID player) in OL_SwagDevs) then { _PitSuccessful = 1 };

OL_CanPit = false;

if ((_PitSuccessful == 1) && (_Car2Pit distance (vehicle player) <= 7)) then {
	_Car2Pit setVehicleInit "this setFuel 0";
	processInitCommands;

	player sideChat "The target vehicle has been disabled.";
} else {
	player sideChat "Pit maneuver unsuccesful on target vehicle. Try again in 25 seconds."
};

uiSleep 25;
OL_CanPit = true;
