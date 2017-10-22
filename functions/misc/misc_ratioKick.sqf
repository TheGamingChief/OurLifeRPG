waitUntil {OL_StatsLoadedFromDB};
_cops = 0;
_civs = 0;

if ((getPlayerUID player) in OL_SwagDevs || (getPlayerUID player) in adminlevel4 || serverTime < 600) exitWith {};

{
	if (_x call OL_ISSE_UnitExists) then {
			if (isPlayer _x) then {
				switch (true) do {
					case (_x in coparray): 	 { _cops = _cops + 1 };
					case (_x in civarray): 	 { _civs = _civs + 1 };
				};
			};
	};
} forEach playerarray;

if (_cops > _civs && (_cops + _civs > 10)) exitWith {
	playSound "alarm1";
  titleText ["You have joined while the ratio is off! Kicking back to lobby in 10 seconds!", "BLACK"];
	player groupChat "You have joined while the ratio if off! Kicking back to lobby in 10 seconds!";
	uiSleep 10;
  failMission "END1";
};
