// this is the fishing.sqf file, called when using fishing pole

private ["_fishingarray"];
_xx = getpos player select 0;
_yy = getpos player select 1;

_art = _this select 0;

if(iscop)exitwith{};

if (_art == "use") then 

{

if(working)exitwith{player groupChat "You're still fishing, wait to cast again";};

_item   = _this select 1;
_anzahl = _this select 2;

working=true;
_isInArea=false;

	{
	
	if (player distance (getMarkerPos ((_x select 0) select 0)) < ((_x select 0) select 1)) then {_isInArea = true; _fishingarray = _x};

	} forEach fishingarray;

_resource = _fishingarray select 1;
_rand = round (random 10);
_randres = fishingarray1 select _rand;
_max      = _fishingarray select 2;
_infos    = _resource call INV_getitemArray;
_name     = (_infos call INV_getitemName);

switch true do
{
case (!_isInArea and surfaceIsWater [_xx, _yy]):
{
if(vehicle player iskindof "SHIP") then
	{
	titletext ["Casting...", "PLAIN DOWN"];
	totalamount=0;
	_max = 3;
	(format ["%1 switchmove ""%2"";", player, "AwopPercMstpSgthWnonDnon_end"]) call swag;
	_amount = round (random _max);
	sleep 5;
	titletext ["Nibble...", "PLAIN DOWN", 1];
	sleep 1;
	titletext ["Nibble...", "PLAIN DOWN", 1];
	sleep 1;
	titletext ["Nibble...", "PLAIN DOWN", 1];
	
		if (_amount > 0) then
		{
		titletext [format ["You caught %1!", _randres], "PLAIN"];
		player groupchat format["You got %1 %2.", _amount, _randres];
		}
		else
		{
		titletext ["Nothing Caught you might Recast...", "PLAIN DOWN"];
		};
		_avail = floor (INV_Tragfaehigkeit - (call INV_GetOwnWeight));
		totalamount = totalamount + _amount;
			
	if((totalamount*2) >= _avail)exitwith{totalamount = (_avail/2); player groupchat "You cannot hold any more"; _i=6;};	
	totalamount = (floor (totalamount));
	[_randres, totalamount] call INV_AddInvItem;
	
	}
	else
	{
	titletext ["Casting...", "PLAIN DOWN"];
	totalamount=0;
	_max = 1;
	(format ["%1 switchmove ""%2"";", player, "AwopPercMstpSgthWnonDnon_end"]) call swag;
	_amount = round (random _max);
	sleep 5;
	titletext ["Nibble...", "PLAIN DOWN", 1];
	sleep 1;
	titletext ["Nibble...", "PLAIN DOWN", 1];
	sleep 1;
	titletext ["Nibble...", "PLAIN DOWN", 1];
	
		if (_amount > 0) then
		{
		titletext [format ["You caught %1!", _randres], "PLAIN"];
		player groupchat format["You got %1 %2.", _amount, _randres];
		}
		else
		{
		titletext ["Nothing Caught you might Recast...", "PLAIN DOWN"];
		};
		_avail = floor (INV_Tragfaehigkeit - (call INV_GetOwnWeight));
		totalamount = totalamount + _amount;
			
	if((totalamount*2) >= _avail)exitwith{totalamount = (_avail/2); player groupchat "You cannot hold any more"; _i=6;};	
	totalamount = (floor (totalamount));
	[_randres, totalamount] call INV_AddInvItem;
	
	};
};

case (_isInArea and _resource != "whale" and !(vehicle player iskindof "AIR")):
{
totalamount=0;
	(format ["%1 switchmove ""%2"";", player, "AwopPercMstpSgthWnonDnon_end"]) call swag;
	_amount = round (random _max);
	sleep 5;
	titletext ["Nibble...", "PLAIN DOWN", 1];
	sleep 1;
	titletext ["Nibble...", "PLAIN DOWN", 1];
	sleep 1;
	titletext ["Nibble...", "PLAIN DOWN", 1];
			
		if (_amount > 0) then
		{
		titletext [format ["You caught %2 %1!", _name, _amount], "PLAIN"];
		}
		else
		{
		titletext ["Nothing Caught try recasting...", "PLAIN DOWN"];
		};
		sleep 5;
		_avail = floor (INV_Tragfaehigkeit - (call INV_GetOwnWeight));
		totalamount = totalamount + _amount;
		if((totalamount*2) >= _avail)exitwith{totalamount = (_avail/2); player groupchat "maximum weight reached"; _i=6;};
		player groupchat format["You got %1 %2.", _amount, _name];
		totalamount = (floor (totalamount));
		[_resource, totalamount] call INV_AddInvItem;

};
case (vehicle player iskindof "SHIP" and _resource == "whale"):
{
totalamount=0;
	_max = 1;
	for [{_i=0}, {_i < 2}, {_i=_i+1}] do 

		{
		
		(format ["%1 switchmove ""%2"";", player, "AwopPercMstpSgthWnonDnon_end"]) call swag;
		_amount = round (random _max);
		titletext ["Fishing Whale takes time..", "PLAIN DOWN", 0.1];
		
		sleep 15;
		_avail = floor (INV_Tragfaehigkeit - (call INV_GetOwnWeight));
			
		totalamount = totalamount + _amount;
		if((totalamount*2) >= _avail)exitwith{totalamount = (_avail/2); player groupchat "maximum weight reached"; _i=6;};
		player groupchat format["You got %1 %2.", _amount, _name];
		
		};
	totalamount = (floor (totalamount));
	[_resource, totalamount] call INV_AddInvItem;
};
default {player groupchat "You must be in the area with a BOAT to fish!";working = false;};
};

working=false;
};