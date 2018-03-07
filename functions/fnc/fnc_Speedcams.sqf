if ((vehicle player == player) || (player != (driver vehicle player)) || (!(vehicle player isKindOf "LandVehicle")) || (iscop) || (ismedic)) exitWith {};
_speed = speed (vehicle player);

if (_speed > OL_SpeedLimit) then {
  {
    if (call compile (_x select 0)) exitWith {
      [vehicle player, "speedcam", 25] call CBA_fnc_globalSay3D;
      titleCut ["", "white in", 1];

      if (_forEachIndex < 7) then {
        if (OL_DemeritPoints <= 0) exitWith { player groupChat format ["You were flashed by a speedcam going %1!", round _speed] };
        OL_DemeritPoints = OL_DemeritPoints - (call compile (_x select 1));
        player groupChat format ["You were flashed by a speedcam going %1 and lost %2 demerit points. (Demerits: %3)", round _speed, call compile (_x select 1), OL_DemeritPoints];
      } else {
        player groupChat format ["You were flashed by a speedcam going %1! A note has been issued!", round _speed];
        _notes = player getVariable ["Notes", []];
        _notes set[count(_notes), [format ["Flashed for speeding - %1", _x select 1], "Speedcam"]];
        player setVariable ["Notes", _notes, true];
        OL_DemeritPoints = 0;
      };

      if ((OL_DemeritPoints <= 0) && (("OL_License_civ_drivers") in OL_Licenses)) then {
        OL_Licenses = OL_Licenses - ["OL_License_civ_drivers"];
        player groupChat "You have lost your drivers license for speeding!";
      };
    };
  } forEach OL_SpeedPunishments;
};
_vehicleOwner = (vehicle player) getVariable ["OL_Owner", objNull];
if (isNull _vehicleOwner) exitWith {};
_ownerWarrants = _vehicleOwner getVariable ["PlayerWarrants", []];
_ownerLicense  = _vehicleOwner getVariable ["OL_Has_Drivers_License", false];
_vehDir = round (direction (vehicle player));
_direction = switch (true) do {
  case (_vehDir >= 340 && _vehDir <= 359): { "North" };
  case (_vehDir >= 0 && _vehDir <= 20): { "North"} ;
  case (_vehDir > 20   && _vehDir < 60):   { "North East" };
  case (_vehDir >= 60  && _vehDir <= 120): { "East" };
  case (_vehDir > 120  && _vehDir < 160):  { "South East" };
  case (_vehDir >= 160 && _vehDir <= 200): { "South" };
  case (_vehDir > 200  && _vehDir < 240):  { "South West" };
  case (_vehDir >= 240 && _vehDir <= 290): { "West" };
  case (_vehDir > 290  && _vehDir < 340):  { "North West" };
};

if (!_ownerLicense) then {
  [[2, format ["[ANPR HIT] Speedcam %1, %2, %3, %4. (No License)", _this, _direction, getText (configFile >> "cfgVehicles" >> (typeOf (vehicle player)) >> "displayName"), _vehicleOwner], "true"], "OL_misc_ChatMessage", west, false, true] call Network_fnc_MP;
  ["ANPR_Log", format ["[ANPR HIT] Speedcam %1, %2, %3, %4. (No License)", _this, _direction, getText (configFile >> "cfgVehicles" >> (typeOf (vehicle player)) >> "displayName"), _vehicleOwner]] call RM_fnc_LogToServer;
};
if ((count _ownerWarrants) != 0) then {
  [[2, format ["[ANPR HIT] Speedcam %1, %2, %3, %4. (Warrants)", _this, _direction, getText (configFile >> "cfgVehicles" >> (typeOf (vehicle player)) >> "displayName"), _vehicleOwner], "true"], "OL_misc_ChatMessage", west, false, true] call Network_fnc_MP;
  ["ANPR_Log", format ["[ANPR HIT] Speedcam %1, %2, %3, %4. (Warrants)", _this, _direction, getText (configFile >> "cfgVehicles" >> (typeOf (vehicle player)) >> "displayName"), _vehicleOwner]] call RM_fnc_LogToServer;
};
