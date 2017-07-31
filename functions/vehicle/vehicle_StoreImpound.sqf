_id     = _this select 0;
_class  = _this select 1;
_dmg    = _this select 2;
_fuel   = _this select 3;
_upg    = _this select 4;

if (_dmg > 0.9) then { _dmg = 0.9 };
if (_fuel < 0.1) then { _fuel = 0.1 };

_index = [_id, OL_VehicleGarage] call CP_misc_WhereYouAtTho;
if (_index == -1) then { _index = count OL_VehicleGarage };

OL_VehicleGarage set [_index, [_id, _class, _dmg, _fuel, _upg, [], [[],[]], "IMPOUNDED"]];
[] call fnc_SaveStats;
