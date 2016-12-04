_art  = ((_this select 3) select 0);
_geld = 'geld' call INV_GetItemAmount;

if (_art == "holen") exitWith  {
	if (localhuren >= maxhuren) exitWith {role groupChat localize "STRS_huren_zuviele"};
	if (_geld <= huren_cost) exitWith {role groupChat localize "STRS_huren_nomoney"};
	if (slavescriptrunning == 1) exitwith {player groupchat "script already running"};
	slavescriptrunning = 1;
	['geld', -(huren_cost)] call INV_AddInvItem;

	player groupChat "You have bought a hooker, taker her to a brothel to earn you some money";

	_arbeiternummer   = localhurencounter;
	localhurencounter = localhurencounter + 1;
	localhuren        = localhuren + 1;
	_hurennumber      = localhurencounter;
	_hurenname        = player;
	_civ 		  				= civworkerarray select round random(count civworkerarray - 1);

	//call compile format ['_hurenname = "%3" createUnit [getMarkerPos "hoespawn", group player, "%1huren%2 = this;this addEventHandler [""killed"", {[(_this select 1), %1] execVM ""workerkilled.sqf"";}]; this setVehicleVarName ""%1huren%2"";"]; _hurenname = %1huren%2;', rolestring, _hurennumber, _civ];

	call compile format ['_hurenname = "%3" createUnit [getPosATL player, group player, "%1huren%2 = this;this addEventHandler [""killed"", {[(_this select 1), %1] execVM ""workerkilled.sqf"";}]; this setVehicleVarName ""%1huren%2"";"]; _hurenname = %1huren%2;', rolestring, _hurennumber, _civ];

	(format ["if (local server) then {publicarbeiterarctionarray = publicarbeiterarctionarray + [ [%1huren%2, %3] ];};", rolestring, _hurennumber, player]) call broadcast;

	processInitCommands;

	call compile format ["arbeitergeld%1 = 0;", _arbeiternummer];

	_hurenmoney = 0;
	_exitvar = 0;
	_a1 = 0;
	_action = 0;
	sleep 2;
	slavescriptrunning = 0;

	while {true} do {
		if(_exitvar == 1) exitWith {};

		{
			if ((player distance (_x select 0)) < (_x select 1)) then {call compile format ["arbeitergeld%1 = arbeitergeld%1 + hoemoneyprosekunde + round(random 500 - random 500);", _arbeiternummer];};
		} forEach hurenarray;

		for [{_i=0}, {_i < 120}, {_i=_i+1}] do {
			if ((not(alive _hurenname)) or (not(alive player)))  exitWith {
				sleep 2;
				if(!isnull _hurenname) then {
					player groupchat localize "STRS_huren_tot";
				} else {
					player groupchat "A hooker you owned has been sent home! you are now wanted for being a poor pimp.";
				};
				localhuren = localhuren - 1;
				_hurenname setdamage 1;
				_exitvar = 1;
			};
			if ((player distance _hurenname <= 5) and ((player distance brothel1a < 15) or (player distance brothel2a < 15) or (player distance brothel3a < 15))) then {
				_arbeitergeld   = call compile format ["arbeitergeld%1;", _arbeiternummer];
				if (_arbeitergeld > 0) then {
					['geld', _arbeitergeld] call INV_AddInvItem;
					call compile format ["arbeitergeld%1 = 0;", _arbeiternummer];
					player groupchat format [localize "STRS_huren_geldabnahme_ja", (_arbeitergeld call ISSE_str_IntToStr)];
				};
			};

			//If hooker is within 30m of copbase kill her
			if ((rolecop == 0) and ((vehicle _hurenname) distance copbase1 <= 30) and (alive _hurenname)) then {
				player groupchat  "One of your hookers has died for getting too close to the Police Base!";
				localhuren = localhuren - 1;
				_hurenname setdamage 1;
				_exitvar = 1;
			};

			//If hooker is within 50m of a drug field kill her

            _drugfields = ["lsd_field","lsd_field_1","herionfield_2","potfield_2_2","potfield_2_3_1"];
            {
                if(_x == "lsd_field" || _x == "lsd_field_1") then {
                    if ((alive _hurenname) && ((vehicle _hurenname) distance getmarkerpos _x < 30)) then {
                        player groupchat "Hookers are not permitted in LSD fields, she has been killed as a result of your ignorance.";
                        localhuren = localhuren - 1;
                        _hurenname setdamage 1;
                        _exitvar = 1;
                    };
                };
                if(_x == "herionfield_2") then {
                    if ((alive _hurenname) && ((vehicle _hurenname) distance getmarkerpos _x < 120)) then {
                        player groupchat "Hookers are not permitted in Herion fields, she has been killed as a result of your ignorance.";
                        localhuren = localhuren - 1;
                        _hurenname setdamage 1;
                        _exitvar = 1;
                    };
                };
                if(_x == "potfield_2_2" || _x == "potfield_2_3_1") then {
                    if ((alive _hurenname) && ((vehicle _hurenname) distance getmarkerpos _x < 120)) then {
                        player groupchat "Hookers are not permitted in Marijuana fields, she has been killed as a result of your ignorance.";
                        localhuren = localhuren - 1;
                        _hurenname setdamage 1;
                        _exitvar = 1;
                    };
                };
            } foreach _drugfields;
			
			//If hooker is armed kill her
			_isarmed = _hurenname call INV_unitArmed;
			if (_isarmed) then {
				player groupchat  "You may not arm your hookers! She has died as a result of your ignorance.";
				localhuren = localhuren - 1;
				_hurenname setdamage 1;
				_exitvar = 1;
			};

			sleep 1;
			
		    //If hooker is driving kill her
			if (_hurenname == driver vehicle player) then {
				player groupchat  "You may not have hookers drive! She has died as a result of your ignorance.";
				localhuren = localhuren - 1;
				_hurenname setdamage 1;
				_exitvar = 1;
				
			sleep 1;	
			};
		};
	};

	player removeaction _action;
	sleep 15;
	deletevehicle _hurenname;
};

if (_art == "geld") exitWith {
	_arbeiternummer = (_this select 3) select 1;
	_arbeitergeld   = call compile format ["arbeitergeld%1;", _arbeiternummer];

	player groupchat "2";

	if (_arbeitergeld > 0) then {
		['geld', _arbeitergeld] call INV_AddInvItem;
		call compile format ["arbeitergeld%1 = 0;", _arbeiternummer];
		player groupChat format [localize "STRS_huren_geldabnahme_ja", (_arbeitergeld call ISSE_str_IntToStr)];
		} else {
		player groupChat localize "STRS_huren_geldabnahme_nein";
	};
};