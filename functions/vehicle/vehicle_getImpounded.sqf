_tmpVehicles = [];

{
  _status = (_x select 7) select 0;
  if (_status == "IMPOUNDED") then {
    _tmpVehicles = _tmpVehicles + [_x];
  };
} forEach OL_VehicleGarage;

_tmpVehicles;
