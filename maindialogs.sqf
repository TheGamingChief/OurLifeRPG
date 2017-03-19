_array = _this select 3;
_art   = _array select 0;
_geld  = 'geld' call INV_GetItemAmount;_zusatzString = "";
_trennlinie = "---------------------------------------------";

if ((count _array)>1) then
{
	_zusatzString = _array select 1;
};

if (_art == "bail") exitWith {
	if (!(createDialog "baildialog")) exitWith {hint "Dialog Error!";};
	sliderSetRange [2, 100, 250000];		sliderSetSpeed [2, 1, 50];
	while {(ctrlVisible 1008)} do
	{
		ctrlSetText [1, format["$%1", ((round(sliderPosition 2)) call OL_ISSE_str_IntToStr)]];
		sleep 0.3;
	};
};

if (_art == "licswag") exitWith {
if (!(createDialog "liste_1_button")) exitWith {hint "Dialog Error!";};
	lbAdd [1, _trennlinie];
	lbAdd [1, localize "STRS_statdialog_licenselist"];
	for [{_i=0}, {_i < (count INV_Lizenzen)}, {_i=_i+1}] do
	{
		if (((INV_Lizenzen select _i) select 0) call INV_HasLicense) then
		{
			lbAdd [1, ((INV_Lizenzen select _i) select 2)];
		};
	};

};
if (_art == "lawswag") exitWith {
	if (!(createDialog "liste_1_button")) exitWith {hint "Dialog Error!";};

	lbAdd [1, _trennlinie];
	lbAdd [1, "Island Governor"];
	if (not(MayorNumber == -1)) then
	{
		lbAdd [1, (playerstringarray select MayorNumber)];
	};

	lbAdd [1, _trennlinie];
	lbAdd [1, localize "STRS_statdialog_laws"];

	_i = 0;
	{
		if (not(_x == "")) then
		{
			_i = _i + 1;
			lbAdd [1, (format ["%1: %2", _i, _x])];
		};
	}
	forEach GesetzArray;

	lbAdd [1, _trennlinie];
	lbAdd [1, localize "STRS_statdialog_taxes"];
	{
		if ((_x select 2) > 0) then
		{
			lbAdd [1, format["%1: %2", (_x select 1), (_x select 2)] ];
		};
	}
	foreach INV_ItemTypenArray;
};
if (_art == "playerlist") exitWith {
if (!(createDialog "liste_1_button")) exitWith {hint "Dialog Error!";};
    lbAdd [1, _trennlinie];
	lbAdd [1, localize "STRS_statdialog_playerlist"];
	lbAdd [1, _trennlinie];
	private "_i";

	for [{_i=0}, {_i < (count playerarray)}, {_i=_i+1}] do
	{
		_spieler = playerarray select _i;
		if (!isnull _spieler and isPlayer _spieler) then {lbAdd [1, (format ["%1: %2", _spieler, name _spieler])];};
	};
};
if (_art == "oilswag") exitWith {
if (!(createDialog "liste_1_button")) exitWith {hint "Dialog Error!";};
	lbAdd [1, _trennlinie];
    lbAdd [1, "D E M A N D (Oil):"];
	_demand = (((tankencost - 100)/200)*100);
	lbAdd [1, format["Oil Barrel Trader: %1", _demand ]];
};
if (_art == "fundsswag") exitWith {
if (!(createDialog "liste_1_button")) exitWith {hint "Dialog Error!";};
	lbAdd [1, _trennlinie];
	lbAdd [1, "Island Bank Funds:"];
	lbAdd [1, (format ["Est. total funds in the main bank safe: $%1", robpoolsafe1])];
};
if (_art == "gangsswag") exitWith {
if (!(createDialog "liste_1_button")) exitWith {hint "Dialog Error!";};
	lbAdd [1, _trennlinie];
	lbAdd [1, "GANGS:"];
	lbAdd [1, _trennlinie];
	for [{_i=0}, {_i < (count gangsarray)}, {_i=_i+1}] do
	{
	_gangarray = gangsarray select _i;
	_gangname  = _gangarray select 0;
	_members   = _gangarray select 1;
	_territory = "None";

	_control1 = gangarea1 getvariable "control";
	_control2 = gangarea2 getvariable "control";
	_control3 = gangarea3 getvariable "control";
	_control4 = gangarea4 getvariable "control";

	if(_control1 == _gangname)then{if(_territory == "None")then{_territory = "West Side"}else{_territory = _territory + ", West Side"};};
	if(_control2 == _gangname)then{if(_territory == "None")then{_territory = "Little Havana"}else{_territory = _territory + ", Little Havana"};};
	if(_control3 == _gangname)then{if(_territory == "None")then{_territory = "East side"}else{_territory = _territory + ", East Side"};};
	if(_control4 == _gangname)then{if(_territory == "None")then{_territory = "The Safe House"}else{_territory = _territory + ", The Safe House"};};

	lbAdd [1, format["%1", _gangarray select 0]];
	lbAdd [1, format["Territory: %1",_territory]];
	lbAdd [1, format["Members:"]];
	private "_j"; /// BUG FIX
	for [{_j=0}, {_j < (count _members)}, {_j=_j+1}] do {if(_j == 0)then{lbAdd [1, format["%1 (leader)", _members select _j]]}else{lbAdd [1, format["%1", _members select _j]]};};
	lbAdd [1, _trennlinie];
	};

};

