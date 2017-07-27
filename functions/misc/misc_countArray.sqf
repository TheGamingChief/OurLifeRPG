_Key = _this select 0;
_Array = _this select 1;
_Amount = 0;

{
	if (_x == _Key) then {
		_Amount = _Amount + 1;
	};
}forEach _Array;

_Amount;
