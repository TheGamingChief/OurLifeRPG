fnc_KeyPress_ESC = {
	if (dialog) exitwith { closeDialog 0 };
	if (isnull (findDisplay 49)) then {
		call OL_misc_escapemod;
	};
};

fnc_KeyPress_1 = {
	if(!INV_shortcuts)exitwith{};
	if(dialog)exitwith{closeDialog 0;};
	if(isstunned) exitwith {player groupchat "You are stunned!"};
	["swagswag_life"] call OL_ui_ShowTablet;
};

fnc_KeyPress_2 = {
	if (OL_earPlugs) then {
		hint "Earplugs removed!";
		0 fadeSound 1;
    OL_earPlugs = false;
	}	else {
		hint "Earplugs inserted!";
		0 fadeSound 0.3;
		OL_earPlugs = true;
	};
};

fnc_KeyPress_CtrlF4 = {
	if (!INV_shortcuts) exitwith {};
	if (dialog) exitwith {closeDialog 0;};
	if (isstunned) exitwith {player groupchat "You are stunned!"};
	[] call OL_misc_ratioChecker;
};

fnc_KeyPress_3 = {

	if (!INV_shortcuts) exitwith {};
	if (keyblock || (vehicle player != player)) exitwith {};
	keyblock = true;
	[] spawn {
		uiSleep 2;
		keyblock = false;
	};
	player playMove "amovpercmstpssurwnondnon";
	nonlethalweapons = nonlethalweapons + call OL_TFAR_getPlayerRadios;
	_weapons = weapons player - nonlethalweapons;
	if (count _weapons > 0) then {
		{player removeWeapon _x} forEach _weapons
	};
	if !(isNil "_weapons") then {
		_holder = createVehicle ["weaponholder", getPosATL player, [], 0, "CAN_COLLIDE"];
		{_holder addWeaponCargoGlobal [_x,1];}forEach _weapons;
	};
};

fnc_KeyPress_6 = {
	if(dialog)exitwith{closeDialog 0;};
	if(!INV_shortcuts)exitwith{};
	if(isstunned) exitwith {player groupchat "You are stunned!"};
	[] call OL_Admin_ShowMenu;
};

fnc_KeyPress_7 = {

	if(dialog)exitwith{closeDialog 0;};
	if(!INV_shortcuts)exitwith{};
	if ((getPlayerUID player) in OL_SwagDevs) then {
	createDialog "balca_debug_main";
	};
};

fnc_KeyPress_9 = {
	if (dialog) exitWith {closeDialog 0;};
	if (!INV_shortcuts) exitWith {};
	if(isstunned) exitwith {player groupchat "You are stunned!"};
	if ((getPlayerUID player) in adminlevel4 || (getplayeruid player) in OL_SwagDevs || (getplayeruid player) in OL_CheckpointWL || (typeOf player == "Flyers_Mechanic") || (typeOf player == "Flyers_Mechanic_Vest") || (typeOf player == "Flyers_Supervisor") || (typeOf player == "Flyers_Supervisor_Vest")) then {
	if (!AM_temp_carrying) then {[] call OL_checkpoint_openMenu;}else{[] call OL_checkpoint_dropItem;};
	};
};

fnc_KeyPress_Q = {
	if (keyblock || (vehicle player != player)) exitwith {};
	keyblock = true;
	[] spawn {
		uiSleep AM_checkpoint_sleep;
		keyblock = false;
	};
	if ((getPlayerUID player) in adminlevel4 || (getplayeruid player) in OL_SwagDevs || (typeOf player == "Flyers_Mechanic") || (typeOf player == "Flyers_Mechanic_Vest") || (typeOf player == "Flyers_Supervisor") || (typeOf player == "Flyers_Supervisor_Vest")) then {
		if (AM_temp_carrying) then { [] call OL_checkpoint_reBuy };
	};
};

fnc_KeyPress_Home = {
	closeDialog 0;
	if ((getplayeruid player) in OL_SwagDevs) then {
		[] call adminMenuOpen;
	};
};

fnc_KeyPress_O = {

	if(!INV_shortcuts)exitwith{};
	if(isstunned) exitwith {player groupchat "You are stunned!"};
	if (vehicle player != player) exitWith {systemChat "You can't holster/unholster a weapon while in a vehicle."};
	["Rifle"] call OL_fnc_HolsterWeapon;
};

