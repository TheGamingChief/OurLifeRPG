_cops = 0;
_civs = 0;
_ems  = 0;
_str  = "<t color='#FFFFFF' size='1.75'>Ratio Checker!</t><br/><br/>";

{
	if (_x call OL_ISSE_UnitExists) then {
		if (isPlayer _x) then {
			switch (true) do {
				case (_x in coparray): 	 { _cops = _cops + 1 };
				case (_x in civarray): 	 { _civs = _civs + 1 };
				case (_x in medicarray): { _ems  = _ems  + 1 };
			};
		};
	};
} forEach playerarray;

if (iscop) exitWith {
	if (_cops > _civs) then {
		_str = _str + format ["<t color='#0000FF' size='1.50'>Cops: %1<br/>", _cops];
		_str = _str + format ["<t color='#999999' size='1.50'>Civs: %1<br/><br/>", _civs];
		_str = _str + "<t color='#FF0000' size='2'>RATIO IS BAD (FIX IT)!";
		playSound "alarm1";
	} else {
		_str = _str + format ["<t color='#0000FF' size='1.50'>Cops: %1<br/>", _cops];
		_str = _str + format ["<t color='#999999' size='1.50'>Civs: %1<br/><br/>", _civs];
		_str = _str + "<t color='#00FF00' size='2'>RATIO IS (GOOD)!";
		playSound "codefound";
	};

	hint parseText _str;
};

if (isciv || ismedic) exitWith {
	_str = _str + format ["<t color='#0000FF' size='1.50'>Cops: %1<br/>", _Cops];
	_str = _str + format ["<t color='#999999' size='1.50'>Civs: %1<br/>", _Civs];
	_str = _str + format ["<t color='#33CC33' size='1.50'>EMS: %1<br/>", _EMS];

	hint parseText _str;
};
