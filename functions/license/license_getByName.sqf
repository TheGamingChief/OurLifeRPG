_ret = nil;

{
  if ((_x select 1) == (_this select 0)) then {
    _ret = _x;
  };
} forEach OL_LicenseArray;

_ret;
