if (!alive player || player getVariable "KOED") exitWith { player groupChat "You are dead and can't press your Panic Button!" };
if (!backupavailable) exitwith { player sidechat "Your Panic Button Is Disabled, Try again in 60 seconds" };
backupavailable = false;
player groupchat "You have requested backup. Your location has been marked on the map.";

format['
if (iscop) then {
  _markerobj = createMarkerLocal [("Backup_" + name %1), getPos %1];
  _markerobj setMarkerShapeLocal "ICON";
  _markerobj setMarkerTypeLocal "Warning";
  _markerobj setMarkerColorLocal "ColorRed";
  _markerobj setMarkerTextLocal "Officer Requested Backup Here!";

  player sideChat "%2 (%1) Has hit their panic button, they need immediate backup! Their location has been marked on the map via a map marker! GRID: %3";
  playSound "beepsimple";
}', player, PlayerName, mapGridPosition player] call OL_network_Swag;

player sidechat "Your panic button is now disabled. It will be available in 60 seconds.";
uiSleep 60;
backupavailable = true;
player sidechat "Your panic button is now available.";
deleteMarker ("Backup_" + PlayerName);
