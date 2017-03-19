private["_amount", "_result"];
_amount = _this select 0;

_result = format['$%1', ([_amount, ","] call OL_isse_FormatInteger)];

_result
