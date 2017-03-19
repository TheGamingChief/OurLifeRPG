if (!createDialog (_this select 0)) exitWith {hint "Could not create dialog!"};

disableSerialization;
_civ = civmenuciv;
if (isNil "_civ") exitWith {player groupChat "Could not find civilian."};
if (_civ getVariable "KOED") exitWith { closeDialog 0 };

if (iscop) exitWith {
  _Name = (findDisplay 6960) displayCtrl 6584;
  _TicketName = (findDisplay 65248) displayCtrl 1001;
  _JailName = (findDisplay 65458) displayCtrl 1001;
  _HandCuff = (findDisplay 6960) displayCtrl 54848;
  _Escorted = (findDisplay 6960) displayCtrl 54847;
  _DrugSearch = (findDisplay 6960) displayCtrl 844526;
  _PatDown = (findDisplay 6960) displayCtrl 56478;
  _CheckInventory = (findDisplay 6960) displayCtrl 35489;
  _Gag = (findDisplay 6960) displayCtrl 23548;
  _ForceFeed = (findDisplay 6960) displayCtrl 624258;
  _JailSubject = (findDisplay 6960) displayCtrl 1609;

  _Name ctrlSetText format["Interact - %1", name _civ];
  _TicketName ctrlSetText format["Ticket - %1", name _civ];
  _JailName ctrlSetText format["Arrest - %1", name _civ];

  if (_civ getVariable "Cuffed") then {
    _HandCuff ctrlSetText "Remove HandCuffs";
    _HandCuff ctrlEnable true;
  } else {
    _Escorted ctrlEnable false;
    _ForceFeed ctrlEnable false;
    _JailSubject ctrlEnable false;
  };

  if (!(_civ call OL_ISSE_IsVictim)) then {
    _DrugSearch ctrlEnable false;
    _PatDown ctrlEnable false;
    _CheckInventory ctrlEnable false;
    _CheckInventory ctrlEnable false;
    _Gag ctrlEnable false;
  };

  if ("Gag" call INV_GetItemAmount == 0) then {_Gag ctrlEnable false};
  if ("Donut" call INV_GetItemAmount == 0) then {_ForceFeed ctrlEnable false};

  if (_civ getVariable "ZipTied") then {_HandCuff ctrlSetText "Remove Zip Ties";_HandCuff ctrlEnable true};
  if (_civ getVariable "Gagged") then {_Gag ctrlSetText "Remove Gag";_Gag ctrlEnable true};
  if (_civ getVariable "Escorted") then {_Escorted ctrlSetText "Stop Escorting";_Escorted ctrlEnable true};

};

if (isciv) exitWith {
  _Name = (findDisplay 6959) displayCtrl 1000;
  _Rob = (findDisplay 6959) displayCtrl 1601;
  _PatDown = (findDisplay 6959) displayCtrl 1603;
  _CheckInventory = (findDisplay 6959) displayCtrl 1609;
  _ZipTie = (findDisplay 6959) displayCtrl 1602;
  _Escorted = (findDisplay 6959) displayCtrl 1605;
  _Gag = (findDisplay 6959) displayCtrl 1607;
  _ThrowInCar = (findDisplay 6959) displayCtrl 1619;
  _Name ctrlSetText format["Interact - %1", name _civ];

  if (!(_civ call OL_ISSE_IsVictim)) then {
  	_Rob ctrlEnable false;
  	_PatDown ctrlEnable false;
  	_CheckInventory ctrlEnable false;
  	_ZipTie ctrlEnable false;
  };
  if (_civ getVariable "Gagged") then {
    _Gag ctrlSetText "Remove Gag";
    _Gag ctrlEnable true
  };
  if (_civ getVariable "Escorted") then {
    _Escorted ctrlSetText "Stop Escorting";
    _Escorted ctrlEnable true
  };
  if ("ziptie" call INV_GetItemAmount == 0) then{_ZipTie ctrlEnable false};
  if ("Gag" call INV_GetItemAmount == 0) then{_Gag ctrlEnable false};

  if (_civ getVariable "ZipTied") then {
  	_ZipTie ctrlSetText "Remove Zip Ties";
    _Ziptie ctrlEnable true;
  } else {
  	_Gag ctrlEnable false;
  	_Escorted ctrlEnable false;
  	_ThrowInCar ctrlEnable false;
  };

  if (_civ getVariable "Cuffed") then {
    _ZipTie ctrlSetText "Remove Handcuffs";
    _ZipTie ctrlEnable false;
    _Escorted ctrlEnable false;

    if (call INV_isArmed) then {
  		_Escorted ctrlEnable true;
  		_ZipTie ctrlEnable true;
  	};
  };
};
