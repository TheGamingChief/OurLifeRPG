_found = false;

{
    if ([_x] call OL_misc_isPistol) exitWith {
        _found = true;
    };
} forEach (weapons player);
_found;
