if ((getPlayerUID player) in adminlevel4) then {
	player execVM "adminconsolfill.sqf";
	_ok = createDialog "Main";
	exit;
};

if ((getPlayerUID player) in adminlevel3) then {
	player execVM "modconsolfill.sqf";
	_ok = createDialog "Main";
	exit;
};

if ((getPlayerUID player) in adminlevel2) then {
	player execVM "subconsolfill.sqf";
	_ok = createDialog "Main";
	exit;
};

if ((getPlayerUID player) in SwagDevs) then {
	player execVM "SwagDev.sqf";
	_ok = createDialog "MainDev";
	exit;
};