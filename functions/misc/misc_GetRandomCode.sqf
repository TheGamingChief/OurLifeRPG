_array = [0,1,2,3,4,5,6,7,8,9];
_tmpCode = "";

for [{_i = 0}, {_i < (_this select 0)}, {_i=_i+1}] do {
    _tmpCode = _tmpCode + str(_array select (random (count _array - 1)));
};

_tmpCode;
