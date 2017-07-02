actionsToRemove = [];

if (isNil {INV_SavedVehAir select 0}) exitWith
{
	player sideChat "You do not have any saved vehicles, currently!";
};

if((count (nearestObjects [getPos AirSaveSpawn,["Ship","car","motorcycle","truck","Air"], 3]) > 0))exitWith
{
	player groupChat "There is a vehicle blocking the spawn!";
};

continue = false;

for "_i" from 0 to (count INV_SavedVehAir - 1) do
{
	_rtv = (INV_SavedVehAir select _i) call INV_GetItemName;
	_retriveTxt = format["retrive%1",_i];
	_vehicle2Spawn = format["continue = true;vehicle2Spawn = (INV_SavedVehAir select %1);",_i];
	_retriveTxt = player addAction [_rtv,"noscript.sqf",_vehicle2Spawn,1,true,true,"",'player distance AirSavePoint < 5'];
	actionsToRemove = actionsToRemove + [_retriveTxt];
};

[] call OL_Events_ActionRemove;

if(gettingairvehicle == 1)exitWith{"You are getting a air vehicle out of storage already..."};
gettingairvehicle = 1;

player sideChat "Select a vehicle from the scroll menu!";

waituntil {continue};

{player removeAction _x;}forEach actionsToRemove;

player sideChat "RETRIEVING VEHICLE IN 3...";
sleep 1;
player sideChat "RETRIEVING VEHICLE IN 2...";
sleep 1;
player sideChat "RETRIEVING VEHICLE IN 1...";
sleep 1;

_v = format ["vehicle_%1_%2",player,round(time)];

[vehicle2spawn, AirSaveSpawn] spawn INV_CreateVehicle;

INV_SavedVehAir = INV_SavedVehAir - [vehicle2Spawn];

server globalchat format ["%1",_v];

player sideChat format ["RETRIEVED %1",vehicle2spawn call inv_getitemname];

sleep 3;
continue = false;
gettingairvehicle = 0;
[] call OL_Events_ActionToggle;