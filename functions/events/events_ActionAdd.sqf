switch (playerSide) do {
		case civilian: 	 { [] call OL_Events_Civ_Actions };
		case west: 			 { [] call OL_Events_Cop_Actions };
		case resistance: { [] call OL_Events_Ems_Actions };
};

INV_shortcuts = true;
