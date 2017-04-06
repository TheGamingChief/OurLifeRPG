_return = [];
if (!isMultiplayer) exitWith {};

{
	if (!isNull _x && !(_x in coparray)) then {
		_return set[count(_return), _x];
	};
} forEach playerarray;
_return;
