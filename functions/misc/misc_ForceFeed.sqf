if (player distance civmenuciv >= 3) exitWith {hint "The person is too far away!"};

if (["Donut", -1] call INV_AddInvItem) then {
  format ['if (rolestring == "%2") then {
    INV_hunger = abs( INV_hunger - 10 );
    systemChat "You have been force fed 1 Donut by %1";
  }', name player, civmenuciv] call swag;
} else {
  player groupChat "You do not have enough donuts to force feed this person!"
};
