_victim 		     = _this select 0;
_killedbyvehicle = _this select 1;

if (player == _victim) exitWith {};

if (_victim in civarray) exitWith {
  if (!iscop) then {
    if (_killedbyvehicle) then {
      [player, "Hit and Run"] call OL_player_WarrantAdd;

    	OL_Licenses = OL_Licenses - ["OL_License_civ_drivers", "OL_License_civ_truck", "OL_License_civ_bus", "OL_License_civ_boat"];
    	player groupchat "You have lost your vehicle license for reckless driving!";
    	OL_DemeritPoints = 0;
    } else {
      [player, "Murder"] call OL_player_WarrantAdd;

    	OL_Licenses = OL_Licenses - ["OL_License_civ_pistol", "OL_License_civ_rifle"];
      player groupchat "You are now wanted, and lost your gun licenses!";
    };
  };
};

if (_victim in coparray) then {
  if (!(_killedbyvehicle)) then {
    CopsKilled = CopsKilled + 1;
  };

  if (iscop) then	{
    player groupChat format [localize "STRS_handlerdeadpub_copkilledbycop", _victim];

    if (CopsKilled > 5) then {
      [] execVM "copprison.sqf";
		};
	}	else {
  	player groupChat format [localize "STRS_handlerdeadpub_copkilled", _victim];

  	if (_killedbyvehicle) then {
      [player, "Hit and Run"] call OL_player_WarrantAdd;

      OL_Licenses = OL_Licenses - ["OL_License_civ_drivers", "OL_License_civ_truck", "OL_License_civ_bus", "OL_License_civ_boat"];
  		player groupchat "you have lost your vehicle licenses for reckless driving!";
  		OL_DemeritPoints = 10;
		} else {
      [player, "Murder"] call OL_player_WarrantAdd;

      OL_Licenses = OL_Licenses - ["OL_License_civ_pistol", "OL_License_civ_rifle"];
      player groupchat "You are now wanted, and lost your gun licenses!";
		};
	};
};
