_this = call compile (_this select 0);
_classname = _this select 0;
_amount = _this select 1;
_index = _this select 2;
_amountToTake = ctrlText 1601;
if (!(_amountToTake call OL_ISSE_str_isInteger)) then { _amountToTake = "1" };
_amountToTake = _amountToTake call OL_ISSE_StrToInt;
_Stop = false;

switch (_classname call INV_getitemType) do {
  case ("Waffe"): {
    if (_classname == "Stinger_swat") exitWith {
      if ("Stinger" in (weapons player)) exitWith {
        player groupChat "You already have a stinger on you.";
        _Stop = true;
      };
      _curStuff = OL_StoredWeapons select _index;

      OL_StoredWeapons set [_index, -1];
      OL_StoredWeapons = OL_StoredWeapons - [-1];
      _newAmount = (_curStuff select 2) call OL_ISSE_StrToInt;
      if (_amountToTake < _newAmount) then {
        OL_StoredWeapons set [count OL_StoredWeapons, [_curStuff select 0, _curStuff select 1, _newAmount - _amountToTake]];
      };
      player addWeapon "Stinger";
    };

    _ok = ["Binocular", "NVGoggles", "GPS"];
    if ((_classname call INV_getitemKindOf == "pistol") && (call OL_misc_hasPistol) && (!(_classname in _ok))) exitWith {
      player groupChat "You cannot take a secondary weapon out while you have one in your hand.";
      _Stop = true;
    };
    if ((_classname call INV_getitemKindOf == "rifle") && (primaryWeapon player != "") && (!(_classname in _ok))) exitWith {
      player groupChat "You can not take a gun out while you have a gun in your hand.";
      _Stop = true;
    };
    if ((_classname call INV_getitemKindOf == "sniper") && (primaryWeapon player != "") && (!(_classname in _ok))) exitWith {
      player groupChat "You can not take a gun out while you have a gun in your hand.";
      _Stop = true;
    };

    _curStuff = OL_StoredWeapons select _index;

    OL_StoredWeapons set [_index, -1];
    OL_StoredWeapons = OL_StoredWeapons - [-1];
    _newAmount = (_curStuff select 2) call OL_ISSE_StrToInt;
    if (_amountToTake < _newAmount) then {
      OL_StoredWeapons set [count OL_StoredWeapons, [_curStuff select 0, _curStuff select 1, _newAmount - _amountToTake]];
    };
    _classname = _classname call INV_getItemClassName;
    player addWeapon _classname;
    player selectWeapon _classname;
    if (needReload player == 1) then {reload player};
  };
  case ("Magazin"): {
    _magCountPrim = 0;
    _magCountSecd = 0;

    {
      switch (_x call INV_getitemKindOf) do {
        case ("pistol"): { _magCountSecd = _magCountSecd + 1 };
        case ("rifle"):  { _magCountPrim = _magCountPrim + 1 };
        case ("sniper"): { _magCountPrim = _magCountPrim + 1 };
      };
    } forEach (magazines player);

    _secSlotsLeft = 8 - _magCountSecd;
    _priSlotsLeft = 12 - _magCountPrim;

    _old_amountToTake = _amountToTake;

    if (_classname call INV_getitemKindOf == "launcher") then { _amountToTake = _amountToTake * 6 };

    if ((_classname call INV_getitemKindOf == "pistol") && (_amountToTake > _secSlotsLeft)) then { _amountToTake = _secSlotsLeft };
    if ((_classname call INV_getitemKindOf == "launcher") && (_amountToTake > _priSlotsLeft)) then { _amountToTake = _priSlotsLeft };
    if ((_classname call INV_getitemKindOf == "sniper") && (_amountToTake > _priSlotsLeft)) then { _amountToTake = _priSlotsLeft };
    if ((_classname call INV_getitemKindOf == "rifle") && (_amountToTake > _priSlotsLeft)) then { _amountToTake = _priSlotsLeft };

    if (_amountToTake <= 0) exitWith {
      player groupChat "Your magazines is full.";
      _Stop = true;
    };

    if (((_classname call INV_getitemKindOf == "pistol") && ((_magCountSecd + _amountToTake) > 8))) exitWith {
      player groupChat "Your secondary magazines is full.";
      _Stop = true;
    };
    if (((_classname call INV_getitemKindOf == "rifle") && ((_magCountPrim + _amountToTake) > 12))) exitWith {
      player groupChat "Your primary magazines is full.";
      _Stop = true;
    };
    if (((_classname call INV_getitemKindOf == "launcher") && ((_magCountPrim + _amountToTake) > 12))) exitWith {
      player groupChat "Your primary magazines is full.";
      _Stop = true;
    };

    if (_classname call INV_getitemKindOf == "launcher") then { _amountToTake = _old_amountToTake };

    _curStuff = OL_StoredMagazines select _index;
    OL_StoredMagazines set [_index, -1];
    OL_StoredMagazines = OL_StoredMagazines - [-1];
    _newAmount = (_curStuff select 2) call OL_ISSE_StrToInt;
    if (_amountToTake < _newAmount) then {
      OL_StoredMagazines set [count OL_StoredMagazines, [_curStuff select 0, _curStuff select 1, _newAmount - _amountToTake]];
    };
    _classname = _classname call INV_getitemClassName;
    for "_i" from 1 to _amountToTake do { player addMagazine _classname };
  };
};

if (_Stop) exitWith {};

if (dialog) then { closeDialog 0 };
[] call Shops_fnc_DisplayStored;
