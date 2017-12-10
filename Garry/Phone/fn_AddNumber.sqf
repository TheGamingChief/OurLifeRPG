_Action = _this select 0;

switch (_Action) do {
  case ("NUMBER"): {
    if (!createDialog "UI_PhoneAddNum") exitWith { hint "Dialog Error! (UI_PhoneAddNum)" };
    OL_TempNumber = _this select 1;
  };
  case ("NAME"): {
    _Name = _this select 1;
    _NumberAdded = -1;

    {
      if ((_x select 1) == OL_TempNumber) exitWith { _NumberAdded = _forEachIndex };
    } forEach OL_PhoneContacts;

    if (_NumberAdded != -1) exitWith {
      systemChat "[Phone] The number you are trying to add already exists, changing name only.";
      _CurInfo = OL_PhoneContacts select _NumberAdded;
      OL_PhoneContacts set [_NumberAdded, [_Name, _CurInfo select 1]];
    };

    OL_PhoneContacts set [count OL_PhoneContacts, [_Name, OL_TempNumber]];

    closeDialog 0;
    systemChat format ["[Phone] Added number %1 with a name of %2.", OL_TempNumber, _Name];
    OL_TempNumber = nil;
  };
};
