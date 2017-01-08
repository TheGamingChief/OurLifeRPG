deleteMarker "CarWreck";
deleteMarker "CarWreck2";

_wrecks = nearestObjects [CarWreckObj, ["LADAWreck","SKODAWreck","datsun02Wreck","UralWreck","UAZWreck"], 20];
{deleteVehicle _x} forEach _wrecks;

deleteVehicle CarWreckObj;

Format['if (playerside == resistance) then {playsound "bells"};'] call broadcast;			
Format['if (playerside == resistance) then {player sidechat "You are getting reports of a multiple car accident blocking a road!"};'] call broadcast;
Format['if (playerside == resistance) then {player sidechat "Check your map for the location and get to it quickly!"};'] call broadcast;
Format['if (playerside == west) then {playsound "beepsimple"};'] call broadcast;
Format['if (playerside == west) then {player sidechat "Dispatch: Reports of a 10-50, all available units respond. Check your map for the location."};'] call broadcast;

_wreckLocation = ["wreckspawn1","wreckspawn2","wreckspawn3","wreckspawn4","wreckspawn5","wreckspawn6","wreckspawn7","wreckspawn8","wreckspawn9","wreckspawn10","wreckspawn11"];
_wreckSelection = _wreckLocation call bis_fnc_selectrandom;
	
_wreckMarker = createMarker ["CarWreck", (getMarkerPos _wreckSelection)];
_wreckMarker setMarkerShape "ELLIPSE";
_wreckMarker setMarkerSize [80,80];
_wreckMarker setMarkerColor "ColorOrange";

_wreckMarker2 = createMarker ["CarWreck2", (getMarkerPos _wreckSelection)];
_wreckmarker2 setMarkerType "Warning";
_wreckMarker2 setMarkerColor "ColorBlack";
"CarWreck2" setMarkerText "!!! CAR ACCIDENT !!!";

CarWreckObj = "HeliHEmpty" createVehicle (getMarkerPos _wreckSelection);
CarWreckObj setVehicleInit "i=[this,4,time,false,false] spawn BIS_Effects_Burn"; processInitCommands;
CarWreckObj setVariable ["iswrecked",1,true];

_wreck1 = "LADAWreck" createvehicle (getPos CarWreckObj);

_wreck2 = "SKODAWreck" createvehicle (getPos CarWreckObj);
_wreck2 attachto [CarWreckObj, [4.5,4.5,0.70]];
_wreck2 setDir 134;

_wreck3 = "datsun02Wreck" createvehicle (getPos CarWreckObj);
_wreck3 attachto [CarWreckObj, [-4.5,-6,0.75]];
_wreck3 setDir 83;

_wreck4 = "UralWreck" createvehicle (getPos CarWreckObj);
_wreck4 attachto [CarWreckObj, [0,10,1.25]];
_wreck4 setDir 270;

_wreck5 = "UAZWreck" createvehicle (getPos CarWreckObj);
_wreck5 attachto [CarWreckObj, [4.5,-6.5,0.75]];
_wreck5 setDir 24;

wreckIsSpawned = true;
publicVariable "wreckIsSpawned";

while {true} do
{
	if (!(wreckIsSpawned)) exitWith {};
	_randomtime = random (45) + 30;
	sleep _randomtime;
	if (!(wreckIsSpawned)) exitWith {};
	_exp = "HelicopterExploBig" createVehicle (getPos CarWreckObj);
};