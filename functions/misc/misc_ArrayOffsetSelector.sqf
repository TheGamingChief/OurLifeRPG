_arr = _this select 0;
_offset = _this select 1;

_tmpArr = [];

{
  _tmpArr = _tmpArr + [_x select _offset];
} forEach _arr;

_tmpArr;
