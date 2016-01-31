/*
_this = _this select 3;
_vcl = vehicle (_this select 1);
_te = vehicle player;
player groupchat format["%1", _vcl];
player groupchat format["%1", _this];
player groupchat format["%1", _te];
vehicle player say ["carallarm", 1] call broadcast;
*/
private ["_minearray"];
if(working)exitwith{};
working=true;
_isInArea=false;

	{
	
	if (player distance (getMarkerPos ((_x select 0) select 0)) < ((_x select 0) select 1) && isciv) then {_isInArea = true; _minearray = _x};

	} forEach miningarray;
_amount = round (random 3);
_resource = _minearray select 1;
_max      = _minearray select 2;
_infos    = _resource call INV_getitemArray;
_name     = (_infos call INV_getitemName);
_itemweight = (_infos call INV_getitemTypeKg)*_amount;
_itemweight1 = (_infos call INV_getitemTypeKg);

if (!_isInArea) then

	{
	
	player groupChat "You are not near a resource area.";
	working = false;

	}
else {
	_avail = floor (INV_Tragfaehigkeit);
	_maxw = (floor(call INV_GetOwnWeight)+_itemweight);
	if(_maxw > _avail)exitwith{player groupchat "maximum weight reached";};
	titletext ["Working...", "PLAIN DOWN", 0.1];
	player playmove "AinvPknlMstpSlayWrflDnon";
	sleep 1.3;
	player switchmove "normal";
	player groupchat format["You got %1 %2.", _amount, _name];
	[_resource, _amount] call INV_AddInvItem;
	};
working=false;

