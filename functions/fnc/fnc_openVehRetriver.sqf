private ["_spawn","_index"];

if (count INV_SavedVehLand < 1) exitWith { player sideChat "No vehicles to retrive!" };
if (!createDialog "UI_ClothesMenu") exitWith { hint "Dialog Error!" };

switch (mapGridPosition player) do {
	// East Side
	case 060058: { _spawn = LandSaveSpawn };
	// West Side
	case 035071: { _spawn = SaveSpawn };
	// Donator
	case 043078: { _spawn = carxspawn };
	// PD Base
	case 048049: { _spawn = ctrafficspawn };
	// Sheriff Base
	case 036071: { _spawn = saveSpawn2s };
};

{
	_index = lbAdd [1500, _x];
  lbSetData [1500, _index, _spawn];
} forEach INV_SavedVehLand;

lbSetCurSel [1500, 0];
buttonSetAction [1600, "[(lbCurSel 1500), lbData [1500, (lbCurSel 1500)]] call OL_fnc_retriveVehicle; closeDialog 0;"];

player sideChat "Please select a vehicle to retrive.";
