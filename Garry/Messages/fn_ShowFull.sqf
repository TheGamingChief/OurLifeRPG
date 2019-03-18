_Message = OL_Messages select (_this select 0);
lbClear 1501;
lbAdd [1501, format ["%1 - %2", _Message select 2, _Message select 4]];
lbAdd [1501, format ["%1", _Message select 5]];

_display = (findDisplay 69420) displayCtrl 1100;

_display ctrlSetStructuredText parseText "";
_display ctrlSetStructuredText parseText format ["%1", _Message select 6];
