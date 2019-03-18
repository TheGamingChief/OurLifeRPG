_Classname = _this select 0;
_Store = _this select 1;
_Amount = _this select 2;

OL_StoredMagazines set [count OL_StoredMagazines, [str (_Store), _Classname, _Amount]];
