_art = _this select 0;

if(_art == "use") then {
	if(lockpicking)exitwith{player groupchat "You are already lockpicking a vehicle"};
	_item   = _this select 1;
	_anzahl = _this select 2;
	_closeVcl   = dummyobj;
	_closest    = -1;
	_incarpark = false;

	{
		if(not(isNull(_x))) then {
			if (player distance _x < 7 and (player distance _x < _closest or _closest == -1)) then {
				_closest  = (player distance _x);
				_closeVcl = _x;
			};
		};
	} forEach INV_ServerVclArray;

	if(not(_closest == -1)) then {
		if(_closeVcl isKindOf "Tank" || _closeVcl isKindOf "Air")exitwith{player groupchat "You cannot lockpick this vehicle!"};

		if(_closeVcl in INV_VehicleArray) then {
			player groupchat localize "STRS_inventar_lockpick_already";
		} else {
			{
				if((player distance (_x select 0)) < (_x select 1)) then {_incarpark = true};
			} forEach INV_VehicleGaragen;

			if((random 100) < lockpickchance) then { //Successful lockpick attempt
				lockpicking = true;
				_car  = (nearestobjects [getpos player, ["Ship", "LandVehicle"], 6] select 0);
				(format ["%1 switchmove ""%2"";", player, "repairingkneel"]) call OL_network_Swag;
				sleep 15;
				[vehicle player,"pick4sfx",100] call CBA_fnc_globalSay3d;

				sleep 8;

				INV_VehicleArray = INV_VehicleArray + [_closeVcl];
				player groupChat localize "STRS_inventar_lockpick_success";

				(format ["%1 switchmove ""%2"";", player, ""]) call OL_network_Swag;

				lockpicking = false;

				if(([player, (civarray + coparray), 40] call INV_Seen or _incarpark) and !iscop) then {
					[player, "Vehicle Theft"] call OL_player_WarrantAdd;
					format ["hint format[localize ""STRS_inventar_lockpick_gesehen"",%1, %2]; ", player, _closeVcl] call OL_network_Swag;
				};

				if(_closeVcl getvariable "caralarm" == 1) then {
			 [_closeVcl,"armsfx",100] call CBA_fnc_globalSay3d;
			 _onstar = mapGridPosition getpos _closeVcl;
			 format ['if(isCop) then{player sideChat "Dispatch: OnStar has reported a Vehicle Theft in progress. Location: %1"}', _onstar] call OL_network_Swag;
             ('if(iscop) then {playsound "beep";}') call OL_network_Swag;
        };
			} else { //Failure to lockpick
				_car  = (nearestobjects [getpos player, ["Ship", "LandVehicle"], 6] select 0);
                _onstar = mapGridPosition getpos _closeVcl;
				if(_closeVcl getvariable "caralarm" == 1) then {
					if (time >= (_closeVcl getvariable "nextalarmtime")) then {
						[_closeVcl,"caralarm1sfx",100] call CBA_fnc_globalSay3d;
						_onstar = mapGridPosition getpos _closeVcl;
			            format ['if(isCop) then{player sideChat "Dispatch: OnStar has reported an attempted Vehicle Theft in progress. Location: %1"}', _onstar] call OL_network_Swag;
                        ('if(iscop) then {playsound "beep";}') call OL_network_Swag;
						_closeVcl setVariable ["nextalarmtime", (time + 15), true];
						_closeVcl spawn {
							for "_i" from 1 to 15 do {
								impoundbuy action["LIGHTON",_this];
								sleep 0.5;
								impoundbuy action["LIGHTOFF",_this];
								sleep 0.5;
							};
						};
					};
				};

				PickArray = [
					"pick1sfx",
          "pick2sfx",
          "pick3sfx"
				];

				_current = floor(random (count PickArray));
				_picksfx = format["%1", PickArray select _current];
				[_item, -1] call INV_AddInvItem;

				(format ["%1 switchmove ""%2"";", player, "repairingkneel"]) call OL_network_Swag;

				sleep 15;
				[vehicle player,_picksfx,1] call CBA_fnc_globalSay3d;
				player groupChat localize "STRS_inventar_lockpick_noluck";

				sleep 8;

				(format ["%1 switchmove ""%2"";", player, ""]) call OL_network_Swag;
				if(([player, (civarray + coparray), 40] call INV_Seen or _incarpark) and !iscop) then {
					[player, "Vehicle Theft"] call OL_player_WarrantAdd;
					format ['hint "%1 was seen attempting to lockpick a vehicle (Registration plate: %2)";', player, _closeVcl] call OL_network_Swag;
				};
			};
		};
	} else {
		player groupChat localize "STRS_inventar_lockpick_zuweit";
	};
};
