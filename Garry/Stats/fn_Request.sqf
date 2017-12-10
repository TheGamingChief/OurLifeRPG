_NameCheck = {
  if (["DROP", name player] call OL_misc_StringStartsWith)   exitWith { true };
  if (["INSERT", name player] call OL_misc_StringStartsWith) exitWith { true };
  if (["UPDATE", name player] call OL_misc_StringStartsWith) exitWith { true };
  false;
};

if (call _NameCheck) exitWith {
  server globalChat "Please removed the following words from your name to be able to player.";
  systemChat "DROP";
  systemChat "INSERT";
  systemChat "UPDATE";
};

pv_LoadStatsRequest = [player, getPlayerUID player, playerSide];
publicVariableServer "pv_LoadStatsRequest";
