nonlethalweapons = nonlethalweapons + call OL_TFAR_getPlayerRadios;
_weapons = weapons player - nonlethalweapons;
_mags = magazines player;

if (!isNil "_weapons" || !isNil "_mags" || !isNil "Rifle_Holster" || !isNil "Pistol_Holster") then {

	_holder = createVehicle ["weaponholder", getPosATL player, [], 0, "CAN_COLLIDE" ];

	if !(isNil "_weapons") then {
		{
			player removeWeapon _x;
			_holder addWeaponCargoGlobal [_x, 1];
		} forEach _weapons;
	};

	if !(isNil "_mags") then {
		{
			player removeMagazine _x;
			_holder addMagazineCargoGlobal [_x, 1];
		} forEach _mags;
	};

	if !(isNil "Rifle_Holster")  then { _holder addWeaponCargoGlobal [Rifle_Holster,  1]; };
	if !(isNil "Pistol_Holster") then { _holder addWeaponCargoGlobal [Pistol_Holster, 1]; };
};

Rifle_Holster = nil;
Pistol_Holster = nil;
['gewehr', 0] call INV_SetItemAmount;
['pistole', 0] call INV_SetItemAmount;
0 cutText["Your weapons have been removed.","PLAIN", 5];
