while {true} do {
	server globalChat "Server Cleaner Starting....";
	if(isNil "fn_global_cleanerdone")then {
		[] execVM "deaddem\cleanmeupcunt\fn_CleanerStartFnc.sqf";
	};

	waitUntil {!isNil "fn_global_cleanerdone"};
	// Process Cars First
	_nearListCar = ["CAR",10000,player] call fn_BuildNearest;
	server globalChat format["Server found %1 Vehicles, Beginning sweeper..",count _nearListCar];
	{
		_subject = _x;
		if(!_x in INV_ServerVclArray) exitWith{};
		_owner = _x getVariable "owners";
		_nearMen = ["MAN",200,_subject] call fn_BuildNearest;
		_isNearMen = [_nearMen,_obj] call fn_GrabNearPeopleAndCheckTheirBlackAssesNigga;

	} forEach _nearListCar;
	sleep 300;
};