if (_art == "inventorycheck") exitWith {
	if (!(createDialog "liste_1_button")) exitWith {hint "Dialog Error!";};
	_licensearray  = (_array select 1);
	_inventararray = (_array select 2);
	_civobj        = (_array select 3);
	nonlethalweapons = nonlethalweapons + call OL_TFAR_getPlayerRadios;
	_waffenarray   = weapons _civobj - nonlethalweapons;
	_magazinarray  = magazines _civobj;
	_trennlinie = "---------------------------------------------";
	lbAdd [1, localize "STRS_statdialog_licenselist"];
	private "_i"; //// ADD to fix bug
	for [{_i=0}, {_i < (count _licensearray)}, {_i=_i+1}] do
	{
		_lizenz = (_licensearray select _i);
		lbAdd [1, format ["%1", (_lizenz call INV_GetLicenseName)]];
	};
	lbAdd [1, _trennlinie];
	lbAdd [1, localize "STRS_statdialog_inventarlist"];
	for [{_i=0}, {_i < (count _inventararray)}, {_i=_i+1}] do
	{
		_objekt     = ((_inventararray select _i) select 0);
		_objektname = (_objekt call INV_getitemName);
		_anzahl     = ((_inventararray select _i) select 1);
		if (_anzahl > 0) then
		{
			lbAdd [1, format ["%1: %2", _objektname, _anzahl]];
		};
	};

	lbAdd [1, _trennlinie];
	lbAdd [1, localize "STRS_statdialog_waffen"];
	for [{_i=0}, {_i < (count _waffenarray)}, {_i=_i+1}] do
	{
		_objekt     = _waffenarray select _i;
		_scriptname = _objekt call INV_GetScriptFromClass_Weap;
		_objektname = (_scriptname call INV_getitemName);
		lbAdd [1, format ["%1", _objektname]];
	};
	lbAdd [1, _trennlinie];
	_index = lbAdd [1, localize "STRS_statdialog_magazine"];
	for [{_i=0}, {_i < (count _magazinarray)}, {_i=_i+1}] do
	{
		_objekt     = _magazinarray select _i;
		_scriptname = _objekt call INV_GetScriptFromClass_Mag;
		_objektname = (_scriptname call INV_getitemName);
		lbAdd [1, format ["%1", _objektname]];
	};
	lbAdd [1, _trennlinie];
};

