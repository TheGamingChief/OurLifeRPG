_arr = _this select 0;
_offset = _this select 1;
_tmpArr = [];

{
  switch (typeName _x) do {
      case "ARRAY": {
        if (count _x <= _offset) then {
          _tmpArr = _tmpArr + [_x];
        } else {
          _tmpArr = _tmpArr + [[_x, _offset] call CP_misc_ArrayOffsetDelete];
        };
      };
      default {
        _tmpArr = _tmpArr + [_x];
      };
  };
} forEach _arr;

_tmpArr;
