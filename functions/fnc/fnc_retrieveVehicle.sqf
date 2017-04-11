_index = _this select 0;
_spawn = _this select 1;

if (_index == -1) exitWith { player groupChat "Please select a vehicle from the menu!" };

_vehicle = INV_SavedVehLand select _index;

systemChat format ["%1", _spawn];

if (isNil "_vehicle") exitWith { player groupChat "rip" };

player groupChat format ["Retriving Vehicle: %1", getText(configFile >> "cfgVehicles" >> _vehicle >> "displayName")];

if (dialog) then { closeDialog 0 };

INV_SavedVehLand = INV_SavedVehLand - [_vehicle];
[_vehicle,_spawn] call INV_CreateVehicle;

player groupChat format ["Retrived Vehicle: %1", getText(configFile >> "cfgVehicles" >> _vehicle >> "displayName")];
