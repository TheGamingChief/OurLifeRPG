_obj 	= _this select 0;
_list	= _obj getvariable "druglist";

if (isnil "_list") exitwith { player groupchat "No drugs found" };
if (count _list == 0) exitwith { player groupchat "No drugs found" };

for [{_i=0}, {_i < (count _list)}, {_i=_i+1}] do {
	_arr	= _list select _i;
	_civ 	= _arr select 0;
	_num	= _arr select 1;
	_cost	= _arr select 2;
	_drug	= _arr select 3;

	player groupchat format ["This civilian has $%2 worth of drugs! Interrogation reveals that they were sold by %1.", _civ getVariable ["RealName", "Error: No Unit"], (_num*_cost)];
	format ['titletext["%3 is wanted for trafficking $%2 worth of drugs!", "PLAIN"]', _civ, (_num*_cost), _civ getVariable ["RealName", "Error: No Unit"]] call OL_network_Swag;
	[_civ, "Drug Trafficking"] call OL_player_WarrantAdd;

	DD_LastCiv = _civ;
	[format["K9 REPORT: %1 Unit(s) of %2 sold for $%3", _num, _drug, (_num*_cost)]] call DD_mdc_AddNote;
};

_obj setvariable["druglist", [], true];
