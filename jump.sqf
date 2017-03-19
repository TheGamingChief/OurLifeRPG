_art =  ((_this select 3) select 0);
player action [ "getout", vehicle player];

if (_art == 1) then 
	{
	_gasarray = ["SmokeShellGreen","SmokeShellRed","SmokeShellWhite","SmokeShellPurple"];
	_gas = _gasarray select round random(count _gasarray - 1);
	player setPos [ getPos player select 0, (getPos player select 1)-10, (getPos player select 2)];
	sleep 1;
	[player] exec "\ca\air2\halo\data\scripts\halo.sqs";
	_jumpaction = player addaction ["Pull Secondary","jump.sqf",[2],1,false,true,"",""];
	_flare = _gas createVehicle position vehicle player;
	_flare attachTo [vehicle player,[0,0,0]];
		while {((getposATL player)select 2) > 3} do
		{
		hintsilent format ["Altimeter: %1", round (getPosATL player select 2)];
		sleep .05;
		};
		if (((getposATL player)select 2) < 3) then
		{
		player removeaction _jumpaction;
		hintsilent "";
		};
	};

if (_art == 2) then 
	{
player groupchat "opening secondary";
[player] exec "ca\air2\halo\data\Scripts\HALO_Parachute.sqs";
	};
