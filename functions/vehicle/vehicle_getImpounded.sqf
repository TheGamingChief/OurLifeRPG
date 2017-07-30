_tmpVehicles = [];

{
  if (_x select 7 == "IMPOUNDED") then {
    _tmpVehicles = _tmpVehicles + [_x];
  };
} forEach OL_VehicleGarage;

_tmpVehicles;
