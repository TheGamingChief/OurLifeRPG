private["_vcl"];
_vcl = (nearestobjects [getpos player, ["Air"], 5] select 0);
if(isnil ("_vcl")) exitwith {player groupchat "Too far from your Helicopter!";};
if(!(player == vehicle player)) exitWith {player groupchat "You must be outside the Helicopter!";};

player groupchat "Clearing the Helipad...";
sleep 5;
deleteVehicle _vcl;

player groupchat "Helipad Clear!";

