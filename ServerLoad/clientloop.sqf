_art = _this select 0;
if (_art == "clientloop") then 
{_w1 = 0;
_w2 = 0;
_w3 = 0;
_streetrepold = 0;
_LetzterKontostand = 0;
_prevINV_InventarArray = [];
_player = player;
_geld = "geld" call INV_GetItemAmount;

while {true} do 

	{
	if ((_LetzterKontostand != Kontostand) and (Kontostand != StartGeld)) then 

		{								
		if (Kontostand < 0) then //ANTI-HACK FOR PEOPLE SETTING ACCOUNTS TO MINUS AMOUNTS.
		{
		Kontostand = _LetzterKontostand;
		};
		_LetzterKontostand = Kontostand;

		};
		_invdif = false;
		if(count(_prevINV_InventarArray) == count(INV_InventarArray)) then {
		for [{_inv = 0},{_inv < count(INV_InventarArray)},{_inv = _inv + 1}] do {
		if(((_prevINV_InventarArray select _inv) select 0) == ((INV_InventarArray select _inv) select 0)) then {
		if(((_prevINV_InventarArray select _inv) select 1) != ((INV_InventarArray select _inv) select 1)) then {
		_invdif = true;
		};		
		} else {
		_invdif = true;
		};
		};
		} else {
		_invdif = true;
		};
		if (_invdif) then {
			_prevINV_InventarArray = INV_InventarArray;
		};
	
	if(iscop and alive player and weaponsloaded)then

		{

		_updateweps = false;
		_updatemags = false;

		_weapons = weapons player;
		
		for [{_i=0}, {_i < (count _weapons)}, {_i=_i+1}] do 

			{

			if(!((_weapons select _i) in playerweapons))then

				{

				playerweapons = playerweapons + [(_weapons select _i)];
				_updateweps = true;
				

				};

			};

		_weapons = weapons player;

		for [{_i=0}, {_i < (count playerweapons)}, {_i=_i+1}] do 

			{

			if(!((playerweapons select _i) in _weapons))then

				{

				playerweapons = playerweapons - [(playerweapons select _i)];
				_updateweps = true;

				};

			};

		_mags	 = magazines player;

		for [{_i=0}, {_i < (count _mags)}, {_i=_i+1}] do 

			{

			if((_i + 1) > count playermagazines)then

				{

				playermagazines = playermagazines + [(_mags select _i)];
				_updatemags = true;

				};

			};

		_mags	 = magazines player;

		for [{_i=0}, {_i < (count playermagazines)}, {_i=_i+1}] do 

			{

			if((_i + 1) > count _mags)then

				{

				playermagazines set[_i, ""];
				_updatemags = true;

				};

			};

		_mags	 = magazines player;

		for [{_i=0}, {_i < (count _mags)}, {_i=_i+1}] do 

			{

			if((playermagazines select _i) != (_mags select _i))then

				{

				playermagazines set[_i, ""];
				_updatemags = true;

				};

			};

		playermagazines = playermagazines - [""];
		};

		[] call fnc_UpdatePlayerArray;
     
	if (player distance getmarkerpos "fire" <= 15 && !(playerside == resistance)) then 

		{
		player setdamage .5;
		vehicle player setdamage .3;
		};

	if (player distance getmarkerpos "fire" <= 10 && !(playerside == resistance)) then 

		{
		player setdamage .8;
		vehicle player setdamage .6;
		titlecut [" ","BLACK IN",1];
		};
		
	if (player distance getmarkerpos "fire" <= 5 && !(playerside == resistance)) then 

		{
		player setdamage .9;
		vehicle player setdamage .8;
		titleCut ["", "BLACK FADED", 30];
		};
		
		if (player distance getmarkerpos "GasLeak" <= 15 && !(playerside == resistance)) then 

		{
		player setdamage .5;
		vehicle player setdamage .3;
		};

	if (player distance getmarkerpos "GasLeak" <= 10 && !(playerside == resistance)) then 

		{
		player setdamage .8;
		vehicle player setdamage .6;
		titlecut [" ","BLACK IN",1];
		};
		
	if (player distance getmarkerpos "GasLeak" <= 5 && !(playerside == resistance)) then 

		{
		player setdamage .9;
		vehicle player setdamage .8;
		titleCut ["", "BLACK FADED", 30];
		};
	
	
	};
	if (Kontostand > bank_limit) then {Kontostand = bank_limit;player groupChat localize "STRS_maxbank";};
	if (_geld > money_limit) then {['geld', money_limit] call INV_SetItemAmount; player groupChat localize "STRS_maxmoney";};
};