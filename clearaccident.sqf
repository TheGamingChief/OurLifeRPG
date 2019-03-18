_wreckobject = nearestObject [player, "HeliHEmpty"];

if (_wreckobject getVariable "iswrecked" == 1) then
	{
	if (fixingwreck) exitWith {player groupChat "Someone else is already clearing the accident."};

	fixingwreck = true;
	publicVariable "fixingwreck";

	titleText ["You are clearing the accident...","PLAIN DOWN"]; titleFadeOut 6;

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


	if ((getDammage player) == 1) exitWith {fixingwreck = false; publicVariable "fixingwreck";};
	if (!(alive player)) exitWith {fixingwreck = false; publicVariable "fixingwreck";};

	_wrecks = nearestObjects [player, ["LADAWreck","SKODAWreck","datsun02Wreck","UralWreck","UAZWreck"], 55];
	{deleteVehicle _x} forEach _wrecks;

	deleteVehicle _wreckobject;
	deleteMarker "CarWreck";
	deleteMarker "CarWreck2";
	Kontostand = Kontostand + 15000;
	player groupChat "You have been paid $15,000 for clearing an accident! Good work!";
	wreckIsSpawned = false;
	publicVariable "wreckIsSpawned";
	fixingwreck = false;
	publicVariable "fixingwreck";
};
