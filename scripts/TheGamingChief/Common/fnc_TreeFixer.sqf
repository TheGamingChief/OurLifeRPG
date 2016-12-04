_art = _this select 0;
_range = 10;
_foundTree = false;
_Tree = nil;
FixingTree = false;

if (_art == "use") then
{
	if (vehicle player != player) exitWith {
		systemChat "You must be on foot!"
	};
	if (player getVariable "KOED") exitWith {
		systemChat "You cannot fix trees while dead!";
	};
	
	{
		if ((typeOf _x == "") && (damage _x > 0)) then 
		{
			if(FixingTree)exitWith{};
			FixingTree = true;
			_Tree = _x;
			_foundTree = true;
		};
	}forEach (nearestObjects[player,[],_range]);

	if (_foundTree) then {
			player groupChat "Fixing Tree!";
			player playMove "AinvPknlMstpSlayWrflDnon_medic";
			uiSleep 5;
			waitUntil{animationState player != "AinvPknlMstpSlayWrflDnon_medic"};
			_Tree setDamage 0;
			player groupChat "Fixed The Tree!";
			FixingTree = false;
	} else {
		systemChat "You are not near a damaged tree! You must be within 10(m) of the damaged tree!";
	};

};