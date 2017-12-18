_this = call compile (_this select 0);
_BuyArray = _this select 0;
_SellArray = _this select 1;
_VehicleSpawn = _this select 2;

_HasItems = false;
_HasWeapons = false;
_HasVehicles = false;

if (!createDialog "UI_ShopCatList") exitWith { hint "Dialog Error!" };

if (count _BuyArray != 0) then {
  {
    if (_HasItems && _HasWeapons && _HasVehicles) exitWith {};
    switch (_x call INV_getitemType) do {
      case ("Item"):     { _HasItems    = true };
      case ("Fahrzeug"): { _HasVehicles = true };
      case ("Waffe"):    { _HasWeapons  = true };
      case ("Magazin"):  { _HasWeapons  = true };
    };
  } forEach _BuyArray;
} else {
  // Fix for Oil/Whale/Diamonds.
  {
    if (_HasItems && _HasWeapons && _HasVehicles) exitWith {};
    switch (_x call INV_getitemType) do {
      case ("Item"):     { _HasItems    = true };
      case ("Fahrzeug"): { _HasVehicles = true };
      case ("Waffe"):    { _HasWeapons  = true };
      case ("Magazin"):  { _HasWeapons  = true };
    };
  } forEach _SellArray;
};

if (_HasItems)    then { lbAdd [1500, "Items"]    };
if (_HasWeapons)  then { lbAdd [1500, "Weapons"]  };
if (_HasVehicles) then { lbAdd [1500, "Vehicles"] };

OL_ActiveShopInfo = [_BuyArray, _SellArray, _VehicleSpawn];

lbSetCurSel [1500, 0];
buttonSetAction [1600, format ['[lbText [1500, lbCurSel 1500], [%1, %2, %3]] call Shops_fnc_DisplayShop;', _BuyArray, _SellArray, _VehicleSpawn]];
