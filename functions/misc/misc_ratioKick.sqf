_cops = 0;
_civs = 0;
_Players = playableUnits;

{
	if (_x call OL_ISSE_UnitExists) then {
		switch (true) do {
			case (_x in coparray): 	 { _cops = _cops + 1 };
			case (_x in civarray): 	 { _civs = _civs + 1 };
		};
	};
} forEach playerarray;
if (count _Players < 10) exitwith {};
if (_cops > _civs && serverTime >= 600) exitWith {
  playSound "alarm1";
  titleText ["You have joined while the ratio is off! Kicking back to lobby in 10 seconds!","BLACK"];
  uiSleep 10;
  failMission "END1";
};
