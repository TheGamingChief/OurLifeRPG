_id = _this select 0;
if (typeName _id == "STRING") then { _id = call compile _id };

_index = [_id, OL_GangsArray] call CP_misc_WhereYouAtTho;

if (_index == -1) exitWith { _gang = []; _gang; };
_gang = OL_GangsArray select _index;

_gang;
