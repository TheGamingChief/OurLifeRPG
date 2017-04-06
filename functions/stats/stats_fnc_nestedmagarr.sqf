_mags = magazines player;
_giveReturn = [];
_doneMags = [];

{
	if (!(_x in _doneMags)) then {
		_howManyOfCurrent = [_x, magazines player] call OL_Stats_fnc_CountArray;
		_doneMags set[(count(_doneMags)), _x];
		_giveReturn set[count(_giveReturn), [_x, _howManyOfCurrent]];
	};
}forEach _mags;

_giveReturn;
