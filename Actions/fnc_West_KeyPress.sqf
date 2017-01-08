/*
Script made by : TheGamingChief for OurLifeRPG
Version 1.0 (Stable)
File: fnc_West_KeyPress.sqf
Description: Creates all the functions for fnc_West_KeyEvents.sqf
TeamSpeak: TS.OurLifeRPG.Net
Website: OurLifeRPG.Net
*/

fnc_KeyPress_F1 = {

	["left"] call DD_f_Holster;
};

fnc_KeyPress_F2 = {

	["right"] call DD_f_Holster;
};

fnc_KeyPress_1 = {

	if(!INV_shortcuts)exitwith{};
	if(dialog)exitwith{closeDialog 0;};
	if(isstunned) exitwith {player groupchat "You are stunned!"};
	execVM "serverload\swagswagcop.sqf";	
};

fnc_KeyPress_CtrlF4 = {
	if(!INV_shortcuts)exitwith{};
	if(dialog)exitwith{closeDialog 0;};
	if(isstunned) exitwith {player groupchat "You are stunned!"};
	execVM "scripts\foster\ratiochecker.sqf";
};


fnc_KeyPress_3 = {

	if(!INV_shortcuts)exitwith{};
	if(keyblock or vehicle player != player)exitwith{};
	keyblock=true; [] spawn {sleep 2; keyblock=false;};
	player playmove "amovpercmstpssurwnondnon"; 
	call fnc_AddRadiosToNonLethalWeapons;
	sleep 0.5;
	_weapons = weapons player - nonlethalweapons;
	_holder = createVehicle ["weaponholder", getPosATL player, [], 0, "CAN_COLLIDE" ];
	if (count _weapons > 0) then 
	{
	{player removeWeapon _x} forEach _weapons};
	
	if !(isNil "_weapons") then {
		{_holder addWeaponCargoGlobal [_x,1];}forEach _weapons;
	};
};

fnc_KeyPress_5 = {

	if(!INV_shortcuts)exitwith{};
	if(keyblock or vehicle player != player)exitwith{};
	keyblock=true; [] spawn {sleep 3; keyblock=false;};
	player groupChat "You are throwing the spikes!";
	sleep 3;
	["use", "spikestrip"] execvm "createobject.sqf";
};

fnc_KeyPress_6 = {
	if(dialog)exitwith{closeDialog 0;};
	if(!INV_shortcuts)exitwith{};
	if(isstunned) exitwith {player groupchat "You are stunned!"};
	[] execVM "8675309.sqf";
};

fnc_KeyPress_7 = {
  
	if(dialog)exitwith{closeDialog 0;};
	if(!INV_shortcuts)exitwith{};
	if ((getPlayerUID player) in SwagDevs) then {
	createDialog "balca_debug_main";
	};
};

fnc_KeyPress_9 = {

	if (!AM_temp_carrying) then {[] call AM_CheckpointBuilder;}else{[] call AM_CheckpointBuilder_Drop;};
};

fnc_KeyPress_Home = {

	if(isStaff) then
	{
		closeDialog 0;
		call adminMenuOpen;
	};
};

fnc_KeyPress_O = {
	
	if(isstunned) exitwith {player groupchat "You are stunned!"};
	if (vehicle player != player) exitWith {systemChat "You can't holster/unholster a weapon while in a vehicle."};
	["Rifle"] execVM "scripts\TheGamingChief\Common\fnc_HolsterWeapons.sqf";
};

fnc_KeyPress_Y = {

	if(dialog)exitwith{closeDialog 0;};
	if(!INV_shortcuts)exitwith{};
	if(isstunned) exitwith {player groupchat "You are stunned!"};
	[] execVM "animdlgopen.sqf";
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

	if(_class in cararray) then
	{
	_vel = velocity _vcl;
	_vcl setVelocity [(_vel select 0) * 1.005, (_vel select 1) * 1.005, (_vel select 2) * 0.99];
	
	}; 
	_lvl = _vcl getvariable "tuning";
	if(isEngineOn _vcl and !isnil "_lvl") then

		{
		
		_vel = velocity _vcl;
		_spd = speed _vcl;
		if(_lvl == 1)then{_vcl setVelocity [(_vel select 0) * 1.006, (_vel select 1) * 1.006, (_vel select 2) * 0.99]};
		if(_lvl == 2)then{_vcl setVelocity [(_vel select 0) * 1.008, (_vel select 1) * 1.008, (_vel select 2) * 0.99]};
		if(_lvl == 3)then{_vcl setVelocity [(_vel select 0) * 1.010, (_vel select 1) * 1.010, (_vel select 2) * 0.99]};
        if(_lvl == 4)then{_vcl setVelocity [(_vel select 0) * 1.012, (_vel select 1) * 1.012, (_vel select 2) * 0.99]};
        if(_lvl == 5)then{_vcl setVelocity [(_vel select 0) * 1.014, (_vel select 1) * 1.014, (_vel select 2) * 0.99]};
        if(_lvl == 6)then{_vcl setVelocity [(_vel select 0) * 1.018, (_vel select 1) * 1.018, (_vel select 2) * 0.99]};			
		};
};

fnc_KeyPress_F5 = {

	if(INV_shortcuts)then{INV_shortcuts=false;titletext["OL keys off", "PLAIN DOWN"];[] execVM "actions\actionsRemove.sqf"}else{INV_shortcuts=true; titletext["OL keys on", "PLAIN DOWN"];[] execVM "actions\fnc_West_Actions.sqf"};
};

