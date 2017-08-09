_warrantToRemove = _this select 0;
if(isNil "DD_LastCiv")exitWith{};

[DD_LastCiv, _warrantToRemove, 1] call OL_player_WarrantRemove;

format["
  if (iscop) then {
    player sideChat ""(%1) %2 has removed a '%5' Warrant from (%3) %4!"";
  };
", player, PlayerName, DD_LastCiv, DD_LastCiv getVariable ["RealName", "Error: No Unit"], _warrantToRemove] call OL_network_Swag;

hint format["Removed Warrant from %1", DD_LastCiv];
closeDialog 0;
