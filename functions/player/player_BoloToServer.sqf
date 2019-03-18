if (getPlayerUID (_this select 0) == "") exitWith {};

_var = "BOLO_" + (str((_this select 1) select 0));
_data = _this select 1;
_key = "Bolos";

[[_var, _data, _key], "DD_cloud_Add", false, true, false] call OL_network_MP;
