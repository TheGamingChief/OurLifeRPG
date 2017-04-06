while {true} do {
	waitUntil {alive player && (vehicle player == player) && currentWeapon player == "OL_Radargun"};
	cutRsc ["OLRPG_Radargun", "PLAIN"];
	if (cursorTarget distance player < 1000 && cursorTarget isKindOf "Car" || cursorTarget isKindOf "Air") then {
		_speed = round(abs(speed cursorTarget));
		((uiNamespace getVariable "OLRPG_Radargun") displayCtrl 1000) ctrlSetText format ["%1", _speed];
	};
	uiSleep 0.5;
};
