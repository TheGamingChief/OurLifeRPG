player setVariable ["PlayerWarrants", [], true];
player setVariable ["TriedCPR", false, true];

OL_Warrants = [
  ["Murder",                  3000],
  ["Robbed Bar",              2000],
  ["Robbed Dunkin Bronuts",   2000],
  ["Robbed Casino",           5000],
  ["Robbed Pharmacy",         2000],
  ["Robbed Station",          2000],
  ["Robbed Bank",             5000],
  ["Vehicle Theft",           2000],
  ["Attempted Vehicle Theft", 2000],
  ["Assassin",                3000],
  ["Assassinated VIP",        3000],
  ["Hostage Taking",          5000],
  ["Chopped Vehicle",         1000],
  ["Being a Pimp",            1000],
  ["Drug Trafficking",        3000],
  ["Escaping Jail",           6000],
  ["Hit and Run",             3000],
  ["Hit and Run",             3000],
  ["Speeding - 170/180",       250],
  ["Speeding - 180/190",       500],
  ["Speeding - 200/210",       750],
  ["Speeding - 210/220",      1000],
  ["Speeding - 220/230",      1250],
  ["Speeding - 230/240",      1500],
  ["Speeding - 240/250",      1750],
  ["Speeding - 250/260",      2000],
  ["Speeding - 260/270",      2250],
  ["Speeding - 270/280",      2500],
  ["Speeding - 280/290",      2750],
  ["Speeding - 290/300",      3000]
];

OL_DefaultPaycheck_COP = 5000;
OL_DefaultPaycheck_EMS = 2500;
OL_DefaultPaycheck_CIV = 1000;
MayorExtraPay          = 3000;

OL_isMale = true;
PlayerName = name player;
