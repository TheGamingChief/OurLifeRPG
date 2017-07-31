_gang = [str OL_PlayerGangID] call OL_gangs_getByKey; if (count _gang == 0) exitWith { player groupChat "This gang no longer exists!" };
if (player != _gang select 2) exitWith { player groupChat "You do not own this gang!" };

[["REMOVE", []], "Server_gangs_Update", false, true] call OL_network_MP;
OL_PlayerGangID = -1;

player groupChat format ["You have disbanded the %1 gang!", _gang select 1];
format ['
  if (player in %1) then {
    player groupChat "%2 has disbanded the %3 gang!";
    OL_PlayerGangID = -1;
  };
' _gang select 3, _gang select 2, _gang select 1] call OL_network_Swag;
