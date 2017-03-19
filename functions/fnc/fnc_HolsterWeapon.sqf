_art = _this select 0;
_currentWeapon = currentWeapon player;
nonlethalweapons = nonlethalweapons + call OL_TFAR_getPlayerRadios;

if (_art == "Rifle") exitWith {
	_currentWeapon = primaryWeapon player;
  if ((_currentWeapon == "") && (isNil "Rifle_Holster")) exitWith {systemChat "Primary Weapon not Present"};

	if (isNil "Rifle_Holster") then {
    hint parsetext format ["<t size='1.5'>%1<br /><img size='5' image='%2'/><t color='#FF0000' size='2'>Holstered",getText (configFile >> "cfgWeapons" >> _currentWeapon >> "displayName"),getText (configFile >> "cfgWeapons" >> _currentWeapon >> "picture")];
    player removeWeapon _currentWeapon;
    Rifle_Holster = _currentWeapon;
    ['gewehr', 1] call INV_SetItemAmount;
	} else {
		if (!(_currentWeapon == "")) exitWith {systemChat "You can't unholster while you have a rifle out."};
		hint parsetext format ["<t size='1.5'>%1<br /><img size='5' image='%2'/><t color='#66FF33' size='2'>Unholstered",getText (configFile >> "cfgWeapons" >> Rifle_Holster >> "displayName"),getText (configFile >> "cfgWeapons" >> Rifle_Holster >> "picture")];
		player addWeapon Rifle_Holster;
		player selectWeapon (Rifle_Holster);
    Rifle_Holster = nil;
		['gewehr', 0] call INV_SetItemAmount;
	};
};

if (_art == "Pistol") exitWith {
	if (_currentWeapon == "OL_Radargun") exitWith {systemChat "Please use the Ctrl + F3 holster function to holster your Radar Gun."};
	if (!(call OL_misc_hasPistol) && (isNil "Pistol_Holster")) exitWith {
    systemChat "Secondary Weapon not Present";
    ['pistole', 0] call INV_SetItemAmount;
  };

  if (isNil "Pistol_Holster") then {
		_wepArray = ((weapons player) - [primaryWeapon player] - nonlethalweapons);

		{
			if ([_x] call OL_misc_isPistol) then {_currentWeapon = _x;};
		} forEach _wepArray;

		hint parsetext format ["<t size='1.5'>%1<br /><img size='5' image='%2'/><t color='#FF0000' size='2'><br />Holstered", getText (configFile >> "cfgWeapons" >> _currentWeapon >> "displayName"), getText (configFile >> "cfgWeapons" >> _currentWeapon >> "picture")];
		player removeWeapon _currentWeapon;
		Pistol_Holster = _currentWeapon;
		['pistole', 1] call INV_SetItemAmount;
	} else {
		if (call OL_misc_hasPistol) exitWith {systemChat "You can't unholster while you have a pistol out."};
		hint parsetext format ["<t size='1.5'>%1<br /><img size='5' image='%2'/><t color='#66FF33' size='2'>Unholstered", getText (configFile >> "cfgWeapons" >> Pistol_Holster >> "displayName"), getText (configFile >> "cfgWeapons" >> Pistol_Holster >> "picture")];
		player addWeapon Pistol_Holster;
		player selectWeapon Pistol_Holster;
		Pistol_Holster = nil;
		['pistole', 0] call INV_SetItemAmount;
	};
};

if (_art == "Radar") exitWith {
	if (!Radar_Holstered) then {
		if(currentWeapon player == "OL_Radargun") then {
			player removeWeapon "OL_Radargun";
			Radar_Holstered = true;
		};
	} else {
		if (!((secondaryWeapon player) == "")) exitWith {systemChat "Can't do that m8"};
		player addWeapon "OL_Radargun";
		Radar_Holstered = false;
	};
};
