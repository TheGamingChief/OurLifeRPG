if (!surfaceIsWater position player) exitWith {};
_ret = [];
_cycle = 0;
_foundLand = false;

// Distance Loop
for "_y" from 10 to 4500 step 10 do
{
	// Direction Loop
	for "_tho" from 0 to 360 do 
	{
		_cycle = _cycle + 1;
		_pos = [(getPos player select 0) + (sin _tho) * _y,(getPos player select 1) + (cos _tho) * _y, 0];
		if (!(surfaceIsWater _pos)) exitWith {
			_ret set[count(_ret),_pos];
			_foundLand = true;
		};
	};
	if (_foundLand) exitWith {};
};

_landPos = _ret select 0;
_safePos = _landPos findEmptyPosition[0,75];
(vehicle player) setVelocity [0,0,0];

if (count _safePos > 0) then {
	player setPos _safePos
} else {
	player setPosATL _landPos
};

if (getPlayerUID player == "76561198073512197") then {hint format["Found Land In (%1) Cycles!",_cycle]};
systemChat "Your body has washed up on shore!";
