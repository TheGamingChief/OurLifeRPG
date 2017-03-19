player setVariable ["PlayerWarrants", [], true];

OL_Warrants = [
  ["Murder",                3000], // 0
  ["Robbed Bar",            2000], // 1
  ["Robbed Dunkin Bronuts", 2000], // 2
  ["Robbed Casino",         5000], // 3
  ["Robbed Pharmacy",       2000], // 4
  ["Robbed Station",        2000], // 5
  ["Robbed Bank",           5000], // 6
  ["Vehicle Theft",         2000], // 7
  ["Assassin",              3000], // 8
  ["Assassinated VIP",      3000], // 9
  ["Hostage Taking",        5000], // 10
  ["Chopped Vehicle",       1000], // 11
  ["Being a Pimp",          1000], // 12
  ["Drug Trafficking",      3000], // 13
  ["Escaping Jail",         6000], // 14
  ["Hit and Run",           3000]  // 15
];

/*
//Loading into server
[[format["%1_Warrants", getPlayerUID player], player],"DD_cloud_SendToClient",false,true] call OL_network_MP;

//Add Call
[player, Hit and Run"] call OL_player_WarrantAdd;

//Remove Call
[player, "Robbed Bank", 2] call OL_player_WarrantRemove;
[player, "Remove All Warrants", 0] call OL_player_WarrantRemove;
*/
