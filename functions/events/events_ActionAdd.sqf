switch (playerSide) do {
		case civilian: {
			[] call OL_Events_Civ_Actions;
		};
		case west: {
			[] call OL_Events_Cop_Actions;
		};
		case resistance: {
			[] call OL_Events_Ems_Actions;
		};
};

if (count actionsToRemove > 0) then {
  { player removeAction _x }forEach actionsToRemove;
};

INV_shortcuts = true;
