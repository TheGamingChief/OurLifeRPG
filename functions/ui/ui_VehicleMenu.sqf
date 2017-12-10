if ((_this select 0) == "FETCH") exitWith {
  if (!createDialog "UI_ListMenuBig") exitWith { hint "Dialog Error!" };
  lbClear 1500;
  lbAdd [1500, "Retrieving Vehicles..."];
  ctrlEnable [1600, false];
  ctrlShow [1601, false];

  [[getPlayerUID player, playerSide, _this select 1, _this select 2], "Stats_fnc_RetrieveSavedVehicles", false, false, true] call Network_fnc_MP;
};

if ((_this select 0) == "DISPLAY") exitWith {
  if (dialog) then { closeDialog 0 };
  if (!createDialog "UI_ListMenuBig") exitWith { hint "Dialog Error!" };
  lbClear 1500;
  _vehicles = _this select 1;
  _spawnPoint = _this select 2;

  if (player distance _spawnPoint > 50) exitWith { closeDialog 0 };

  if (count _vehicles > 0) then {
    {
      _class        = _x select 4;
      _displayName  = _class call INV_getitemName;
      _curStorage   = (_x select 8) call INV_GetStorageWeight;
      _maxStorage   = _class call INV_getvehmaxkg;
      _speed        = _x select 7;

      _index = lbAdd [1500, format ["%1 | Storage [%2/%3] | Speed: %4", _displayName, _curStorage, _maxStorage, _speed]];
      lbSetData [1500, _index, format["[%1, %2]", _spawnPoint, _x]];
    } forEach _vehicles;

    buttonSetAction [1600, "[lbData [1500, (lbCurSel 1500)]] call OL_vehicle_Retrieve; closeDialog 0;"];
  } else {
    lbAdd [1500, "No vehicles to display."];
    ctrlEnable [1600, false];
  };
  ctrlShow [1601, false];
};
