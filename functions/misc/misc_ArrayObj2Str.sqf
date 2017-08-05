_return = [];
{
  _return = _return + [str _x];
} forEach (_this select 0);

if (isNil "_return") then { _return = [] };
_return;
