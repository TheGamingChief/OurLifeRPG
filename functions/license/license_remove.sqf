{
  if ((_x select 1) == (_this select 0)) then {
    OL_Licenses set [_forEachIndex, -1];
    OL_Licenses = OL_Licenses - [-1];
  };
} forEach OL_Licenses;
