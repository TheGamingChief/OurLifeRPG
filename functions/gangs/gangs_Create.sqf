_gangName  = _this select 0;

if ((player getVariable ["OL_Gang", "None"]) != "None") exitWith { player groupChat "You are currently in a gang and cannot create one." };
if (_gangName call OL_gangs_Exists) exitWith { player groupChat "A gang already exists with that name!" };
if ("geld" call INV_GetItemAmount <= OL_GangCost) exitWith { player groupChat "You do not have enough money to create a gang." };

if ((toUpper(_gangName)) in OL_BlacklistedGangNames) exitWith {
  player groupChat format["The name (%1) are blacklisted from being used as gang names.", _gangName]
};

if ((_gangName call OL_ISSE_str_Length) > 30 || (_gangName call OL_ISSE_str_Length) < 3) exitWith { player groupChat "The entered text is either too long or too short." };

OL_GangsArray set [count(OL_GangsArray), [[_gangName, [name player], true]]];
publicVariable "OL_GangsArray";

player groupChat format["You have created a new gang called %1.", _gangName];
