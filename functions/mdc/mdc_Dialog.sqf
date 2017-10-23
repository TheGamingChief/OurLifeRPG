closeDialog 0;

_screen = _this select 0;

switch(_screen)do{
	case "view":
	{
		_unit 		= _this select 2;
		_warrants =	_unit getVariable ["PlayerWarrants", []];
		_licenses	= _unit getVariable ["Licenses",[]];
		_vehicles = _unit getVariable ["Cars", []];
		_notes	  = _unit getVariable ["Notes", []];
		_dl 			= createDialog "DD_PolicePC";

		{
			lbAdd[2100, format["%1",_x]];
		}forEach (call DD_MDC_OnlineCivilians);
		lbAdd[1500, format["SUBJECT -- %1", _unit getVariable ["RealName", "Error: No Unit"]]];
		LBadd[1500, ""];

		lbAdd[1500, "------  WARRANTS  ------"];
		if(count(_warrants) > 0)then{
			{
				lbAdd [1500, format ["%1 (x%2)", _x select 0, _x select 1]];
			} forEach _warrants;
		} else {
			lbAdd[1500, "No warrants to show."];
		};

		LBAdd[1500, ""];
		lbAdd[1500, "------  LICENSES  ------"];
		if(count(_licenses) > 0)then{
			{
				lbAdd[1500, _x call OL_license_name];
			}foreach _licenses;
		}else{
			lbAdd[1500, "No licenses to show."];
		};
		lbaDD[1500, ""];
		lbAdd[1500, "------  NOTES  ------"];
		if(count(_notes) > 0)then{
			{
				lbAdD[1500, format["%2: %1", _X select 0, _x select 1]];
			}foreach _notes;
		}else{
			lbAdd[1500, "No notes to show."];
		};

		lbAdd[1500, ""];
		lbAdd[1500, ""];
	};
	case "create_warrant": {
		if (!createDialog "UI_ListMenuSmall") exitWith { hint "Dialog Error!" };

		{ lbAdd [1500, _x select 0] } forEach OL_Warrants;

		buttonSetAction [1600, "[DD_LastCiv, (OL_Warrants select (lbCurSel 1500)) select 0] call OL_player_WarrantAdd; player groupChat ""Warrant Added!""; closeDialog 0;"];
	};
	default{
		_dl = createDialog "DD_PolicePC";

		{
			lbAdd[2100, format["%1",_x]];
		}forEach (call DD_MDC_OnlineCivilians);
	};
};
