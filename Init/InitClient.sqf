[1112, "Init Client",60] call RL_LoadingSetText;
[] execVM "ServerLoad\respawn.sqf";
["ol_textures\images\Gps.paa",-0.06,-0.36] call bis_fnc_customGPS;
["clientloop"] execVM "ServerLoad\clientloop.sqf";
[0,0,0,["clientloop"]] execVM "gangs.sqf";
["init"] execVM "food.sqf";
[] execVM "gamerz\admininit.sqf";
[] execVM "gamerz\syncInfo.sqf";
[] execVM "ServerLoad\itemactions.sqf";
[] execVM "ServerLoad\petrolactions.sqf";
[] execVM "ServerLoad\SpeedCams.sqf";
[] execVM "ServerLoad\nametags.sqf";
[] execVM "ServerLoad\initplayer.sqf";
[2] execVM "ServerLoad\markers.sqf";
[] execVM "ServerLoad\salaries.sqf";
[] execVM "pistolControl.sqf";
[] execVM "Scripts\Misc\10MCleanUp.sqf";
[] execVM "Scripts\Misc\escape_menu_mod.sqf";

CodeBroadcast = [];
"CodeBroadcast" addPublicVariableEventHandler
{
    _params = _this select 1;
    if(local (_params select 0)) then
    {
        (_params select 1) execVM (_params select 2);
    };
};

player setVariable ["Attached",false,false];
player setVariable ["Cuffed",false,false];

player addEventHandler ["fired", {["fired", (_this select 4), (_this select 1)] execVM "stun.sqf";}];
player addEventHandler ["handleDamage", {_this call compile preprocessfile "sethit.sqf"}];
//player addEventHandler ["HandleDamage",{_this call DDOPP_taser_handleHit}];
//player addEventHandler ["handleDamage", {_this call RLRPG_Cfg_Inv_HandleDamage;}];
waitUntil{vehicle player == player};

player addEventHandler ["fired",{_this execVM "fired.sqf"}];
[]spawn{while{true} do {sleep 1;
	if(player getVariable "flashed" and isciv) then
	{
		
		if (not(alive player)) exitWith {};
		2 cutText ["","WHITE OUT",0];
		sleep 5;
		2 cutText ["","WHITE IN",3];
		sleep 1;
		player setVariable ["flashed",false, true];
		
	};
	if(player getVariable "flashedB") then
	{
		
		if (not(alive player)) exitWith {};
		sleep 2.5;
		player say ["flash_bang",5];
		2 cutText ["","WHITE OUT",0];
		sleep 10;
		2 cutText ["","WHITE IN",3];
		sleep 1;
		player setVariable ["flashedB",false, true];
		
	};
};};

PlayerTeam = str(playerSide);
switch (PlayerTeam) do
{
    case "CIV": 
	{
	[] execVM "actions\civactions.sqf";
	["handy", 1] call INV_AddInvItem;
	["schluesselbund",1] call INV_AddInvItem;
	waitUntil{!isNil "INV_AddInvItem"};
	onKeyPress = compile preprocessFile "actions\CivonKeyPress.sqf";
	waituntil {!(IsNull (findDisplay 46))};
	(findDisplay 46) displaySetEventHandler ["KeyDown", "_this call onKeyPress"];
	
	[] execVM "scripts\von\von_kick_civ.sqf";
    };

    case "WEST": 
	{
	[] execVM "actions\copactions.sqf";
	["handy", 1] call INV_AddInvItem;
	["schluesselbund",1] call INV_AddInvItem;
	waitUntil{!isNil "INV_AddInvItem"};
	//["checkpointbuild", 1] call INV_AddInvItem;
	onKeyPress = compile preprocessFile "actions\CoponKeyPress.sqf";
	waituntil {!(IsNull (findDisplay 46))};
	(findDisplay 46) displaySetEventHandler ["KeyDown", "_this call onKeyPress"];
	
	[] execVM "scripts\von\von_kick_cop.sqf";
	};
    
    case "GUER": 
	{
	[] execVM "actions\govactions.sqf";
	["handy", 1] call INV_AddInvItem;
	["schluesselbund",1] call INV_AddInvItem;
	waitUntil{!isNil "INV_AddInvItem"};
	onKeyPress = compile preprocessFile "actions\govonKeyPress.sqf";
	waituntil {!(IsNull (findDisplay 46))};
	(findDisplay 46) displaySetEventHandler ["KeyDown", "_this call onKeyPress"];
	
	[] execVM "scripts\von\von_kick_cop.sqf";
	};
};
player enableSimulation true;
[1112, "Our Life Modification Loading Complete",99] call RL_LoadingSetText;
[1112, "Welcome to a new day",100] call RL_LoadingSetText;
22254 cutRsc["Default", "plain"];