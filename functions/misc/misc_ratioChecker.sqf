_cops = west countSide playableUnits;
_ems  = resistance countSide playableUnits;
_civs = civilian countSide playableUnits;
_str  = "<t color='#FFFFFF' size='1.75'>Ratio Checker!</t><br/><br/>";

if (iscop) exitWith {
	if (_cops > _civs) then {
		_str = _str + format["<t color='#0000FF' size='1.50'>Cops: %1<br/>",_cops];
		_str = _str + format["<t color='#999999' size='1.50'>Civs: %1<br/><br/>",_civs];
		_str = _str + "<t color='#FF0000' size='2'>RATIO IS BAD (FIX IT)!";
		playSound "alarm1";
	} else {
		_str = _str + format["<t color='#0000FF' size='1.50'>Cops: %1<br/>",_cops];
		_str = _str + format["<t color='#999999' size='1.50'>Civs: %1<br/><br/>",_civs];
		_str = _str + "<t color='#00FF00' size='2'>RATIO IS (GOOD)!";
		playSound "codefound";
	};

	hint parseText _str;
};

if (isciv) exitWith {
	_str = _str + format["<t color='#0000FF' size='1.50'>Cops: %1<br/>",_Cops];
	_str = _str + format["<t color='#999999' size='1.50'>Civs: %1<br/>",_Civs];
	_str = _str + format["<t color='#33CC33' size='1.50'>EMS: %1<br/>",_EMS];

	hint parseText _str;
};
