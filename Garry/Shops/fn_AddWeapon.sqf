_Classname = _this select 0;
_Store = _this select 1;
_Amount = _this select 2;

OL_StoredWeapons set [count OL_StoredWeapons, [str (_Store), _Classname, _Amount]];
