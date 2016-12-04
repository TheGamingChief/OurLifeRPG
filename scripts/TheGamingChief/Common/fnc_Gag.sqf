_civ = civmenuciv;
if (player distance _civ >= 3) exitWith {hint "The person is too far away!"};

if (_civ getVariable "Gagged") exitwith 

{
_civ setVariable ["Gagged",false,true];
sleep 2;
(format['if (rolestring == "%1") then {hint "Your gag was removed.";}', _civ]) call broadcast;
_civ setVariable ["tf_voiceVolume", 1, true];
["Gag_Log", format ["%1 (%2) was ungagged by %3 (%4)", name _civ, getPlayerUID _civ, name player, getPlayerUID player]] call fn_RMLogToServer;
player groupchat "You ungagged the player";
};

if("Gag" call INV_GetItemAmount > 0) then{
["Gag", -1] call INV_AddInvItem;
if(vehicle _civ != _civ)exitwith{player groupchat "the civ is in a vehicle!"};
_civ setVariable ["Gagged",true,true];
_civ setVariable ["tf_voiceVolume", 0, true];
(format ["%1 playmove ""%2"";", player, "AmovPercMstpSnonWnonDnon_AinvPknlMstpSnonWnonDnon"]) call broadcast;
(format ['if (rolestring == "%1") then {call fnc_GagLoop;}', _civ]) call broadcast;
(format ['if (rolestring == "%1") then {systemChat "You have been gagged by %2!;}', _civ, name player]) call broadcast;
["Gag_Log", format ["%1 (%2) was Gagged by %3 (%4)", name _civ, getPlayerUID _civ, name player, getPlayerUID player]] call fn_RMLogToServer;
player groupchat "You gagged the player";
{if (_x getvariable "gagged") then {_x call ENT_addTag};} foreach playableUnits;
};