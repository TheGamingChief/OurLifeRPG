_SellArray = _this select 0;
_Category = _this select 1;
_VehicleSpawn = _this select 2;

lbClear 101;

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
      _amountOwn = _x call INV_GetItemAmount;
      _price = _x call INV_getitemSellCost;
      if ((_x call INV_getitemType == "Item") && (_amountOwn > 0)) then {
        _index = lbAdd [101, format ["%1 ($%2, %3)", _x call INV_getitemName, _price, _amountOwn]];
        lbSetData [101, _index, format ['[%1, %2, %3]', str (_x), OL_ActiveShop, _VehicleSpawn]];
      };
    } forEach _SellArray;
  };
  case ("Vehicles"): {
    _SellableVehicles = [] call _NearVehicles;

    {
      _index = lbAdd [101, format ["%1 ($%2)", (typeOf _x) call INV_getitemName, (typeOf _x) call INV_getitemSellCost]];
      lbSetData [101, _index, format ['[%1, %2, %3]', str (_x), OL_ActiveShop, _VehicleSpawn]]
    } forEach _SellableVehicles;
  };
  case ("Weapons"): {
    {
      if ((_x call INV_getitemType == "Waffe") || (_x call INV_getitemType == "Magazin")) then {
        if ((player hasWeapon (_x call INV_getitemClassName)) || (_x in (magazines player))) then {
          _curThingy  = _x;
          _magsAmount = { _x == (_curThingy call INV_getitemClassName) } count (magazines player);
          _gunAmount  = { _x == (_curThingy call INV_getitemClassName) } count (weapons player);
          _index = lbAdd [101, format ["%1 ($%2 %3)", _x call INV_getitemName, _x call INV_getitemSellCost, _magsAmount]];
          lbSetData [101, _index, format ['[%1, %2, %3]', str (_x), OL_ActiveShop, _VehicleSpawn]];
        };
      };
    } forEach _SellArray;
  };
};

[] call Shops_fnc_UpdateText;
