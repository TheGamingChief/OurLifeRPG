_art         = _this select 0;
_stunbullets = ["B_12Gauge_74Slug","8Rnd_B_Beneli_74Slug","F_40mm_White",1,"8Rnd_9x18_MakarovSD"];

if (_art == "fired") then {
	_ammo   = _this select 1;
	_wep		= _this select 2;
	_bullet = nearestObject  [getpos player, _ammo];
	if (_wep == "Saiga12K") exitwith {};
	if (not(_ammo == (_stunbullets select 0))and(not(_ammo == (_stunbullets select 4)))) exitWith {};
	_vel   	= velocity _bullet;
	_pos   	= getpos   _bullet;
	_teiler = (_stunbullets select 3);
	_bullet = (_stunbullets select 2) createVehicle _pos;
	_bullet setVelocity [(_vel select 0)/_teiler, (_vel select 1)/_teiler, (_vel select 2)/_teiler];
};


if (_art == "hit") then {
	_shooter   = _this select 1;
	_selection = _this select 2;
	_damage    = _this select 3;
	_plydmg 	 = getDammage player;
	if (_damage < 0.01 or _selection == "") exitwith {};
	if (vehicle player != player) exitWith {[[5,"The person you tried to tase is in a vehicle!"],"OL_misc_ChatMessage",_shooter,false] call OL_Network_MP};

	if ((_plydmg) < 0.5) then {player setDammage 0};
	if (_selection == "Legs") exitwith {
		if (!canstand player) exitwith {};
		player setHit["Legs", 1];
	};
	if (_selection == "Hands") exitwith {
		if (handshit player == 1) exitwith {};
		player setHit["Hands", 1];
	};
	isstunned = true;
	StunActiveTime = StunActiveTime + StunTimePerHit;
	if (vehicle player != player) exitWith {};
	"dynamicBlur" ppEffectEnable true;
	"dynamicBlur" ppEffectAdjust [10];
	"dynamicBlur" ppEffectCommit 0;
	waitUntil {ppEffectCommitted "dynamicBlur"};
	"dynamicBlur" ppEffectEnable true;
	"dynamicBlur" ppEffectAdjust [0];
	"dynamicBlur" ppEffectCommit StunActiveTime;
	if (_selection != "Melee") then {[[5,format["%1 was tased by %2",name player,name _shooter]],"OL_misc_ChatMessage",true,false] call OL_Network_MP};

	if (!(call OL_misc_isProne)) then {
		[[player,"adthpercmstpslowwrfldnon_4",0],"OL_fnc_Animate",true,false] call OL_Network_MP;
	} else {
		[[player,"adthppnemstpsraswpstdnon_2",0],"OL_fnc_Animate",true,false] call OL_Network_MP;
	};

	nonlethalweapons = nonlethalweapons + call OL_TFAR_getPlayerRadios;
	_weapons = weapons player - nonlethalweapons;
	if (count _weapons > 0) then {
		_holder = createVehicle ["weaponholder", getPosATL player, [], 0, "CAN_COLLIDE" ];
		{player removeWeapon _x} forEach _weapons;
		{_holder addWeaponCargoGlobal [_x,1];}forEach _weapons;
	};

	while {StunActiveTime > 0} do {
		if (StunActiveTime > MaxStunTime) then {
			StunActiveTime = MaxStunTime
		};
		StunActiveTime = StunActiveTime - 1;
		uiSleep 1;
	};

	StunActiveTime = 0;
	if (animationstate player != "civillying01" and animationstate player != "civilsitting" and animationstate player != "actspercmstpsnonwrfldnon_interrogate02_forgoten" and animationstate player != "civilsitting02" and animationstate player != "civilsitting03") then {
		isstunned = false;
		if (player call OL_ISSE_IsVictim) then {[[player,"amovppnemstpsnonwnondnon",0],"OL_fnc_Animate",true,false] call OL_Network_MP};
	};
};
