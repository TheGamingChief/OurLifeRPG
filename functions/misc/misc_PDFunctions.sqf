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
  case "TrafficStop": {
    titleText ["LOADING...","BLACK"];
    playSound "motorolaradiobeep";
    uiSleep 3;
    {deleteVehicle _x} forEach FTOcars;
    FTOcars = [];
    titleText ["Traffic Stop Situation Enabled...","BLACK"];
    uiSleep 5;
    FTOcar1 = "olrpg_pdcv_pb" createVehicle getMarkerPos "tsspawn1"; FTOcar1 setVehicleInit "this setDir 345; this animate ['ani_lights', 0.5]"; processInitCommands;
    FTOcar2 = "tcg_bmw_m3" createVehicle getMarkerPos "tsspawn2";
    FTOcars = FTOcars + [FTOcar1,FTOcar2];
    titleText["","PLAIN"];
  };
  case "FelonyStop": {
    titleText ["LOADING...","BLACK"];
    playSound "motorolaradiobeep";
    uiSleep 3;
    {deleteVehicle _x} forEach FTOcars; FTOcars = [];
    titleText ["Felony Stop Situation Enabled...","BLACK"];
    uiSleep 5;
    FTOcar1 = "olrpg_pdcv_pb" createVehicle getMarkerPos "fsspawn1"; FTOcar1 setVehicleInit "this setDir 345; this animate ['ani_lights', 0.5]"; processInitCommands;
    FTOcar2 = "olrpg_pdcv_pb" createVehicle getMarkerPos "fsspawn2"; FTOcar2 setVehicleInit "this setDir 345; this animate ['ani_lights', 0.5]"; processInitCommands;
    FTOcar3 = "FORD_MUSTANG_SHELBY_COBRA" createVehicle getMarkerPos "fsspawn3";
    FTOcars = FTOcars + [FTOcar1,FTOcar2,FTOcar3];
    titleText["","PLAIN"];
  };
  case "Trainingsweep": {
    titleText ["Clearing Training Pad...","BLACK"];
    playSound "motorolaradiobeep";
    uiSleep 6;
    {deleteVehicle _x} forEach FTOcars; FTOcars = [];
    titleText["","PLAIN"];
  };
};
