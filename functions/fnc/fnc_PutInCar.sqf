if (player distance civmenuciv >= 3) exitWith {hint "The person is too far away!"};

_vcl = (nearestobjects [getpos player, ["Air", "Ship", "LandVehicle"], 5] select 0);
if (isNil "_vcl") exitWith {systemChat "There is not a vehicle close enough!"};
format['if (player == %1) then {[%2,%1] execVM "ClientArrest.sqf"};',civmenuciv,_vcl] call OL_network_Swag;
detach civmenuciv;
civmenuciv setVariable ["Escorted", false, true];
