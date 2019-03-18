_ret = "NOT FOUND";
_key = _this select 0;

{
  if (_key == (_x select 1)) exitWith { _ret = _x select 0 };
} forEach OL_CustomKeys;

_ret;
