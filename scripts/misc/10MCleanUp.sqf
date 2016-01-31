RL_10MCleanUp =
{

	private ["_bj","_objectnames","_objectremoved","_cof","_count","_aaa","_pname","_cleanedlist","_textoutput","_cur","_name","_weapns","_Mags","_dontkill"];
	if(!((vehicle player) == player))exitWith{player sideChat "Cannot clean from inside a vehicle";};
	_dontkill = 
	[
	""
	];
	_bj = 
	[
	"Suitcase",
	"EvMoney",
	"body",	
	"ParachuteWest",
	"ParachuteEast",
	"ParachuteG",
	"ParachuteC",
	"ParachuteBigBase",
	"ParachuteBigWest",
	"ParachuteBigEast",
	"ParachuteMediumBase",
	"ParachuteMediumWest",
	"ParachuteMediumEast",
	"Steerable_Parachute_EP1",
	"Parachute"				
	];
	{_bj set [count _bj, _x select 0];}forEach INV_AlleItemsArray;
	_objectnames = [];
	_objectremoved = 0;
	{
		_cof = getText (configFile >> "CfgVehicles" >> typeOf _x >> "displayName");
		_count = _x getVariable "count";
		if(!((typeof _x) in _dontkill))then
		{
			if(!(isNil "_count"))then
			{
				for [{_aaa=0},{_aaa < _count},{_aaa=_aaa+1}] do
				{
					_objectnames set[count _objectnames, _cof];
				};
			}else{
				_objectnames set[count _objectnames, _cof];
			};
			titletext ["Cleaning.", "PLAIN DOWN"];
			sleep 0.3;
			titletext ["Cleaning..", "PLAIN DOWN"];
			sleep 0.3;
			titletext ["Cleaning...", "PLAIN DOWN"];
			sleep 0.3;	
			if(!((vehicle player) == player))exitWith{player sideChat "Cannot clean from inside a vehicle";};
			deleteVehicle _x;
			_objectremoved = _objectremoved + 1;
		};
	}forEach(nearestObjects [getPos(vehicle player), _bj, 10]);
	{
		_cof = getText (configFile >> "CfgVehicles" >> typeOf _x >> "displayName");
		_count = _x getVariable "count";
		if(!(_x in _dontkill))then
		{
			if(typeof _x == "weaponholder")then
			{
				_weapns = getWeaponCargo _x;
				_Mags   = getMagazineCargo _x;
				if((count(_weapns select 0)) > 0)then
				{
					_cof = getText (configFile >> "CfgWeapons" >> ((_weapns select 0)select 0) >> "displayName");
					_count = 1;
				};
				if((count(_Mags select 0)) > 0)then
				{
					_cof = getText (configFile >> "CfgMagazines" >> ((_Mags select 0)select 0) >> "displayName");
					_count = (_Mags select 1)select 0;
				};	
			};	
			if(!(isNil "_count"))then
			{
				for [{_aaa=0},{_aaa < _count},{_aaa=_aaa+1}] do
				{
					_objectnames set[count _objectnames, _cof];
				};
			}else{
				_objectnames set[count _objectnames, _cof];
			};
			titletext ["Cleaning.", "PLAIN DOWN"];
			sleep 0.3;
			titletext ["Cleaning..", "PLAIN DOWN"];
			sleep 0.3;
			titletext ["Cleaning...", "PLAIN DOWN"];
			sleep 0.3;
			if(!((vehicle player) == player))exitWith{player sideChat "Cannot clean from inside a vehicle";};
			deleteVehicle _x;
			_objectremoved = _objectremoved + 1;
		};
	}forEach(nearestObjects [getPos(vehicle player), ["weaponholder"],10]);
	_pname = name player;
	_cleanedlist = [];
	{
		if(!(_x in _cleanedlist))then
		{
			_cleanedlist set[count _cleanedlist, _x];
		};
	}forEach _objectnames;
	_textoutput = "";

	{
		_cur = _x;
		_count = {_x==_cur} count _objectnames;
		_name = _x;
		if(_textoutput == "")then
		{
			_textoutput = format["%1 x %2",_name,_count];
		}else{
			_textoutput = format["%1,%2 x %3",_textoutput,_name,_count];
		};
	}forEach _cleanedlist;
	if(_textoutput == "")then
	{
		player sideChat "no items found";
	}else{
		_textoutput = format["%1 (Total objects removed %2)",_textoutput,_objectremoved];
		format['server globalChat "%1 Has Removed %2";', _pname,_textoutput] call broadcast;
	};
	titletext ["", "PLAIN DOWN"];
};	