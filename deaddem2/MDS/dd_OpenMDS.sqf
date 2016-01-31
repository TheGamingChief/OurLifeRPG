DD_f_OpenMDS = {
	if(!createDialog "MDS")exitWith{};
	if(isMultiplayer and (side player != "WEST"))exitWith{systemChat "Access Denied; Fuck off idiot"};

	DD_MDS_CurrentUnits = playableUnits;
	systemChat str DD_MDS_CurrentUnits;
	_loopArrayInstance = DD_MDS_CurrentUnits;
	{
		if(_x in coparray)then{
			DD_MDS_CurrentUnits set[_foreachindex, -1];
		};
	}forEach _loopArrayInstance;

	DD_MDS_CurrentUnits = DD_MDS_CurrentUnits - [-1];
	systemChat str DD_MDS_CurrentUnits;
	{
		lbadd[2100,format["%1", name _x]];
	}forEach DD_MDS_CurrentUnits;
};	