fnc_KeyPress_L = {

	if(!INV_shortcuts)exitwith{};
	if(isstunned) exitwith {player groupchat "You are stunned!"};
	_vcls = nearestobjects [getposatl player, ["LandVehicle", "Air", "ship"], 7];
	_vcl = _vcls select 0;
	if(!(_vcl in INV_VehicleArray))exitwith{player groupchat "You do not have the keys to this vehicle.";};
	["schluessel", _vcl, 0] execVM "keys.sqf";
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

fnc_KeyPress_R = {

	if (vehicle player == player) exitWith {};
	if (iscop) then {
	[] execVM "PIT.sqf";
	};
};


fnc_KeyPress_E = {

	if(!INV_shortcuts)exitwith{};
	if(keyblock)exitwith{};
	if(dialog)exitwith{closeDialog 0;};
	if(local_arrest == 1)exitwith{};
	
	private ["_civ"];

	for [{_i=1}, {_i < 3}, {_i=_i+1}] do
    
		{

		if(vehicle player != player) exitWith{};

       	_range = _i;
       	_dirV = vectorDir vehicle player;
       	_pos = player modelToWorld [0,0,0];
       	_posFind = [(_pos select 0)+(_dirV select 0)*_range,(_pos select 1)+(_dirV select 1)*_range,(_pos select 2)+(_dirV select 2)*_range];
       	_men = nearestObjects [_posFind,["Man", "RUBasicAmmunitionBox", "UNBasicAmmunitionBox_EP1","RUSpecialWeaponsBox","Barrels","Infostand_2_EP1"], 1] - [player];
		_atms = nearestObjects [_posFind,["Man", "tcg_ATM"],2];
		_civ = _men select 0;
		_atm = _atms select 0;
		
		if(iscop and !(isnull _civ) and _civ in playerarray) exitWith
			{
			_i = 4;
			call compile format['[0,0,0, ["civmenu", "%1", %1]] execVM "interact.sqf";', _civ];	
			};
			
		if(!(isnull _civ) and _civ in shopusearray) exitwith
			{
			_i = 4;
			if(iscop and _civ in drugsellarray)exitwith{_civ execVM "drugsearch.sqf"};
			_id = _civ call INV_getshopnum;
			[0,0,0,[_id]] execVM "shopdialogs.sqf";			
			};
			
		if(!(isnull _atm) and _atm in bankflagarray) exitwith
			{
			_i = 4;
			if(!local_useBankPossible)exitwith{hint "The ATM rejected your card"};
			[] execVM "atm.sqf"; 	
			};
		};

	if(vehicle player == player) exitWith

		{

		private ["_vcl"];

		for [{_i=1}, {_i < 3}, {_i=_i+1}] do
    
			{

       			_range = _i;
       			_dirV = vectorDir vehicle player;
       			_pos = player modelToWorld [0,0,0];
        		_posFind = [(_pos select 0)+(_dirV select 0)*_range,(_pos select 1)+(_dirV select 1)*_range,(_pos select 2)+(_dirV select 2)*_range];
       	 		_vcls    = nearestobjects [_posFind,["LandVehicle", "Air", "ship"], 2];
				_vcl     = _vcls select 0;

			if(!(isnull _vcl))exitwith{_i = 4};
			}; 

		if(locked _vcl)exitwith{};
		if(_vcl emptyPositions "Driver" > 0) exitWith {player action ["getInDriver", _vcl]};
		if(_vcl emptyPositions "Gunner" > 0) exitWith {player action ["getInGunner", _vcl]};
		if(_vcl emptyPositions "Commander" > 0) exitWith {player action ["getInCommander", _vcl]};
		if(_vcl emptyPositions "Cargo" > 0) exitWith {player action ["getInDriver", _vcl];_vcl spawn {keyblock=true;sleep 0.5;player moveInCargo _this; keyblock=false;};};		
		};

	_vcl  = vehicle player;

	if(_vcl != player) exitwith

		{
		if(locked _vcl)exitwith{player groupchat "The vehicle is locked."};
		if(speed _vcl > 30)exitwith{player groupchat "The vehicle is moving too fast"};
		player action ["getOut", _vcl];		
		};
};


fnc_KeyPress_Shift_F = {

	if(!INV_shortcuts)exitwith{};
	if(isstunned) exitwith {player groupchat "You are stunned!"};
	call fnc_AddRadiosToNonLethalWeapons;
	if((vehicle player == player) and call INV_isArmed) then
		{
		_men = nearestobjects [getposatl player, ["Man"], 2] - [player];
		
		_men spawn 

			{
		
			(format ["%1 switchmove ""%2"";", player, "AwopPercMstpSgthWnonDnon_end"]) call broadcast;
			sleep 0.2;

			if(count _this > 0) then

				{

				_civ = _this select 0;
 				if(_civ distance player > 2 or !isPlayer _civ)exitwith{};
				(format ["if (player == %1) then {[""hit"", %2, ""Melee"", 1] execVM ""stun.sqf""};", _civ, player]) call broadcast;																																																								
				player groupchat "You stunned this player!";
				};	
			};
		};
};

fnc_KeyPress_Tilde = {

	if(!INV_shortcuts) exitWith {};
	[] execVM "requestbackup.sqf";
};

fnc_KeyPress_CtrlF3 = {

	if(!INV_shortcuts) exitWith {};
	if (vehicle player != player) exitWith {systemChat "You can't holster/unholster a weapon while in a vehicle."};
	["Radar"] execVM "scripts\TheGamingChief\Common\fnc_HolsterWeapons.sqf";
};

fnc_KeyPress_H = {
	
	if(isstunned) exitwith {player groupchat "You are stunned!"};
	if (vehicle player != player) exitWith {systemChat "You can't holster/unholster a weapon while in a vehicle."};
	["Pistol"] execVM "scripts\TheGamingChief\Common\fnc_HolsterWeapons.sqf";
};
