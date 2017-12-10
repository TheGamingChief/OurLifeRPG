_TypeToUpdate = _this select 0;

switch (_TypeToUpdate) do {
  case ("ADD"): {
    ctrlSetText [1200, "OL_Textures\Garry\Phone\Phone_Keypad_1.paa"];
    ctrlEnable [1615, true];
    ctrlEnable [1616, true];
    _count = count (toArray (OL_CallerNumber));
    if (_count >= 7) exitWith { systemChat "[Phone] A phone number can only be 7 digits" };
    OL_CallerNumber = OL_CallerNumber + (str (_this select 1));
    ctrlSetText [1001, format ["%1", OL_CallerNumber]];
  };
  case ("DELETE"): {
    _count = count (toArray OL_CallerNumber);
    if (_count <= 0) exitWith {};
    if (_count <= 1) then {
      ctrlSetText [1200, "OL_Textures\Garry\Phone\Phone_Keypad.paa"];
      ctrlEnable [1615, false];
      ctrlEnable [1616, false];
    };
    _CallerNumberArray = toArray (OL_CallerNumber);
    _CallerNumberArray set [(count _CallerNumberArray) - 1, -1];
    _CallerNumberArray = _CallerNumberArray - [-1];
    OL_CallerNumber = toString _CallerNumberArray;
    ctrlSetText [1001, format ["%1", OL_CallerNumber]];
  };
};
