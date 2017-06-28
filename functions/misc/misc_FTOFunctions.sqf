switch (_this select 0) do
{
  case "TrafficStop": {
    titleText ["LOADING...","BLACK"];
	playSound "motorolaradiobeep";
	uiSleep 3;
	_trainingcar = nearestObjects [player, ["olrpg_pdcv_pb","tcg_bmw_m3","FORD_MUSTANG_SHELBY_COBRA"], 15];
	{deleteVehicle _x} forEach _trainingcar;
    titleText ["Traffic Stop Situation Enabled...","BLACK"];
    uiSleep 5;
		_tscar1 = "olrpg_pdcv_pb" createVehicle getMarkerPos "tsspawn1";
		_tscar1 setDir (getdir _tscar1) + 345;
	    _tscar2 = "tcg_bmw_m3" createVehicle getMarkerPos "tsspawn2";
    titleText["","PLAIN"];
	  };
  case "FelonyStop": {
     titleText ["LOADING...","BLACK"];
	playSound "motorolaradiobeep";
	uiSleep 3;
	_trainingcar = nearestObjects [player, ["olrpg_pdcv_pb","tcg_bmw_m3","FORD_MUSTANG_SHELBY_COBRA"], 15];
	{deleteVehicle _x} forEach _trainingcar;
    titleText ["Felony Stop Situation Enabled...","BLACK"];
    uiSleep 5;
     	_fscar1 = "olrpg_pdcv_pb" createVehicle getMarkerPos "fsspawn1";
		_fscar1 setDir (getdir _fscar1) + 345;
	    _fscar2 = "olrpg_pdcv_pb" createVehicle getMarkerPos "fsspawn2";
		_fscar2 setDir (getdir _fscar2) + 345;
	    _fscar3 = "FORD_MUSTANG_SHELBY_COBRA" createVehicle getMarkerPos "fsspawn3";
    titleText["","PLAIN"];
		};
  case "Trainingsweep": {
    titleText ["Clearing Training Pad...","BLACK"];
	playSound "motorolaradiobeep";
	uiSleep 8;
	_trainingcar = nearestObjects [player, ["olrpg_pdcv_pb","tcg_bmw_m3","FORD_MUSTANG_SHELBY_COBRA"], 15];
	{deleteVehicle _x} forEach _trainingcar;
	titleText["","PLAIN"];
		};	
};