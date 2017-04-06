// Module Configuration Format
// ["functionPrefix", "module", "functionFile", execute <int>[0 = exec, 1 = fnc, 2 = both]]

switch (side player) do {
	case civilian: {
		DD_Modules = DD_Modules + [
      ["OL", "events", "Civ_KeyPress",  2],
			["OL", "events", "Civ_KeyEvents", 1],
			["OL", "events", "Civ_Actions",   1]
		];
	};
	case west: {
		DD_Modules = DD_Modules + [
      ["OL", "events", "Cop_KeyPress",  2],
			["OL", "events", "Cop_KeyEvents", 1],
			["OL", "events", "Cop_Actions",   1]
		];
	};
	case resistance: {
		DD_Modules = DD_Modules + [
      ["OL", "events", "Ems_KeyPress",  2],
			["OL", "events", "Ems_KeyEvents", 1],
			["OL", "events", "Ems_Actions",   1]
		];
	};
};

DD_Modules = DD_Modules + [
  ["OL", "events", "ActionAdd",     			1],
  ["OL", "events", "ActionRemove",  			1],
	["OL", "events", "ActionToggle",  			1],
	["OL", "events", "isHandCuffed",  			1],
	["OL", "events", "isZipTied", 		 			1],
	["OL", "events", "isGagged",  					1],
	["OL", "events", "HandleSmokes",  			1],
	["OL", "events", "HandleCarAlarm",		  1]
];
