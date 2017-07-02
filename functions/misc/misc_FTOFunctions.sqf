switch (_this select 0) do
{
  case "TrafficStop": {
    titleText ["LOADING...","BLACK"];
    playSound "motorolaradiobeep";
    uiSleep 3;
    {deleteVehicle _x} forEach FTOcars; FTOcars = [];
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
