_types = ["LandVehicle", "Air", "ship"];
_maxDistance = 7;
_vcls = [];

_vcls = nearestobjects [getpos player, _types, _maxDistance];
if (count _vcls > 0) exitWith { _vcls };

_vcls = nearestobjects [getPosATL player, _types, _maxDistance];
if (count _vcls > 0) exitWith { _vcls };

_vcls = nearestobjects [getPosASL player, _types, _maxDistance];
_vcls;
