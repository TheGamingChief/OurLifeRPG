if (!backupavailable) exitwith {player sidechat format["Your Panic Button Is Disabled, Try again in 60 seconds"];};
backupavailable = false;
if (player getVariable "KOED")exitWith{player groupChat "You are dead and can't press your Panic Button!";backupavailable = true;};
player groupchat format["You have requested backup. Your location has been marked on the map."];

_gridPos = mapGridPosition getpos player;
	
format['if(iscop) then {

	_markerobj = createMarkerLocal [("Backup_" + name %1), getPos %1];
	_markerobj setMarkerShapeLocal "ICON";				
	_markerobj setMarkerTypeLocal "Warning";								
	_markerobj setMarkerColorLocal "ColorRed";																										
	_markerobj setMarkerTextLocal "Officer Requested Backup Here!";
}',player]call broadcast;

format['if(iscop) then {player sideChat "%1 (%2) Has Hit Their Panic Button, They Need Immediate Backup! Their location has been marked on the map via a map marker! GRID: %3"}',name player, player, _gridPos] call broadcast;
('if(iscop) then {playsound "beepsimple";}') call broadcast;
player sidechat "Your Panic Button is now disabled. It will be available in 60 seconds.";
sleep 61;
backupavailable = true;
player sidechat format["Your Panic Button Is Now Available."];
deleteMarker ("Backup_" + name player);	