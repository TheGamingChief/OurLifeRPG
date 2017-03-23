_gangName = _this select 0;

if (!alive player || player getVariable "KOED") exitWith { player groupchat "You cannot do this action while dead." };
if ("geld" call INV_GetItemAmount < OL_GangCost) exitWith { player groupChat "You do not have enough money on you to create a gang!" };
if (toUpper(_gangName) == "NONE") exitWith { player groupChat "You cannot create a gang with this name!" };
if ((player getVariable ["OL_Gang", "None"]) != "None") exitWith { player groupChat "You are currently in a gang and cannot create one!" };
if (_gangName call OL_gangs_Exists) exitWith { player groupChat "There is already a gang with this name." };

player groupChat "Creating gang, please wait...";

OL_Gangs set [(count OL_Gangs), [_gangName, player, [player], true]];
publicVariable "OL_Gangs";

player setVariable ["OL_Gang", _gangName, true];
player setVariable ["OL_GangLeader", true, true];
["geld", -(OL_GangCost)] call INV_AddInvItem;

player groupChat format ["Created a gang with name (%1)", _gangName];
