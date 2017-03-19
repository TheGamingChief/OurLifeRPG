_side = _this select 0;

if (isNil "_side") exitWith {systemChat "FNC: Core_Holster - No side given"};

_curgun = currentWeapon player;

if (_side == "left") then {
	if (DD_HolsteredGun_Slot1 == "") then {
		systemChat "Holstering..";
		if (currentWeapon player == "") exitWith {["You do not have a weapon to holster!",DD_COLGROUP_RED] call DD_fnc_Message;};
		DD_HolsteredGun_Slot1 = _curgun;
		player removeWeapon (_curgun);
		[format["You holstered your %1 on your Primary Holster",(getText(configFile >> "CfgWeapons" >> DD_HolsteredGun_Slot1 >> "displayName"))],DD_COLGROUP_WHITE] call DD_fnc_Message;
	} else {
		systemChat "Unholstering..";
		if (!(currentWeapon player == "")) exitWith {["You cannot unholster when you have a weapon in-hand",DD_COLGROUP_RED] call DD_fnc_Message};
		player addWeapon DD_HolsteredGun_Slot1;
		_weaponmagazines = getArray(configFile >> "CfgWeapons" >> DD_HolsteredGun_Slot1 >> "magazines") select 0;
		[format["You unholstered your %1 from your Primary Holster",(getText(configFile >> "CfgWeapons" >> DD_HolsteredGun_Slot1 >> "displayName"))],DD_COLGROUP_WHITE] call DD_fnc_Message;
		DD_HolsteredGun_Slot1 = "";
	};
} else {
	if (DD_HolsteredGun_Slot2 == "") then {
		systemChat "Holstering..";
		if (currentWeapon player == "") exitWith {["You do not have a weapon to holster!",DD_COLGROUP_RED] call DD_fnc_Message;};
		DD_HolsteredGun_Slot2 = _curgun;
		player removeWeapon (_curgun);
		[format["You holstered your %1 on your Secondary Holster",(getText(configFile >> "CfgWeapons" >> DD_HolsteredGun_Slot2 >> "displayName"))],DD_COLGROUP_WHITE] call DD_fnc_Message;
	} else {
		systemChat "Unholstering..";
		if (!(currentWeapon player == "")) exitWith {["You cannot unholster when you have a weapon in-hand",DD_COLGROUP_RED] call DD_fnc_Message};
		player addWeapon DD_HolsteredGun_Slot2;
		_weaponmagazines = getArray(configFile >> "CfgWeapons" >> DD_HolsteredGun_Slot2 >> "magazines") select 0;
		[format["You unholstered your %1 from your Secondary Holster",(getText(configFile >> "CfgWeapons" >> DD_HolsteredGun_Slot2 >> "displayName"))],DD_COLGROUP_WHITE] call DD_fnc_Message;
		DD_HolsteredGun_Slot2 = "";
	};
};
