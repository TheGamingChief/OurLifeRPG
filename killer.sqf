_victim 		= _this select 0;
_killedbyvehicle 	= _this select 1;

if (player == _victim and iscop) exitWith {};

if (_victim in civarray) exitWith {
  if (iscop) then	{
   if (count (_victim getVariable ["PlayerWarrants", []]) > 0) then {
     player groupChat format ["You killed %1! He wasn't wanted so you should pay $%2 to him in compensation.", _victim, killstrafe call ISSE_str_IntToStr];
   };
  } else {
    if(_killedbyvehicle) then	{
      [player, "Hit and Run"] call OL_player_WarrantAdd;

    	INV_LizenzOwner = INV_LizenzOwner - ["car","truck","bus_license","boat"];
    	player groupchat "you have lost your vehicle license for reckless driving!";
    	demerits = 0;
    } else {
      [player, "Murder"] call OL_player_WarrantAdd;

    	INV_LizenzOwner = INV_LizenzOwner - ["Pistollicense", "riflelicense"];
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

  		INV_LizenzOwner = INV_LizenzOwner - ["car", "truck", "bus_license", "boat"];
  		player groupchat "you have lost your vehicle licenses for reckless driving!";
  		demerits = 0;
		} else {
      [player, "Murder"] call OL_player_WarrantAdd;

  		INV_LizenzOwner = INV_LizenzOwner - ["Pistollicense", "riflelicense"];
      player groupchat "You are now wanted, and lost your gun licenses!";
		};
	};
};
