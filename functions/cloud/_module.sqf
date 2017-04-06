// Module Configuration Format
// ["functionPrefix", "module", "functionFile", execute <int>[0 = exec, 1 = fnc, 2 = both]]

DD_Modules = DD_Modules + [
	["DD", "cloud", "add", 					1],
	["DD", "cloud", "retrieve", 		1],
	["DD", "cloud", "publish", 			1],
	["DD", "cloud", "delete", 			1],
	["DD", "cloud", "listbykey", 		1],
	["DD", "cloud", "SendToClient", 1]
];
