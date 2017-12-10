_ret = false;

{
  if ((_this select 0) == ((_x select 0) select 0)) exitWith { _ret = true };
} forEach OL_PhoneNumberInUse;

_ret;
