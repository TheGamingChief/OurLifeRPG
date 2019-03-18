_keys = _this select 0;
_keys = [_keys] call CP_misc_ArrayStr2Obj;

{
  if (isNull _x) then {
    _keys set [_forEachIndex, -1];
    _keys = _keys - [-1];
  };
} forEach _keys;

INV_VehicleArray = _keys;