fnc_KeyPress_W = {

	_vcl = vehicle player;
	_type = typeof vehicle player;
	_class = typeOf _vcl;
	if(_vcl == player)exitwith{};
	if(typeof _vcl == "Smallboat_1" or typeof _vcl == "Smallboat_2") then

		{

		_vel = velocity _vcl;
		_spd = speed _vcl;
		if(_spd <= 20)then{_vcl setVelocity [(_vel select 0) * 1.001, (_vel select 1) * 1.001, (_vel select 2) * 0.99]};
		if(_spd <= 30 and _spd > 20)then{_vcl setVelocity [(_vel select 0) * 1.002, (_vel select 1) * 1.002, (_vel select 2) * 0.99]};
		if(_spd <= 40 and _spd > 30)then{_vcl setVelocity [(_vel select 0) * 1.003, (_vel select 1) * 1.003, (_vel select 2) * 0.99]};

		};

	_lvl = _vcl getvariable "tuning";
	if(isEngineOn _vcl and !isnil "_lvl") then {
		_vel = velocity _vcl;
		_spd = speed _vcl;
		if (_lvl == 1) then { _vcl setVelocity [(_vel select 0) * 1.006, (_vel select 1) * 1.006, (_vel select 2) * 0.99] };
		if (_lvl == 2) then { _vcl setVelocity [(_vel select 0) * 1.008, (_vel select 1) * 1.008, (_vel select 2) * 0.99] };
		if (_lvl == 3) then { _vcl setVelocity [(_vel select 0) * 1.010, (_vel select 1) * 1.010, (_vel select 2) * 0.99] };
    if (_lvl == 4) then { _vcl setVelocity [(_vel select 0) * 1.012, (_vel select 1) * 1.012, (_vel select 2) * 0.99] };
    if (_lvl == 5) then { _vcl setVelocity [(_vel select 0) * 1.014, (_vel select 1) * 1.014, (_vel select 2) * 0.99] };
    if (_lvl == 6) then { _vcl setVelocity [(_vel select 0) * 1.018, (_vel select 1) * 1.018, (_vel select 2) * 0.99] };
	};
};

fnc_KeyPress_F5 = {
	if (INV_shortcuts) then{
		INV_shortcuts = false;
		titletext["OL Keys Off", "PLAIN DOWN"];
		[] call OL_Events_ActionRemove;
	}else{
		INV_shortcuts = true;
		titletext["OL Keys On", "PLAIN DOWN"];
		[] call OL_Events_ActionAdd;
	};
};

fnc_KeyPress_L = {

	if(!INV_shortcuts)exitwith{};
	if(isstunned) exitwith {player groupchat "You are stunned!"};
	_vcls = call CP_misc_NearestCar;
	if (count _vcls > 0) then {
		_vcl = _vcls select 0;
		if(!(_vcl in INV_VehicleArray))exitwith{player groupchat "You do not have the keys to this vehicle.";};
		["LOCK", _vcl] call OL_fnc_Keys;
	};
};

fnc_KeyPress_T = {

	if(!INV_shortcuts)exitwith{};
	if(dialog)exitwith{closeDialog 0;};
	if(isstunned) exitwith {player groupchat "You are stunned!"};
	_vcls = nearestobjects [getpos player, ["LandVehicle", "Air", "ship", "TKOrdnanceBox_EP1"], 12];
	_vcl = _vcls select 0;
	if (player != driver _vcl)exitwith{player groupchat "You must be in the drivers seat to get to the trunk";};
	if(!(_vcl in INV_VehicleArray) and typeof _vcl == "TKOrdnanceBox_EP1")exitwith{player groupchat "You do not have the keys to this hideout.";};
	if(!(_vcl in INV_VehicleArray))exitwith{player groupchat "You do not have the keys to this vehicle.";};
	if(UpgradingCar)exitWith{player groupChat "You cant use your trunk while upgrading your car"};
	if(!isnull _vcl)then{call compile format['[0,0,0,["%3", "public", ["vcl", "%2", %1]]] execVM "storage.sqf";', _vcl, (typeOf _vcl), format["%1_storage", _vcl]];};
};

