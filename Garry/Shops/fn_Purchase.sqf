_Data = call compile (_this select 0);
_Item = _Data select 0;
_ActiveShop = _Data select 1;
_VehicleSpawn = _Data select 2;
_Amount = (_this select 1) call OL_ISSE_StrToInt;
_CantAfford = false;
_Stop = false;

if (_Amount < 0) exitWith { player groupChat "You can't buy a negative of something! Try a positive number!" };

_UseDebitCard = {
  if ("Debit_Card" call INV_GetItemAmount < 1) exitWith { false };
  true;
};

_license  = _Item call INV_getitemLicense;
_license1 = _Item call INV_getitemLicense2;

if ((!(_license call OL_license_Owns)) && isciv) exitWith { player groupChat format ["You need license %1 to buy this item.", (_Item call INV_getitemLicense) call OL_license_name] };
if ((!(_license1 call OL_license_Owns)) && iscop) exitWith { player groupChat format ["You need license %1 to buy this item.", (_Item call INV_getitemLicense2) call OL_license_name] };

if ((_Item call INV_getitemType) == "Fahrzeug") then {
  _count = count (nearestObjects [getPosATL _VehicleSpawn, ["LandVehicle", "Ship", "Air"], 5]);

  if (_count > 0) exitWith {
    player groupChat "Unable to purchase vehicle due to a vehicle blocking the spawn.";
    _Stop = true;
  };
};

if (_Stop) exitWith {};

if ((_Item call INV_getitemType) == "Item") then {
  _Weight = _Amount * (_Item call INV_getitemTypeKg);
  _OwnWeight = (call INV_GetOwnWeight) + _Weight;

  if (_OwnWeight > INV_Weight) exitWith {
    player groupChat "Max weight reached!";
    _Stop = true;
  };
};

if (_Stop) exitWith {};

_Cost = _Item call INV_getitemCostWithTax;
_Tax = _Cost - (_Item call INV_getitemBuyCost);
_geld = "geld" call INV_GetItemAmount;

if (_Item == "RHIB") then {
  if ((iscop) && (getPlayerUID player in SWAT_id)) then {
    _Cost = 75000;
  };
};

if (_geld >= (_Amount * (_Cost))) then {
  ["geld", -(_Amount * (_Cost))] call INV_AddInvItem;
} else {
  if (call _UseDebitCard) then {
    if (Kontostand >= (_Amount * (_Cost))) then {
      Kontostand = Kontostand - (_Amount * (_Cost));
    } else {
      _CantAfford = true;
    };
  } else {
    _CantAfford = true;
  };
};

if (_CantAfford) exitWith { player groupChat "You do not have enough money to purchase this!" };

switch (_Item call INV_getitemType) do {
  case ("Item"): {
    [_Item, _Amount] call INV_AddInvItem;
  };
  case ("Fahrzeug"): {
    [_Item, _VehicleSpawn] call INV_CreateVehicle;
  };
  case ("Equipment"): {
    [_Item, _ActiveShop, _Amount] call Shops_fnc_AddWeapon;
  };
  case ("Waffe"): {
    [_Item, _ActiveShop, _Amount] call Shops_fnc_AddWeapon;
  };
  case ("Magazin"): {
    [_Item, _ActiveShop, _Amount] call Shops_fnc_AddMagazine;
  };
};

["Buy_Log", format ["%1 (%2) has purchased %3 %4 at %5 for $%6", PlayerName, getPlayerUID player, _Amount, _Item call INV_getitemName, mapGridPosition player, _Amount * _Cost]] call RM_fnc_LogToServer;
player groupChat format ["You have purchased %1 %2 for $%3", _Amount, _Item call INV_getitemName, _Amount * _Cost];
INV_SteuernGezahlt = INV_SteuernGezahlt + _Tax;

[_this select 2, _this select 3, _this select 4] call Shops_fnc_RefreshMenu;
