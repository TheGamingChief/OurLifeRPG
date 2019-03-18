_id           = _this select 0;
_class        = _this select 1;
_dmg          = _this select 2;
_fuel         = _this select 3;
_upg          = _this select 4;
_color        = _this select 5;
_licenseplate = _this select 6;

if (_dmg > 0.9) then { _dmg = 0.9 };
if (_fuel < 0.1) then { _fuel = 0.1 };

_status   = ["IMPOUNDED", getPlayerUID player, PlayerName];

pv_SaveVehicleRequest = [[_id, _class, _dmg, _fuel, _upg, [], [[],[]], _color, _licenseplate, _status], playerSide];
publicVariableServer "pv_SaveVehicleRequest";
