_act = _this select 0;
if(_act == "mds_open_home") then{
	if(!createDialog "D_MDS_Home") exitWith{hint "Could not create dialog!"};
	for[{_c = 0},{_c < count civstringarray},{_c = _c + 1}] do{
		_civ = civstringarray select _c;
		lbAdd [1,format['%1',_civ]];
	};
};

if(_act == "mdc_fill_home") then{
	if(!createDialog "D_MDS_Home") exitWith{hint "Could not create dialog!"};
	d_resultciv = _this select 1;
	call compile format['d_resultciv = Civ%1', d_resultciv];
	hint format['%1',d_resultciv];
	call compile format['D_Result_Warrants = %1_reason',d_resultciv]; // Get Active Warrants from PublicVariable
	call compile format['D_Result_License = %1_license',d_resultciv]; // Get Active Licenses from Publicvariable
	call compile format['D_Result_Notes = %1_notes',d_resultciv]; // Get Active Notes from PublicVariable
	if(name d_resultciv == "Error: No vehicle" or name d_resultciv == "Error: No unit") then{
		ctrlSetText [1003, format['Error!']];
	}else{
		ctrlSetText [1003, format['Account: %1', name d_resultciv]];
	};
	for[{_c = 0},{_c < count civstringarray},{_c = _c + 1}] do{
		_civ = civstringarray select _c;
		lbAdd [1,format['%1',_civ]];
	};
	for[{_i = 0}, {_i < count D_Result_Warrants},{_i = _i +1}] do{
		_warrant = D_Result_Warrants select _i;
		if(_warrant == "") then{
			lbAdd [2,"Inactive: Empty Warrant"];
		}else{
			lbadd [2, format['Active Warrant: %1',_warrant]];
		};
	};
	for[{_w = 0},{_w < count D_Result_License},{_w = _w + 1}] do{
		_license = D_Result_License select _w;
		if(_license == "") then{
			lbAdd [3,"Inactive License"];
		}else{
			lbAdd [3,format["License: %1",_license]];
		};	
	};
	for[{_e = 0},{_e < count D_Result_Notes},{_e = _e + 1}] do{
		_note = (D_Result_Notes select _e) select 0;
		_osifer = (D_Result_Notes select _e) select 1;

		if(_note == "") then{
			lbAdd [4,'No Notes Found!'];
		}else{
			lbAdd [4,format['Note: %1 - By %2', _note,_osifer]];
		};
	};
};

if(_act == "mds_open_warrant") then{
	if(!createDialog "D_MDS_SubmitWarrant") exitWith {hint "Could not create dialog"};
};

if(_act == "mds_submit_warrant") then {
	_warrant = _this select 1;
	hint format["%1",_warrant];
	call compile format['
	%1_reason = %1_reason + ["%2"]; Publicvariable "%1_reason";
	', d_resultciv,_warrant];
	format['if(isCop) then {server globalChat "Police: %1 Has Updated the Wanted List!"};',name player];
};

if(_act == "mds_open_notes") then{
	if(!createDialog "D_MDS_SubmitNote") exitWith {hint "Could not create dialog"};
};

if(_act == "mds_submit_notes") then {
	_warrant = _this select 1;
	hint format["%1",_warrant];
	call compile format['
	%1_notes = %1_notes + [["%2","%3"]]; PublicVariable "%1_notes";
	', d_resultciv,_warrant,name player];
	format['if(isCop) then {server globalChat "Police: %1 Has Updated the Notes List!"};',name player];
};

if(_act == "mds_open_revoke") then{
	if(!createDialog "D_MDS_SubmitNote") exitWith {hint "Dialog Error"};
	call compile format['D_Result_License = %1_license',d_resultciv]; // Get Active Licenses from Publicvariable
	buttonSetAction [1700,"[""mds_revoke_license"", ctrlText 1400] execVM ""deaddem\mds\mds_func.sqf""; "];
	ctrlSetText [1000,"Remove License"];
};
if(_act == "mds_revoke_license") then{
	_ind = _this select 1;
	player groupChat format['%1',_ind];
	{
	if(_x == _ind) then{
		D_MDS_RevokeTrue = true;
	}else{
		D_MDS_RevokeTrue = false;
	};
	}forEach D_Result_License;
	if(!D_MDS_RevokeTrue) exitWith {player groupchat "This player does not have that license!";};
	format['if(name player == "%1") then {INV_LizenzOwner = INV_LizenzOwner - ["%2"]}',name d_resultciv,_ind, name player] call broadcast;
	format['server globalChat "Officer %1 has Revoked %2s %3 License"',name player, name d_resultciv, _ind] call broadcast;
};


fn_ClearWarrants = {
	if(isNil "d_resultciv")exitWith{hint "Select a player first!"};
	_toRun = format["
		if(player == %1)then{
			kopfgeld_%1 = 0;
			%1_wanted = 0;
			%1_reason = [];

			publicVariable ""%1_reason"";
			publicVariable ""%1_wanted"";
			publicVariable ""kopfgeld_%1"";
		};
	", d_resultciv];		
	_toRun call swag;
};