if (DD_LastCiv in playableUnits) exitWith {
  [DD_LastCiv, "Remove All Warrants", 0] call OL_player_WarrantRemove;

  format ["
  if (iscop) then {
    player sideChat ""(%1) %2 has removed all of (%3) %4's Warrants!"";
  };

  if (player == %3) then {
    player sideChat ""Your Warrants have been removed by an Officer!"";
  };
  ", player, player getVariable "RealName", DD_LastCiv, name DD_LastCiv] call OL_network_Swag;

    closeDialog 0;
};
