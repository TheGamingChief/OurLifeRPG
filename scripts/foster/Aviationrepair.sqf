private["_vcl"];
_vcl = (nearestobjects [getpos player, ["Air"], 10] select 0);
if(isnil ("_vcl")) exitwith {player groupchat "Too far from your Helicopter!";};
if(!(player == vehicle player)) exitWith {player groupchat "You must be outside the Helicopter!";};

player playMove "AinvPknlMstpSlayWrflDnon_medic";

player groupchat "Repairing...";
sleep 3;
_vcl setDamage 0;

player groupchat "Fueling...";
sleep 3;
_vcl setFuel 1;

player groupchat "Rearming...";
sleep 2;
_vcl setVehicleAmmo 1;

player groupchat "Service's Complete!";

