_ret = nil;

{
  if ((_x select 1) == _this) then {
    _ret = _x select 0
  };
} forEach OL_LicenseArray;

_ret;
