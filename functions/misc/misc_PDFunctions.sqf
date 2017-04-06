switch (_this select 0) do {
  case "CLEAR_HELIPAD": {
    private["_vcl"];
    _vcl = (nearestobjects [getpos player, ["Air"], 5] select 0);
    if (isNil "_vcl") exitwith {player groupchat "Too far from your Helicopter!"};
    if (vehicle player != player) exitWith {player groupchat "You must be outside the Helicopter!"};

    player groupChat "Clearing the Helipad...";
    uiSleep 5;
    deleteVehicle _vcl;

    player groupChat "Helipad Clear!";
  };
  case "CLEAR_DOCK": {
    private["_vcl"];
    _vcl = (nearestobjects [getpos player, ["Boat","Ship"], 95] select 0);
    if (isNil "_vcl") exitwith {player groupchat "Too far from the Boat!"};
    if (vehicle player != player) exitWith {player groupchat "You must be outside the Boat!"};

    player groupchat "Clearing the Dock...";
    uiSleep 5;
    deleteVehicle _vcl;

    if (vehicle player == player) then
    {
    	{
    		deleteVehicle _x;
    	} forEach (player nearObjects ["FSF_Ladder", 95]);
    };

    player groupchat "Dock Clear!";
  };
  case "REPAIR": {
    private["_vcl"];
    _vcl = (nearestobjects [getpos player, ["Air"], 10] select 0);
    if (isNil "_vcl") exitwith {player groupchat "Too far from your Helicopter!"};
    if (vehicle player != player) exitWith {player groupchat "You must be outside the Helicopter!"};

    player playMove "AinvPknlMstpSlayWrflDnon_medic";

    player groupchat "Repairing...";
    uiSleep 3;
    _vcl setDamage 0;

    player groupchat "Fueling...";
    uiSleep 3;
    _vcl setFuel 1;

    player groupchat "Rearming...";
    uiSleep 2;
    _vcl setVehicleAmmo 1;

    player groupchat "Service's Complete!";
  };
};
