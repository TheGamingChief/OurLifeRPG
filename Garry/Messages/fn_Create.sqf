if (!createDialog "UI_SendMessage") exitWith { hint "Dialog Error! (UI_SendMessage)" };

{
  lbAdd [2100, format ["%1 - %2", _x select 1, _x select 0]]
} forEach OL_PhoneContacts;
