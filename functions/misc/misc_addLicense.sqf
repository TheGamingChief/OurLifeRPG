_licArray  = INV_Lizenzen select (_this select 0);
_licName   = _licarray select 0;
_licDname  = _licarray select 2;
_licCost   = _licarray select 3;
_condition = _licarray select 4;


_isAllowedLicense = switch (typeName _condition)  do {
  case "SIDE": {
    if (playerSide != _condition) then { false } else { true };
  };
  case "STRING": {
    if (!(PlayerID in (call compile _condition))) then { false } else { true };
  };
};

if (_isAllowedLicense) then {
  if (_licName call INV_HasLicense) exitWith { player groupChat "You already have that license." };
  [_licCost, _licName, "License", 1, _licCost, ((_this select 3) select 0)] execVM "PurchaseItems.sqf";
} else {
  player groupChat "You are not allowed to purchase this license.";
};
