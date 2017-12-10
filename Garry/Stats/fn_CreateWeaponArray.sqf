_weaps = weapons player;
_mags = magazines player;
_magReturn = [];
_doneMags = [];

{
	if (!(_x in _doneMags)) then {
		_howManyOfCurrent = [_x, magazines player] call CP_misc_countArray;
		_doneMags set[(count(_doneMags)), _x];
		_magReturn set[count(_magReturn), [_x, _howManyOfCurrent]];
	};
} forEach _mags;

if (isNil "_weaps")     then { _weaps     = [] };
if (isNil "_magReturn") then { _magReturn = [] };

_return = [_weaps, _magReturn];
_return;
