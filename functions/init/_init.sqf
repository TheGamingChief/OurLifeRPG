if (isServer) then {execVM "ServerFiles\InitOLServer.sqf"};

22254 cutRsc["RL_Dialog_loading", "plain"];

["Init Briefing", 5] 				call OL_Misc_LoadingSetText;
[] call OL_misc_briefing;
["Init Functions", 10] 			call OL_Misc_LoadingSetText;
[playercount, rolenumber] 	call OL_network_SwagSetup;
["Exec Inv Variables", 20] 	call OL_Misc_LoadingSetText;
waitUntil {!isNil "playerarray" && !(isNil "iscop")};
_h = [playerarray, playerstringarray, !iscop] execVM "ServerLoad\INVvars.sqf";
waituntil{scriptDone  _h};
["Exec Bank", 30] 					call OL_Misc_LoadingSetText;
_h = [] execVM "functions\bank\_vars.sqf";
waitUntil{scriptDone  _h};
["Exec WP Missions", 40] 		call OL_Misc_LoadingSetText;
_h = [] execVM "ServerLoad\workplacesettings.sqf";
waitUntil {scriptDone _h};
["Exec Misc Functions", 50] call OL_Misc_LoadingSetText;
_h = [] execVM "lottoexec.sqf";
waitUntil{scriptDone  _h};
["Exec Main Variables", 60] call OL_Misc_LoadingSetText;
_h = [] execVM "ServerLoad\variables.sqf";
waitUntil{scriptDone  _h};
["Exec Misc Scripts", 70] 	call OL_Misc_LoadingSetText;

if (isClient) then {
	[] spawn OL_player_WarrantGrab;
	[] spawn OL_gangs_Request;

  [] spawn {
    waitUntil {!isNil "OL_Hud_HudShow"};

    call OL_Hud_HudLoop;
    [true] call OL_Hud_HudShow;
  };

	switch (side player) do {
		case civilian: {
			[] call OL_events_Civ_KeyEvents;
			[] call OL_events_Civ_Actions;
			[] spawn OL_ui_SpawnMenu_Open;
		};
		case west: {
			[] call OL_events_Cop_KeyEvents;
			[] call OL_events_Cop_Actions;
			[] call OL_misc_ratioChecker;
			[] call OL_misc_ratioKick;
			["SETUP"] call OL_misc_Markers;
		};
		case resistance: {
			[] call OL_events_Ems_KeyEvents;
			[] call OL_events_Ems_Actions;
			["SETUP"] call OL_misc_Markers;
		};
	};

	["Init Client", 80] call OL_Misc_LoadingSetText;
	[] execVM "ServerLoad\itemactions.sqf";
	[] execVM "ServerLoad\petrolactions.sqf";
	[] execVM "ServerLoad\SpeedCams.sqf";
	[] execVM "ServerLoad\nametags.sqf";
	[] execVM "R3F_revive\revive_init.sqf";
	["ol_textures\images\Gps.paa",-0.06,-0.36] call bis_fnc_customGPS;

	if(isMultiplayer)then{
		["Loading Statistics", 90] 	call OL_Misc_LoadingSetText;
		waitUntil{!isNil "fnc_SetupEvents"};
		player groupChat "OLRPG Stat System Loading...";
		[] call fnc_SetupEvents;
		[] call fnc_RequestStats;
		waitUntil{OL_StatsLoadedFromDB};
	};
};

for [{_i=0}, {_i < (count INV_ItemFabriken)}, {_i=_i+1}] do {_i execVM "facqueue.sqf"};

[] call OL_TFAR_removeRadios;
player addWeapon "ItemRadio";
[] spawn TFAR_fnc_ClientInit;

["Our Life Modification Loading Complete", 100] call OL_Misc_LoadingSetText;
sleep 3;
22254 cutRsc["Default", "plain"];

0 setOvercast 0;
player enableSimulation true;
OL_InitComplete = true;
