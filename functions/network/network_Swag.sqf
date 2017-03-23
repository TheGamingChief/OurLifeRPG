if ((TypeName _this) == "STRING") then {
  call compile format['%1 = ''%2'';', ISSE_pub_varName, _this];
  publicVariable ISSE_pub_varName;
  call compile _this;
} else {
  hint "Public Error: expecting String.";
};
