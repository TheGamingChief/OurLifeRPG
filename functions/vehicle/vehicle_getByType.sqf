_type = _this select 0;
_tmpVehicles = [];

{
  if ((_x select 1) isKindOf _type) then {
    _tmpVehicles = _tmpVehicles + [_x];
  };
} forEach OL_VehicleGarage;

_tmpVehicles;
