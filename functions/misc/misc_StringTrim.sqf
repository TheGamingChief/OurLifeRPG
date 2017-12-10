_String   = toArray (_this select 0);
_TrimFrom = (_this select 1) - 1;
_Start    = _this select 2;
_Return   = [];

switch (_Start) do {
  case (true): {
    for "_i" from 0 to (count _String - 1) do {
      if (_i > _TrimFrom) exitWith {};
      _Return set [count _Return, _String select _i];
    };
  };
  case (false): {
    _TrimFrom = (count _String - 1) - _TrimFrom;
    for "_i" from (count _String -1) to 0 step - 1 do {
      if (_i < _TrimFrom) exitWith {};
      _Return set [count _Return, _String select _i];
    };

    _NewReturn = [];

    for "_i" from (count _Return - 1) to 0 step - 1 do {
      _lastThing = _Return select _i;
      _NewReturn set [count _NewReturn, _lastThing];
    };

    _Return = _NewReturn;
  };
};
toString (_Return);
