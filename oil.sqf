_art = ((_this select 3) select 0);

if (_art == "getoil") then 

{

if(working)exitwith{};

_item   = _this select 1;
_anzahl = _this select 2;

working=true;

_resource = "oil";
_max      = 4;
_infos    = _resource call INV_getitemArray;
_name     = (_infos call INV_getitemName);

totalamount=0;
_max = shovelmax;

	for [{_i=0}, {_i < 4}, {_i=_i+1}] do 

		{

		_amount = round (random _max);
		titletext ["Drilling Oil...", "PLAIN DOWN", 0.1];
		player playmove "AinvPknlMstpSlayWrflDnon";
		sleep 1.3;
		player switchmove "normal";
		
		_avail = floor (INV_Tragfaehigkeit - (call INV_GetOwnWeight));
			
		totalamount = totalamount + _amount;
		if((totalamount*3) >= _avail)exitwith{totalamount = (_avail/3); player groupchat "maximum weight reached"; _i=6;};
		player groupchat format["You got %1 %2.", _amount, _name];
		
		};
	totalamount = (floor (totalamount));
	[_resource, totalamount] call INV_AddInvItem;

working=false;

};