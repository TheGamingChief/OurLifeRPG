_art  = ((_this select 3) select 0);
_geld = 'geld' call INV_GetItemAmount;

if (_art == "holen") exitWith 

{
								
if (localhuren >= maxhuren) exitWith {role groupChat localize "STRS_arbeiter_zuviele";};
if (_geld <= huren_cost)    exitWith {role groupChat localize "STRS_arbeiter_nomoney";};
['geld', -(huren_cost)] call INV_AddInvItem;
player groupChat format[localize "STRS_arbeiter_gekauft", rolestring, (huren_cost call ISSE_str_IntToStr)];																						
_arbeiternummer   = localhurencounter; 																						
localhurencounter = localhurencounter + 1; 															
localhuren        = localhuren + 1;																									
_hoenumber        = localhurencounter;																				
_civ 		  = dogarray select round random(count dogarray - 1);																																																																										

call compile format ['"%3" createUnit [getpos player, group player, "%1hure%2 = this;this setVehicleVarName ""%1hure%2"";this execVM ""\CLAY_Dogs\initDog.sqf"";"];', rolestring, _hoenumber, _civ];

processInitCommands; 
};