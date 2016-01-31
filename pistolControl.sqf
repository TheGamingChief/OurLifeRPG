Private["_passedArray","_waitUntil","_gun","_unknownWeaponClass","_unknownConfig","_weaponsArray","_numWeapon","_prevention"];
 
 
_passedArray = _this;
_waitUntil = 0;
_gun = "";
 
// Function for pistol data - by Spooner
isPistol =
{
        _unknownWeaponClass = _this select 0;
       
        _unknownConfig = configFile >> "CfgWeapons" >> _unknownWeaponClass;
        _pistolConfig = configFile >> "CfgWeapons" >> "PistolCore";
       
        _isPistol = false;
        while {isClass _unknownConfig} do
        {
            if (_unknownConfig == _pistolConfig) exitWith
            {
                _isPistol = true;
            };
       
            _unknownConfig = inheritsFrom _unknownConfig;
        };
       
        _isPistol; // Return.
};
 
// Moderate array when script is ran 1st time
if (count _this == 0) then
{
// Modify array when first ran (make it similar to addAction)
_passedArray = [0,0,0,[false]];
 
// Activate parallel script to check weapon conditions, first run
[] spawn
{
        // Syntax: ["pistolclass",holstered?,dropped pistol?];
        saveWeaponPistol = ["",false,false];
 
while { true } do
{
        _weaponsArray = weapons player - nonlethalweapons;
        _numWeapon = count _weaponsArray;
 
// Get pistol classname
_prevention = true;
for [{_p = 0},{_p < _numWeapon},{_p = _p + 1}] do
{
        _gun = (_weaponsArray select _p);
        if ([_gun] call isPistol) exitWith
        {
                _prevention = false;
                if ((_gun != saveWeaponPistol select 0) && saveWeaponPistol select 1) then { _prevention = true; saveWeaponPistol set [1,false]; };
                saveWeaponPistol set [0,_gun];         
        };
};
 
// Determine if holster/unholster can be used
if (_prevention && !(saveWeaponPistol select 1)) then { saveWeaponPistol set [2,true]; player removeAction holsterPistol; player removeAction unholsterPistol; }
else
{ if (saveWeaponPistol select 2) then { holsterPistol = player addAction ["Holster Pistol","pistolControl.sqf",[true]]; saveWeaponPistol set [2,false]; }; };
 
sleep 0.5;
};
 
// End of spawn
};
};
 
// Prepare value if holster or unholstered
_holster = (_passedArray select 3 select 0);
 
// Activate the correct action
if (!_holster) then
{
        player removeAction unholsterPistol;
        saveWeaponPistol set [1,false];
        holsterPistol = player addAction ["Holster Pistol","pistolControl.sqf",[true]];
       
        // Upon first activation, prevent addWeapon
        if (count _this > 0) then
        {
        player addWeapon (saveWeaponPistol select 0);
        player selectWeapon (saveWeaponPistol select 0);
        ['pistole', 0] call INV_SetItemAmount;
        INV_InventarPistole = (saveWeaponPistol select 0);
        };
}
else
{
        player removeAction holsterPistol;
        saveWeaponPistol set [1,true];
        unholsterPistol = player addAction ["Unholster Pistol","pistolControl.sqf",[false]];
        player removeWeapon (saveWeaponPistol select 0);
        ['pistole', 1] call INV_SetItemAmount;
        INV_InventarPistole = (saveWeaponPistol select 0);
};
 
// Calculate next ID
_waitUntil = (_passedArray select 2) + 1;
 
// Wait with termination until action is used or pistol is dropped
if (isNull unholsterPistol) exitWith {};
unholsterPistol = 100; //Setting this to prevent the null value looping an error
waitUntil { holsterPistol == _waitUntil || unholsterPistol == _waitUntil || (saveWeaponPistol select 2) };