if (count INV_SavedVehLand >= OL_CarSaveLimit) exitWith { player sideChat "You have reached your max car save limit!" };

_vcl = (nearestObjects [player, ["LandVehicle"], 5] select 0);

if (!(_vcl in INV_VehicleArray)) exitWith {};

player sideChat "Saving vehicle, please wait..";

INV_SavedVehLand set [(count INV_SavedVehLand), typeOf _vcl];
deleteVehicle _vcl;

player sideChat "Vehicle saved!";

[] call fnc_SaveStats;
