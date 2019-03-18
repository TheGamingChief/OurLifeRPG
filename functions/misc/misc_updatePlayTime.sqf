if (OL_isAFK) exitWith {};

OL_PlayTime = OL_PlayTime + 5;

switch (playerSide) do {
  case west:       { OL_Cop_PlayTime = OL_Cop_PlayTime + 5 };
  case resistance: { OL_EMS_PlayTime = OL_EMS_PlayTime + 5 };
  case civilian:   { OL_Civ_PlayTime = OL_Civ_PlayTime + 5 };
};
