_cops     = { _x in coparray && !(isNull _x) } count playerarray;
_ems     = { _x in medicarray && !(isNull _x) } count playerarray;
_civs     = { _x in civarray && !(_x in medicarray) && !(isNull _x) } count playerarray;
_str     = "<t color='#FFFFFF' size='1.75'>Ratio Checker!</t><br/><br/>";

if (iscop) exitWith {
	if (_Cops > _Civs) then {
		_Str = _Str + format["<t color='#0000FF' size='1.50'>Cops: %1<br/>",_Cops];
		_Str = _Str + format["<t color='#999999' size='1.50'>Civs: %1<br/><br/>",_Civs];
		_Str = _Str + "<t color='#FF0000' size='2'>RATIO IS BAD (FIX IT)!";
		playSound "alarm1";
	} else {
		_Str = _Str + format["<t color='#0000FF' size='1.50'>Cops: %1<br/>",_Cops];
		_Str = _Str + format["<t color='#999999' size='1.50'>Civs: %1<br/><br/>",_Civs];
		_Str = _Str + "<t color='#00FF00' size='2'>RATIO IS (GOOD)!";
		playSound "codefound";
	};

	hint parseText _Str;
};

if (isciv) exitWith {
	_Str = _Str + format["<t color='#0000FF' size='1.50'>Cops: %1<br/>",_Cops];
	_Str = _Str + format["<t color='#999999' size='1.50'>Civs: %1<br/>",_Civs];
	_Str = _Str + format["<t color='#33CC33' size='1.50'>EMS: %1<br/>",_EMS];

	hint parseText _Str;
};