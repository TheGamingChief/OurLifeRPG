_type = _this select 0;
_tmpVehicles = [];

{
  if (((_x select 1) isKindOf _type) && (_x select 7 != "SUBNOMINAL") && (_x select 7 != "IMPOUNDED")) then {
    _tmpVehicles = _tmpVehicles + [_x];
  };
} forEach OL_VehicleGarage;

_tmpVehicles;
