_var = (getPlayerUID (_this select 0)) + "_Warrants";
_data = _this select 1;
_key = "Warrants";

[[_var, _data, _key], "DD_cloud_Add", false, true] call OL_network_MP;
