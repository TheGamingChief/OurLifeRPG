if (!(createDialog (_this select 0))) exitWith {hint "Dialog Error!";};
_items = 0;

for [{_i=0}, {_i < (count INV_InventarArray)}, {_i=_i+1}] do {
	_item = (INV_InventarArray select _i) select 0;
	_s 		= _item call INV_GetItemAmount;

	if (_s > 0) then {
		_index = lbAdd [15009, format["%1 - %2", _item call INV_getitemName, [_s] call OL_isse_FormatAmount]];
		lbSetData [15009, _index, _item];
		_items = _items + 1;
	};
};

if (_items == 0) exitWith {player groupChat localize "STRS_inv_inventardialog_empty";};

for [{_c=0}, {_c < (count INV_playerStringList)}, {_c=_c+1}] do {
  _swag = INV_playerStringList select _c;

	if (_swag call OL_ISSE_UnitExists) then	{
		_index = lbAdd [21009, format ["%1 - (%2)", _swag, name (call compile _swag)]];
		lbSetData [21009, _index, format["%1", _c]];
	};
};

lbAdd [1501,format ["Name: %1 | Bank: $%2", name player, Kontostand call OL_ISSE_str_IntToStr]];
lbAdd [1501,format ["Player ID: %1",getplayerUID player]];

lbSetCurSel [21009, 0];
lbSetCurSel [15009, 0];
lbSetCurSel [1501,  0];
buttonSetAction [16009, format["[""use"",  lbData [15009, (lbCurSel 15009)], ctrlText 10009, lbData [21009, (lbCurSel 21009)]] execVM ""INVactions.sqf""; closedialog 0;"]];
buttonSetAction [16019, format["[""drop"", lbData [15009, (lbCurSel 15009)], ctrlText 10009, lbData [21009, (lbCurSel 21009)]] execVM ""INVactions.sqf""; closedialog 0;"]];
buttonSetAction [16029, format["[""give"", lbData [15009, (lbCurSel 15009)], ctrlText 10009, lbData [21009, (lbCurSel 21009)]] execVM ""INVactions.sqf""; closedialog 0;"]];
