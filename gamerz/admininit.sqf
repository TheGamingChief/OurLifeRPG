waitUntil {(getPlayerUID player) != ""};
_UID = getPlayerUID player;

rankPlayer = "";
isStaff = false;

if (_UID in SwagDevs) then {
	rankPlayer = "Admin";
	isStaff = true;
	execVM "gamerz\menuV2.sqf";
	player globalchat "Loaded in as Admin";
};
