 _art = _this select 0;

if (_art == "use") then 

{

_item   = _this select 1;
_anzahl = _this select 2;
_vcl    = vehicle player;

if (player == _vcl) exitWith {player groupChat localize "STRS_inv_item_vclammo_novehicle";};
_vehiclepimpweapons = ["DSHKM","PKT","M240_veh_2","M2","DSHkM_INS","SPG9_CDF"];
_vehiclepimpammos   = ["50Rnd_127x107_DSHKM","100Rnd_762x54_PK","100Rnd_762x51_M240","100Rnd_127x99_M2","50Rnd_127x107_DSHKM","OG9_HE"];
_hasRearmableWeapon = 0;
_rearmWeaponarray   = [];

for [{_i=0}, {_i < (count _vehiclepimpweapons)}, {_i=_i+1}] do 

	{	

	if ((_vehiclepimpweapons select _i) in (weapons _vcl)) then 

		{

		_rearmWeaponarray = _rearmWeaponarray + [ [(_vehiclepimpweapons select _i), _i] ];
		_hasRearmableWeapon = 1;

		};

	};

if (_hasRearmableWeapon == 0) exitWith {player groupChat localize "STRS_inv_item_vclammo_nomg";};

	{	

	_waffe = _x select 0;
	_muni = _vehiclepimpammos select (_x select 1);
	_vcl RemoveMagazines _waffe;
	 _vcl AddMagazine _muni;
	sleep 0.1;

	} forEach _rearmWeaponarray;

player groupChat localize "STRS_inv_item_vclammo_rearmed";
[_item, -1] call INV_AddInvItem;

};