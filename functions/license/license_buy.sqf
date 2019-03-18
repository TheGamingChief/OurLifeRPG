_licenseArray     = [_this select 0] call OL_license_getByName;
_licenseName      = _licenseArray select 1;
_licensePrice     = _licenseArray select 2;
_licenseWhitelist = _licenseArray select 4;
_exit             = false;

if (!(getPlayerUID player in (call compile _licenseWhitelist))) exitWith { player groupChat "You are not whitelisted for this license!" };

if ("geld" call INV_GetItemAmount < _licensePrice) then {
  if ("Debit_Card" call INV_GetItemAmount > 0) exitWith {
    if (Kontostand < _licensePrice) exitWith { _exit = true };
    Kontostand = Kontostand - _licensePrice;
  };
  _exit = true;
} else {
  ["geld", -_licensePrice] call INV_AddInvItem
};

if (_exit) exitWith { player groupChat format ["You do not have enough money to buy license: %1", _licenseArray select 0] };

OL_Licenses set [count (OL_Licenses), _licenseArray select 1];

if ((_licenseArray select 1) == "OL_License_civ_drivers") then {
  OL_DemeritPoints = 10;
  player setVariable ["OL_Has_Drivers_License", true, true]
};

player groupChat format ["You purchased license %1 for $%2", _licenseArray select 0, _licensePrice];
