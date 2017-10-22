if (getPlayerUID (_this select 0) == "") exitWith {};

{
  if (isNull _x) then {
    INV_VehicleArray set [_forEachIndex, -1];
    INV_VehicleArray = INV_VehicleArray - [-1];
  };
} forEach INV_VehicleArray;

_data = [INV_VehicleArray] call CP_misc_ArrayObj2Str;
_var = "NONE";

switch (playerSide) do {
  case west: {
    _var = (getPlayerUID (_this select 0)) + "_COP_Keys"
  };
  case civilian: {
    _var = (getPlayerUID (_this select 0)) + "_CIV_Keys"
  };
  case resistance: {
    _var = (getPlayerUID (_this select 0)) + "_EMS_Keys"
  };
};

if (_var == "NONE") exitWith {};

_key = "KEYS";

[[_var, _data, _key], "DD_cloud_Add", false, true] call OL_network_MP;
