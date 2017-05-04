private ["_penalty"];

while {isciv} do

{

_car    = vehicle player;
_speed  = speed _car;
_type   = typeof _car;

	{

	if ((player == driver _car) and (_car distance _x < 40) and (_speed >= 100) and !(_car iskindof "Air")) then

		{

		_infos   = _type call INV_getitemArray;
		_license = (_infos select 4) select 1;

		[_x, "speedcam", 100] call CBA_fnc_globalSay3d;
		titleCut [" ","white in",1];
		if(_speed >= 100  and _speed < 110) then {_penalty = 1};
		if(_speed >= 110 and _speed < 130) then {_penalty = 2};
		if(_speed >= 130 and _speed < 150) then {_penalty = 3};
		if(_speed >= 150 and _speed < 170) then {_penalty = 6};
		if(_speed >= 170 		 ) then {_penalty = 7};

		player groupchat format["You have just been flashed by a speed camera Slow down! (Limit: 90, Speed: %1)", round _speed];

		uiSleep 2;

		if(demerits == 0)exitwith{};

		demerits = demerits - _penalty;
		if(demerits < 0)then{demerits = 0};

		player groupchat format["Demerit points lost: %1. Demerit points remaining: %2", _penalty, demerits];

		['if (%2 == 0) then {
			server globalChat "%1 has lost his drivers license!";
			if (player == %1) then {
				INV_LizenzOwner = INV_LizenzOwner - ["car"];
			};
		};', player, demerits] call OL_network_Swag;

		};

	} foreach speedcamarray;

uiSleep 0.5;

};
