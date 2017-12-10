if (!createDialog "UI_MessageList") exitWith { hint "Dialog Error (UI_MessageList)" };

{
  _index = lbAdd [1500, format ["%1 - %2", _x select 5, _x select 2]];
  lbSetData [1500, _index, format ["[%1, %2, %3]", _x select 0, str (_x select 4), str (OL_PhoneNumber)]];
} forEach OL_Messages;

if (lbSize 1500 == 0) then {
  ctrlEnable [1601, false];
  ctrlEnable [1600, false];
};
