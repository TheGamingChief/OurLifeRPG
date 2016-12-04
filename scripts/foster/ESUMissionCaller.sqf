while {true} do {

	waitUntil {!(fireIsSpawned)};
	waitUntil {!(gasIsSpawned)};
	waitUntil {!(wreckIsSpawned)};
	waitUntil {playersNumber resistance >=3};

	//uiSleep (15 * 60);
	uiSleep 1800;
	
	_num = floor (random (3));	
	
	if (_num == 0) then
	{
		execVM "scripts\foster\gasleak.sqf";
	};
	
	if (_num == 1) then
	{
		execVM "scripts\foster\randomfire.sqf";
	};
	
	if (_num == 2) then
	{
		execVM "scripts\foster\wrecks.sqf";
	};
	
	uiSleep 10;
	
};