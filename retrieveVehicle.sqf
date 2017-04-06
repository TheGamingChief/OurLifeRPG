_art = ((_this select 3) select 0);
_actionsToRemove = [];

if ((isciv) && (isNil {INV_SavedVehLand select 0})) exitWith
{
	player sideChat "You do not have any saved vehicles, currently!";
};

if ((iscop) && !(isciv) && (isNil {savedVehiclesWest select 0})) exitWith
{
	player sideChat "You do not have any saved vehicles, currently!";
};

if (_art == "EastCivSpawn") then {

	if((count (nearestObjects [getPos LandSaveSpawn,["Ship","car","motorcycle","truck","Air"], 3]) > 0))exitWith
	{
		player groupChat "There is a vehicle blocking the spawn!";
	};

	continue = false;

	for "_i" from 0 to (count INV_SavedVehLand - 1) do
	{
		_rtv = (INV_SavedVehLand select _i) call INV_GetItemName;
		_retriveTxt = format["retrive%1",_i];
		_vehicle2Spawn = format["continue = true;vehicle2Spawn = (INV_SavedVehLand select %1);",_i];
		_retriveTxt = player addAction [_rtv,"noscript.sqf",_vehicle2Spawn,1,true,true,"",'player distance LandSavePoint < 5'];
		_actionsToRemove = _actionsToRemove + [_retriveTxt];
	};

	[] call OL_Events_ActionRemove;

	if(gettingcar == 1)exitWith{"You are getting a vehicle out of storage already..."};
	gettingcar = 1;

	player sideChat "Select a vehicle from the scroll menu!";

	waituntil {continue};
	{player removeAction _x;}forEach _actionsToRemove;


	player sideChat "RETRIEVING VEHICLE IN 3...";
	sleep 1;
	player sideChat "RETRIEVING VEHICLE IN 2...";
	sleep 1;
	player sideChat "RETRIEVING VEHICLE IN 1...";
	sleep 1;

	_v = format ["vehicle_%1_%2",player,round(time)];

	[vehicle2spawn, LandSaveSpawn] spawn INV_CreateVehicle;

	INV_SavedVehLand = INV_SavedVehLand - [vehicle2Spawn];

	server globalchat format ["%1",_v];

	player groupChat format ["RETRIEVED %1",vehicle2spawn call inv_getitemname];

	sleep 3;
	continue = false;
	gettingcar = 0;

	[] call OL_Events_ActionToggle;
};

if (_art == "WestCivSpawn") then {

	if((count (nearestObjects [getPos SaveSpawn,["Ship","car","motorcycle","truck","Air"], 3]) > 0))exitWith
	{
		player groupChat "There is a vehicle blocking the spawn!";
	};

	continue = false;

	for "_i" from 0 to (count INV_SavedVehLand - 1) do
	{
		_rtv = (INV_SavedVehLand select _i) call INV_GetItemName;
		_retriveTxt = format["retrive%1",_i];
		_vehicle2Spawn = format["continue = true;vehicle2Spawn = (INV_SavedVehLand select %1);",_i];
		_retriveTxt = player addAction [_rtv,"noscript.sqf",_vehicle2Spawn,1,true,true,"",'player distance savepoint < 5'];
		_actionsToRemove = _actionsToRemove + [_retriveTxt];
	};

	[] call OL_Events_ActionRemove;

	if(gettingcar == 1)exitWith{"You are getting a vehicle out of storage already..."};
	gettingcar = 1;

	player sideChat "Select a vehicle from the scroll menu!";

	waituntil {continue};
	{player removeAction _x;}forEach _actionsToRemove;


	player sideChat "RETRIEVING VEHICLE IN 3...";
	sleep 1;
	player sideChat "RETRIEVING VEHICLE IN 2...";
	sleep 1;
	player sideChat "RETRIEVING VEHICLE IN 1...";
	sleep 1;

	_v = format ["vehicle_%1_%2",player,round(time)];

	[vehicle2spawn, SaveSpawn] spawn INV_CreateVehicle;

	INV_SavedVehLand = INV_SavedVehLand - [vehicle2Spawn];

	server globalchat format ["%1",_v];

	player groupChat format ["RETRIEVED %1",vehicle2spawn call inv_getitemname];

	sleep 3;
	continue = false;
	gettingcar = 0;

	[] call OL_Events_ActionToggle;
};

