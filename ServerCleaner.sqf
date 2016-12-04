while {true} do {
Sleep 1200;
server globalchat "OLRPG Server Cleaner is going....!";
sleep 2;
server globalchat "Server Cleaner Starting in 1 min!";
Sleep 30;
server globalchat "Server Cleaner Starting in 30 Sec!";
Sleep 30;
server globalchat "Cleaner Started";
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
{
	if ((count(crew _x) == 0) and ((damage _x > 0.55) or !(canMove _x))) then 
	{
		if !((_x isKindOf "Air") or (_x isKindOf "Tank")) then 
		{
			deleteVehicle vehicle _x;
			deleteVehicle _x;
			deleteVehicle vehicle _x;
			deleteVehicle _x;
		};
	};
} forEach vehicles;


{
	deleteVehicle vehicle _x;
	deleteVehicle _x;
} forEach (allMissionObjects "EvMoney")+allDEAD;

hint "Server Cleaner Done!";

sleep 1;
server globalchat "OLRPG Server Cleaner Done!";};
