_art = _this select 0;

if (_art == "use") then 
{
_item    = _this select 1;
_vcl = vehicle player;
_type	= typeof _vcl;
	
	if (player == vehicle player)  exitWith {
	player groupChat "You must be in a boat";
	};

	 if (!(player == driver vehicle player)) exitWith {
	player groupChat "You must be the captain of the boat";
	};

	if(_vcl iskindof "Fishing_Boat" ) then {
	_gun1 = "DSHkM_INS" createvehicle (getpos _vcl);
	_gun1 attachto [_vcl, [.5,5,-1]];
		};

	if(_vcl iskindof "smallboat_1" ) then {
	_gun2 = "DSHkM_INS" createvehicle (getpos _vcl);
	_gun2 attachto [_vcl, [.2,2,1]];
		};

	if(_vcl iskindof "smallboat_2" ) then {
	_gun3 = "DSHkM_INS" createvehicle (getpos _vcl);
	_gun3 attachto [_vcl, [.2,2,1]];
		};
		
	if(_vcl iskindof "big_boat" ) then {
	_gun4 = "DSHkM_INS" createvehicle (getpos _vcl);
	_gun4 attachto [_vcl, [0,-3.25,2.25]];
	_gun5 = "DSHkM_INS" createvehicle (getpos _vcl);
	_gun5 attachto [_vcl, [0,10,0]];
	_gun6 = "SPG9_CDF" createvehicle (getpos _vcl);
	_gun6 attachto [_vcl, [0,-7.5,-2.5]];
	_gun6 removemagazine "PG9_AT";
	_gun6 removemagazine "PG9_AT";
	_gun6 removemagazine "PG9_AT";
	_gun6 removemagazine "PG9_AT";
	_gun6 removemagazine "PG9_AT";
	_gun6 removemagazine "PG9_AT";
	_gun6 removemagazine "PG9_AT";
	_gun6 removemagazine "PG9_AT";
	_gun6 removemagazine "PG9_AT";
	_gun6 removemagazine "PG9_AT";
	_gun6 setdir 180
		};
[_item, -1] call INV_AddInvItem;
};

