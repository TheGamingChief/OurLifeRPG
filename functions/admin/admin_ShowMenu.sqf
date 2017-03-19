//Having to do execVM instead of OL_Admin_Confill_Swag FUNC
//TODO: Ask DEADdem why

if ((getPlayerUID player) in SwagDevs) exitWith {
	[] execVM "functions\admin\admin_confill_swag.sqf";
	_ok = createDialog "AdminPanel_Swag";
};

if ((getPlayerUID player) in adminlevel4) exitWith {
	[] execVM "functions\admin\admin_confill_senior.sqf";
	_ok = createDialog "AdminPanel_Default";
};

if ((getPlayerUID player) in adminlevel3) exitWith {
	[] execVM "functions\admin\admin_confill_admin.sqf";
	_ok = createDialog "AdminPanel_Default";
};

if ((getPlayerUID player) in adminlevel2) exitWith {
	[] execVM "functions\admin\admin_confill_mod.sqf";
	_ok = createDialog "AdminPanel_Default";
};
