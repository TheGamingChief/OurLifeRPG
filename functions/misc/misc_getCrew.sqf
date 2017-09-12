_vcl = _this select 0;
_return = [];
_crew = crew _vcl;

{
  if (alive _x) then { _return = _return + [_x] };
} forEach _crew;

_return;
