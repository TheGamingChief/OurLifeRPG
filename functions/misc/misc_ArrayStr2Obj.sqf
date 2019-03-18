_return = [];
{
  _var = call compile _x;
  if (!isNil "_var") then {
    _return = _return + [_var];
  };
} forEach (_this select 0);

if (isNil "_return") then { _return = [] };
_return;
