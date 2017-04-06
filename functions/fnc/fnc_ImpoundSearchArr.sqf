_outArray = [];

{
  if ((_x select 0) == (_this select 0)) then {
    _outArray = _outArray + [_x select 1];
  };
} foreach (_this select 1);

_outArray;
