_gasobject = nearestObject [player, "SmokeShellYellow"];

if (player distance _gasobject <= 15) then
	{

	if (fixinggas) exitWith {player groupChat "Someone else is already fixing the leak."};

	fixinggas = true;
	publicVariable "fixinggas";
	
	titleText ["You are fixing the gas leak...","PLAIN DOWN"]; titleFadeOut 6;
	
	player playmove "AinvPknlMstpSlayWrflDnon_medic";
	sleep 5;
	waituntil {animationstate player != "AinvPknlMstpSlayWrflDnon_medic"};
	player playmove "AinvPknlMstpSlayWrflDnon_medic";
	sleep 5;
	waituntil {animationstate player != "AinvPknlMstpSlayWrflDnon_medic"};
	player playmove "AinvPknlMstpSlayWrflDnon_medic";
	sleep 5;
	waituntil {animationstate player != "AinvPknlMstpSlayWrflDnon_medic"};
	player playmove "AinvPknlMstpSlayWrflDnon_medic";
	sleep 5;
	waituntil {animationstate player != "AinvPknlMstpSlayWrflDnon_medic"};
	
	if (!(alive player)) exitWith {fixinggas = false; publicVariable "fixinggas";};
	
	deleteVehicle _gasobject;
	deleteMarker "GasLeak";
	deleteMarker "GasLeak2";
	bnkgeld = bnkgeld + 15000;
	player groupChat "You have been paid $15,000 for fixing a gas leak! Good work!";
	player groupChat "It may take several seconds for the gas to dissipate.";
	gasIsSpawned = false;
	publicVariable "gasIsSpawned";
	fixinggas = false;
	publicVariable "fixinggas";
};