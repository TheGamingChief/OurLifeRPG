if ((_this select 1) == "") exitWith { false };

_toFind = toArray (_this select 0);
_string = toArray (_this select 1);
_return = true;

if (count _string < count _toFind) exitWith { false };

for "_i" from 0 to (count _toFind - 1) do {
  _curChar = _string select _i;
  _curFind = _toFind select _i;

  if (_curChar != _curFind) then { _return = false };
};

_return;
