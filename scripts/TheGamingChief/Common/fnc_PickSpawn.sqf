/*
Script made by : TheGamingChief for OurLifeRPG
Version 1.0 (Stable)
File: fnc_PickSpawn.sqf
Description: This file runs when the new spawn menu is opened, It fills the menu with spawn points and puts a lock next to spawns that the player is not whitelisted for.
Description Continued: Big thanks to DaThrillerKiller for the concept.
TeamSpeak: TS.OurLifeRPG.Net
Website: OurLifeRPG.Net
*/

disableSerialization;
_SpawnPoints = ["San Milovitz (East Civilian Spawn)","Nanchuk (West Civilian Spawn)","Pueblo (Tier X Spawn)","Hidden (Undercover Spawn)"];

for [{_c=0}, {_c < (count _SpawnPoints)}, {_c=_c+1}] do 
{
_Marker = (_SpawnPoints select _c);
_Name = markerText _Marker;
_Posions = str(getMarkerPos _Marker);
_index = lbAdd [4569, _Name];
_lb = (findDisplay 65525) displayCtrl 4569;
_lb lbSetColor [_index,[1,1,1,.8]];
_lb lbSetPicture[_index,"\ca\ui\data\ui_server_connect_ca.paa"];
if(!(getplayeruid player in TierX_id) and (_Name == "Pueblo (Tier X Spawn)")) then {_lb lbSetPicture [_index,"\ca\ui\data\ui_server_locked_ca.paa"];};
if(!(getplayeruid player in Undercover_id) and (_Name == "Hidden (Undercover Spawn)")) then {_lb lbSetPicture [_index,"\ca\ui\data\ui_server_locked_ca.paa"];};
lbSetData [4569, _index, _Posions];	
};