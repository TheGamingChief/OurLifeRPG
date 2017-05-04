/* Michael is bae <3 */

private ["_spawn", "_index"];

if (dialog) then { closeDialog 0 };
if (isNil "INV_SavedVehLand") exitWith {};
if (count INV_SavedVehLand < 1) exitWith { player sideChat "No vehicles to retrieve!" };
if (!createDialog "UI_ClothesMenu") exitWith { hint "Dialog Error!" };

_spawns = [
	[player distance LandSaveSpawn],
	[player distance carxspawn],
	[player distance ctrafficspawn],
	[player distance saveSpawn2s],
	[player distance SaveSpawn]
];

_clostest = 100000;

{
	if (_x < _clostest) then {
		_clostest = _x
	};
} forEach _spawns;

systemChat format ["Spawn: %1", _clostest];

if (isNil "_spawn") exitWith { systemChat "ut oh..... kill yourself daniel ur a fucking nigger." };

{
	_index = lbAdd [1500, _x];
  lbSetData [1500, _index, _clostest];
} forEach INV_SavedVehLand;

lbSetCurSel [1500, 0];
buttonSetAction [1600, "[(lbCurSel 1500), lbData [1500, (lbCurSel 1500)]] call OL_fnc_retrieveVehicle; closeDialog 0;"];

player sideChat "Please select a vehicle to retrieve.";
