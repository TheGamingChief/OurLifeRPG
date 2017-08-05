if (!(createDialog "distribute")) exitWith {hint "Dialog Error!"};
_impoundLot = _this select 0;

ctrlSetText [3, format["Retrieve impounded vehicle ($%1)", impoundpay]];

_impoundArr = [] call OL_vehicle_getImpounded;

{
    _index = lbAdd [1, (_x select 1) call INV_getitemName];
    lbSetData [1, _index, str(_x select 0)];
} foreach _impoundArr;

buttonSetAction [2, format['[lbData [1, (lbCurSel 1)], %1] call OL_vehicle_ImpoundBuy;', _impoundLot]];
