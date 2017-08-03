_arr  = toArray (_this select 0);
_find = toArray (_this select 1);
_len = count _find;

_located = false;
{
  for "_i" from 0 to (_len - 1) do {
	if ((_find select _i) != (_arr select (_forEachIndex + _i))) exitWith { _located = false };
	_located = true;
  };

  if (_located) exitWith {};
} forEach _arr;
_located;

//["I love cats.", "cat"] call CP_misc_StringSearch;
