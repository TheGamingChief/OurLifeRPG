call fnc_AddRadiosToNonLethalWeapons;
_weapons = weapons player - nonlethalweapons;
_mags = magazines player;
_Rifle = [];
_Pistol = [];
_holder = createVehicle ["weaponholder", getPosATL player, [], 0, "CAN_COLLIDE" ];
0 cutText["Your weapons have been removed.","PLAIN", 5];


if !(isNil "Rifle_Holster") then {
	_Rifle = Rifle_Holster;
};

if !(isNil "Pistol_Holster") then {
 _Pistol = Pistol_Holster;
};

if (count _weapons > 0) then 
{
{player removeWeapon _x} forEach _weapons};

if (count _mags > 0) then 
{
{player removeMagazine _x} forEach _mags};

if !(isNil "_weapons") then {
	{_holder addWeaponCargoGlobal [_x,1];}forEach _weapons;
};

if !(isNil "_mags") then {
	{_holder addMagazineCargoGlobal [_x,1];}forEach _mags;
};

if !(isNil "_Rifle") then {
	_holder addWeaponCargoGlobal [_Rifle,1];
};

if !(isNil "_Pistol") then {
	_holder addWeaponCargoGlobal [_Pistol,1];
};

Rifle_Holster = nil;
Pistol_Holster = nil;
['gewehr', 0] call INV_SetItemAmount;
['pistole', 0] call INV_SetItemAmount;