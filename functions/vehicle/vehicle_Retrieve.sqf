_data = [];
if (typeName (_this select 0) == "STRING") then { _data = call compile (_this select 0); } else { _data = _this };

_shop = _data select 0;
_key  = _data select 1;

_garageIndex = [_key, OL_VehicleGarage] call CP_misc_WhereYouAtTho;
if (_garageIndex == -1) exitWith { player globalChat "Error loading vehicle, ask Foster for help" };

_settings = OL_VehicleGarage select _garageIndex;
_dbId     = _settings select 0;
_class    = _settings select 1;
_dmg      = _settings select 2;
_fuel     = _settings select 3;
_upg      = _settings select 4;
_trunk    = _settings select 5;
_weaps    = (_settings select 6) select 0;
_mags     = (_settings select 6) select 1;
_status   = ["SUBNOMINAL", getPlayerUID player, PlayerName];

if (_dmg > 0.9)  then { _dmg = 0.9 };
if (_fuel < 0.1) then { _fuel = 0.1 };

_veh = [_class, _shop] call INV_CreateVehicle;
if (!(isNil "_veh")) then {
    _veh setVariable ["DatabaseID", _dbId, true];
    _veh setVariable ["tuning", _upg, true];
    _veh setDamage _dmg;
    _veh setFuel _fuel;

    { _veh addWeaponCargoGlobal _x; } forEach _weaps;
    { _veh addMagazineCargoGlobal _x; } forEach _mags;

    call compile format ['%1_storage = %2; publicVariable "%1_storage";', _veh, _trunk];
};

OL_VehicleGarage set [_garageIndex, [_dbId, _class, _dmg, _fuel, _upg, _trunk, [_weaps, _mags], _status]];
[] call fnc_SaveStats;
