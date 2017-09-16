if ((vehicle player == player) || (player != (driver vehicle player)) || (!(vehicle player isKindOf "LandVehicle")) || (speed (vehicle player) <= OL_SpeedLimit) || (iscop) || (isamedic)) exitWith {};
<<<<<<< HEAD
if (player distance speed1 >= 20 || player distance speed2 >= 20 || player distance speed3 >= 20 || player distance speed4 >= 20 || player distance speed5 >= 20 || player distance speed6 >= 20 || player distance speed7 >= 20 || player distance speed8 >= 20) exitWith {};
=======
>>>>>>> b3ae50e6cdc2fd4fe202b7d00a11c2b7ad354fb1

_speed = speed (vehicle player);

{
  if (call compile (_x select 0)) exitWith {
    [vehicle player, "speedcam", 25] call CBA_fnc_globalSay3D;
    titleCut ["", "white in", 1];

    if (_forEachIndex < 7) then {
      if (OL_DemeritPoints <= 0) exitWith { player groupChat format ["You were flashed by a speedcam going %1!", round _speed] };
      OL_DemeritPoints = OL_DemeritPoints - (call compile (_x select 1));
      player groupChat format ["You were flashed by a speedcam going %1 and lost %2 demerit points. (Demerits: %3)", round _speed, call compile (_x select 1), OL_DemeritPoints];

      if (OL_DemeritPoints <= 0) then {
        INV_LizenzOwner = INV_LizenzOwner - ["car"];
        player groupChat "You have lost your drivers license for speeding!";
      };
    } else {
      player groupChat format ["You were flashed by a speedcam going %1! A warrant has been issued!", round _speed];
<<<<<<< HEAD
      _notes = player getVariable ["Notes", []];
      _notes set[count(_notes), [format ["Flashed for speeding - %1", _x select 1]], "Speedcam"];
      player setVariable ["Notes", _notes, true];
=======
      [player, "Speeding - " + format["%1", _x select 1]] call OL_player_WarrantAdd;
>>>>>>> b3ae50e6cdc2fd4fe202b7d00a11c2b7ad354fb1
    };
  };
} forEach OL_SpeedPunishments;
