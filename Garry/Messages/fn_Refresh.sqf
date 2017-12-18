if (!dialog) exitWith {};

lbClear 1500;
lbClear 1501;

{
  _index = lbAdd [1500, format ["%1 - %2", _x select 5, _x select 2]];
  lbSetData [1500, _index, format ["[%1, %2, %3]", _x select 0, str (_x select 4), str (OL_PhoneNumber)]];
} forEach OL_Messages;

_display = (findDisplay 69420) displayCtrl 1100;
_display ctrlSetStructuredText parseText "";

if (lbSize 1500 == 0) then {
  lbAdd [1500, "No Messages To Display"];
  ctrlEnable [1601, false];
  ctrlEnable [1600, false];
};

lbSetCurSel [1500, 0];
