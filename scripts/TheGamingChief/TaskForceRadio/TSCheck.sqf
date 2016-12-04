/*
Script made by : TheGamingChief for OurLifeRPG
Version 1.0 (Stable)
File: TSCheck.sqf
Description: Checks to see if the client is in the TaskForceRadio channel.
TeamSpeak: TS.OurLifeRPG.Net
Website: OurLifeRPG.Net
*/

[]spawn
{
	While {true} do
	{
		_RadioEnabled = ([]call TFAR_fnc_isTeamSpeakPluginEnabled);
		_Channel = ([]call TFAR_fnc_getTeamSpeakChannelName);
		if ((getPlayerUID player) in SwagDevs || (getPlayerUID player) in adminlevel4) exitWith {};
		if !(_RadioEnabled) then {titleText ["YOU MUST HAVE TASK FORCE RADIO ENABLED. IF YOU NEED HELP CONTACT AN STAFF MEMBER", "BLACK", 5];};
		if !(_Channel in AllowedChannels) then {titleText ["YOU MUST BE IN THE TASK FORCE RADIO CHANNEL WHEN PLAYING", "BLACK", 5];};
		sleep 5;
		titleText ["", "PLAIN", 5];
	};
};