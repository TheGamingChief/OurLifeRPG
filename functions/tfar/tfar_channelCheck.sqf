_Channel      = [] call TFAR_fnc_getTeamSpeakChannelName;
_RadioEnabled = [] call TFAR_fnc_isTeamSpeakPluginEnabled;

if ((getPlayerUID player) in OL_SwagDevs || (getPlayerUID player) in adminlevel4) exitWith {};
if !(_RadioEnabled) then {titleText ["YOU MUST HAVE TASK FORCE RADIO ENABLED. IF YOU NEED HELP CONTACT AN STAFF MEMBER", "BLACK", 5]};
if !(_Channel in AllowedChannels) then {titleText ["YOU MUST BE IN THE TASK FORCE RADIO CHANNEL WHEN PLAYING", "BLACK", 5]};

uiSleep 5;
titleText ["", "PLAIN", 5];
