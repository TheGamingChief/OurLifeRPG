Private["_passedArray","_waitUntil","_gun","_unknownWeaponClass","_unknownConfig","_weaponsArray","_numWeapon","_prevention"];

_passedArray = _this;
_waitUntil = 0;
_gun = "";

// Function for rifle data - by Spooner
isRifle =
{
	_unknownWeaponClass = _this select 0;

	_unknownConfig = configFile >> "CfgWeapons" >> _unknownWeaponClass;
	_rifleConfig = configFile >> "CfgWeapons" >> "rifleCore";

	_isRifle = false;
	while {isClass _unknownConfig} do
	{
		if (_unknownConfig == _rifleConfig) exitWith
		{
			_isRifle = true;
		};

		_unknownConfig = inheritsFrom _unknownConfig;
	};

	_isRifle; // Return.
};

// Moderate array when script is ran 1st time
if (count _this == 0) then
{
	// Modify array when first ran (make it similar to addAction)
	_passedArray = [0,0,0,[false]];

	// Activate parallel script to check weapon conditions, first run
	[] spawn
	{
		// Syntax: ["rifleclass",holstered?,dropped rifle?];
		saveWeaponRifle = ["",false,false];

		while { true } do
		{
			_weaponsArray = weapons player - nonlethalweapons;
			_numWeapon = count _weaponsArray;

			// Get rifle classname
			_prevention = true;
			for [{_p = 0},{_p < _numWeapon},{_p = _p + 1}] do
			{
				_gun = (_weaponsArray select _p);
				if ([_gun] call isRifle) exitWith
				{
					_prevention = false;
					if ((_gun != saveWeaponRifle select 0) && saveWeaponRifle select 1) then { _prevention = true; saveWeaponRifle set [1,false]; };
					saveWeaponRifle set [0,_gun];
				};
			};

			// Determine if holster/unholster can be used
			if (_prevention && !(saveWeaponRifle select 1)) then
			{
				saveWeaponRifle set [2,true];
				player removeAction holsterRifle;
				player removeAction unholsterRifle;
			} else
			{
				if (saveWeaponRifle select 2) then
				{
					holsterRifle = player addAction ["Holster Rifle","rifleControl.sqf",[true]];
					saveWeaponRifle set [2,false];
				};
			};
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
	player removeAction unholsterRifle;
	saveWeaponRifle set [1,false];
	holsterRifle = player addAction ["Holster Rifle","rifleControl.sqf",[true]];

	// Upon first activation, prevent addWeapon
	if (count _this > 0) then
	{
		player addWeapon (saveWeaponRifle select 0);
		player selectWeapon (saveWeaponRifle select 0);
		['gewehr', 0] call INV_SetItemAmount;
		INV_InventarRifle = (saveWeaponRifle select 0);
	};
} else
{
	player removeAction holsterRifle;
	saveWeaponRifle set [1,true];
	unholsterRifle = player addAction ["Unholster Rifle","rifleControl.sqf",[false]];
	player removeWeapon (saveWeaponRifle select 0);
	['gewehr', 1] call INV_SetItemAmount;
	INV_InventarRifle = (saveWeaponRifle select 0);
};

// Calculate next ID
_waitUntil = (_passedArray select 2) + 1;

// Wait with termination until action is used or rifle is dropped
waitUntil { holsterRifle == _waitUntil || unholsterRifle == _waitUntil || (saveWeaponRifle select 2) };
