_player  = _this select 0;
_warrant = _this select 1;
_amount  = round(_this select 2);
_current = _player getVariable ["PlayerWarrants", []];

if (count _current == 0) exitWith {};
if (_warrant != "Remove All Warrants") then {
  _index = {
    if (_x select 0 == _warrant) exitWith {
      if (_amount > _x select 1) then { _amount = _x select 1 };
      _forEachIndex;
    }
  } forEach _current;
  if (isNil "_index" || _amount <= 0) exitWith { player groupChat "Fuck off retard" };

  if (_amount == (_current select _index) select 1) then {
    _current set [_index, -1];
    _current = _current - [-1];
  } else {
    _current set [_index, [_warrant, ((_current select _index) select 1) - _amount]];
  };
} else {
  _current = [];
};

_player setVariable ["PlayerWarrants", _current, true];
[_player, _current] call OL_player_WarrantToServer;
