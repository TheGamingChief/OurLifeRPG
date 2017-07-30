_loopart = _this select 0;
_geld    = 'geld' call INV_GetItemAmount;

if (_loopart == "disarm") then

{

call INV_EntferneIllegales;
player groupChat localize "STRS_civmenucheck_beendisarmed";

};


if (_loopart == "ticket") then

{

_strafe = _this select 1;
_cop    = _this select 2;
_didpay = 0;
_copplayernumber = playersNumber west;
_copticket = round(_strafe/_copplayernumber);

if (!(createDialog "ja_nein")) exitWith {hint "Dialog Error!"};

ctrlSetText [1, format["%1 gave you a ticket of $%2. Do you want to pay?", _cop, (_strafe call OL_ISSE_str_IntToStr)]];

waitUntil{(not(ctrlVisible 1023))};

if (Antwort == 1) then

	{

	if ((_geld + kontostand) < _strafe) exitwith

		{

		(format ["server globalChat format [localize ""STRS_civmenu_didnotpayticket"", name %2, %3];", _cop, player, (_strafe call OL_ISSE_str_IntToStr), (_didnotpay call OL_ISSE_str_IntToStr)]) call OL_network_Swag;

		};

	player groupChat format [localize "STRS_civmenucheck_ticketself", (_strafe call OL_ISSE_str_IntToStr)];
	format ["
		server globalChat format [localize ""STRS_civmenu_didpayticket"", name %2, %3];
		if (iscop) then{
			player groupChat ""You got $%4 because the %2 paid the ticket."";
			[""geld"", %4] call INV_AddInvItem;
		};
	", _cop, player, (_strafe call OL_ISSE_str_IntToStr), (_copticket call OL_ISSE_str_IntToStr)] call OL_network_Swag;
	[player, "Remove All Warrants", 0] call OL_player_WarrantRemove;

	if(_geld > _strafe) exitwith {['geld', -(_strafe)] call INV_AddInvItem;};
	if (kontostand > _strafe) exitwith {kontostand = kontostand - _strafe;};

	if ((_geld + kontostand) > _strafe) exitwith

		{

		_strafe1 = _geld;
		_strafe2 = _strafe - _strafe1;
		['geld', -(_strafe1)] call INV_AddInvItem;
		kontostand = kontostand - _strafe2;

		};

	};

if (Antwort == 2) then

	{

	(format ["server globalChat format [localize ""STRS_civmenu_didpaynothing"", name %2];", _cop, player, (_strafe call OL_ISSE_str_IntToStr)]) call OL_network_Swag;
	player groupChat localize "STRS_civmenu_youdidnotpay";

	};

};



if (_loopart == "drugs") then

{

_checkcop = _this select 1;
drugsvalue = 0;

if (["INV_InventarArray", "drug"] call INV_StorageHasKindOf) then

	{

	for [{_i=0}, {_i < (count INV_InventarArray)}, {_i=_i+1}] do

		{

		_item   = ((INV_InventarArray select _i) select 0);
		_infos  = _item call INV_getitemArray;

		if(_item call INV_getitemKindOf == "drug") then

			{

			_amount = (_item call INV_GetItemAmount);
			_preis  = (_infos call INV_getitemBuyCost);

			drugsvalue = drugsvalue + (_preis*_amount);

			};

		};

	["INV_InventarArray", "drug"] call INV_StorageRemoveKindOf;

	(format ["if (player == %2) then {player groupChat format[localize ""STRS_civmenu_hasdrugs"", %1, %4, (%3/2)];}; titletext [format[localize ""STRS_civmenucheck_haddrugs"", %1, %3], ""plain""];", player, _checkcop, drugsvalue, ceil(drugsvalue/25000)]) call OL_network_Swag;
	[player, "Drug Trafficking"] call OL_player_WarrantAdd;
	player groupChat localize "STRS_civmenucheck_beendrugsearched";

	} else {(format ["if (player == %2) then {player groupChat localize ""STRS_civmenu_hasnodrugs"";};", player, _checkcop]) call OL_network_Swag;};

};

if ((_loopart == "arrest") and (player distance prisonflag <= 70))  then {
	_duration	= _this select 1;
	_copobj   = _this select 2;
	_exitart  = "";

	if (!(player call OL_ISSE_IsVictim)) exitwith {(format ["if (player == %1) then {player groupchat localize ""STRS_inventory_checknohands""};", _copobj]) call OL_network_Swag;};
	isstunned = false;
	[] call OL_startup_SetVariables;

	_copPay = [player] call OL_player_WarrantTotal;
	if (_copPay > 0) then {
		format['if (player == %1) then { kontostand = kontostand + %2; player groupChat "This civ had a bounty of $%2! You got that bounty!" }', _copobj, _copPay] call OL_network_Swag;
	};

	["Arrest_Log", format ["%1 (%2) was arrested by %3 (%4) for %5 minute(s)", name player, getPlayerUID player, name _copobj, getPlayerUID _copobj, _duration call OL_ISSE_str_IntToStr]] call RM_fnc_LogToServer;

	if (OL_OldClothes != "olrpg_jailinmate") then {
		OL_OldClothes = typeOf player;
	};

	player setpos getmarkerpos "prisonspawn";

	(format ["%1 switchmove ""%2"";", player, "normal"]) call OL_network_Swag;
	["olrpg_jailinmate"] spawn OL_fnc_Clothes;
	call INV_EntferneIllegales;
	local_arrest    = 1;
	INV_hunger      = 0;
	["tf_unable_to_use_radio", true, 5, [true, true]] call CP_fnc_VarQueueAdd;
	[player, "Remove All Warrants", 0] call OL_player_WarrantRemove;
	CivTimeInPrison = (_this select 1);
	player groupChat format [localize "STRS_civmenucheck_arrested_self", (CivTimeInPrison call OL_ISSE_str_IntToStr)];
	player setdamage 0;

	jail_time = (_duration) * 60;
	jail_bounty = (jail_time) * jail_multiplier;

	while {true} do {
		if (!(alive player))                    exitWith { _exitart = "JailExit_Died"			   };
		if (jail_time <= 0)    								  exitWith { _exitart = "JailExit_TimeServed"  };
		if (player distance prison_logic >= 50) exitWith { _exitart = "JailExit_Escaped"		 };

		hintsilent format["Time until release: %1\nBail left to pay: $%2", [jail_time / 60 / 60, "HH:MM:SS"] call BIS_fnc_timeToString, jail_bounty];

		jail_time = jail_time - 1;
		jail_bounty = (jail_time) * jail_multiplier;
		uisleep 1;
	};

	switch (_exitArt) do {
		case ("JailExit_Escaped"): {
			[player, "Escaping Jail"] call OL_player_WarrantAdd;
			format ["server globalChat format [localize ""STRS_civmenucheck_breakout"", name %1];", player] call OL_network_Swag;
			player setVariable ["tf_unable_to_use_radio", false, true];

			player groupChat "You managed to escape jail!";
		};
		case ("JailExit_TimeServed"): {
			player setPos getMarkerPos "jail_freemarker";	player setdamage 0;
			player setVariable ["tf_unable_to_use_radio", false, true];
			[OL_OldClothes] spawn OL_fnc_Clothes;
			format ["
				server globalChat format [localize ""STRS_civmenucheck_free_global"", name %1];
				%1_reason = [];
			", player] call OL_network_Swag;

			player groupChat localize "STRS_civmenucheck_free_self";

			[] call fnc_SaveStats;
		};
		case ("JailExit_Died"): {
	    player groupChat "R.I.P.";
		};
	};

	jail_time 	 = 0;
	jail_bounty  = 0;
	local_arrest = 0;
	hintSilent "";
};

if (_loopart == "inventcheck") then {
	_aktionsStarter = _this select 1;
	(format ['if (player == %1) then {[0, 0, 0, ["inventorycheck", %2, %3, %4]] execVM "maindialogs.sqf";};',_aktionsStarter, INV_LizenzOwner, INV_InventarArray, player]) call OL_network_Swag;
};

if (_loopart == "patdown") then {
	_aktionsStarter = _this select 1;
	(format ['if (player == %2) then {[] call OL_fnc_PatDown; systemChat format["Your weapons have been removed by %1"];};', name _aktionsStarter, player]) call OL_network_Swag;
};


if (_loopart == "licheck") then {
	_aktionsStarter = _this select 1;
	(format ['if (player == %1) then {[0, 0, 0, ["licensecheck", %2, %3, %4]] execVM "maindialogs.sqf";};',_aktionsStarter, INV_LizenzOwner, INV_InventarArray, player]) call OL_network_Swag;
};

if (_loopart == "stealmoney") then

{

_aktionsStarter = _this select 1;
if(stolenfromtimeractive) exitwith
{
	(format ['if (player == %1) then {hint "%2 has been stolen from recently";};', _aktionsStarter, player]) call OL_network_Swag;
};
_geld  	 = 'geld' call INV_GetItemAmount;
_gridPos = mapGridPosition getpos player;
["geld", -(_geld)] call INV_AddInvItem;
if (_geld >= 100000) then
{
	["Rob_Log", format ["%1 (%2) has robbed %3 (%4) for $%5 at %6", name _aktionsStarter, getPlayerUID _aktionsStarter, player, getPlayerUID player, _geld, _gridPos]] call RM_fnc_LogToServer;
};

(format ['if (player == %1) then {["geld", %2] call INV_AddInvItem;};hint "%1 stole %2 from %3";',_aktionsStarter, _geld, player]) call OL_network_Swag;

stolenfromtimeractive = true; //FUCKING UPDATE THIS
["stolenfromtimeractive", false, 15, [false, false]] call CP_fnc_VarQueueAdd;

};
