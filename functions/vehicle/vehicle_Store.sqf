_veh = _this select 0;

if (isNil "_veh") exitWith { player groupChat "Invalid Selection / Foster"; };
if (damage _veh > 0.9) exitWith { player groupChat "This vehicle is too dammaged"; };

_class = typeOf _veh;
_id = _veh getVariable ["DatabaseID", call compile ([6] call CP_misc_GetRandomCode)];
_upg = _veh getVariable ["tuning", 0];
_dmg = damage _veh;
_fuel = fuel _veh;

_trunk = call compile format ["%1_storage", _veh]; if (isNil "_trunk") then { _trunk = []; };
_weaps = [getWeaponCargo _veh] call CP_misc_ArrayCargoCombiner; if (isNil "_weaps") then { _weaps = []; };
_mags  = [getMagazineCargo _veh] call CP_misc_ArrayCargoCombiner; if (isNil "_mags") then { _mags = []; };

_gear = [_weaps, _mags];

_index = [_id, OL_VehicleGarage] call CP_misc_WhereYouAtTho;
if (_index == -1) then { _index = count OL_VehicleGarage; };

OL_VehicleGarage set [_index, [_id, _class, _dmg, _fuel, _upg, _trunk, [_weaps, _mags], "NOMINAL"]];
[] call fnc_SaveStats;
