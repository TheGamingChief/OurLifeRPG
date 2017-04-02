_cops = west countSide playableUnits;
_civs = civilian countSide playableUnits;

if (_cops > _civs && serverTime >= 600) exitWith {
  player groupChat "You joined while the ratio was bad! Kicking back to lobby in 5 seconds!";
  uiSleep 5;
  endMission "LOSER";
};
