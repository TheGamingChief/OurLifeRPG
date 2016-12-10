_Selection = ((_this select 3) select 0);
_Name = name player;


switch (_Selection) do
{
    case "Elevator1": {
	    titleText ["You are taking the Elevator to the Second Floor...","BLACK"];
		//player setPos (getPos emselispawn2);
        sleep 5;
	    Playsound "bell";
		player setpos position emselispawn1;
        titleText["","PLAIN"];
    };

    case "Elevator2": {
	    titleText ["You are taking the Elevator to the First Floor...","BLACK"];
		sleep 5;
		Playsound "bell";
        player setpos position emselispawn2;		
        titleText["","PLAIN"];
    };

    case "service": {
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
        player groupchat "Service's Complete!";
    };

    case "clear": {
        _vcl = (nearestobjects [getpos player, ["Air"], 5] select 0);
        if(isnil ("_vcl")) exitwith {player groupchat "Too far from your Helicopter!";};
        if(!(player == vehicle player)) exitWith {player groupchat "You must be outside the Helicopter!";};
        player groupchat "Clearing the Helipad...";
        sleep 5;
        deleteVehicle _vcl;

player groupchat "Helipad Clear!";
    };


};



