_firstListItem  = call compile (lbData [1, lbCurSel 1]);
_secondListItem = call compile (lbData [101, lbCurSel 101]);

if (!isNil "_firstListItem") then {
  _firstListAmount = ctrlText 2;
  _firstListAmount = _firstListAmount call OL_ISSE_StrToInt;
  if (!(_firstListAmount call OL_ISSE_str_isInteger)) then { _firstListAmount = "0" };
  _firstListAmount = _firstListAmount call OL_ISSE_StrToInt;

  if ((_firstListItem select 0) call INV_getitemType == "Item") then {
    ctrlSetText [3, format ["Buy ($%1, %2kg, %3)", (_firstListAmount * ((_firstListItem select 0) call INV_getitemCostWithTax)), (_firstListAmount * ((_firstListItem select 0) call INV_getitemTypeKg)), _firstListAmount]];
  } else {
    ctrlSetText [3, format ["Buy ($%1, %2)", (_firstListAmount * ((_firstListItem select 0) call INV_getitemCostWithTax)), _firstListAmount]];
  };
};

if (!isNil "_secondListItem") then {
  _secondListAmount = ctrlText 102;
  _secondListAmount = _secondListAmount call OL_ISSE_StrToInt;
  if (!(_secondListAmount call OL_ISSE_str_isInteger)) then { _secondListAmount = "0" };
  _secondListAmount = _secondListAmount call OL_ISSE_StrToInt;

  _thingy = nil;
  if ((typeName (_secondListItem select 0)) == "OBJECT") then {
    _thingy = _secondListItem select 0;
    _thingy = typeOf (_secondListItem select 0);
  } else {
    _thingy = _secondListItem select 0;
  };

  _secondListItemCost = _thingy call INV_getitemSellCost;
  if (_thingy call INV_getitemType == "Item") then {
    ctrlSetText [103, format ["Sell ($%1, %2kg, %3)", (_secondListAmount * _secondListItemCost), (_secondListAmount * (_thingy call INV_getitemTypeKg)), _secondListAmount]];
  } else {
    ctrlSetText [103, format ["Sell ($%1, %2)", _secondListAmount * _secondListItemCost, _secondListAmount]];
  };
  ctrlEnable [103, true];
} else {
  ctrlSetText [103, "\"];
  ctrlEnable [103, false];
};
