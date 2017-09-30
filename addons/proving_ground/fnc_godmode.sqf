if (isNil "PG_Godmode") then { PG_Godmode = false };

if (!(PG_Godmode)) then {
  player addeventhandler ["hit", {player setDamage 0}];
  player addeventhandler ["dammaged", {player setDamage 0}];
  (vehicle player) addeventhandler ["hit",	{vehicle player setdammage 0}];
  (vehicle player) addeventhandler ["dammaged",{vehicle player setdammage 0}];
  (vehicle player) removeAllEventHandlers "handleDamage";
  (vehicle player) addEventHandler ["handleDamage", { false }];
  (vehicle player) allowDamage false;

  PG_Godmode = true;
  hint "Godmode turned on.";
} else {
  player removeAllEventHandlers "hit";
  player removeAllEventHandlers "dammaged";
  (vehicle player) removeAllEventHandlers "hit";
  (vehicle player) removeAllEventHandlers "dammaged";
  (vehicle player) addEventHandler ["handleDamage", { true }];
  (vehicle player) removeAllEventHandlers "handleDamage";
  (vehicle player) allowDamage true;
  [] call OL_startup_setVariables;
  [] call OL_startup_EH;

  PG_Godmode = false;
  hint "Godmode turned off.";
};
