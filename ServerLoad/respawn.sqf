//Edit by Sgt Stewart

//This was null, did somone rmeove it?
issec = false;

while {true} do 

{

waituntil {alive player};

player removeweapon "ItemGPS";
execVM "briefing.sqf";

if (iscop) then 

	{

	if (count playerWeapons == 0 and count playermagazines == 0) then 

		{

		{player addMagazine _x} forEach CopStartGear_Mags;
		{player addWeapon   _x} forEach CopStartGear_Weap;	
	
		} 
		else 
		{

		{player addMagazine _x} forEach playermagazines;
		{player addWeapon   _x} forEach playerWeapons;										

		};

	player selectweapon (primaryweapon player);
	weaponsloaded = true;			

	};

if (issec) then 

	{
	if (count playerWeapons >= 1 and count playermagazines >= 1) then
		{

		{player addMagazine _x} forEach playermagazines;
		{player addWeapon   _x} forEach playerWeapons;	
		};									


	player selectweapon (primaryweapon player);
	weaponsloaded = true;			

	};

if("car" call INV_haslicense)then{demerits = 10};

sleep 5;
waituntil {!(alive player)};
weaponsloaded = false;
role = player;
sleep 0.5;
closeDialog 0;

if(isciv) then 

{

for [{_i=0}, {_i < (count INV_InventarArray)}, {_i=_i+1}] do 

	{

	_item   = ((INV_InventarArray select _i) select 0);
	_amount = (_item call INV_GetItemAmount);
		
	if (_amount > 0 and (_item call INV_getitemDropable)) then 

		{

		private "_class";

		if(_item == "geld")then{_class = "EvMoney"}else{_class = "Suitcase"};

		_object = _class createvehicle position player;

		_object setvariable ["droparray", [_amount, _item], true];

		};

	};

call INV_InventarLeeren;

};

if(iscop) then 

{

_amount = ("geld" call INV_GetItemAmount);
		
if (_amount > 0) then 

	{

	_object = "EvMoney" createvehicle position player;
	_object setvariable ["droparray", [_amount, "geld"], true];
	["geld", -(_amount)] call INV_AddInvItem;

	};

};
INV_hunger = 5;
	

if (isciv) then 

	{
	if (player getVariable "Cuffed") then {
			[nil,_man,rSwitchMove,"Normal"] call RE;
	};		
	shoveldur=20;
	pickaxedur=50;
	hammerdur=100;
	alreadygotaworkplacejob=0;
	Rifle_Holster = nil;
	Pistol_Holster = nil;
	sleep 3; 
	
	removeAllWeapons role;

	_pos = [(position role select 0) + (sin(getdir role)*1), (position role select 1) + (cos(getdir role)*1), 0];
	_obj = "body" createvehicle [0, 0, 0];
	_obj setdir getdir role;
	_obj setpos _pos;
	_obj setPosASL [ getPosASL role select 0, (getPosASL role select 1), getPosASL role select 2];
	hidebody role;
		
	sleep 5;

	execVM format ['Actions\fnc_%1_Actions.sqf',playerSide];
	
	waituntil {alive player};
	

	if (local_arrest == 0) then 

		{

		_civnum = player;
		//player setpos getpos (respawnarray select (floor(random(count respawnarray))));

		}
		else
		{

		(format ["%1 switchmove ""%2"";", player, "ActsPercMstpSnonWrflDnon_interrogate02_forgoten"]) call broadcast; 
		waituntil {animationstate player == "ActsPercMstpSnonWrflDnon_interrogate02_forgoten"};
		["arrest", CivTimeInPrison, player] execVM "civmenu.sqf";

		}; 

	};

if (iscop) then

	{

	if (player getVariable "Cuffed") then {
		[nil,_man,rSwitchMove,"Normal"] call RE;
	};	
	_pos = [(position role select 0) + (sin(getdir role)*1), (position role select 1) + (cos(getdir role)*1), 0];
	_obj = "body" createvehicle [0, 0, 0];
	_obj setdir getdir role;
	_obj setpos _pos;
	_obj setPosASL [ getPosASL role select 0, (getPosASL role select 1), getPosASL role select 2];
	hidebody role;
	sleep 15;
	waitUntil {alive player};
	if (_copnum == cop27 || _copnum == cop28 || _copnum == cop29 || _copnum == cop30 || _copnum == cop31) then 
	{
		player setPos getMarkerPos deputyspawn;
	}
	else
	{
		player setPos getMarkerPos respawn_west;
	};
	
	

	deleteVehicle role;	

	};



if(isemt) then 

{

_amount = ("geld" call INV_GetItemAmount);
		
if (_amount > 0) then 

	{

	_object = "EvMoney" createvehicle position player;
	_object setvariable ["droparray", [_amount, "geld"], true];
	["geld", -(_amount)] call INV_AddInvItem;

	};

};


if (isemt) then

	{


	_pos = [(position role select 0) + (sin(getdir role)*1), (position role select 1) + (cos(getdir role)*1), 0];
	_obj = "body" createvehicle [0, 0, 0];
	_obj setdir getdir role;
	_obj setpos _pos;
	_obj setPosASL [ getPosASL role select 0, (getPosASL role select 1), getPosASL role select 2];
	hidebody role;

	sleep 5;
	execVM format ['Actions\fnc_%1_Actions.sqf',playerSide];
	[] execVM "FFGPS.sqf";	

	waitUntil {alive player};

	deleteVehicle role;	

	};
};
