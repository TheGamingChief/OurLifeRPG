closeDialog 0;
if(isNil "DD_LastCiv")exitWith{hint "Please select a Civilian."};
_l = createDialog 'DD_ListPC';

{
	lbAdd[1500, format["%1", _x]];
}forEach (DD_LastCiv getVariable["Licenses", []]);
