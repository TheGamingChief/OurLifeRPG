if (!alive player || player getVariable "KOED") exitwith {};

_vehicle	 = _this select 0;
_selection = _this select 1;
_damage		 = _this select 2;
_shooter	 = _this select 3;
_ammo			 = _this select 4;
_nvcls		 = nearestObjects [getpos _vehicle, ["LandVehicle"], 5];

if (player == _vehicle && (_ammo == "B_12Gauge_74Slug" || _ammo == "B_9x18_SD")) exitwith {
	["hit", _shooter, _selection, _damage] spawn OL_fnc_Stun
};

[_selection,_damage,_shooter, _nvcls] spawn {
	_selection	= _this select 0;
	_damage			= _this select 1;
	_shooter		= _this select 2;
	_nvcls			= _this select 3;

	player setHit [_selection, _damage];

	if (_selection == "" && _damage >= 1 && !isNull _shooter) then { player setDamage 1 };

	if (alive player) exitwith {};
	[_shooter, _nvcls] execVM "victim.sqf";
};
false;
