RadioArr    = call OL_tfar_getPlayerRadios;
_skin       = _this select 0;
_oldplayer  = player;
_oldweapons = weapons _oldplayer;
_oldmags    = magazines _oldplayer;
_rank       = rank _oldplayer;
_score      = score _oldplayer;
_damage     = damage _oldplayer;
_pos        = getPosATL player;
_skinsold   = typeOf player;

if (_skinsold != _skin) then {
  private["_group","_var_name"];
  player allowDamage false;
  uiSleep 1;
  _group = (group _oldplayer);
  _to_become = _group createUnit [_skin, (position player), [], 0, "NONE"];
  _var_name = vehicleVarName _oldplayer;
  clearVehicleInit _oldplayer;
  _oldplayer setVehicleVarName format["old_%1", _var_name];
  _to_become setVehicleInit format['this setVehicleVarName "%1"; %1 = this;', _var_name];
  processInitCommands;
  [_to_become] joinSilent _group;
  addSwitchableUnit _to_become;
  _to_become allowDamage false;
  selectPlayer _to_become;
  _group selectLeader _to_become;
  removeAllWeapons _to_become;
  _to_become setRank _rank;
  _to_become addscore _score;
  _to_become setPosATL _pos;
  execVM "R3F_revive\revive_init.sqf";

  { player addMagazine _x } forEach _oldmags;
  { player addWeapon _x   } forEach _oldweapons;

  player groupChat format ["Switched from %1 to %2.", getText(configFile >> "CfgVehicles" >> _skinsold >> "displayName"), getText(configFile >> "CfgVehicles" >> _skin >> "displayName")];
  _h = [_oldplayer] spawn OL_fnc_ClothesDelete;
  waitUntil {scriptDone _h};

  [] call OL_Events_ActionToggle;
  [] call OL_startup_EH;
  [] call OL_startup_setVariables;
  [] call OL_misc_briefing;
  [] call OL_player_WarrantGrab;
  if ("OL_License_civ_drivers" in OL_Licenses) then { player setVariable ["OL_Has_Drivers_License", true, true] };
  [[], "Server_bolos_Request", false, true] call OL_network_MP;
  [RadioArr] call OL_tfar_addRadiosBack;
  if (!(pg_godmode)) then { player allowDamage true };
};
