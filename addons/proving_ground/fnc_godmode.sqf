
if (isNil "igodokxtt") then {igodokxtt = 0;};
if (igodokxtt==0) then
{
player addeventhandler ["hit",{player setdammage 0}];
player addeventhandler ["dammaged",{player setdammage 0}];
(vehicle player) addeventhandler ["hit",	{vehicle player setdammage 0}];
(vehicle player) addeventhandler ["dammaged",{vehicle player setdammage 0}];
(vehicle player) removeAllEventHandlers "handleDamage";
(vehicle player) addEventHandler ["handleDamage", { false }];	
(vehicle player) allowDamage false;
igodokxtt=1;
hint "GOD mode ON";
//format['server globalChat "(ADMIN)%1 Has Just Turned On God Mode";', name player] call broadcast;
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
igodokxtt=0;
hint "YOU ARE NO LONGER GOD";
//format['server globalChat "(ADMIN)%1 Has Just Turned Off God Mode";', name player] call broadcast;
sleep 0.001;
};




