
isPistol =
{
	_unknownWeaponClass = _this select 0;
	if (isNil "_unknownWeaponClass") exitWith {};
	
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

hasPistol = {
    _found = false;

    {
        if ([_x] call isPistol) exitWith {
            _found = true;
        };
    } forEach (weapons player);
    _found;
};

_art = _this select 0;
_currentWeapon = currentWeapon player;

if (_art == "Rifle") exitWith
{	
	call fnc_AddRadiosToNonLethalWeapons;
	_currentWeapon = primaryWeapon player;
	if ((_currentWeapon == "") && (isNil "Rifle_Holster")) exitWith {systemChat "Primary Weapon not Present"};
	
	if (isNil "Rifle_Holster") then
	{
		_rPic = getText (configFile >> "cfgWeapons" >> _currentWeapon >> "picture");
		_rName = getText (configFile >> "cfgWeapons" >> _currentWeapon >> "displayName");
		hint parsetext format ["<t size='1.5'>%1<br /><img size='5' image='%2'/><t color='#FF0000' size='2'>Holstered",_rName,_rPic];
		player removeWeapon _currentWeapon;
		Rifle_Holster = _currentWeapon;
		['gewehr', 1] call INV_SetItemAmount;
	}
	else
	{
		if (!(_currentWeapon == "")) exitWith {systemChat "You can't unholster while you have a rifle out."};
		_rPic = getText (configFile >> "cfgWeapons" >> Rifle_Holster >> "picture");
		_rName = getText (configFile >> "cfgWeapons" >> Rifle_Holster >> "displayName");
		hint parsetext format ["<t size='1.5'>%1<br /><img size='5' image='%2'/><t color='#66FF33' size='2'>Unholstered",_rName,_rPic];
		player addWeapon Rifle_Holster;
		Rifle_Holster = nil;
		player selectWeapon (primaryWeapon player);
		['gewehr', 0] call INV_SetItemAmount;
	};
};

if (_art == "Pistol") exitWith
{
	call fnc_AddRadiosToNonLethalWeapons;
	if (_currentWeapon == "OL_Radargun") exitWith {systemChat "Please use the Ctrl + F3 holster function to holster your Radar Gun."};
	//if ((_currentWeapon == "") && (isNil "Pistol_Holster")) exitWith {systemChat "Secondary Weapon not Present";['pistole', 0] call INV_SetItemAmount;};
	if (!(call hasPistol) && (isNil "Pistol_Holster")) exitWith {systemChat "Secondary Weapon not Present";['pistole', 0] call INV_SetItemAmount;};
	if (isNil "Pistol_Holster") then
	{
		_wepArray = ((weapons player) - [primaryWeapon player] - nonlethalweapons);
		//if ((!([_currentWeapon] call isPistol) && (_wepArray == ""))) exitWith {systemChat "You are trying to holster a primary weapon, please use the O holster function to holster your primary weapon."};
		
		{
			if ([_x] call isPistol) then {_currentWeapon = _x;};
		} forEach _wepArray;	
	
		_rPic = getText (configFile >> "cfgWeapons" >> _currentWeapon >> "picture");
		_rName = getText (configFile >> "cfgWeapons" >> _currentWeapon >> "displayName");
		hint parsetext format ["<t size='1.5'>%1<br /><img size='5' image='%2'/><t color='#FF0000' size='2'><br />Holstered",_rName,_rPic];
		player removeWeapon _currentWeapon;
		Pistol_Holster = _currentWeapon;
		['pistole', 1] call INV_SetItemAmount;
	}
	else
	{
		if (call hasPistol) exitWith {systemChat "You can't unholster while you have a pistol out."};
		_rPic = getText (configFile >> "cfgWeapons" >> Pistol_Holster >> "picture");
		_rName = getText (configFile >> "cfgWeapons" >> Pistol_Holster >> "displayName");
		hint parsetext format ["<t size='1.5'>%1<br /><img size='5' image='%2'/><t color='#66FF33' size='2'>Unholstered",_rName,_rPic];
		player addWeapon Pistol_Holster;
		player selectWeapon Pistol_Holster;
		Pistol_Holster = nil;
		['pistole', 0] call INV_SetItemAmount;
	};
};

if (_art == "Radar") exitWith
{
	private ["_weaponclass"];
	call fnc_AddRadiosToNonLethalWeapons;
	if(!Radar_Holstered)then
	{
		if(currentWeapon player == "OL_Radargun") then
		{
			player removeWeapon "OL_Radargun";
			Radar_Holstered = true;
		};
	}else{
		if(!((secondaryWeapon player) == "")) exitWith {systemChat "Can't do that m8"};
		player addWeapon "OL_Radargun";
		Radar_Holstered = false;
	};
};