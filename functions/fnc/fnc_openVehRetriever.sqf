private ["_spawn", "_index"];

if (dialog) then { closeDialog 0 };
if (isNil "INV_SavedVehLand") exitWith {};
if (count INV_SavedVehLand < 1) exitWith { player sideChat "No vehicles to retrieve!" };
if (!createDialog "UI_ClothesMenu") exitWith { hint "Dialog Error!" };

switch (mapGridPosition player) do {
	case 060058: {
		_spawn = LandSaveSpawn // East Side
	};
	case 035071: {
		if (savepoint in (nearestObjects [player, ["All"], 10])) then {
			_spawn = SaveSpawn // West Side
		} else {
			_spawn = saveSpawn2s // Sheriff Base
		};
	};
	case 043078: {
		_spawn = carxspawn // Donator
	};
	case 049048: {
		_spawn = ctrafficspawn // PD Base
	};
};

if (isNil "_spawn") exitWith { systemChat "ut oh kill yourself daniel ur a fucking nigger." };

{
	_index = lbAdd [1500, _x];
  lbSetData [1500, _index, _spawn];
} forEach INV_SavedVehLand;

lbSetCurSel [1500, 0];
buttonSetAction [1600, "[(lbCurSel 1500), lbData [1500, (lbCurSel 1500)]] call OL_fnc_retrieveVehicle; closeDialog 0;"];

player sideChat "Please select a vehicle to retrieve.";
