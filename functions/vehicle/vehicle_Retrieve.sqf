_data = [];
if (typeName (_this select 0) == "STRING") then { _data = call compile (_this select 0); } else { _data = _this };

_shop     = _data select 0;
_settings = _data select 1;

_dbId         = _settings select 0;
_class        = _settings select 4;
_dmg          = _settings select 5;
_fuel         = _settings select 6;
_upg          = _settings select 7;
_trunk        = _settings select 8;
_weaps        = (_settings select 9) select 0;
_mags         = (_settings select 9) select 1;
_color        = _settings select 10;
_licenseplate = _settings select 11;
_status       = ["SUBNOMINAL", getPlayerUID player, PlayerName];

if (_dmg > 0.9)  then { _dmg = 0.9 };
if (_fuel < 0.1) then { _fuel = 0.1 };

_veh = [_class, _shop, "Im a Retriever"] call INV_CreateVehicle;
if (!(isNil "_veh")) then {
    _veh setVariable ["DatabaseID", _dbId, true];
    _veh setVariable ["tuning", _upg, true];
    _veh setDamage _dmg;
    _veh setFuel _fuel;

    { _veh addWeaponCargoGlobal _x   } forEach _weaps;
    { _veh addMagazineCargoGlobal _x } forEach _mags;

    call compile format ['%1_storage = %2; publicVariable "%1_storage";', _veh, _trunk];
};

pv_SaveVehicleRequest = [[_dbId, _class, _dmg, _fuel, _upg, _trunk, [_weaps, _mags], _color, _licenseplate, _status], playerSide];
publicVariableServer "pv_SaveVehicleRequest";
