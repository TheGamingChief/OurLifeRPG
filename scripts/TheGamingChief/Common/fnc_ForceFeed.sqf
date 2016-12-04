_civ = civmenuciv;
if (player distance _civ >= 3) exitWith {hint "The person is too far away!"};

if("Donut" call INV_GetItemAmount > 0) then{
["Donut", -1] call INV_AddInvItem;
(format ['if (rolestring == "%2") then {INV_hunger = INV_hunger -10; systemChat "You have been force fed 1 Donut by %1"}', name player, _civ]) call broadcast;
};