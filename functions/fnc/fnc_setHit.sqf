if (!alive player || player getVariable "KOED") exitwith {};

_unit 			= _this select 0;
_selection	= _this select 1;
_damage 		= _this select 2;
_source 		= _this select 3;
_projectile = _this select 4;
_nvcls		  = nearestObjects [getPos _unit, ["LandVehicle"], 5];
_PBWeapons  = ["cal68_angel_dye", "cal68_angel_rasta", "cal68_egosl", "cal68_angel_kitty", "cal68_invert_mini_dye"];

if (_projectile in DDOPP_taser_arrBullet) exitWith { [_unit, _source, DDOPP_taser_koTime] spawn DDOPP_taser_victimFx };
if ((player == _unit) && (player != _source) && (_selection == "body") && (_projectile == "cal68_specpaint2")) exitWith { [] call Paintball_fnc_UpdateHits };
if (_projectile == "cal68_specpaint2") exitWith {};

[_selection, _damage, _source, _nvcls] spawn {
	_selection	= _this select 0;
	_damage			= _this select 1;
	_source			= _this select 2;
	_nvcls			= _this select 3;

	player setHit [_selection, _damage];

	if ((_selection == "") && (_damage >= 1) && !(isNull _source)) then { player setDamage 1 };

	[_source, _nvcls] execVM "victim.sqf";
};
