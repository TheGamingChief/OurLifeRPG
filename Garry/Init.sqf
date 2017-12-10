waitUntil {OL_StatsLoadedFromDB};
[] call Messages_fnc_Request;

OL_PB_Ejected = false;
OL_PB_EndingPlayer = false;
OL_PB_WaitLoop = false;
OL_PB_Hits = 0;

OL_StoredWeapons = [];
OL_StoredMagazines = [];

OL_CallerNumber = "";
OL_InCall = false;
OL_RecivingCall = false;
OL_TempNumber = nil;
OL_CurrentCaller = [];
OL_PhoneRecents = [];

/*69 cutRsc ["OL_Twitter", "PLAIN"];*/
