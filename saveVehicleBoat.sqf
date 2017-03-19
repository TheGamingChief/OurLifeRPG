_ArryLength = count INV_SavedVehBoat;


if(_ArryLength >= 3) then {

player groupChat "YOU CANNOT STORE MORE THEN 3 BOATS";

} else {

_vcl = (nearestobjects [getpos player, ["Ship"], 10] select 0);

_vclClass = typeOf _vcl;

player globalchat format ["VEHICLE ARRAY : %1",_vcl]; // debug


INV_SavedVehBoat set [count INV_SavedVehBoat, _vclClass];

player globalchat format ["SAVED ARRAY : %1",INV_SavedVehBoat]; // debug

deleteVehicle _vcl;

player groupChat "BOAT SAVED, YOU MAY RETRIEVE IT AT THE BOAT RETRIEVE POINT!";

};