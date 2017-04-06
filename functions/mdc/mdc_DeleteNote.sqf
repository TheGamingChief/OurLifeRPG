_index = _this select 0;
if(isNil "DD_LastCiv")exitWith{};

_notes = DD_LastCiv getVariable ["Notes", []];
_notes set[_index, -1];
_notes =_notes - [-1];

DD_LastCiv setVariable["Notes", _notes, true];
[(call DD_MDC_OnlineCivilians) find DD_LastCiv] call DD_MDC_RunSearch;
