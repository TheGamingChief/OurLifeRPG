if (dialog) then { closeDialog 0 };
switch (_this select 0) do {
  case ("KEYPAD"): {
    ["SS"] call Phone_fnc_Open;
  };
  case ("CONTACTS"): {
    if (!createDialog "UI_PhoneContacts") exitWith { hint "Dialog Error! (UI_PhoneContacts)" };

    lbAdd [1500, "My Number:"];
    lbAdd [1500, format ["%1", OL_PhoneNumber]];
    lbAdd [1500, ""];

    {
      _index = lbAdd [1500, format ["%1 - %2", _x select 0, _x select 1]];
      lbSetData [1500, _index, format ["[%1, %2]", _x select 0, _x select 1]];
    } forEach OL_PhoneContacts;
  };
  case ("RECENT"): {
    if (!createDialog "UI_PhoneRecents") exitWith { hint "Dialog Error! (UI_PhoneRecents)" };

    {
      if (_x select 1 == "MISSED") then {
        lbAdd [1500, format ["%1 - Missed", _x select 0]]
      } else {
        lbAdd [1500, format ["%1 - Answered", _x select 0]]
      };
    } forEach OL_PhoneRecents;
  };
  case ("MISSED"): {
    lbClear 1500;
    {
      if (_x select 1 == "MISSED") then {
        lbAdd [1500, format ["%1 - Missed", _x select 0]]
      };
    } forEach OL_PhoneRecents;
    if (lbSize 1500 == 0) then { lbAdd [1500, "No missed calls."] };
  };
  case ("ALL"): {
    lbClear 1500;
    {
      if (_x select 1 != "MISSED") then {
        lbAdd [1500, format ["%1 - Answered", _x select 0]]
      };
    } forEach OL_PhoneRecents;
    if (lbSize 1500 == 0) then { lbAdd [1500, "No missed calls."] };
  };
};
