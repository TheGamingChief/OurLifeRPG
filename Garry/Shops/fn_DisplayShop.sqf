_Category = _this select 0;
_BuyArray = (_this select 1) select 0;
_SellArray = (_this select 1) select 1;
_VehicleSpawn = (_this select 1) select 2;

if (!createDialog "UI_ShopMenu") exitWith { hint "Dialog Error!" };

_HasWeapon = {
  if (player hasWeapon _this) exitWith { true };
  false;
};

_inSellArray = {
  _return = false;
  if (_this == "ATV_US_EP1") exitWith { true };
  {
    if (_this == _x) exitWith { _return = true };
  } forEach _SellArray;
  _return;
};


_NearVehicles = {
  _ret = [];
  {
    if ((typeOf _x) call INV_getitemType == "Fahrzeug") then {
      if (_x in INV_VehicleArray) then {
        if ((typeOf _x) call _inSellArray) then {
          _ret set [count _ret, _x]
        };
      };
    };
  } forEach (nearestObjects [getPosATL player, ["LandVehicle", "Air", "Ship"], 50]);
  _ret;
};

switch (_Category) do {
  case ("Items"): {
    {
      _weight = _x call INV_getitemTypeKg;
      if (_x call INV_getitemType == "Item") then {
        _index = lbAdd [1, format ["%1 ($%2, %3kg)", _x call INV_getitemName, _x call INV_getitemCostWithTax, _weight]];
        lbSetData [1, _index, format ['[%1, %2]', str (_x), OL_ActiveShop]];
      };
    } forEach _BuyArray;

    {
      _amountOwn = _x call INV_GetItemAmount;
      _price = _x call INV_getitemSellCost;
      if ((_x call INV_getitemType == "Item") && (_amountOwn > 0)) then {
        _index = lbAdd [101, format ["%1 ($%2, %3)", _x call INV_getitemName, _price, _amountOwn]];
        lbSetData [101, _index, format ['[%1, %2, %3]', str (_x), OL_ActiveShop, _VehicleSpawn]];
      };
    } forEach _SellArray;
  };
  case ("Vehicles"): {
    {
      if (_x call INV_getitemType == "Fahrzeug") then {
        _index = lbAdd [1, format ["%1 ($%2)", _x call INV_getitemName, _x call INV_getitemCostWithTax]];
        lbSetData [1, _index, format ['[%1, %2, %3]', str (_x), OL_ActiveShop, _VehicleSpawn]];
        if (_x == "RHIB") then {
          if ((iscop) && (getPlayerUID player in SWAT_id)) then {
            lbDelete [1,0];
            _index = lbAdd [1, format ["%1 ($%2)", "RHIB (S.W.A.T.)", (75000 call OL_ISSE_str_IntToStr)]];
            lbSetData [1, _index, format ['[%1, %2, %3]', str (_x), OL_ActiveShop, _VehicleSpawn]];
          };
        };
      };
    } forEach _BuyArray;


    _SellableVehicles = [] call _NearVehicles;

    {
      _index = lbAdd [101, format ["%1 ($%2)", (typeOf _x) call INV_getitemName, (typeOf _x) call INV_getitemSellCost]];
      lbSetData [101, _index, format ['[%1, %2, %3]', str (_x), OL_ActiveShop, _VehicleSpawn]]
    } forEach _SellableVehicles;
  };
  case ("Weapons"): {
    {
      if ((_x call INV_getitemType == "Waffe") || (_x call INV_getitemType == "Magazin")) then {
        _index = lbAdd [1, format ["%1 ($%2)", _x call INV_getitemName, _x call INV_getitemCostWithTax]];
        lbSetData [1, _index, format ['[%1, %2, %3]', str (_x), OL_ActiveShop, _VehicleSpawn]];
      };
    } forEach _BuyArray;

    {
      if ((_x call INV_getitemType == "Waffe") || (_x call INV_getitemType == "Magazin")) then {
        if ((player hasWeapon (_x call INV_getitemClassName)) || (_x in (magazines player))) then {
          _curThingy = _x;
          _magsAmount = { _x == (_curThingy call INV_getitemClassName) } count (magazines player);
          _index = lbAdd [101, format ["%1 ($%2 %3)", _x call INV_getitemName, _x call INV_getitemSellCost, _magsAmount]];
          lbSetData [101, _index, format ['[%1, %2, %3]', str (_x), OL_ActiveShop, _VehicleSpawn]];
        };
      };
    } forEach _SellArray;
  };
};

if (lbSize 1 == 0) then {
  ctrlEnable [3, false];
  ctrlSetText [3, "\"];
};
if (lbSize 101 != 0) then { lbSetCurSel [101, 0] };
lbSetCurSel [1, 0];
buttonSetAction [3, format ["[lbData [1, lbCurSel 1], ctrlText 2, %1, %2, %3] call Shops_fnc_Purchase;", _SellArray, str (_Category), _VehicleSpawn]];
buttonSetAction [103, format ["[lbData [101, lbCurSel 101], ctrlText 102, %1, %2, %3] spawn Shops_fnc_Sell;", _SellArray, str (_Category), _VehicleSpawn]];
[] call Shops_fnc_UpdateText;
