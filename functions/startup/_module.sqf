// Module Configuration Format
// ["functionPrefix", "module", "functionFile", execute <int>[0 = exec, 1 = fnc, 2 = both]]

DD_Modules = DD_Modules + [
	["OL", "startup",	"EH",					  2],
	["OL", "startup", "Triggers",  	  0],
	["OL", "startup", "PlayerArray",  0],
	["OL", "startup", "ClientLoop",  	0],
	["OL", "startup", "setVariables", 2]
];