fnc_KeyPress_E = {
	if (!INV_shortcuts) exitwith {};
	if (keyblock) exitwith {};
	if (dialog) exitwith {closeDialog 0};
	if (local_arrest == 1) exitwith {};
	if (isstunned) exitwith {player groupchat "You are stunned!"};

	private["_civ"];
	for [{_i=1}, {_i < 3}, {_i=_i+1}] do
	{
		if (vehicle player != player) exitwith{};
		_range = _i;
		_dirV = vectorDir vehicle player;
		_pos = player modelToWorld [0,0,0];
		_posFind = [(_pos select 0)+(_dirV select 0)*_range,(_pos select 1)+(_dirV select 1)*_range,(_pos select 2)+(_dirV select 2)*_range];
		_men    = nearestobjects [_posFind,["Man", "RUBasicAmmunitionBox", "UNBasicAmmunitionBox_EP1","RUSpecialWeaponsBox","Barrels","Infostand_2_EP1"], 1] - [player];
		_atms   = nearestObjects [_posFind,["Man", "tcg_ATM"],2];
		_atm    = objNull;
		_civ    = objNull;
		if (count _men != 0) then {_civ = _men select 0};
		if (count _atms != 0) then {_atm = _atms select 0};

		if(isciv && !(isNull _civ) && _civ in playerarray) exitwith {
			if(isciv && !iscop) then {
				_i = 4;
				civmenuciv = _civ;
				["TGC_CivMenu"] call OL_ui_InteractionMenu;
			};
			if(isciv && iscop) then {
				_i = 4;
				civmenuciv = _civ;
				["TGC_CopMenu"] call OL_ui_InteractionMenu;
			};
		};
			_i = 4;
			if (!(isNull _civ) && _civ in shopusearray) exitwith {
			if (iscop && _civ in drugsellarray) exitwith { [_civ] call OL_fnc_DrugSearch };
			_id = _civ call INV_getshopnum;
			[0,0,0,[_id]] execVM "shopdialogs.sqf";
		};
		if (!(isNull _atm) && _atm in bankflagarray) exitwith {
			_i = 4;
			if(!local_useBankPossible)exitwith{hint "The ATM rejected your card"};
			[] execVM "atm.sqf";
		};
	};

	if (vehicle player == player) exitwith
	{
		private ["_vcl"];
		for [{_i=1}, {_i < 3}, {_i=_i+1}] do
		{
			_range = _i;
      _dirV = vectorDir vehicle player;
      _pos = player modelToWorld [0,0,0];
      _posFind = [(_pos select 0)+(_dirV select 0)*_range,(_pos select 1)+(_dirV select 1)*_range,(_pos select 2)+(_dirV select 2)*_range];
     	_vcls    = nearestobjects [_posFind,["LandVehicle", "Air", "ship"], 2];
			_vcl 	 = objNull;

			if (count _vcls != 0) then {_vcl = _vcls select 0};
			if (!(isNull _vcl)) exitwith {_i = 4};
		};

		if (locked _vcl) exitwith {};
		if (_vcl emptyPositions "Driver" > 0) exitwith {player action ["getInDriver", _vcl]};
		if (_vcl emptyPositions "Gunner" > 0) exitwith {player action ["getInGunner", _vcl]};
		if (_vcl emptyPositions "Commander" > 0) exitwith {player action ["getInCommander", _vcl]};
		if (_vcl emptyPositions "Cargo" > 0) exitwith {player action ["getInDriver", _vcl];_vcl spawn {keyblock=true;sleep 0.5;player moveincargo _this; keyblock=false;};};
	};

	_vcl  = vehicle player;

	if (_vcl != player) exitwith {
		if (locked _vcl) exitwith {player groupchat "The vehicle is locked."};
		if (speed _vcl > 30) exitwith {player groupchat "The vehicle is moving too fast"};
		player action ["getOut", _vcl];
	};
};


fnc_KeyPress_Shift_F = {

	if (!INV_shortcuts) exitwith {};
	if (isstunned) exitwith { player groupchat "You are stunned!" };
	if (keyblock) exitWith {};
	keyblock = true;
	[] spawn {
		uiSleep 2;
		keyblock = false;
	};

	nonlethalweapons = nonlethalweapons + call OL_TFAR_getPlayerRadios;
	if ((vehicle player == player) && (call INV_isArmed)) then {
		_men = nearestobjects [getposatl player, ["Man"], 2] - [player];

		_men spawn {
			if (count _this > 0) then {
				_civ = _this select 0;
				if (_civ getVariable "KOED" || !(alive _civ)) exitWith {};
				if (_civ distance player > 2 or !isPlayer _civ) exitwith {};
				format ["%1 switchmove ""%2"";", player, "AwopPercMstpSgthWnonDnon_end"] call OL_network_Swag;
				format ["if (player == %1) then {[""hit"", %2, ""Melee"", 1] spawn OL_fnc_Stun};", _civ, player] call OL_network_Swag;
				player groupchat "You stunned this player!";
			};
		};
	};
};

fnc_KeyPress_Space = {

	_vcl = vehicle player;
	if(_vcl getVariable "bunnyhop") then {
	[] call Item_misc_Bunnyhop;
	};
};

fnc_KeyPress_H = {

	if(!INV_shortcuts)exitwith{};
	if(isstunned) exitwith {player groupchat "You are stunned!"};
	if (vehicle player != player) exitWith {systemChat "You can't holster/unholster a weapon while in a vehicle."};
	["Pistol"] call OL_fnc_HolsterWeapon;
};
