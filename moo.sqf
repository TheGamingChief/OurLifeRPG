/*
Author: Speedy
Made For: Our Life RPG
Description: ANTI HACK SCRIPT. WELL BASICLY IT FKS UP THE HACKER
*/

_glClassesNames = ["carpetbomb_menu","playerhijack_menu","chernorus_life_menu","zargabad_menu","joker_menu","endgame_menu",
"AlexAdmin_menu","lblmsgtimeout","Alexander_menu","artillery_barrageWF","AnthonyMcle","ChernoRape_menu","MightyGerk_menu","SpawnSoldier_menu",
"AtackPlanes","GrkTeleport","crpbmb_menu","Delete_menu","collection_123456","Verbal_menu","playerhijack_menu","lblspvehicle",
"gerklusban","btnCarpetOk","UntiFreezee","lblhight","ChernoRape_menu","undetected_1","ultimate_123","btnbebanus","Ribeliona"];

_temp = ["123456"];
if ( !((getPlayerUID player) in _temp) ) then
{
	for "_i" from 0 to ((count _glClassesNames) - 1) do
	{
		_curClassName = (_glClassesNames select _i);
		if (isClass (configFile >> _curClassName)) exitWith
		{
			waitUntil 
			haxorname = name player;
			publicVariable "haxorname";
			extradeadtime = 100000;
			disableuserinput true;
			format['server globalChat "HACK ALERT: %1 IS USING %2, NOTIFY STAFF ASAP!!!";', haxorname, _curClassName] call broadcast;
			sleep 30;
			player setPos [-6269.0903,552.92957,-6458.1816];
			boom = "Bo_GBU12_LGB" createVehicle (position player);
			boom attachTo [player,[0,-2,3]];
			sleep 5;
			detach boom;
			sleep 10;
		};
	};
};
