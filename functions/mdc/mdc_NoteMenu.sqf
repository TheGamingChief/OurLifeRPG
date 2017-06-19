if(isNil "DD_LastCiv")exitWith{};

_civWarrants = DD_LastCiv getVariable["Warrants", []];
_civNotes = DD_LastCiv getVariable["Notes", []];

_l = createDialog "DD_ListPC";
{
	lbAdd[1500, format["%1: %2", _X select 1, _X select 0]];
}foReach _civNotes;

buttonSetAction[1600, "[lbCurSel 1500] call DD_MDC_DeleteNote;"];
ctrlSetText[1600, "Delete Note"];