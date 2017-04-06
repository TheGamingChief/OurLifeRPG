private["_curWeapon"];
{
    _curWeapon = toArray _x;
    _curWeapon resize 3;

    if (toString _curWeapon == "tf_") then {
        player removeWeapon _x;
    }

}forEach (weapons player);
player removeWeapon "ItemRadio";
