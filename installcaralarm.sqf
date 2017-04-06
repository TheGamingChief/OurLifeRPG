private ["_vcl","_type"];
_vcl = vehicle player;
_type	= typeof _vcl;

if(_vcl getvariable "caralarm" == 1) exitwith {
	player groupchat "This vehicle already has a car alarm installed.";
};

if(player == _vcl) exitWith {
	player groupchat localize "STRS_inv_items_speed_car";
};

if(!(_vcl iskindof "LandVehicle") or _type call INV_getitemTypeKg > 2) exitWith {
	player groupchat "You can't install a car alarm in this thing!";
};

_installing = _vcl getvariable "installing";
if(!isnil "_installing")exitwith{player groupchat "Already upgrading, try again in a moment."};

['caralarm',(-1)] call INV_AddInventoryItem;

player groupchat "Installing car alarm...";
_vcl setvariable ["installing", 1, false];
_fuel = fuel _vcl;
_vcl setfuel 0;
playsound "Drill";

sleep 10;

_vcl setfuel _fuel;
_vcl setvariable ["caralarm", 1, true];
_vcl setvariable ["nextalarmtime", time, true];
_vcl setvariable ["rolenum",rolenumber,true];
_vcl addeventhandler ["Dammaged",{[_this] call OL_events_HandleCarAlarm;}];
player groupchat "You have installed the Car Alarm!";
_vcl setvariable ["installing",nil, false];
