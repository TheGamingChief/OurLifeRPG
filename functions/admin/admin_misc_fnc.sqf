adminMenuOpen =
{
	createDialog "adminMenuTCG";
	adminMenu_Players = playableUnits;
	{
    lbAdd [1500, format ["%1: %6 - Vcl: %2 - Money: $%4 - Bank: $%3", name _x, if(vehicle _x != _x) then {typeOf (vehicle _x)} else {"On Foot"},_x getVariable "Kontostand",_x getVariable "moneyPlayer",weapons _x,getPlayerUID _x]];
  } forEach adminMenu_Players;
	lbSetCurSel [1500,0];
};

adminMenuCrash =
{
	_sel = lbCurSel 1500;
	_selected = adminMenu_Players select _sel;
	format["if(name player == ""%1"") then {for ""_i"" from 0 to 100 do {_d = findDisplay _i; _d closeDisplay 0;};};", name _selected] call OL_network_Swag;
};

adminMenuWarn =
{
	_sel = lbCurSel 1500;
	_selected = adminMenu_Players select _sel;
	format["[] spawn {server globalChat ""%1 has been warned by an admin.""; if(name player == ""%1"") then {closeDialog 0; playSound ""warn""; titleText [""YOU HAVE BEEN WARNED BY AN ADMIN"",""BLACK""]; sleep 5; titleText [""Be good now..."",""PLAIN""];};};", name _selected] call OL_network_Swag;
};

adminMenuTeleport =
{
	_sel = lbCurSel 1500;
	_selected = adminMenu_Players select _sel;
	(vehicle player) setPosATL (getPosATL _selected);
	//format['server globalChat "(ADMIN)%1 Has Teleported";', name player] call OL_network_Swag;
	format['diag_log text "ADMIN LOG: %1 Has Teleported";', name player];
	server globalChat format["You have teleported to %1",name _selected];
};

SpeedyOutput=
{
	_sel = lbCurSel 1500;
	_selected = adminMenu_Players select _sel;
	_weapons = weapons _selected;
	_mags = magazines _selected;
	_name = name _selected;
	_uid = getPlayerUID _selected;
	hint format["UID: %4 \nNAME: \n%1 \n\nWEAPONS: \n\n%2 \n\nMAGAZINES: \n\n%3",_name, _weapons, _mags, _uid];
};

adminMenuLock =
{
	gamerzlock = 'serverCommand "#lock";';
	player setVehicleInit gamerzlock;
	processInitCommands;
	clearVehicleInit player;
	hint "SERVER IS LOCKED!";
	gamerzlock = nil;
};

adminMenuUnlock =
{
	gamerzunlock = 'serverCommand "#unlock";';
  player setVehicleInit gamerzunlock;
  processInitCommands;
  clearVehicleInit player;
  hint "SERVER IS UNLOCKED!";
  gamerzunlock = nil;
};

adminMenuClean =
{
	"if (isServer) then { [] call fnc_Server_Optimizer };" call OL_network_Swag;
};


adminMenuSkipTime =
{
	player setVehicleInit "skiptime 2;hint 'Time Skipped 2 Hours!';";
	processInitCommands;
	clearVehicleInit player;
};

adminMenuRepair =
{
	vehicle player setfuel 1;
	vehicle player setvehicleammo 1;
	vehicle player setdammage 0;
	hint "Repaired";
};
