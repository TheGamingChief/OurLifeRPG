if(playerSide == WEST)then
{
	if (!backupavailable) exitwith {player sidechat format["Your Panic Button Is Disabled, Try again in 60 seconds"];};
	player groupchat format["You have requested backup. Your location has been marked on the map."];

	_civ = player;
	_unit = _this select 0;
	_unitname = name _unit;
	_location = _this select 1;
	_gridPos = mapGridPosition getpos _civ;

	deleteMarker "Backup";
	_markerobj = createMarker ["Backup",[0,0]];																																																	
	_markerobj setMarkerShape "ICON";								
	_markerobj setMarkerType "Warning";										
	"Backup" setMarkerColor "ColorRed";																														
	"Backup" setMarkerText "Officer Requested Backup Here!";	
	"Backup" setMarkerPos getPos _civ;
	format['if(iscop) then {player sideChat "%1 (%2) Has Hit Their Panic Button, They Need Immediate Backup! Their location has been marked on the map via a map marker! GRID: %3"}',name _civ, _civ, _gridPos] call broadcast;
	('if(iscop) then {playsound "beepsimple";}') call broadcast;
	player sidechat "Your Panic Button is now disabled. It will be available in 60 seconds.";
	backupavailable = false;
	sleep 61;
	backupavailable = true;
	player sidechat format["Your Panic Button Is Now Available."];
	sleep 30;
	deleteMarker "Backup";
};