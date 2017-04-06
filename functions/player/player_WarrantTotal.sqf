_player  = _this select 0;
_current = _player getVariable ["PlayerWarrants", []];
_amount  = 0;

{ _amount = _amount + (([_x select 0] call OL_player_WarrantGetPrice) * (_x select 1)) } forEach _current;
_amount;
