iactionarr = [];

while {true} do 
{
	_objs 	= nearestobjects [getposatl player, ["Barrel4","Suitcase", "EvMoney","MAP_R2_Boulder2","R_Stone_02_EP1","MAP_R2_Boulder1","R_Stone_01_EP1"], 5];
	
	{
		_exitvar = false;
		
		for "_i" from 0 to (count iactionarr -1) do 
		{
			if(count iactionarr > 0)then {
				_arr = iactionarr select _i;
				if(_x in _arr)exitwith{_exitvar=true};
			} else {
				_arr = objNull;
			};
		};

		if(_exitvar)exitwith{};	

		if(_x distance player < 3 and [_x, playerarray, 3] call OL_ISSE_ArrayNumberNear < 2)then
		{
			_arr	= _x getvariable "droparray"; 
			if(isNil "_arr")exitwith{};
			_amount	= _arr select 0;
			_item 	= _arr select 1;
			_infos	= _item call INV_getitemarray;
			_name	= _infos call INV_getitemname;
		
			_action = player addaction [format["Pickup %1 (%2)", _name, _amount],"pickup.sqf",[_x, _item, _amount]];
	
			iactionarr = iactionarr + [[_x, _action]];
		};
	}forEach _objs;

	for [{_i=0}, {_i < (count iactionarr)}, {_i=_i+1}] do 
	{
		_arr	= iactionarr select _i;
		_obj    = _arr select 0;
		_action = _arr select 1;
		_var	= _obj getvariable "droparray"; 
			
		if (isNull _obj or _obj distance player > 2 or (isNil "_var")) then {
			player removeaction _action;
			iactionarr set [_i, 0];
			iactionarr = iactionarr - [0];
		};
	};
	
	sleep 0.2;
};