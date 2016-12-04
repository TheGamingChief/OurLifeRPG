//Credits to TLR(Clothing script)
player_exists = {
	private["_player"];
	_player = _this select 0;
	if (isNil "_player") exitWith {false};
	if (typeName _player != "OBJECT") exitWith {false};
	if (isNull _player) exitWith {false};
	true
	};	
	
C_delete = { 
_this spawn {
	private ["_unit"];
	_unit = _this select 0;
	if (not([_unit] call player_exists)) exitWith {};
	sleep 2;
	_unit setPosATL [-1, -1, 0];
	_unit setDamage 1;
	private["_i"];
	_i = 0;
	while { _i < 10 } do {
		hideBody _unit;
		_i = _i + 1;
	};
	deleteVehicle _unit;
	};
};

clothes = {
	
	call GetRadioID;
	OLRPG_SwitchingClothes = true;
	_oldplayer = player;
	_oldweapons = weapons _oldplayer;
	_oldmags    = magazines _oldplayer;
	_score = score _oldUnit;
	_rank = rank _oldUnit;
	_damage = damage _oldUnit;
	_skin = _this select 0;
	_pos = getposATL player;
	_skinsold = typeof player;

if (_skinsold != _skin) then {
	private["_temp_group"];
	_temp_group = (group server);
	private["_group"];
	_group = (group _oldplayer);
	_to_become = _group createUnit [_skin, (position player), [], 0, "NONE"];
	private["_var_name"];
	_var_name = vehicleVarName _oldplayer;
	clearVehicleInit _oldplayer;
	_oldplayer setVehicleVarName format["old_%1", _var_name];
	_to_become setVehicleInit format['this setVehicleVarName "%1"; %1 = this;', _var_name];
	processInitCommands;
	[_to_become] joinSilent _group;
	addSwitchableUnit _to_become;
	selectPlayer _to_become;
	_group selectLeader _to_become;
	removeAllWeapons _to_become;
	_to_become setRank _rank;
	_to_become addscore _score;
	_to_become setdamage _damage;
	player addEventHandler ["fired", {["fired", (_this select 4), (_this select 1)] execVM "stun.sqf";}];
	player addEventHandler ["fired",{_this execVM "fired.sqf"}];
	player addEventHandler ["handleDamage", {_this call compile preprocessfile "sethit.sqf"}];
	player setPosATL _pos;
	execVM format ['Actions\fnc_%1_Actions.sqf',playerSide];
	execVM "R3F_revive\revive_init.sqf";
	execVM "briefing.sqf";
	sleep 2;
	{player addWeapon _x} forEach _oldweapons;
	{player addMagazine _x} forEach _oldmags;
	sleep 1.5;
	systemchat "Clothes Changed! You have been given back your old radio :)";
	[_oldplayer] call C_delete;
	if (!isNil "OLRPG_AntiBirdSlot_UpdatePlayInfo") then {
		call OLRPG_AntiBirdSlot_UpdatePlayInfo;
	};
	sleep 1;
	call AddRadioBack;
	}; 
};


clothesCop = {

	call GetRadioID;
	_oldplayer = player;
	_oldweapons = weapons _oldplayer;
	_oldmags    = magazines _oldplayer;
	_score = score _oldUnit;
	_rank = rank _oldUnit;
	_damage = damage _oldUnit;
	_skin = _this select 0;
	_pos = getposATL player;
	_skinsold = typeof player;
	OLRPG_SwitchingClothes = true;
if (_skinsold != _skin) then {
	private["_temp_group"];
	_temp_group = (group server);
	private["_group"];
	_group = (group _oldplayer);
	_to_become = _group createUnit [_skin, (position player), [], 0, "NONE"];
	private["_var_name"];
	_var_name = vehicleVarName _oldplayer;
	clearVehicleInit _oldplayer;
	_oldplayer setVehicleVarName format["old_%1", _var_name];
	_to_become setVehicleInit format['this setVehicleVarName "%1"; %1 = this;', _var_name];
	processInitCommands;
	[_to_become] joinSilent _group;
	addSwitchableUnit _to_become;
	selectPlayer _to_become;
	_group selectLeader _to_become;
	[_oldplayer] call C_delete;
	removeAllWeapons _to_become;
	_to_become setRank _rank;
	_to_become addscore _score;
	_to_become setdamage _damage;
	player addEventHandler ["fired", {["fired", (_this select 4), (_this select 1)] execVM "stun.sqf";}];
	player addEventHandler ["fired",{_this execVM "fired.sqf"}];
	player addEventHandler ["handleDamage", {_this call compile preprocessfile "sethit.sqf"}];
	player setPosATL _pos;
	execVM format ['Actions\fnc_%1_Actions.sqf',playerSide];
	execVM "R3F_revive\revive_init.sqf";
	execVM "briefing.sqf";
	sleep 2;
	{player addWeapon _x} forEach _oldweapons;
	{player addMagazine _x} forEach _oldmags;
	if (!isNil "OLRPG_AntiBirdSlot_UpdatePlayInfo") then {
		call OLRPG_AntiBirdSlot_UpdatePlayInfo;
	};
	
	OLRPG_SwitchingClothes = false;
	};
};