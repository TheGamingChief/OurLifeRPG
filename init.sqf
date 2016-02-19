/*
Init Modified For Our Life RPG By Speedy
Edited by CP3088
*/
if (isServer) then 
{
	execVM "ServerFiles\InitRLRPGServer.sqf";
	[] execVM "DServer\init.sqf";
};

D_OkayImInNowCUNThahaha = false;

[] execVM "Scripts\Misc\FNC.sqf";
[] execVM "idris\fncs.sqf";

player enableSimulation false;
enableSaving [false, false];
isClient = !isServer || (isServer && !isDedicated); 
version        	= "32";
debug          	= false;
dedicatedServer = false;
copmcount      	= 31;
civscount      	= 54;
playercount    	= 85;
debugarray     	= [];
loadNotFinsihed = true;
22254 cutRsc["RL_Dialog_loading", "plain"];
sleep 1;
[1112, "Starting Our Life Modification",0] call RL_LoadingSetText;
[1112, "Init Briefing",5] call RL_LoadingSetText;
execVM "briefing.sqf";
call compile preprocessfile "triggers.sqf";

[] call compile preprocessFileLineNumbers "addons\proving_Ground\init.sqf";
[1112, "Exec Player Array",10] call RL_LoadingSetText;
_h = [] execVM "ServerLoad\playerarrays.sqf";																												
waitUntil{scriptDone  _h};
[1112, "Init Functions",15] call RL_LoadingSetText;
_h = [78, rolenumber] execVM "ServerLoad\initfuncs.sqf";
waitUntil{scriptDone  _h};
[1112, "Exec Inv Variables",20] call RL_LoadingSetText;
_h = [playerarray, playerstringarray, !iscop] execVM "ServerLoad\INVvars.sqf";
waituntil{scriptDone  _h};
[1112, "Exec Bank",25] call RL_LoadingSetText;
_h = [] execVM "ServerLoad\bankexec.sqf";
waitUntil{scriptDone  _h};
[1112, "Exec WP Missions",30] call RL_LoadingSetText;
_h = [] execVM "ServerLoad\initWPmissions.sqf";
waitUntil{scriptDone  _h};
[1112, "Exec GFX",35] call RL_LoadingSetText;
_h = [] execVM "ServerLoad\gfx.sqf";
waitUntil{scriptDone  _h};
[1112, "Exec Anim List",40] call RL_LoadingSetText;
_h = [] execVM "ServerLoad\animList.sqf";
waitUntil{scriptDone  _h};
[1112, "Exec Misc Functions",45] call RL_LoadingSetText;
_h = []	execVM "ServerLoad\miscfunctions.sqf";
_h = [] execVM "lottoexec.sqf";
waitUntil{scriptDone  _h};
[1112, "Exec Main Variables",50] call RL_LoadingSetText;
_h = [] execVM "ServerLoad\variables.sqf";
waitUntil{scriptDone  _h};
[1112, "Exec Misc Scripts",55] call RL_LoadingSetText;
execVM "BTK\Cargo Drop\Start.sqf";
setPitchBank = compile preprocessfile "setPitchBank.sqf";
/* BIS_Effects_Burn=compile preprocessFile "\ca\Data\ParticleEffects\SCRIPTS\destruction\burn.sqf"; */
if (isServer) then 
{
	_initServer = execVM "init\InitServer.sqf";
};
if (isClient) then {
	[] execVM "ServerLoad\dead_ah.sqf";
	//[] execVM "PurchaseItems.sqf";
	[] execVM "ServerLoad\dead_spmsg.sqf";
	[] execVM "deaddem\config.sqf";
	[] execVM "deaddem\mds\mds_init.sqf";
	[] execVM "undercover.sqf";
	
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
	[] execVM "deaddem2\init.sqf";
	
	
	if (isciv) then {
		createdialog "Swag_SpawnMenu";
		player globalChat "Choose where you want to spawn !";
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
	call compile preProcessFile "\iniDB\init.sqf";
	[] call resetSafeCode;
	sleep 2;
	[] call autoUpdateSafeCode;
};

[] call fnc_SetupEvents;
[] call fnc_RequestStats;
waitUntil {!isNil "fnc_SetupEvents"};

D_OkayImInNowCUNThahaha = true;

execVM "ServerCleaner.sqf";
execVM "Buildingfixer.sqf";
	
["schluesselbund",1] call INV_AddInvItem;
waitUntil{!isNil "INV_AddInvItem"};


fn_netSay3D = compile preprocessFileLineNumbers "scripts\foster\fn_netSay3D.sqf";

if (isNil "PVEH_netSay3D") then {
    PVEH_NetSay3D = [objNull,0];
};

"PVEH_netSay3D" addPublicVariableEventHandler {
      private["_array"];
      _array = _this select 1;
     (_array select 0) say3D (_array select 1);
};

OL_InitComplete = true;
chopavailable = true;
slotsavailable = true;
robcasinoavailable = true;
Brycesavailable = true;
casinoavailable = true;
pornavailable = true;
houseavailable = true;
gaspitavailable = true;
mannyavailable = true;
mikesavailable = true;
hausavailable = true;
haus1available = true;
fionasavailable = true;
macksavailable = true;
southavailable = true;
hermannsavailable = true;
chipsavailable = true;
