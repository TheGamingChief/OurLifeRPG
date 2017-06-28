_art = _this select 0;

if (_art == "use") then {
	if (vehicle player != player) exitWith { player groupChat "You must be on foot!" };
	if (player getVariable "KOED") exitWith { player groupChat "You cannot fix trees while dead!"	};
	if !(treeavailable) exitwith {player groupChat "You cannot fix another tree yet!"};
	
	_foundTree = false;
	{
		if ((typeOf _x == "") && (damage _x > 0)) exitWith {
		    treeavailable = false;
			player groupChat "Fixing Tree!";
			player playMove "AinvPknlMstpSlayWrflDnon_medic";
			uiSleep 5;
			waitUntil{animationState player != "AinvPknlMstpSlayWrflDnon_medic"};
			_x setDamage 0;
			player groupChat "Fixed The Tree!";
			_payout = 1000;
			player groupChat format["You've been paid $%1 for fixing this tree!",_payout];
			['geld',_payout] call INV_AddInvItem;
			_foundTree = true;
			uiSleep 2;
			player groupChat "You must wait 30 Seconds to Fix another tree!";
			uiSleep 30;
			treeavailable = true;
		};
	}forEach (nearestObjects [player, [], 10]);

	if (!_foundTree) then { player groupChat "You are not near a damaged tree! You must be within 10(m) of the damaged tree!" };
};
