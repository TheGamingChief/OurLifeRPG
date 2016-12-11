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

ctrlSetText [1, format["%1 gave you a ticket of $%2. Do you want to pay?", _cop, (_strafe call ISSE_str_IntToStr)]];	

waitUntil{(not(ctrlVisible 1023))};																					

if (Antwort == 1) then

	{

	if ((_geld + kontostand) < _strafe) exitwith 

		{

		(format ["server globalChat format [localize ""STRS_civmenu_didnotpayticket"", name %2, %3];", _cop, player, (_strafe call ISSE_str_IntToStr), (_didnotpay call ISSE_str_IntToStr)]) call broadcast;

		}; 

	false call TurnWantedFunc;		
	player groupChat format [localize "STRS_civmenucheck_ticketself", (_strafe call ISSE_str_IntToStr)];
	(format ["server globalChat format [localize ""STRS_civmenu_didpayticket"", name %2, %3];[""Ticket"", %2, %3] spawn Isse_AddCrimeLogEntry;if (iscop) then{player groupChat ""You got $%4 because the %2 paid the ticket."";[""geld"", %4] call INV_AddInvItem;};kopfgeld_%2 = kopfgeld_%2 - %3; if(kopfgeld_%2 < 0)then{kopfgeld_%2 = 0};", _cop, player, (_strafe call ISSE_str_IntToStr), (_copticket call ISSE_str_IntToStr)]) call broadcast;

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

	(format ["server globalChat format [localize ""STRS_civmenu_didpaynothing"", name %2];", _cop, player, (_strafe call ISSE_str_IntToStr)]) call broadcast;
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

	(format ["if(!(""trafficking drugs"" in %1_reason))then{%1_reason = %1_reason + [""trafficking drugs""]}; %1_wanted = 1; kopfgeld_%1 = kopfgeld_%1 + (%3); if (player == %2) then {player groupChat format[localize ""STRS_civmenu_hasdrugs"", %1, %4, (%3/2)];}; titletext [format[localize ""STRS_civmenucheck_haddrugs"", %1, %3], ""plain""];", player, _checkcop, drugsvalue, ceil(drugsvalue/25000)]) call broadcast;	

	player groupChat localize "STRS_civmenucheck_beendrugsearched";

	} else {(format ["if (player == %2) then {player groupChat localize ""STRS_civmenu_hasnodrugs"";};", player, _checkcop]) call broadcast;};

};				

if ((_loopart == "arrest") and (player distance prisonflag <= 70))  then 