if (_art == "licensecheck") exitWith {
	if (!(createDialog "liste_1_button")) exitWith {hint "Dialog Error!";};
	_licensearray  = (_array select 1);

	_trennlinie = "---------------------------------------------";
	lbAdd [1, localize "STRS_statdialog_licenselist"];
	private "_i"; //// ADD to fix bug
	for [{_i=0}, {_i < (count _licensearray)}, {_i=_i+1}] do
	{
		_lizenz = (_licensearray select _i);
		lbAdd [1, format ["%1", (_lizenz call INV_GetLicenseName)]];
	};
	lbAdd [1, _trennlinie];

};

if (_art == "gesetz") exitWith {
	if (!(createDialog "gesetzdialog")) exitWith {hint "Dialog Error!";};
	{
		_index = lbAdd [1, _x];
		lbSetData [1, _index, _x];
	}
	forEach GesetzArray;
	while {ctrlVisible 1020} do
	{
		_selected = lbCurSel 1;
		ctrlSetText [2, lbText [1, _selected]];
		waitUntil {((not(_selected == lbCurSel 1)) or (not(ctrlVisible 1020)))};
	};
};

if (_art == "coplog") exitWith {
	if (!(createDialog "liste_1_button")) exitWith {hint "Dialog Error!"};
	lbAdd [1, _trennlinie];
	lbAdd [1, "C U R R E N T  W A R R A N T S:"];
	lbAdd [1, _trennlinie];

	for [{_m=0},{_m < count civarray},{_m=_m+1}] do {
		_civilian				 = civarray select _m;

		if (!isNull _civilian) then {
			_currentWarrants = _civilian getVariable ["PlayerWarrants",[]];

			if (count _currentWarrants > 0) then {
				_str = "";

				{
					if (_str == "") then {
						_str = _str  + (_x select 0) + format[" (x%1)", _x select 1];
					} else {
						_str = _str + ", ";
						_str = _str + format["%1 (x%2)", _x select 0, _x select 1];
					};
				} forEach _currentWarrants;

				lbAdd [1, format ["%1 (Bounty: %2): %3 is wanted for:",_civilian, [_civilian] call OL_player_WarrantTotal, name _civilian]];
				lbAdd [1, format ["%1.", _str]];
				lbAdd [1, _trennlinie];
			};
		};
	};
};

if (_art == "wahlen") exitWith {
	if (!(createDialog "wahldialog")) exitWith {hint "Dialog Error!";};
	_array = [0, 1, true, false] call DialogSpielerListe;
	lbSetCurSel [1, _array select 1];
};

if (_art == "chief") exitWith {
	if (!(createDialog "chiefdialog")) exitWith {hint "Dialog Error!";};
	_arrayc = [0, 1, true, false] call DialogSpielerListe;
	lbSetCurSel [1, _arrayc select 1];
};

if (_art == "steuern") exitWith {
	if (!(createDialog "steuerdialog")) exitWith {hint "Dialog Error!";};
	sliderSetSpeed [12, 1, 5];
	sliderSetRange [12, 0, 30];
	sliderSetPosition [12,((INV_ItemTypenArray select 0) select 2)];
	sliderSetSpeed [22, 1, 5];		sliderSetRange [22, 1, 30];
	sliderSetPosition [22,((INV_ItemTypenArray select 1) select 2)];
	sliderSetSpeed [32, 1, 5];				sliderSetRange [32, 1, 30];
	sliderSetPosition [32,((INV_ItemTypenArray select 2) select 2)];
	sliderSetSpeed [42, 1, 5];
	sliderSetRange [42, 0, 30];
	sliderSetPosition [42,((INV_ItemTypenArray select 3) select 2)];
	sliderSetSpeed [52, 1, 5];
	sliderSetRange [52, 0, 30];
	sliderSetPosition [52,bank_steuer];
	while {ctrlVisible 1032} do
	{
		ctrlSetText [11, format[localize "STRS_dialogandere_steuerdialog_itemsteuer", ((round(sliderPosition 12)) call OL_ISSE_str_IntToStr)]];
		ctrlSetText [21, format[localize "STRS_dialogandere_steuerdialog_fahrzeugsteuer", ((round(sliderPosition 22)) call OL_ISSE_str_IntToStr)]];
		ctrlSetText [31, format[localize "STRS_dialogandere_steuerdialog_magazinsteuer", ((round(sliderPosition 32)) call OL_ISSE_str_IntToStr)]];
		ctrlSetText [41, format[localize "STRS_dialogandere_steuerdialog_waffesteuer", ((round(sliderPosition 42)) call OL_ISSE_str_IntToStr)]];
		ctrlSetText [51, format[localize "STRS_dialogandere_steuerdialog_banksteuer", ((round(sliderPosition 52)) call OL_ISSE_str_IntToStr)]];
		sleep 0.1;
	};
};

