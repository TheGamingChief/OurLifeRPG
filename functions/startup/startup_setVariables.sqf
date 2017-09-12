player setVariable ["Attached",         false,       true];
player setVariable ["Cuffed",           false,       true];
player setVariable ["ZipTied",          false,       true];
player setVariable ["Gagged",           false,       true];
player setVariable ["Escorted",         false,       true];

waitUntil { !(isNil "PlayerName") && !(isNil "OL_StatsLoadedFromDB")};
player setVariable ["RealName",             PlayerName,  true];

if (OL_StatsLoadedFromDB) then {
  player setVariable ["OL_StatsLoadedFromDB", true, true];
};
