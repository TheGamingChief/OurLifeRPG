_note = _this select 0;

if(isNil "DD_LastCiv")exitWith{
	hint "Please select a civilian.";
};	




_notes = DD_LastCiv getVariable ["Notes", []];
_notes set[count(_notes), [_note, name player]];

DD_LastCiv setVariable ["Notes", _notes, true];

[(civarray find DD_LastCiv)] call DD_MDC_RunSearch;
hint "Note added successfully!";

closeDialog 0;
