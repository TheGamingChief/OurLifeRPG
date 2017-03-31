if ((typeName (_this select 0)) == "ARRAY") then {
  {
    call compile format ["%1", _x]
  } forEach (_this select 0);
} else {
  call compile format ["%1", _this select 0]
};
