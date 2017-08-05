_vcl = _this select 0;

_return = switch (true) do {
  case (_vcl isKindOf "Air"):         { "Air"         };
  case (_vcl isKindOf "Ship"):        { "Ship"        };
  case (_vcl isKindOf "LandVehicle"): { "LandVehicle" };
  default { "LandVehicle" };
};

_return;
