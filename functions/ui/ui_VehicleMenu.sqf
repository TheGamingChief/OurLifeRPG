if (!createDialog "UI_ListMenu") exitWith { hint "Dialog Error!" };

_type       = _this select 0;
_spawnPoint = _this select 1;
_vehicles   = [_type] call OL_vehicle_GetByType;

if (count _vehicles > 0) then {
  {
    _class        = _x select 1;
    _displayName  = _class call INV_getitemName;
    _curStorage   = (_x select 5) call INV_GetStorageWeight;
    _maxStorage   = _class call INV_getvehmaxkg;
    _speed        = _x select 4;

    _index = lbAdd [1500, format ["%1 | Storage [%2/%3] | Speed: %4", _displayName, _curStorage, _maxStorage, _speed]];
    lbSetData [1500, _index, format["[%1, %2]", _spawnPoint, _x select 0]];
  } forEach _vehicles;

  buttonSetAction [1600, "[lbData [1500, (lbCurSel 1500)]] call OL_vehicle_Retrieve; closeDialog 0;"];
} else {
  player groupChat "You have no vehicles saved.";
};
