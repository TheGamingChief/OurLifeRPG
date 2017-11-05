[player, [serverTime, serverTime + 600, [_this select 0, _this select 1, _this select 2], [rolestring, name player], "VALID"]] call OL_player_BoloToServer;

[[], "Server_bolos_Request", false, true] call OL_network_MP;

format ['if (iscop) then { player sideChat "[POLICE NOTIFICATION] %1 Has updated the bolos!"};', player getVariable "RealName"] call OL_network_Swag;
["Bolo_Log", format ["Officer %1 (%2) has submitted a bolo: Vehicle: %3 - Reason: %4 - Last Seen: %5 - Start Time: %6 - End Time: %7", PlayerName, getPlayerUID player, _this select 0, _this select 1, _this select 2, [serverTime / 60 / 60] call BIS_fnc_timeToString, [(serverTime + 600) / 60 / 60] call BIS_fnc_timeToString]] call RM_fnc_LogToServer;
