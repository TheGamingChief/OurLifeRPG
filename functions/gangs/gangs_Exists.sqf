_ret = false;

{
  if (_this == _x select 0) exitwith {
    _ret = true
  };
} forEach OL_GangsArray;

_ret;
