//hint "Started";
waitUntil {(getPlayerUID player) != ""};
_UID = getPlayerUID player;

rankPlayer="";
if (_UID in SwagDevs)then{rankPlayer="Admin";};
if(rankPlayer != "") then {isStaff = true;};
if(isStaff) then {execVM "gamerz\menuV2.sqf";};
if(isStaff) then 
{	
	player globalchat format["Loaded in as %1", rankPlayer];
};



//player globalChat format["Loaded in as %1", rankPlayer];