DD_f_RunSearch = {
	_civID = _this select 0;

	_civ = DD_MDS_CurrentUnits select _civID;

	DD_MDS_reason = call compile format["%1_reason", _civ];	
	DD_MDS_notes = call compile format["%1_notes", _civ];
	DD_MDS_license = call compile format["%1_license",_civ];
	__temp_licemse  = DD_MDS_license;

	{

		lbAdd[1500, format["Active Warrant: %1", _x]];
	}forEach DD_MDS_reason;
	{
		lbAdd[1501, format["%1 [By Officer %2]", _x select 0, _x select 1]];
	}forEach DD_MDS_notes;
	{

	{
		if(_x in ["assassinlic","terror","Donator_license","Donator_license2","Donator_license3","Donator_license4","Donator_license5","Donator_license6","tierx"])then{
			DD_MDS_license set[_foreachindex, -1];
		};	 	
	} forEach __temp_licemse;
	DD_MDS_license = DD_MDS_license - [-1];
	{
		lbAdd[1502, format["%1", _x]];
	}forEach DD_MDS_license;
};