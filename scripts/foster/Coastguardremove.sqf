private["_vcl"];
_vcl = (nearestobjects [getpos player, ["Boat","Ship"], 95] select 0);
if(isnil ("_vcl")) exitwith {player groupchat "Too far from the Boat!";};
if(!(player == vehicle player)) exitWith {player groupchat "You must be outside the Boat!";};
 
player groupchat "Clearing the Dock...";
sleep 5;
deleteVehicle _vcl;
 
if (vehicle player == player) then
{
	{      
		deleteVehicle _x; 
	} forEach (player nearObjects ["FSF_Ladder", 95]);
}
 
player groupchat "Dock Clear!";