if (_art == "impound") exitWith {

    if (!(createDialog "distribute")) exitWith {hint "Dialog Error!"};
    private "_j"; /// BUG FIX
    ctrlSetText [3, format["Retrieve impounded vehicle ($%1)", impoundpay]];

    _impoundArr = [getPlayerUID player, SpeedyServerImpound] call CP_fnc_ImpoundSearchArr;

	{
        lbAdd [1, _x];
    } foreach _impoundArr;

    buttonSetAction [2, "
		if(iscop and count (nearestobjects [getpos ctrafficspawn,[""Ship"",""car"",""motorcycle"",""truck""], 3]) > 0)exitwith{player groupchat ""There is a vehicle blocking the spawn!""};
		if(isciv and count (nearestobjects [getpos impoundarea2, [""Ship"",""car"",""motorcycle"",""truck""], 3]) > 0)exitwith{player groupchat ""There is a vehicle blocking the spawn!""};
		if((""geld"" call INV_getitemamount) < impoundpay)exitwith{player groupchat ""you do not have enough money""};
		[""geld"", -impoundpay] call INV_AddInvItem;

		SpeedyServerImpound = [getPlayerUID player, lbText [1, (lbCurSel 1)], SpeedyServerImpound] call CP_fnc_ImpoundRemoveArr;
		publicVariable ""SpeedyServerImpound"";
		[lbText [1, (lbCurSel 1)],""buy""] execVM ""impound.sqf"";
	"];
};

if (_art == "gangmenu") then

{

if (!(createDialog "gang_menu")) exitWith {hint "Dialog Error!";};
private "_i";
for [{_i=0}, {_i < (count gangsarray)}, {_i=_i+1}] do

	{

	_gangarray = gangsarray select _i;
	_index = lbAdd [202, format ["%1 - Memberlist: %2", (_gangarray select 0), (_gangarray select 1)]];
	lbSetData [202, _index, format ["%1", (_gangarray select 0)]];

	};

};

if (_art == "gildenverwaltung") exitWith {

if(!gangleader)exitwith{player groupchat "you are not the gang leader!"};

closedialog 0;

if (!(createDialog "gilde_verwaltung")) exitWith {hint "Dialog Error!";};

_members = [];
private "_i";
for [{_i=0}, {_i < (count gangsarray)}, {_i=_i+1}] do {if ((name player) in ((gangsarray select _i) select 1)) exitWith {_members = ((gangsarray select _i) select 1)};};

_index = lbAdd [201, localize "STRS_hints_ja"];
lbSetData [201, _index, "true"];
_index = lbAdd [201, localize "STRS_hints_nein"];
lbSetData [201, _index, "false"];

for [{_i=0}, {_i < (count _members)}, {_i=_i+1}] do

	{

	_member = (_members select _i);
	_obj 	= [_member, civarray] call INV_findunit;

	if(isnull _obj)then{_obj = "notingame"};

	_index = lbAdd [102, (format ["%1 (%2)", _member, _obj])];
	lbSetData [102, _index, (format ["%1", _obj])];

	};

};
