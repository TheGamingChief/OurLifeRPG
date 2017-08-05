if ((vehicle player != player) || (player != (driver vehicle player)) || (!(vehicle player isKindOf "LandVehicle")) || (speed (vehicle player) <= 90)) exitWith {};

[vehicle player, "speedcam", 50] call CBA_fnc_globalSay3D;
titleCut ["", "white in", 1];

_spd = speed vehicle player;

switch (true) do {
  case (_spd >= 100 && _spd < 110): { _punishment = 1 };
  case (_spd >= 110 && _spd < 120): { _punishment = 2 };
  case (_spd >= 120 && _spd < 130): { _punishment = 3 };
  case (_spd >= 130 && _spd < 140): { _punishment = 4 };
  case (_spd >= 140 && _spd < 150): { _punishment = 5 };
  case (_spd >= 150 && _spd < 160): { _punishment = 6 };
  case (_spd >= 160 && _spd < 170): { _punishment = 7 };
  case (_spd >= 170 && _spd < 180): { _punishment = "170/180" };
  case (_spd >= 180 && _spd < 190): { _punishment = "180/190" };
  case (_spd >= 200 && _spd < 210): { _punishment = "200/210" };
  case (_spd >= 210 && _spd < 220): { _punishment = "210/220" };
  case (_spd >= 220 && _spd < 230): { _punishment = "220/230" };
  case (_spd >= 230 && _spd < 240): { _punishment = "230/240" };
  case (_spd >= 240 && _spd < 250): { _punishment = "240/250" };
  case (_spd >= 250 && _spd < 260): { _punishment = "250/260" };
  case (_spd >= 260 && _spd < 270): { _punishment = "260/270" };
  case (_spd >= 270 && _spd < 280): { _punishment = "270/280" };
  case (_spd >= 280 && _spd < 290): { _punishment = "280/290" };
  case (_spd >= 290 && _spd < 300): { _punishment = "290/300" };
};

if (typeName _punishment == "STRING") then {
  [player, "Speeding - " + _punishment] call OL_player_WarrantAdd;
} else {
  OL_DemeritPoints = OL_DemeritPoints - _punishment;

  if (OL_DemeritPoints <= 0) then {
    INV_LizenzOwner = INV_LizenzOwner - ["car"];
    player sideChat "You have lost your drivers license for speeding!";
  };
};
