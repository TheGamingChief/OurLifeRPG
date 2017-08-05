_name   = _this select 0;
_return = [];

{
  if (_x select 1 == _name) then {
    _return = _return + [_x];
  };
} forEach OL_GangsArray;

if (isNil "_return") then { _return = [] };
_return;
