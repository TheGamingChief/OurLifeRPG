_ret = false;
{
  if (((_x select 0) select 0) == _this) exitWith { _ret = true };
} forEach OL_PhoneNumberInUse;
_ret;
