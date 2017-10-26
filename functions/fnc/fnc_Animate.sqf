_unit   = _this select 0;
_anim   = _this select 1;
_mode   = _this select 2;
_global = _this select 3;
_length = _this select 4;
_type   = switch (_mode) do {
  case 0: { "switchMove"  };
  case 1: { "playMove"    };
  case 2: { "playMoveNow" };
  default { nil           };
};

if (isNil "_type") exitWith { player globalChat "Foster broke fnc_Animate" };

if (_global) then {
  [format ["%1 %2 '%3'", _unit, _type, _anim], "OL_fnc_NoScript", true, false] call OL_network_MP;
  if (!isNil "_length") then {
    uiSleep _length;
    [format ['%1 switchMove "normal"', _unit], "OL_fnc_NoScript", true, false] call OL_network_MP;
  };
} else {
  call compile format["%1 %2 '%3'", _unit, _type, _anim];
  if (!isNil "_length") then {
    uiSleep _length;
    call compile format['%1 %2 "%3"', _unit, "switchMove", "normal"];
  };
};
