// Module Configuration Format
// ["functionPrefix", "module", "functionFile", execute <int>[0 = exec, 1 = fnc, 2 = both]]

DD_Modules = DD_Modules + [
  ["OL", "stats", "SaveStats",        1],
  ["OL", "stats", "LoadStats",        1],
  ["OL", "stats", "fnc_CountArray",   1],
  ["OL", "stats", "fnc_NestedMagArr", 1]
];
