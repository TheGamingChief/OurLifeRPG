_arr    = _this select 0;
_length = _this select 1;

if ((typeName _arr != "ARRAY") || (count _arr <= _length)) exitWith { diag_log format["CP_misc_ArrayTrimStart: %1", _this]; [] };

_return = [];
_pos    = 0;
{
  if (_pos >= _length) then { _return = _return + [_x] };
  _pos = _pos + 1;
} forEach _arr;

if (isNil "_return") then { _return = [] };
_return;
