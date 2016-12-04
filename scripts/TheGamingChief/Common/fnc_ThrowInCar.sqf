_civ = civmenuciv;
if (player distance _civ >= 3) exitWith {hint "The person is too far away!"};

_vcl = (nearestobjects [getpos player, ["Air", "Ship", "LandVehicle"], 5] select 0);
if (isNil "_vcl") exitWith {systemChat "There is not a vehicle close enough!"};
[_civ,[_vcl, _civ],"ClientArrest.sqf"] execVM "CB.sqf";
detach _civ;
_civ setVariable ["Escort",false,true];