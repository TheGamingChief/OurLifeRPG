isClient 		         = !isServer || (isServer && !isDedicated);
version              = "32";
debug                = false;
debugStats           = false;
dedicatedServer      = false;
copmcount            = 40;
civscount            = 60;
playercount          = 100;
loadNotFinsihed      = true;
OL_InitComplete      = false;
OL_StatsLoadedFromDB = false;
OL_LoadedMission     = false;
pg_godmode           = false;

if (Param1 == 1) then { debug = true };
