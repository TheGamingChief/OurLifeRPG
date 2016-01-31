_ArryLength = count INV_SavedVehAir;


if(_ArryLength >= 3) then {

player groupChat "YOU CANNOT SAVE MORE THEN 3 AIR VEHICLES";

} else {

_vcl = (nearestobjects [getpos player, ["Air"], 3] select 0);

_vclClass = typeOf _vcl;

player globalchat format ["VEHICLE ARRAY : %1",_vcl]; // debug


INV_SavedVehAir set [count INV_SavedVehAir, _vclClass];

player globalchat format ["SAVED ARRAY : %1",INV_SavedVehAir]; // debug

deleteVehicle _vcl;

player groupChat "AIRPLANE SAVED, YOU MAY RETRIEVE IT AT THE AIR VEHICLE RETRIEVE POINT!";


["INV_SavedVehicleAir",INV_SavedVehicleAir] spawn clientsavevar;

};