{

_prisondauer = (_this select 1)*60; 													
_copobj      = _this select 2;															
_exitart     = "";

if (!(player call ISSE_IsVictim)) exitwith {(format ["if (rolestring == ""%1"") then {player groupchat localize ""STRS_inventory_checknohands""};", _copobj]) call broadcast;};
isstunned = false;
player setVariable ["Attached",false,true];
player setVariable ["Cuffed",false,true];
player setVariable ["ZipTied",false,true];
player setVariable ["Gagged",false,true];
player setVariable ["Escort",false,true];

_civkopfgeld = call compile format ["kopfgeld_%1", player];

if (_civkopfgeld != 0) then 

	{

	(format['if(rolestring == "%1")then{kontostand = kontostand + %2; player groupChat "This civ had a bounty of $%2! You got that bounty!"}', _copobj, _civkopfgeld]) call broadcast;

	};

(format ["[""PrisonIn"", %1, %3] spawn Isse_AddCrimeLogEntry; kopfgeld_%1 = (%2*10000);%1_wanted = 0;%1_arrest = 1;", player, ((_prisondauer/60) call ISSE_str_IntToStr), _copobj]) call broadcast;																	
["Arrest_Log", format ["%1 (%2) was arrested by %3 (%4) for %5 minute(s)", name player, getPlayerUID player, name _copobj, getPlayerUID _copobj, ((_prisondauer/60) call ISSE_str_IntToStr)]] call fn_RMLogToServer;
_OldClothes = typeOf player;
OldClothes = _OldClothes;


player setpos getmarkerpos "prisonspawn"; player setpos [getpos this select 0, getpos this select 1, (getpos this select 2)+.9];

(format ["%1 switchmove ""%2"";", player, "normal"]) call broadcast;
["olrpg_jailinmate"] call clothes;
call INV_EntferneIllegales;	
local_arrest    = 1;		
INV_hunger      = 0;
player setVariable ["tf_unable_to_use_radio", true, true];					
CivTimeInPrison = (_this select 1);
player groupChat format [localize "STRS_civmenucheck_arrested_self", (CivTimeInPrison call ISSE_str_IntToStr)];
stolencash = 0;
player setdamage 0;

_counter = 0;
_tBounty = (_prisondauer/60)*10000;

while {true} do 

	{
		
	_freigelassen = call compile format ["%1_arrest", player]; 
	_bounty       = call compile format["kopfgeld_%1", player];
	_frac 	      = _bounty/_tBounty;
	_timetotake   = round(_prisondauer*_frac);
	call compile format["kopfgeld_%1 = kopfgeld_%1 - (10000/60)", player];

	hintsilent format["Time until release: %1 seconds\nBail left to pay: $%2", _timetotake, round(_bounty)];

	if (isNull(player))                      exitWith {_exitart = ""};								
	if (!(alive player))                     exitWith {_exitart = "tot"};																												
	if (_counter >= _prisondauer)             exitWith {_exitart = "frei"};														
	if (_freigelassen == 0)                   exitWith {_exitart = "freigelassen"};																
	if (player Distance prison_logic >= 50) exitWith {_exitart = "ausbruch"};
	if (_bounty <= 0)			  exitwith {_exitart = "freigelassen"};

	_counter = _counter + 1;
	uiSleep 1;												

	};	
																									
if ((_exitart == "frei") or (_exitart == "freigelassen")) then 

	{

	player setPos getMarkerPos "jail_freemarker";	player setdamage 0;	
	player setVariable ["tf_unable_to_use_radio", false, true];
	_OldClothes = OldClothes;
	[_OldClothes] Call clothes;
	(format ["if (player == %1) then {local_arrest = 0; [player groupChat localize ""STRS_civmenucheck_free_self""];}; server GLOBALCHAT format [localize ""STRS_civmenucheck_free_global"", name %1]; [""PrisonOut"", %1] spawn Isse_AddCrimeLogEntry; %1_reason = []; kopfgeld_%1 = 0; %1_arrest = 0;", player]) call broadcast;													

	};

if (_exitart == "ausbruch") then 

	{

	(format ["if (player == %1) then {local_arrest = 0;}; %1_arrest = 0; if(!(""escaping from jail"" in %1_reason))then{%1_reason = %1_reason + [""escaping from jail""]}; %1_wanted = 1; kopfgeld_%1 = 20000; server GLOBALCHAT format [localize ""STRS_civmenucheck_breakout"", name %1]; [""PrisonEsc"", %1] spawn Isse_AddCrimeLogEntry;", player]) call broadcast;	
	player setVariable ["tf_unable_to_use_radio", false, true];

	};

};

if (_loopart == "inventcheck") then 

{		

_aktionsStarter = _this select 1;
										
(format ['if (rolestring == "%1") then {[0, 0, 0, ["inventorycheck", %2, %3, %4]] execVM "maindialogs.sqf";};',_aktionsStarter, INV_LizenzOwner, INV_InventarArray, player]) call broadcast;

};

if (_loopart == "patdown") then 

{		

_aktionsStarter = _this select 1;
										
(format ['if (rolestring == "%2") then {execVM "scripts\TheGamingChief\Common\fnc_PatDown.sqf"; systemChat format["Your weapons have been removed by %1"];};', _aktionsStarter, player]) call broadcast;

};


if (_loopart == "licheck") then 

{		
_aktionsStarter = _this select 1;
										
(format ['if (rolestring == "%1") then {[0, 0, 0, ["licensecheck", %2, %3, %4]] execVM "maindialogs.sqf";};',_aktionsStarter, INV_LizenzOwner, INV_InventarArray, player]) call broadcast;

};

if (_loopart == "stealmoney") then 

{

_aktionsStarter = _this select 1; 
if(stolenfromtimeractive) exitwith 
{
	(format ['if (rolestring == "%1") then {hint "%2 has been stolen from recently";};', _aktionsStarter, player]) call broadcast;	
};
_geld  = 'geld' call INV_GetItemAmount;
_amounttosteal = (floor(random _geld));
["geld", -(_amounttosteal)] call INV_AddInvItem;

(format ['if (rolestring == "%1") then {["geld", %2] call INV_AddInvItem;};hint "%1 stole %2 from %3";',_aktionsStarter, _amounttosteal, player]) call broadcast;
stolenfromtimeractive = true;
uiSleep 900;
stolenfromtimeractive = false;

};

