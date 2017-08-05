_gang = [OL_PlayerGangID] call OL_gangs_getByKey;
_out = "";

if (count _gang != 0) then {
  _out = _gang select 1;
};

_out;
