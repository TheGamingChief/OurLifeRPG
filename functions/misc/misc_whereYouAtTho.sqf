_key = _this select 0;
_arr = _this select 1;

_index = -1;
{
  if (_key == _x select 0) exitWith { _index = _forEachIndex };
} forEach _arr;

_index;
