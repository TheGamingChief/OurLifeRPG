if ((vehicle player == player) || (player != (driver vehicle player)) || (!(vehicle player isKindOf "LandVehicle")) || (speed (vehicle player) <= OL_SpeedLimit) || (iscop)) exitWith {};

[vehicle player, "speedcam", 25] call CBA_fnc_globalSay3D;
titleCut ["", "white in", 1];

_speed = speed (vehicle player);

{
  if (call compile (_x select 0)) exitWith {
    if (_forEachIndex < 7) then {
      OL_DemeritPoints = OL_DemeritPoints - (call compile (_x select 1));
      player groupChat format ["You were flashed by a speedcam going %1 and lost %2 demerit points. (Demerits: %3)", round _speed, call compile (_x select 1), OL_DemeritPoints];

      if (OL_DemeritPoints <= 0) then {
        INV_LizenzOwner = INV_LizenzOwner - ["car"];
        player groupChat "You have lost your drivers license for speeding!";
      };
    } else {
      [player, "Speeding - " +  _x select 1] call OL_player_WarrantAdd;
    };
  };
} forEach OL_SpeedPunishments;
