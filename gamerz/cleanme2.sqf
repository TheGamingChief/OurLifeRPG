//I LIKE ANUS
Sleep 60;
server globalchat "Server Cleaner Starting in 1 min!";
Sleep 30;
server globalchat "Server Cleaner Starting in 30 Sec!";
Sleep 30;
server globalchat "Cleaner Started";



//hint format ["Cleaned Server"];
//cutText [format ["Clear Server"], "PLAIN DOWN"];

{
	if ((count(crew _x) == 0) and ((damage _x > 0.85))) then 
	{
		if !((_x isKindOf "Air") or (_x isKindOf "Tank") or (_x isKindOf "Man")) then 
		{
			deleteVehicle vehicle _x;
			deleteVehicle _x;
			deleteVehicle vehicle _x;
			deleteVehicle _x;
			deleteVehicle vehicle _x;
			deleteVehicle _x;
		};
	};
} forEach vehicles;


if (vehicle player in allDEAD) then {deleteVehicle vehicle player;};

sleep 1;
server globalchat "Server Cleaner Done!";