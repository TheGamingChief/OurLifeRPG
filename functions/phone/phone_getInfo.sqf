_ret = [];

switch (_this select 0) do {
  case ("NUMBER"): {
    {
      if (((_x select 0) select 0) == (_this select 1)) exitWith { _ret = _x select 0 };
    } forEach OL_PhoneNumberInUse;
  };
  case ("PlayerID"): {
    {
      if (((_x select 0) select 1) == (_this select 1)) exitWith { _ret = _x select 0 };
    } forEach OL_PhoneNumberInUse;
  };
  case ("NAME"): {
    {
      if (((_x select 0) select 2) == (_this select 1)) exitWith { _ret = _x select 0 };
    } forEach OL_PhoneNumberInUse;
  };
};

_ret;
// [Number<string>, PlayerID<string>, name<string>]
