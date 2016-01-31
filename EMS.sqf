private ["_unit"];
_unit = player;
_int = 1; //intensity of fog (0 to 1)

if (player distance getmarkerpos "Fire" <= 45) then
{


_source = "logic" createVehicleLocal (getpos _unit);
	_fog = "#particlesource" createVehicleLocal getpos _source;
	_fog setParticleParams [["\Ca\Data\ParticleEffects\Universal\Universal", 16, 12, 13,0],
	"", 
	"Billboard", 
	0.5, 
	0.5, 
	[0,.25,0],
	[0, 0, -.2], 
	1, 2.8,	1, 1.3, 
	[0, 0.2,0], 
	[[1,1,1, _int], [1,1,1, 0.01], [1,1,1, 0]], 
	[1000], 
	1, 
	0.04,
	"", 
	"", 
	_source];
	_fog setParticleRandom [2, [0, 0, 0], [0.25, 0.25, 0.25], 0, 0.5, [0, 0, 0, 0.1], 0, 0, 10];
	_fog setDropInterval 0.001;

_source attachto [_unit,[0,0.15,.5], "lefthand"]; // get fog to come out of player mouth
{deleteVehicle _x;_deleted = _deleted + 1;} forEach (nearestObjects [player,["Land_Campfire_burning"], 30]);
deletemarker "Fire";
['geld', 5000] call INV_AddInvItem;
player groupChat "You have been paid $5000 for putting out a fire";

sleep 5; // 1/2 second exhalation
deletevehicle _source;


}

else
{
	_source = "logic" createVehicleLocal (getpos _unit);
	_fog = "#particlesource" createVehicleLocal getpos _source;
	_fog setParticleParams [["\Ca\Data\ParticleEffects\Universal\Universal", 16, 12, 13,0],
	"", 
	"Billboard", 
	0.5, 
	0.5, 
	[0,.25,0],
	[0, 0, -.2], 
	1, 2.8,	1, 1.3, 
	[0, 0.2,0], 
	[[1,1,1, _int], [1,1,1, 0.01], [1,1,1, 0]], 
	[1000], 
	1, 
	0.04, 
	"", 
	"", 
	_source];
	_fog setParticleRandom [2, [0, 0, 0], [0.25, 0.25, 0.25], 0, 0.5, [0, 0, 0, 0.1], 0, 0, 10];
	_fog setDropInterval 0.001;

	_source attachto [_unit,[0,0.15,.5], "lefthand"]; 
	{deleteVehicle _x;_deleted = _deleted + 1;} forEach (nearestObjects [player,["Land_Campfire_burning"], 30]);


sleep 5; // 1/2 second exhalation
deletevehicle _source;

};
