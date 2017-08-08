_fireobject = nearestObject [player, "HeliHEmpty"];
_player 		= player;

if ((_fireobject getVariable "isonfire") == 1) then {
	if (fixingfire) 				 exitWith { player groupChat "Someone else is already extinguishing the fire." };
  if (!(call INV_isArmed)) exitWith { player groupChat "You need a Fire Hose to put out this fire!" };

	fixingfire = true;
	publicVariable "fixingfire";

	titleText ["You are extinguishing the fire...", "PLAIN DOWN"];
	titleFadeOut 6;

	[_player, "firehose", 50] call CBA_fnc_globalSay3d;
	uiSleep 30;

	if (!alive player) exitWith {
		fixingfire = false;
		publicVariable "fixingfire";
	};

	deleteVehicle _fireobject;
	deleteMarker "Fire";
	deleteMarker "Fire2";
	Kontostand = Kontostand + 15000;
	player groupChat "You have been paid $15,000 for putting out a fire! Good work!";
	fireIsSpawned = false;
	publicVariable "fireIsSpawned";
	fixingfire = false;
	publicVariable "fixingfire";
};
