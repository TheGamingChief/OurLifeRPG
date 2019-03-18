_this = call compile (_this select 0);
_SenderPhoneNumber = _this select 1;

if (!createDialog "UI_SendMessage") exitWith { hint "Dialog Error! (UI_SendMessage)" };

ctrlSetText [1401, format ["%1", _SenderPhoneNumber]];
