adminCMD = lbCurSel 1000;
liafu = player;
_inputText = ctrlText 2000;
messagestatus = "nothing";

switch (adminCMD) do
{
	case 0: //Title (Blank)
	{
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
		format['if(getplayeruid player in OL_Developer) then {player sideChat "[Admin Log] Dev %1 has Deleted %2"}', PlayerName, cursorTarget] call OL_network_Swag;
		[format["[ADMIN_PANNEL_LOG] Dev %1 has Deleted %2", PlayerName, cursorTarget]] call fn_LogToServer;
	};
	case 3: //Spectate
	{
		handle = [] execVM "addons\proving_ground\fnc_spectate2.sqf"; closeDialog 0;
	};
	case 4: //Tags
	{
		handle = [] execVM "addons\proving_ground\fnc_2dRadar2.sqf"; closeDialog 0;
	};
	case 5: //Teleport
	{
		hint "Click on the map to Teleport!";
		liafu = true;
		closeDialog 0;
		openMap true;
		onMapSingleClick "onMapSingleClick """";liafu = true; (vehicle player) setpos [_pos select 0, _pos select 1, 0]; openMap false;";
		format['if(getplayeruid player in OL_Developer) then {player sideChat "[Admin Log] Dev %1 has Ran Teleport!"}', PlayerName] call OL_network_Swag;
		[format["[ADMIN_PANNEL_LOG] Dev %1 has Ran Teleport!", PlayerName]] call fn_LogToServer;
	};
	case 6: //Donuts
	{
		['Donut',20] call INV_AddInvItem;
		format['if(getplayeruid player in OL_Developer) then {player sideChat "[Admin Log] Dev %1 has Spawned Donuts"}', PlayerName] call OL_network_Swag;
		[format["[ADMIN_PANNEL_LOG] Dev %1 has Spawned Donuts", PlayerName]] call fn_LogToServer;
	};
	case 7: //Heal
	{
		_objs = (position (vehicle player) nearObjects 3); {_x setDamage 0} forEach _objs; closeDialog 0;
		format['if(getplayeruid player in OL_Developer) then {player sideChat "[Admin Log] Dev %1 has 3M Healed!"}', PlayerName] call OL_network_Swag;
		[format["[ADMIN_PANNEL_LOG] Dev %1 has 3M Healed!", PlayerName]] call fn_LogToServer;
	};
	case 8: //Teleport2Me
	{
		handle = [] execVM "addons\proving_ground\fnc_tele2me2.sqf"; closeDialog 0;
	};
	case 9: //Idris Comp System
	{
		[] call OL_admin_compDiag;
	};
	case 10: //10M Clean
	{
		call OL_misc_10MCleanUp;
		format['if(getplayeruid player in OL_Developer) then {player sideChat "[Admin Log] Dev %1 has started a 10M Cleanup"}', PlayerName] call OL_network_Swag;
		[format["[ADMIN_PANNEL_LOG] Dev %1 has started a 10M Cleanup", PlayerName]] call fn_LogToServer;
	};
	case 11: //GPS,NV,Binoc
	{
		player addweapon "ItemGPS";
		player addweapon "NVGoggles";
		player addweapon "Binocular";
		format['if(getplayeruid player in OL_Developer) then {player sideChat "[Admin Log] Dev %1 has Spawned GPS,NV,Binoc"}', PlayerName] call OL_network_Swag;
		[format["[ADMIN_PANNEL_LOG] Dev %1 has Spawned GPS,NV,Binoc", PlayerName]] call fn_LogToServer;
	};
	case 12: //World Heal
	{
		//format['server globalChat "(ADMIN)%1 Has Just Executed A World Heal";', PlayerName] call OL_network_Swag;
		//format['diag_log text "ADMIN LOG: %1 Has Executed A World Heal";', PlayerName];
		_objs = (position (vehicle player) nearObjects 100000); {_x setDamage 0} forEach _objs;
		format['if(getplayeruid player in OL_Developer) then {player sideChat "[Admin Log] Dev %1 has done a World Heal"}', PlayerName] call OL_network_Swag;
		[format["[ADMIN_PANNEL_LOG] Dev %1 has done a World Heal", PlayerName]] call fn_LogToServer;
	};
	case 13: //Server Cleaner
	{
		"if (isServer) then { [] spawn fnc_Server_Optimizer };" call OL_network_Swag; closeDialog 0;
		format['if(getplayeruid player in OL_Developer) then {player sideChat "[Admin Log] Dev %1 has executed server cleaner"}', PlayerName] call OL_network_Swag;
		[format["[ADMIN_PANNEL_LOG] Dev %1 has executed server cleaner", PlayerName]] call fn_LogToServer;
	};
	case 14: //Global Comp 100k
	{
		'Kontostand = Kontostand + 100000' call OL_network_Swag;
		format['if(getplayeruid player in OL_Developer) then {player sideChat "[Admin Log] Dev %1 has Global Comped for 100k"}', PlayerName] call OL_network_Swag;
		[format["[ADMIN_PANNEL_LOG] Dev %1 has Global Comped for 100k", PlayerName]] call fn_LogToServer;
		format['player sidechat "Head Admin/Dev %1 has given Global Comp for 100k"', PlayerName] call OL_network_Swag;
	};
	case 15: //Masterkey
	{
		_vcls = nearestobjects [getpos player, ["LandVehicle", "Air", "ship"], 25];
		_vcl = _vcls select 0;
		["LOCK", _vcl] call OL_fnc_Keys;
		format['if(getplayeruid player in OL_Developer) then {player sideChat "[Admin Log] Dev %1 has used Masterkey on %2"}', PlayerName,_vcl] call OL_network_Swag;
		[format["[ADMIN_PANNEL_LOG] Dev %1 has used Masterkey on %2", PlayerName,_vcl]] call fn_LogToServer;
	};
	case 16: //Add All Licenses
	{
		demerits = 10;
		INV_LizenzOwner = [];
		{
			_tmp = _x select 0;

			if (!(_tmp in INV_LizenzOwner)) then {
				INV_LizenzOwner = INV_LizenzOwner + [_tmp];
			};
		} forEach INV_Lizenzen;
		player sideChat "All Licenses Added!";
		format['if(getplayeruid player in OL_Developer) then {player sideChat "[Admin Log] Dev %1 has Given Themselves All Licenses"}', PlayerName] call OL_network_Swag;
		[format["[ADMIN_PANNEL_LOG] Dev %1 has Given Themselves All Licenses", PlayerName]] call fn_LogToServer;
	};
	case 17: //Revive
	{
    player setVariable ["KOED", false, true];  player setVariable ["R3F_REV_est_inconscient", false, true];
    format['if(getplayeruid player in OL_Developer) then {player sideChat "[Admin Log] Dev %1 has revived themselves"}', PlayerName] call OL_network_Swag;
		[format["[ADMIN_PANNEL_LOG] Dev %1 has revived themselves", PlayerName, cursorTarget]] call fn_LogToServer;
	};
	case 18: //12 PM
	{
		setDate [2013, 2, 25, 12, 0] call OL_network_Swag;
		format['if(getplayeruid player in OL_Developer) then {player sideChat "[Admin Log] Dev %1 has set their local time to 12 PM"}', PlayerName] call OL_network_Swag;
		[format["[ADMIN_PANNEL_LOG] Dev %1 has set their local time to 12 PM", PlayerName]] call fn_LogToServer;
	};
  case 19: //11 PM
	{
		setDate [2013, 2, 25, 23, 0] call OL_network_Swag;
		format['if(getplayeruid player in OL_Developer) then {player sideChat "[Admin Log] Dev %1 has set their local time to 11 PM"}', PlayerName] call OL_network_Swag;
		[format["[ADMIN_PANNEL_LOG] Dev %1 has set their local time to 11 PM", PlayerName]] call fn_LogToServer;
	};
  case 20: //100K
	{
		['geld',100000] call INV_AddInvItem;
		format['if(getplayeruid player in OL_Developer) then {player sideChat "[Admin Log] Dev %1 has Spawned 100K"}', PlayerName] call OL_network_Swag;
		[format["[ADMIN_PANNEL_LOG] Dev %1 has Spawned 100K", PlayerName]] call fn_LogToServer;
	};
};

hint "Code Actiavted";
