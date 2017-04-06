_art = _this select 0;

if (_art == "use") then {
	if (vehicle player != player) exitWith { systemChat "You must be on foot!" };
	if (player getVariable "KOED") exitWith { systemChat "You cannot fix trees while dead!"	};

	_foundTree = false;
	{
		if ((typeOf _x == "") && (damage _x > 0)) exitWith {
			player groupChat "Fixing Tree!";
			player playMove "AinvPknlMstpSlayWrflDnon_medic";
			uiSleep 5;
			waitUntil{animationState player != "AinvPknlMstpSlayWrflDnon_medic"};
			_x setDamage 0;
			player groupChat "Fixed The Tree!";
			_foundTree = true;
		};
	}forEach (nearestObjects[player, [], 10]);

	if (!_foundTree) then { systemChat "You are not near a damaged tree! You must be within 10(m) of the damaged tree!" };
};
