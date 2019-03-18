_unknownWeaponClass = _this select 0;
if (isNil "_unknownWeaponClass") exitWith {};

_unknownConfig = configFile >> "CfgWeapons" >> _unknownWeaponClass;
_pistolConfig = configFile >> "CfgWeapons" >> "PistolCore";
_isPistol = false;

while {isClass _unknownConfig} do {
    if (_unknownConfig == _pistolConfig) exitWith { _isPistol = true };
    _unknownConfig = inheritsFrom _unknownConfig;
};

_isPistol; // Return.
