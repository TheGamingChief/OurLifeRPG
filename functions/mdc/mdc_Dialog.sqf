closeDialog 0;

_screen = _this select 0;

switch(_screen)do{
	case "view":
	{
		_unit 		= _this select 2;
		_warrants =	 _unit getVariable ["PlayerWarrants", []];
		_licenses	= _unit getVariable["Licenses",[]];
		_vehicles = _unit getVariable["Cars", []];
		_notes	  = _unit getVariable ["Notes", []];
		_dl 			= createDialog "DD_PolicePC";

		{
			lbAdd[2100, format["%1",_x]];
		}forEach (call DD_MDC_OnlineCivilians);
		lbAdd[1500, format["SUBJECT -- %1", name _unit]];
		LBadd[1500, ""];

		lbAdd[1500, "------  WARRANTS  ------"];
		if(count(_warrants) > 0)then{
			{
				for "_i" from 1 to (_x select 1) do {
						lbAdd[1500, _x select 0];
				};
			} foreach _warrants;
		} else {
			lbAdd[1500, "No warrants to show."];
		};

		LBAdd[1500, ""];
		lbAdd[1500, "------  LICENSES  ------"];
		if(count(_licenses) > 0)then{
			{
				lbAdd[1500, _x];
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
	default{
		_dl = createDialog "DD_PolicePC";

		{
			lbAdd[2100, format["%1",_x]];
		}forEach (call DD_MDC_OnlineCivilians);
	};
};
