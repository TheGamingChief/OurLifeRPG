if (OL_PB_EndingPlayer) exitWith {};

OL_PB_Hits = OL_PB_Hits + 1;

player groupChat format ["You have been hit (%1/3)", OL_PB_Hits];

if (OL_PB_Hits >= 3) exitWith {
  OL_PB_Hits = 0;
  ["HIT"] spawn Paintball_fnc_EndPlayer;
};
