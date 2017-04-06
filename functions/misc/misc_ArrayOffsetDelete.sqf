_arr = _this select 0;
_offset = _this select 1;
_tmpArr = [];

for "_i" from 0 to (_offset - 1) do {
    _tmpArr set [_i, _arr select _i];
};

_tmpArr;
