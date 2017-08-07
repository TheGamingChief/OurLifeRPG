_arr = _this select 0;
_return = [];

if (typeName _arr != "ARRAY") exitWith { hint "Expected Array! (PM Foster)"; _return; };
if ((count _arr != 2) || (count (_arr select 0) != count (_arr select 1))) exitWith { diag_log format["ArrayCargoCombiner Error: %1", _arr]; _return; };

_arr1 = _arr select 0;
_arr2 = _arr select 1;

if (count _arr1 > 0) then {
  for [{_i = 0}, {_i < count _arr1}, {_i = _i + 1}] do {
    _return set [_i, [_arr1 select _i]];
  };
};

if (count _arr2 > 0) then {
  for [{_k = 0}, {_k < count _arr2}, {_k = _k + 1}] do {
    _return set [_k, [(_return select _k) select 0, _arr2 select _k]];
  };
};

_return;
