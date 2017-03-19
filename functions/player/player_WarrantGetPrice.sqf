_warrant = _this select 0;
_amount = {
  if (_x select 0 == _warrant) exitWith {
    _x select 1;
  };
} forEach OL_Warrants;
if (isNil "_amount") then { 0 } else { _amount };
