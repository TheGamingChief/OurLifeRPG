_outArray = [];
_found = false;

{
  if (not(_found)) then {
    if (((_x select 0) == (_this select 0)) and ((_x select 1) == (_this select 1))) then {
      _found = true; //Should trigger once (skip item)
    } else {
      _outArray = _outArray + [_x];
    };
  } else {
    _outArray = _outArray + [_x];
  };
} foreach (_this select 2);

_outArray;
