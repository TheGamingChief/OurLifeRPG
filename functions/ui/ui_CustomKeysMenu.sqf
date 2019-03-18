if (!createDialog "UI_CustomKeys") exitWith { hint "Dialog Error (UI_ChangeKeys)" };

{
    _index = lbAdd [2100, format ["%1", _x]];
    lbSetData [2100, _index, _x];
} forEach OL_CustomKeys_Actions;

{
  _index = lbAdd [2101, format ["%1", _x select 0]];
  lbSetData [2101, _index, format ["%1", _x select 1]];
} forEach OL_CustomKeys;
