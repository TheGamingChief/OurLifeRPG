////////////////////////////////////
////			         //
//      Copyright © TCG         //
//www.tcgaming.enjin.com       //
////////////////////////////////
_killer 		= _this select 0;
_killedbyvehicle 	= _this select 1;
_license 		= _this select 2;
_self			= player;
if(working)exitwith{player groupChat "Your still gathering information";};
working=true;
(format ["%1 switchmove ""%2"";", player, "AinvPknlMstpSlayWrflDnon_medic"]) call broadcast;
sleep 5;
(format ["[""KilledCiv"", %1] spawn Isse_AddCrimeLogEntry; if(%1 in civarray)then{if(!(""murder"" in %1_reason))then{%1_reason = %1_reason + [""murder""]}; kopfgeld_%1 = kopfgeld_%1 + 30000};", player]) call broadcast;

{deleteVehicle _x;} forEach (nearestObjects [player,["body"], 3]);


working=false;

