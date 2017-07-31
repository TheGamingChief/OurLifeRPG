_index = [call compile (_this select 0), OL_GangsArray] call CP_misc_WhereYouAtTho;
if (_index == -1) exitWith { _gang = []; _gang; };
_gang = OL_GangsArray select _index;

_gang;
