execVM "scripts\TheGamingChief\TaskForceRadio\TFR_Variables.sqf";
waitUntil{OL_StatsLoadedFromDB};
execVM "scripts\TheGamingChief\TaskForceRadio\TSCheck.sqf";
execVM "scripts\TheGamingChief\Common\UnitTags.sqf";
_h = execVM "scripts\TheGamingChief\Common\fnc_Functions.sqf";
waitUntil{scriptDone  _h};
execVM "scripts\TheGamingChief\Common\SpawnVariables.sqf";
execVM "scripts\TheGamingChief\Common\fnc_Radar.sqf";
call RemoveActionText;