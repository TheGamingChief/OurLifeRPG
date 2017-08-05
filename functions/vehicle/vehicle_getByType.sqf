_type = _this select 0;
_tmpVehicles = [];

{
  _status = (_x select 7) select 0;
  if (((_x select 1) isKindOf _type) && (_status != "SUBNOMINAL") && (_status != "IMPOUNDED")) then {
    _tmpVehicles = _tmpVehicles + [_x];
  };
} forEach OL_VehicleGarage;

_tmpVehicles;
