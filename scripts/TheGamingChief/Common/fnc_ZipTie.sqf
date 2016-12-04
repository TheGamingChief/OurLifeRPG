_civ = civmenuciv;
if (player distance _civ >= 3) exitWith {hint "The person is too far away!"};

if(animationstate _civ == "actspercmstpsnonwrfldnon_interrogate02_forgoten") exitwith

{
_civ setVariable ["ZipTied",false,true];
_civ setVariable ["Cuffed",false,true];
_civ setVariable ["tf_voiceVolume", 1, true];
_civ setVariable ["Gagged",false,true];
_civ setVariable ["tf_unable_to_use_radio", false, true];	
sleep 0.5;
(format['if (rolestring == "%1") then {player groupchat "You have been let go!";}', _civ]) call broadcast;
if (player getVariable "Gagged") then 
{
	(format['if (rolestring == "%1") then {systemChat "Your Gag has been removed!";}', _civ]) call broadcast;
};
(format ["%1 switchmove ""%2"";", _civ, "Normal"]) call broadcast;
player groupchat "You released the player";
(format ['if (rolestring == "%1") then {isstunned=false;}', _civ]) call broadcast;
};

if("ziptie" call INV_GetItemAmount > 0) then{
["ziptie", -1] call INV_AddInvItem;
(format ['if (rolestring == "%1") then {isstunned=true;}', _civ]) call broadcast;
if(vehicle _civ != _civ)exitwith{player groupchat "the civ is in a vehicle!"};
if (!(_civ call ISSE_IsVictim)) exitwith {player groupchat localize "STRS_inventory_checknohandszip"};
_civ setVariable ["tf_unable_to_use_radio", true, true];
_civ setVariable ["ZipTied",true,true];
(format ["%1 playmove ""%2"";", player, "AmovPercMstpSnonWnonDnon_AinvPknlMstpSnonWnonDnon"]) call broadcast;
(format ["%1 switchmove ""%2"";", _civ, "actspercmstpsnonwrfldnon_interrogate02_forgoten"]) call broadcast;
(format ['if (rolestring == "%1") then {call fnc_ZipTieLoop;}', _civ]) call broadcast;
(format['server globalchat "%3 was zip tied by %2";if (rolestring == "%1") then {player groupchat "You have been ziptied!";}', _civ, name player, name _civ]) call broadcast;
};