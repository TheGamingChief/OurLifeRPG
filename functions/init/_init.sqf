waitUntil {!isNil "Luke_Server_Ready"};
waitUntil {Luke_Server_Ready};
OL_LoadedMission = true;

666 cutRsc ["UI_Progressbar", "PLAIN"];

["Init Briefing", 5] 				call OL_misc_Progressbar;
[] call OL_misc_briefing;
["Init Functions", 10] 			call OL_misc_Progressbar;
[playercount, rolenumber] 	call OL_Network_SetupEvents;
["Exec Inv Variables", 20] 	call OL_misc_Progressbar;
waitUntil {!isNil "playerarray" && !(isNil "iscop")};
_h = [playerarray, playerstringarray, !iscop] execVM "ServerLoad\INVvars.sqf";
waitUntil {scriptDone _h};
["Exec Bank", 30] 					call OL_misc_Progressbar;
_h = [] execVM "functions\bank\_vars.sqf";
waitUntil{scriptDone  _h};
["Exec WP Missions", 40] 		call OL_misc_Progressbar;
_h = [] execVM "ServerLoad\workplacesettings.sqf";
waitUntil {scriptDone _h};
["Exec Misc Functions", 50] call OL_misc_Progressbar;
_h = [] execVM "lottoexec.sqf";
waitUntil{scriptDone  _h};
["Exec Main Variables", 60] call OL_misc_Progressbar;
_h = [] execVM "ServerLoad\variables.sqf";
waitUntil{scriptDone  _h};
["Exec Misc Scripts", 70] 	call OL_misc_Progressbar;

if (isClient) then {
	[] spawn OL_player_WarrantGrab;
	[] spawn OL_gangs_Request;
	[[], "Server_Bolos_Request", false, true, false] call OL_network_MP;
	[[player, side player], "Server_User_RequestKeys", false, false, true] call OL_network_MP;

  [] spawn {
    waitUntil {!isNil "OL_Hud_HudShow"};

    call OL_Hud_HudLoop;
    [true] call OL_Hud_HudShow;

		waitUntil {OL_StatsLoadedFromDB};
		[] call OL_player_SetupKeys;
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
			[] spawn OL_misc_ratioKick;
			["SETUP"] call OL_misc_Markers;
			[] call Luke_Police_Init;
		};
		case resistance: {
			[] call OL_events_Ems_KeyEvents;
			[] call OL_events_Ems_Actions;
			["SETUP"] call OL_misc_Markers;
		};
	};

	["Init Client", 80] call OL_misc_Progressbar;
	[] execVM "ServerLoad\itemactions.sqf";
	[] execVM "ServerLoad\petrolactions.sqf";
	[] execVM "ServerLoad\nametags.sqf";
	[] execVM "R3F_revive\revive_init.sqf";
	[] execVM "Garry\Init.sqf";
	createMarkerLocal ["ControlDoorMrk", [7124.08,3606.54,0]];
	["ol_textures\images\Gps.paa", -0.06, -0.36] call bis_fnc_customGPS;

	if (isMultiplayer) then {
		["Loading Statistics", 90] call OL_misc_Progressbar;
		waitUntil {!isNil "Luke_Stats_Init"};
		player groupChat "OLRPG Stat System Loading...";
		[] call Luke_Stats_Init;
		_handle = [] spawn Luke_Stats_Request;
		waitUntil {scriptDone _handle};
		waitUntil {OL_StatsLoadedFromDB};
		[] call Luke_AntiCheat_Check;
	};
};

for [{_i=0}, {_i < (count INV_ItemFabriken)}, {_i=_i+1}] do {_i execVM "facqueue.sqf"};

[] call OL_TFAR_removeRadios;
player addWeapon "ItemRadio";
[] spawn TFAR_fnc_ClientInit;

["Our Life Modification Loading Complete", 100] call OL_misc_Progressbar;
uiSleep 3;
666 cutRsc ["Default", "PLAIN"];

0 setOvercast 0;
player enableSimulation true;
OL_InitComplete = true;
