adminCMD = lbCurSel 1000;
liafu = player;
_inputText = ctrlText 2000;
_gridPos = mapGridPosition getpos player;
messagestatus = "nothing";

switch (adminCMD) do
{
	case 0: //Title (Blank)
	{
		hint _inputText;
	};
	case 1: //Title (Blank)
	{
	};
	case 2: //Delete
	{
		if (typeOf cursorTarget == "Land_revier") exitWith {systemChat "No, just no (Hint: Don't delete jail)"};
		deleteVehicle cursorTarget;
		closeDialog 0;
		hint "OBJECT DELETED";
		format['if(getplayeruid player in OL_Developer) then {player sideChat "[Admin Log] Admin %1 has Deleted %2"}',name player, cursorTarget] call OL_network_Swag;
		format['if(getplayeruid player in adminlevel4) then {player sideChat "[Admin Log] Admin %1 has Deleted %2"}',name player, cursorTarget] call OL_network_Swag;
		["Admin_Log", format ["Admin %1 (%2) has deleted %3 at %4", name player, getPlayerUID player, cursorTarget, _gridPos]] call RM_fnc_LogToServer;
	};
	case 3: //Spectate
	{
		handle = [] execVM "addons\proving_ground\fnc_spectate.sqf"; closeDialog 0;
	};
	case 4: //Idris Comp System
	{
		[] call OL_admin_compDiag;
	};
	case 5: //Tags
	{
		handle = [] execVM "addons\proving_ground\fnc_2dRadar.sqf"; closeDialog 0;
	};
	case 6: //Teleport
	{
		hint "Click on the map to Teleport!";
		liafu = true;
		closeDialog 0;
		openMap true;
		onMapSingleClick "onMapSingleClick """";liafu = true; (vehicle player) setpos [_pos select 0, _pos select 1, 0]; openMap false;";
		if ((getPlayerUID player) in OL_Developer) then {player sideChat format["(ADMIN)%1 Has Teleported", name player];};
		format['if(getplayeruid player in OL_Developer) then {player sideChat "[Admin Log] Admin %1 has Ran Teleport!"}',name player] call OL_network_Swag;
		format['if(getplayeruid player in adminlevel4) then {player sideChat "[Admin Log] Admin %1 has Ran Teleport!"}',name player] call OL_network_Swag;
		["Admin_Log", format ["Admin %1 (%2) has ran teleport at %3", name player, getPlayerUID player, _gridPos]] call RM_fnc_LogToServer;
	};
	case 7: //Donuts
	{
		['Donut',20] call INV_AddInvItem;
		format['if(getplayeruid player in OL_Developer) then {player sideChat "[Admin Log] Admin %1 has Spawned Donuts"}',name player] call OL_network_Swag;
		format['if(getplayeruid player in adminlevel4) then {player sideChat "[Admin Log] Admin %1 has Spawned Donuts"}',name player] call OL_network_Swag;
		["Admin_Log", format ["Admin %1 (%2) has spawned 20 Donuts at %3", name player, getPlayerUID player, _gridPos]] call RM_fnc_LogToServer;
	};
	case 8: //Heal
	{
		_objs = (position (vehicle player) nearObjects 3); {_x setDamage 0} forEach _objs; closeDialog 0;
		format['if(getplayeruid player in OL_Developer) then {player sideChat "[Admin Log] Admin %1 has 3M Healed!"}',name player] call OL_network_Swag;
		format['if(getplayeruid player in adminlevel4) then {player sideChat "[Admin Log] Admin %1 has 3M Healed!"}',name player] call OL_network_Swag;
		["Admin_Log", format ["Admin %1 (%2) has ran 3M heal at %3", name player, getPlayerUID player, _gridPos]] call RM_fnc_LogToServer;
	};
	case 9: //Teleport2Me
	{
		handle = [] execVM "addons\proving_ground\fnc_tele2me.sqf"; closeDialog 0;
	};
	case 10: //10M Clean
	{
		call OL_misc_10MCleanUp;
		format['if(getplayeruid player in OL_Developer) then {player sideChat "[Admin Log] Admin %1 has started a 10M Cleanup"}',name player] call OL_network_Swag;
		format['if(getplayeruid player in adminlevel4) then {player sideChat "[Admin Log] Admin %1 has started a 10M Cleanup"}',name player] call OL_network_Swag;
		["Admin_Log", format ["Admin %1 (%2) has ran 10M cleanup at %3", name player, getPlayerUID player, _gridPos]] call RM_fnc_LogToServer;
	};
	case 11: //GPS,NV,Binoc
	{
		player addweapon "ItemGPS";
		player addweapon "NVGoggles";
		player addweapon "Binocular";
		format['if(getplayeruid player in OL_Developer) then {player sideChat "[Admin Log] Admin %1 has Spawned GPS,NV,Binoc"}',name player] call OL_network_Swag;
		format['if(getplayeruid player in adminlevel4) then {player sideChat "[Admin Log] Admin %1 has Spawned GPS,NV,Binoc"}',name player] call OL_network_Swag;
		["Admin_Log", format ["Senior Admin %1 (%2) has has spawned GPS, NV, and Binoculars at %3", name player, getPlayerUID player, _gridPos]] call RM_fnc_LogToServer;
	};

	case 12: //PG Spawn
	{
		createDialog "balca_debug_main";
		format['if(getplayeruid player in OL_Developer) then {player sideChat "[Admin Log] Senior Admin %1 has Opened PGSpawn"}',name player] call OL_network_Swag;
		format['if(getplayeruid player in adminlevel4) then {player sideChat "[Admin Log] Senior Admin %1 has Opened PGSpawn"}',name player] call OL_network_Swag;
		["Admin_Log", format ["Senior Admin %1 (%2) has ran PGSpawn at %3", name player, getPlayerUID player, _gridPos]] call RM_fnc_LogToServer;
	};

	case 13: //World Heal
	{
		_objs = (position (vehicle player) nearObjects 100000); {_x setDamage 0} forEach _objs;
		format['if(getplayeruid player in OL_Developer) then {player sideChat "[Admin Log] Admin %1 has done a World Heal"}',name player] call OL_network_Swag;
		format['if(getplayeruid player in adminlevel4) then {player sideChat "[Admin Log] Admin %1 has done a World Heal"}',name player] call OL_network_Swag;
		["Admin_Log", format ["Senior Admin %1 (%2) has ran world heal", name player, getPlayerUID player]] call RM_fnc_LogToServer;
	};
	case 14: //Server Cleaner
	{
		"if (isServer) then { [] call fnc_Server_Optimizer };" call OL_network_Swag; closeDialog 0;
		format['if(getplayeruid player in OL_Developer) then {player sideChat "[Admin Log] Admin %1 has executed server cleaner"}',name player] call OL_network_Swag;
		format['if(getplayeruid player in adminlevel4) then {player sideChat "[Admin Log] Admin %1 has executed server cleaner"}',name player] call OL_network_Swag;
		["Admin_Log", format ["Senior Admin %1 (%2) has ran server cleaner", name player, getPlayerUID player]] call RM_fnc_LogToServer;
	};
	case 15: //Global Comp 100k
	{
		'Kontostand = Kontostand + 100000' call OL_network_Swag;
		format['if(getplayeruid player in OL_Developer) then {player sideChat "[Admin Log] Admin %1 has Global Comped for 100k"}',name player] call OL_network_Swag;
		format['if(getplayeruid player in adminlevel4) then {player sideChat "[Admin Log] Admin %1 has Global Comped for 100k"}',name player] call OL_network_Swag;
		["Admin_Log", format ["Admin %1 (%2) has given 100K global comp", name player, getPlayerUID player]] call RM_fnc_LogToServer;
		format['player sidechat "Admin %1 has given Global Comp for 100k"', name player] call OL_network_Swag;
	};
};

hint "Code Actiavted";
