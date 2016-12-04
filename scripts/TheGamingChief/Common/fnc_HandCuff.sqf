_civ = civmenuciv;
if (player distance _civ >= 3) exitWith {hint "The person is too far away!"};
if(vehicle _civ != _civ)exitwith{player groupchat "The civ is in a vehicle!"};

if(animationstate _civ == "actspercmstpsnonwrfldnon_interrogate02_forgoten") exitwith

{
["HandCuffs", 1] call INV_AddInvItem;
_civ setVariable ["Cuffed",false,true];
_civ setVariable ["ZipTied",false,true];
_civ setVariable ["tf_voiceVolume", 1, true];
_civ setVariable ["tf_unable_to_use_radio", false, true];		
_civ setVariable ["Gagged",false,true];
sleep 0.5;
if (player getVariable "Gagged") then 
{
	(format['if (rolestring == "%1") then {systemChat "Your Gag has been removed!";}', _civ]) call broadcast;
};
[_civ,"restrain"] call fn_netSay3D;
hintSilent parseText format ["<t size='1.25' font='Zeppelin33' color='#D80C0C'>%1 Released</t>", _civ];
format['if(player == %1) then {isstunned = false}', _civ] call broadcast;
["HandCuff_Log", format ["%1 (%2) was released by %3 (%4)", name _civ, getPlayerUID _civ, name player, getPlayerUID player]] call fn_RMLogToServer;
(format ["%1 switchmove ""%2"";", _civ, "Normal"]) call broadcast;
(format ['if (rolestring == "%1") then {isstunned=false;StunActiveTime=0;}', _civ]) call broadcast;
};

if("HandCuffs" call INV_GetItemAmount == 0) exitwith {systemChat "You don't have any HandCuffs on you!"};

if("HandCuffs" call INV_GetItemAmount > 0) then{
["HandCuffs", -1] call INV_AddInvItem;
[_civ,"restrain"] call fn_netSay3D;
hintSilent parseText format ["<t size='1.25' font='Zeppelin33' color='#D80C0C'>%1 Cuffed</t>", _civ];
(format ['if (rolestring == "%1") then {isstunned=true;}', _civ]) call broadcast;
_civ setVariable ["tf_unable_to_use_radio", true, true];
_civ setVariable ["Cuffed",true,true];
["HandCuff_Log", format ["%1 (%2) was handcuffed by %3 (%4)", name _civ, getPlayerUID _civ, name player, getPlayerUID player]] call fn_RMLogToServer;
(format ["%1 switchmove ""%2"";", _civ, "actspercmstpsnonwrfldnon_interrogate02_forgoten"]) call broadcast;
(format ['if (rolestring == "%1") then {call fnc_HandCuffLoop;}', _civ]) call broadcast;
};