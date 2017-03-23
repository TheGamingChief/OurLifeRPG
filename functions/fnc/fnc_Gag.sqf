if (!(civmenuciv call OL_ISSE_UnitExists)) exitWith {player groupChat "Error! Could not find civilian."};
if (player distance civmenuciv >= 3) exitWith {hint "The person is too far away!"};
if (vehicle civmenuciv != civmenuciv) exitWith {player groupChat "The civilian is in a vehicle!"};

if (civmenuciv getVariable "Gagged") exitWith {
  civmenuciv setVariable ["Gagged", false, true];
  civmenuciv setVariable ["tf_voiceVolume", 1, true];
  format['if (rolestring == "%1") then {hint "Your gag was removed."}', civmenuciv] call OL_network_Swag;
  player groupChat "You ungagged the player.";
  ["Gag_Log", format ["%1 (%2) was ungagged by %3 (%4)", name civmenuciv, getPlayerUID civmenuciv, name player, getPlayerUID player]] call RM_fnc_LogToServer;
};

if (!(["Gag",-1] call INV_AddInvItem)) exitWith {player groupChat "You do not have any gags to gag this player!"};

civmenuciv setVariable ["Gagged", true, true];
civmenuciv setVariable ["tf_voiceVolume", 0, true];

[[player,"AmovPercMstpSnonWnonDnon_AinvPknlMstpSnonWnonDnon",1], "OL_fnc_Animate", true, true] call OL_Network_MP;
format['
  if (rolestring == "%1") then {
    [] spawn OL_events_isGagged;
    systemChat "You have been gagged by %2!";
  };
', civmenuciv, name player] call OL_network_Swag;

player groupChat "You gagged the player";
["Gag_Log", format ["%1 (%2) was Gagged by %3 (%4)", name civmenuciv, getPlayerUID civmenuciv, name player, getPlayerUID player]] call RM_fnc_LogToServer;
