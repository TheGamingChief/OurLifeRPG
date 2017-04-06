switch ((_this select 3) select 0) do {
  case (true): {
    player setVariable [_this select 0, _this select 1, (_this select 3) select 1];
  };
  case (false): {
    if ((_this select 3) select 1) then {
      call compile format ['%1 = %2; publicVariable "%1";', _this select 0, _this select 1];
    } else {
      call compile format ['%1 = %2;', _this select 0, _this select 1];
    };
  };
};
