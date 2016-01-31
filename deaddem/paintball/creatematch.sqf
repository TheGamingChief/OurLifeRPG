titleText ["Creating Paintball Match...", "BLACK"];
sleep 1;
titleText ["Creating Paintball Match (Positioning Players)","BLACK"];
if(player in D_PB_TeamRed) then{
player setPos position pbtrspawn;
};
if(player in D_PB_TeamBlue) then {
	player setPos position pbtbspawn;
};

sleep 1.5; // Sleeps are used because if we rush it. Someone could be left out if thye have a bad PC.
titleText ["Creating Paintball Match (Sorting Weapons)","BLACK"];
D_PB_PrimaryWeapon = primaryWeapon player;
D_PB_Magazines = magazines player;
D_PB_Secondary = secondaryWeapon player;
	removeAllWeapons player;
	player addWeapon "cal68_invert_mini_dye";
	player addMagazine "cal68_100SP2";
	player addMagazine "cal68_100SP2";
	player addMagazine "cal68_100SP2";
	player addMagazine "cal68_100SP2";
	player addMagazine "cal68_100SP2";
	player addMagazine "cal68_100SP2";
	player addMagazine "cal68_100SP2";
	player addMagazine "cal68_100SP2";
sleep 2;
D_PB_InSession = true;
[] execVM "deaddem\paintball\pb_loop.sqf";
sleep 1;
titleText ["Paintball Match has been set up. The Wall will be removed in 30secs.","PLAIN DOWN"];
sleep 30;
deleteVehicle pbspawnbarrierb;
deleteVehicle pbspawnbarrierr;
titleText ["Match has Begun! You have 5 Minutes of play time!", "PLAIN DOWN"];