
if (isNil "pg_godmode") then {pg_godmode = false;};
if (!(pg_godmode)) then
{
player addeventhandler ["hit",{player setdammage 0}];
player addeventhandler ["dammaged",{player setdammage 0}];
(vehicle player) addeventhandler ["hit",	{vehicle player setdammage 0}];
(vehicle player) addeventhandler ["dammaged",{vehicle player setdammage 0}];
(vehicle player) removeAllEventHandlers "handleDamage";
(vehicle player) addEventHandler ["handleDamage", { false }];
(vehicle player) allowDamage false;
pg_godmode = true;
hint "GOD mode ON";
//format['server globalChat "(ADMIN)%1 Has Just Turned On God Mode";', name player] call OL_network_Swag;
sleep 0.001;
}
else
{

player removeAllEventHandlers "hit";
player removeAllEventHandlers "dammaged";
(vehicle player) removeAllEventHandlers "hit";
(vehicle player) removeAllEventHandlers "dammaged";
(vehicle player) addEventHandler ["handleDamage", { true }];
(vehicle player) removeAllEventHandlers "handleDamage";
(vehicle player) allowDamage true;
pg_godmode = false;
hint "YOU ARE NO LONGER GOD";
//format['server globalChat "(ADMIN)%1 Has Just Turned Off God Mode";', name player] call OL_network_Swag;
sleep 0.001;
};
