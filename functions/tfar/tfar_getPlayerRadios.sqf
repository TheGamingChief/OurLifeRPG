private["_curWeapon","_tmpArray"];
_tmpArray = [];
{
    _curWeapon = toArray _x;
    _curWeapon resize 3;

    if (toString _curWeapon == "tf_") then {
        _tmpArray = _tmpArray + [_x];
    }
}forEach (weapons player);
_tmpArray;
