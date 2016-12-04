/*
Init Modified For Our Life RPG By Speedy
Edited by CP3088 & TheGamingChief <3
*/

if (isServer) then 
{
	execVM "ServerFiles\InitOLServer.sqf";
	[] execVM "DServer\init.sqf";
};

[] execVM "Scripts\Misc\FNC.sqf";
[] execVM "idris\fncs.sqf";

player enableSimulation false;
enableSaving [false, false];
isClient = !isServer || (isServer && !isDedicated); 
version        	= "32";
debug          	= false;
dedicatedServer = false;
copmcount      	= 24;
civscount      	= 56;
playercount    	= 80;
debugarray     	= [];
loadNotFinsihed = true;
OL_StatsLoadedFromDB = false;
22254 cutRsc["RL_Dialog_loading", "plain"];
_h = [] execVM "Scripts\TheGamingChief\init.sqf";
sleep 1;
[1112, "Starting Our Life RPG",0]	call RL_LoadingSetText;
[1112, "Init Briefing",5] 			call RL_LoadingSetText;
execVM "briefing.sqf";
call compile preprocessfile "triggers.sqf";
[] call compile preprocessFileLineNumbers "addons\proving_Ground\init.sqf";
[1112, "Exec Player Array",10]		call RL_LoadingSetText;
_h = [] execVM "ServerLoad\playerarrays.sqf";																												
waitUntil{scriptDone  _h};
[1112, "Init Functions",20] 		call RL_LoadingSetText;
_h = [playercount, rolenumber] execVM "ServerLoad\initfuncs.sqf";
waitUntil{scriptDone  _h};
[1112, "Exec Inv Variables",30] 	call RL_LoadingSetText;
_h = [playerarray, playerstringarray, !iscop] execVM "ServerLoad\INVvars.sqf";
waituntil{scriptDone  _h};
[1112, "Exec Bank",40] 				call RL_LoadingSetText;
_h = [] execVM "ServerLoad\bankexec.sqf";
waitUntil{scriptDone  _h};
[1112, "Exec WP Missions",45] 		call RL_LoadingSetText;
_h = [] execVM "ServerLoad\initWPmissions.sqf";
waitUntil{scriptDone  _h};
[1112, "Exec GFX",50] 				call RL_LoadingSetText;
_h = [] execVM "ServerLoad\gfx.sqf";
waitUntil{scriptDone  _h};
[1112, "Exec Anim List",60] 		call RL_LoadingSetText;
_h = [] execVM "ServerLoad\animList.sqf";
waitUntil{scriptDone  _h};
[1112, "Exec Misc Functions",65] 	call RL_LoadingSetText;
_h = []	execVM "ServerLoad\miscfunctions.sqf";
_h = [] execVM "lottoexec.sqf";
waitUntil{scriptDone  _h};
[1112, "Exec Main Variables",70] 	call RL_LoadingSetText;
_h = [] execVM "ServerLoad\variables.sqf";
waitUntil{scriptDone  _h};
[1112, "Exec Misc Scripts",75] 		call RL_LoadingSetText;

execVM "BTK\Cargo Drop\Start.sqf";
setPitchBank = compile preprocessfile "setPitchBank.sqf";
onHit = compile preprocessfilelinenumbers "onhit.sqf";
/*BIS_Effects_Burn=compile preprocessFile "\ca\Data\ParticleEffects\SCRIPTS\destruction\burn.sqf";*/
if (isServer) then 
{
	_initServer = execVM "init\InitServer.sqf";
};
if (isClient) then {
	[] execVM "ServerLoad\dead_ah.sqf";
	//[] execVM "PurchaseItems.sqf";
	[] execVM "ServerLoad\dead_spmsg.sqf";
	[] execVM "deaddem\config.sqf";
	
	[] call compile preprocessFile "manderza\init.sqf";
	[] call compile preprocessFileLineNumbers "HUD\playerHud_functions.sqf";
	call RLRPG_PlayerHUD_Loop;
	[true] call RLRPG_PlayerHUD_Show;
};

if(!dedicatedserver) then
{
	_initClient = execVM "init\InitClient.sqf";
	[] execVM "ServerLoad\saveVars.sqf";
	[] execVM "R3F_revive\revive_init.sqf";
	[] execVM "ServerLoad\clothes.sqf";
	[] execVM "deaddem\checkpoint\config.sqf";
	if(isMultiplayer)then{	
		[1112, "Loading Statistics",80] 	call RL_LoadingSetText;
		[] execVM "deaddem2\init.sqf";
		[] call fnc_SetupEvents;
		waitUntil{!isNil "fnc_SetupEvents"};
		[] call fnc_RequestStats;
		waitUntil{OL_StatsLoadedFromDB};
	};
};
if(isNil "45983450u34h77y5646ccvd4tjdsjncx7y3h") exitWith
{
	sleep 0.1;
	processInitCommands;
	sleep 0.1;
	clearVehicleInit player;
};
if(isServer) then
{	
	//call compile preProcessFile "\iniDB\init.sqf";
	[] call resetSafeCode;
	sleep 2;
	[] call autoUpdateSafeCode;
};

execVM "ServerCleaner.sqf";
execVM "Buildingfixer.sqf";
execVM "scripts\misc\Anti-Dupe.sqf";
['gewehr', 0] call INV_SetItemAmount;
['pistole', 0] call INV_SetItemAmount;

for [{_i=0}, {_i < (count INV_ItemFabriken)}, {_i=_i+1}] do {_i execVM "facqueue.sqf"};


fn_netSay3D = compile preprocessFileLineNumbers "scripts\foster\fn_netSay3D.sqf";

if (isNil "PVEH_netSay3D") then {
    PVEH_NetSay3D = [objNull,0];
};

"PVEH_netSay3D" addPublicVariableEventHandler {
      private["_array"];
      _array = _this select 1;
     (_array select 0) say3D (_array select 1);
};
call fnc_RemoveRadios;
[] spawn TFAR_fnc_ClientInit;


[1112, "Our Life Modification Loading Complete",95] call RL_LoadingSetText;
sleep 3;
[1112, "Welcome to a new day",100] call RL_LoadingSetText;
sleep 3;
22254 cutRsc["Default", "plain"];

if (isciv && !isServer) then {
	createdialog "TGC_SpawnMenu";
	player globalChat "Choose where you want to spawn!";
};

player enableSimulation true;
OL_InitComplete = true;