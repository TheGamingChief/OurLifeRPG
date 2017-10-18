[player, [serverTime, serverTime + 600, [_this select 0, _this select 1, _this select 2], [rolestring, name player], "VALID"]] call OL_player_BoloToServer;

[] call OL_misc_requestBolos;

format ['if (iscop) then { player sideChat "[POLICE NOTIFICATION] %1 Has updated the bolos!"};', player getVariable "RealName"] call OL_network_Swag;
