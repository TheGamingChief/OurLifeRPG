//Edit by Sgt Stewart <- Kys Edited By Garry.
waitUntil {player getVariable "KOED"};
player removeweapon "ItemGPS";
execVM "briefing.sqf";
closeDialog 0;
execVM "Scripts\Misc\DeathCall.sqf";

if (isciv) then {
	for [{_i=0}, {_i < (count INV_InventarArray)}, {_i=_i+1}] do {
		_item   = ((INV_InventarArray select _i) select 0);
		_amount = (_item call INV_GetItemAmount);

		if (_amount > 0 and (_item call INV_getitemDropable)) then {
			private "_class";
			if (_item == "geld") then {
				_class = "EvMoney"
			} else {
				_class = "Suitcase"
			};
			
			_object = _class createvehicle position player;
			_object setvariable ["droparray", [_amount, _item], true];
		};
	};
	call INV_InventarLeeren;

	if (player getVariable "Cuffed") then {
			[nil,_man,rSwitchMove,"Normal"] call RE;
	};
	
	shoveldur 				= 20;
	pickaxedur				= 50;
	hammerdur 				= 100;
	alreadygotaworkplacejob = 0;
	Rifle_Holster 			= nil;
	Pistol_Holster 			= nil;
	sleep 3;

	removeAllWeapons role;

	_pos = [(position role select 0) + (sin(getdir role)*1), (position role select 1) + (cos(getdir role)*1), 0];
	_obj = "body" createvehicle [0, 0, 0];
	_obj setdir getdir role;
	_obj setpos _pos;
	_obj setPosASL [ getPosASL role select 0, (getPosASL role select 1), getPosASL role select 2];
	hidebody role;
	sleep 5;
	[] call OL_Events_ActionToggle;
	waituntil {alive player};

	if (local_arrest == 0) then {
		_civnum = player;
		//player setpos getpos (respawnarray select (floor(random(count respawnarray))));
	} else {
		(format ["%1 switchmove ""%2"";", player, "ActsPercMstpSnonWrflDnon_interrogate02_forgoten"]) call broadcast;
		waituntil {animationstate player == "ActsPercMstpSnonWrflDnon_interrogate02_forgoten"};
		["arrest", CivTimeInPrison, player] execVM "civmenu.sqf";
	};
};

if(iscop) then {
	_amount = ("geld" call INV_GetItemAmount);
	if (_amount > 0) then {
		_object = "EvMoney" createvehicle position player;
		_object setvariable ["droparray", [_amount, "geld"], true];
		["geld", -(_amount)] call INV_AddInvItem;
	};

	if (player getVariable "Cuffed") then {
		[nil,_man,rSwitchMove,"Normal"] call RE;
	};

	_pos = [(position role select 0) + (sin(getdir role)*1), (position role select 1) + (cos(getdir role)*1), 0];
	_obj = "body" createvehicle [0, 0, 0];
	_obj setdir getdir role;
	_obj setpos _pos;
	_obj setPosASL [ getPosASL role select 0, (getPosASL role select 1), getPosASL role select 2];
	hidebody role;
	uiSleep 15;
	waitUntil {alive player};
	deleteVehicle role;
};
INV_hunger = 5;