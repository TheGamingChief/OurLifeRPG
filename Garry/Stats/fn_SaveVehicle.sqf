_vcl = _this select 0;
_vcl setVariable ["ImBeingSaved", true, true];

if (!(_vcl in INV_VehicleArray)) exitWith { player groupChat "VEHICLE SAVE FAILED! TRY MOVING AWAY FROM OTHER OBJECTS!" };
[_vcl] call OL_vehicle_Store;
deleteVehicle _vcl;

server globalChat "VEHICLE SAVED";
