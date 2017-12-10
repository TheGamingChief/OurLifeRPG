if ((_this select 0) == "READY") exitWith {
  if (isNil "Rifle_Holster") then { Rifle_Holster = "" };
  if (isNil "Pistol_Holster") then { Pistol_Holster = "" };

  _primaryWeapon = if (Rifle_Holster == "") then { primaryWeapon player } else { Rifle_Holster };
  _secondaryWeapon = if (Pistol_Holster == "") then { secondaryWeapon player } else { Pistol_Holster };

  OL_PB_GearBefore = [typeOf player, _primaryWeapon, _secondaryWeapon, magazines player];

  removeALlWeapons player;

  _h = nil;

  for "_i" from 0 to 1 do { player addMagazine "cal68_100SP2" };

  _spawn = nil;

  if ((player getVariable ["OL_PB_Team", ""]) == "BLUE_TEAM") then {
    player addWeapon "cal68_invert_mini_dye";
    player setPosATL (getPosATL CTSpawn);
    _spawn = CTSpawn;
    _h = ["US_Soldier_EP1"] spawn OL_fnc_clothes;
  } else {
    player addWeapon "cal68_angel_rasta";
    player setPosATL (getPosATL TTSpawn);
    _spawn = TTSpawn;
    _h = ["TK_INS_Soldier_EP1"] spawn OL_fnc_clothes;
  };

  waitUntil {scriptDone _h};

  (vehicle player) setVelocity [0, 0, 0];
  if (!isNil "_spawn") then { player attachTo [_spawn, [0, 0, 0]] };

  player setVariable ["OL_PB_Team", if (_spawn == CTSpawn) then { "BLUE_TEAM" } else { "RED_TEAM" }, true];
  player setVariable ["PB_Alive", true, true];

  666 cutText ["GAME STARTING IN 30 SECONDS!", "BLACK"];

  OL_PB_PlayersReady = OL_PB_PlayersReady + 1;
  publicVariable "OL_PB_PlayersReady";
};

if ((_this select 0) == "START") exitWith {
  666 cutText ["LET THE GAMES BEGIN!", "BLACK IN"];
  detach player;
};
