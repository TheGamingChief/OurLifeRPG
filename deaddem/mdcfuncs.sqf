
_art = _this select 0;
if(_art == "mdc_open") then {
	if(!createDialog "D_MDC_open") exitWith{["Could not create MDC!"] call D_ErrorHint};
};

if(_art == "mdc_results") then {
	resultciv = _this select 1;
	if(!(resultciv in civstringarray)) exitWith {hint "ID Not Registered!"};
	hint format["%1",resultciv];
	call compile format['Result_Warrants = %1_reason',resultciv];
	call compile format['Result_Notes = %1_notes',resultciv];
	if(!createDialog "D_MDC_results") exitWith{["Could not create MDC!"] call D_ErrorHint};
	ctrlSetText [1000, format["%1", resultciv]];
	for [{_i = 0}, {_i < (count Result_Warrants)},{_i=_i+1}] do{
		_warrants = Result_Warrants select _i;
		_name = resultciv;

		if(_warrants == "") then {
			lbAdd [1500, "No Warrants Found!"];
		}else{
			lbAdd [1500, format["Warrant: %1",_warrants]];
	 	};
	};
	for [{_i = 0}, {_i < count Result_Notes},{_i=_i+1}] do {
		_notearray = Result_Notes select _i;
		_notetext = _notearray select 0;
		_notecop = _notearray select 1;
		lbAdd [1501, format["Note: %1 by %2", _notetext,_notecop]];

	};

};

if(_art == "mdc_inputwarrant") then {
	if(!createDialog "D_MDC_inputwarrant")exitWith{hint "Dialog Error!"};
	ctrlSetText [1, format["Submit Warrant for %1",resultciv]];
};

if(_art == "mdc_inputwarrant_submit") then {
	_warrant = _this select 1;
	player groupChat format['YOU HAVE SET %1 WANTED FOR %2', resultciv,_warrant];
	format['%1_reason = %1_reason + ["%2"]; if(iscop) then {server globalChat "MDC Warrant List Updated"};',resultciv, _warrant] call broadcast;
};
if(_art == "mdc_inputnote") then {
	if(!createDialog "D_MDC_inputnote")exitWith{hint "Dialog Error!"};
	ctrlSetText [1, format["Submit Note for %1",resultciv]];
};

if(_art == "mdc_inputnote_submit") then {
	_warrant = _this select 1;
	format['%1_notes = %1_notes + [["%2","%3"]]; if(iscop) then {server globalChat "MDC Warrant List Updated"};',resultciv, _warrant, name player] call broadcast;
};