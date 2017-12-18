_Data   = call compile (_this select 0);
_Item   = _Data select 0;
_Shop   = _Data select 1;
_Amount = (_this select 1) call OL_ISSE_StrToInt;;
_Stop   = false;

if (isNil "_Item") exitWith {};

if (typeName _Item == "OBJECT") then {
  if (isNull _Item) exitWith { _Stop = true };
};

if (_Stop) exitWith {};

_isVehicle = ["vehicle_", if (typeName _Item == "STRING") then { _Item } else { str (_Item) }] call OL_misc_StringStartsWith;
_Vehicle   = objNull;

if (_isVehicle) then {
  _Vehicle = _Item;
  _Item = typeOf _Item;
  _Amount = 1;
  ctrlSetText [102, "1"];
} else {
  if (_Item call INV_GetItemType == "Item") then {
    _OwnAmount = _Item call INV_GetItemAmount;
    if (_Amount > _OwnAmount) then {
      _Amount = _OwnAmount;
      ctrlSetText [102, format ["%1", _Amount]];
    };
  };
};

_ItemType = _Item call INV_getitemType;
_ItemSellPrice = _Item call INV_getitemSellCost;

switch (_ItemType) do {
  case ("Item"):     { [_Item, -_Amount] call INV_AddInvItem };
  case ("Fahrzeug"): { deleteVehicle _Vehicle };
  case ("Waffe"):    { player removeWeapon (_Item call INV_getItemClassName); };
  case ("Magazin"):  {
    _curThingy = _Item call INV_getItemClassName;
    _realAmount = { _x == _curThingy } count (magazines player);
    if (_Amount > _realAmount) then {
      _Amount = _realAmount;
      ctrlSetText [102, format ["%1", _Amount]];
    };
    for "_i" from 0 to (_Amount - 1) do { player removeMagazine (_Item call INV_getItemClassName) };
  };
};

switch (_ItemType) do {
  case ("Item"): {
    if ((_Item call INV_getitemIsIllegal) && (_Item call INV_getitemKindOf == "drug")) then {
  		_list = OL_ActiveShop getvariable "druglist";
  		if (isNil "_list") then {
        _list = [[player, _Amount, (_ItemSellPrice / _Amount), _Item call INV_getitemName]]
      } else {
        _list = _list + [[player, _Amount, (_ItemSellPrice / _Amount), _Item call INV_getitemName]]
      };
  		OL_ActiveShop setVariable ["druglist", _list, true];
  	};
    ["geld", (_Amount * _ItemSellPrice)] call INV_AddInvItem;
    player groupChat format ["You sold %1 for $%2", _Item call INV_getitemName, (_Amount * _ItemSellPrice)];
  };
  case ("Fahrzeug"): {
    ["geld", _ItemSellPrice] call INV_AddInvItem;
    player groupChat format ["You sold %1 for $%2", _Item call INV_getitemName, _ItemSellPrice];
  };
  case ("Waffe"): {
    ["geld", _ItemSellPrice] call INV_AddInvItem;
    player groupChat format ["You sold %1 for $%2", _Item call INV_getitemName, _ItemSellPrice];
  };
  case ("Magazin"): {
    ["geld", (_Amount * _ItemSellPrice)] call INV_AddInvItem;
    player groupChat format ["You sold %1 for $%2", _Item call INV_getitemName, (_Amount * _ItemSellPrice)];
  };
};

if (typeName _Vehicle == "OBJECT") then {
  waitUntil {isNull _Vehicle};
} else {
  waitUntil {isNil "_Vehicle"};
};
["Sell_Log", format ["%1 (%2) has sold %3 %4 at %5 for $%6", PlayerName, getPlayerUID player, _Amount, _Item call INV_getitemName, mapGridPosition player, (_Amount * _ItemSellPrice)]] call RM_fnc_LogToServer;
[_this select 2, _this select 3, _this select 4] call Shops_fnc_RefreshMenu;
