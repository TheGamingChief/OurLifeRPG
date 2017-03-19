private["_str", "_search", "_pos", "_found", "_i", "_j"];

_str    = (_this select 0) call OL_OL_ISSE_str_StrToArr;
_search = (_this select 1) call OL_OL_ISSE_str_StrToArr;
_found  = true;
_pos    = -1;

for [{_i=0}, {_i < (((count _str)-(count _search))+1)}, {_i=_i+1}] do

	{

	_found = true;
	for [{_j=0}, {_j < (count _search)}, {_j=_j+1}] do {if (not ((_str select (_i+_j)) == (_search select _j)) ) exitWith {_found = false;};};
	if (_found) exitWith {_pos = _i;};

	};

if (_found) then {_pos} else {-1};