if (_art == "DonorSpawn") then {

	if((count (nearestObjects [getPos carxspawn,["Ship","car","motorcycle","truck","Air"], 3]) > 0))exitWith
	{
		player groupChat "There is a vehicle blocking the spawn!";
	};

	continue = false;

	for "_i" from 0 to (count INV_SavedVehLand - 1) do
	{
		_rtv = (INV_SavedVehLand select _i) call INV_GetItemName;
		_retriveTxt = format["retrive%1",_i];
		_vehicle2Spawn = format["continue = true;vehicle2Spawn = (INV_SavedVehLand select %1);",_i];
		_retriveTxt = player addAction [_rtv,"noscript.sqf",_vehicle2Spawn,1,true,true,"",'player distance savepointx < 5'];
		_actionsToRemove = _actionsToRemove + [_retriveTxt];
	};

	[] call OL_Events_ActionRemove;

	if(gettingcar == 1)exitWith{"You are getting a vehicle out of storage already..."};
	gettingcar = 1;

	player sideChat "Select a vehicle from the scroll menu!";

	waituntil {continue};
	{player removeAction _x;}forEach _actionsToRemove;


	player sideChat "RETRIEVING VEHICLE IN 3...";
	sleep 1;
	player sideChat "RETRIEVING VEHICLE IN 2...";
	sleep 1;
	player sideChat "RETRIEVING VEHICLE IN 1...";
	sleep 1;

	_v = format ["vehicle_%1_%2",player,round(time)];

	[vehicle2spawn, carxspawn] spawn INV_CreateVehicle;

	INV_SavedVehLand = INV_SavedVehLand - [vehicle2Spawn];

	server globalchat format ["%1",_v];

	player groupChat format ["RETRIEVED %1",vehicle2spawn call inv_getitemname];

	sleep 3;
	continue = false;
	gettingcar = 0;

	[] call OL_Events_ActionToggle;
};

if (_art == "PDSpawn") then {

	if((count (nearestObjects [getPos ctrafficspawn,["Ship","car","motorcycle","truck","Air"], 3]) > 0))exitWith
	{
		player groupChat "There is a vehicle blocking the spawn!";
	};

	continue = false;

	for "_i" from 0 to (count savedVehiclesWest - 1) do
	{
		_rtv = (savedVehiclesWest select _i) call INV_GetItemName;
		_retriveTxt = format["retrive%1",_i];
		_vehicle2Spawn = format["continue = true;vehicle2Spawn = (savedVehiclesWest select %1);",_i];
		_retriveTxt = player addAction [_rtv,"noscript.sqf",_vehicle2Spawn,1,true,true,"",'player distance savepoint2 < 5'];
		_actionsToRemove = _actionsToRemove + [_retriveTxt];
	};

	[] call OL_Events_ActionRemove;

	if(gettingcar == 1)exitWith{"You are getting a vehicle out of storage already..."};
	gettingcar = 1;

	player sideChat "Select a vehicle from the scroll menu!";

	waituntil {continue};
	{player removeAction _x;}forEach _actionsToRemove;


	player sideChat "RETRIEVING VEHICLE IN 3...";
	sleep 1;
	player sideChat "RETRIEVING VEHICLE IN 2...";
	sleep 1;
	player sideChat "RETRIEVING VEHICLE IN 1...";
	sleep 1;

	_v = format ["vehicle_%1_%2",player,round(time)];

	[vehicle2spawn, ctrafficspawn] spawn INV_CreateVehicle;

	savedVehiclesWest = savedVehiclesWest - [vehicle2Spawn];

	server globalchat format ["%1",_v];

	player groupChat format ["RETRIEVED %1",vehicle2spawn call inv_getitemname];

	sleep 3;
	continue = false;
	gettingcar = 0;

	[] call OL_Events_ActionToggle;
};

if (_art == "SheriffSpawn") then {

	if((count (nearestObjects [getPos saveSpawn2s,["Ship","car","motorcycle","truck","Air"], 3]) > 0))exitWith
	{
		player groupChat "There is a vehicle blocking the spawn!";
	};

	continue = false;

	for "_i" from 0 to (count savedVehiclesWest - 1) do
	{
		_rtv = (savedVehiclesWest select _i) call INV_GetItemName;
		_retriveTxt = format["retrive%1",_i];
		_vehicle2Spawn = format["continue = true;vehicle2Spawn = (savedVehiclesWest select %1);",_i];
		_retriveTxt = player addAction [_rtv,"noscript.sqf",_vehicle2Spawn,1,true,true,"",'player distance savepoint2s < 5'];
		_actionsToRemove = _actionsToRemove + [_retriveTxt];
	};

	[] call OL_Events_ActionRemove;

	if(gettingcar == 1)exitWith{"You are getting a vehicle out of storage already..."};
	gettingcar = 1;

	player sideChat "Select a vehicle from the scroll menu!";

	waituntil {continue};
	{player removeAction _x;}forEach _actionsToRemove;


	player sideChat "RETRIEVING VEHICLE IN 3...";
	sleep 1;
	player sideChat "RETRIEVING VEHICLE IN 2...";
	sleep 1;
	player sideChat "RETRIEVING VEHICLE IN 1...";
	sleep 1;

	_v = format ["vehicle_%1_%2",player,round(time)];

	[vehicle2spawn, saveSpawn2s] spawn INV_CreateVehicle;

	savedVehiclesWest = savedVehiclesWest - [vehicle2Spawn];

	server globalchat format ["%1",_v];

	player groupChat format ["RETRIEVED %1",vehicle2spawn call inv_getitemname];

	sleep 3;
	continue = false;
	gettingcar = 0;

	[] call OL_Events_ActionToggle;
};
