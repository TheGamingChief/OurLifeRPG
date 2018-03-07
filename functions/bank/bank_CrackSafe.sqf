_safe 					= _this select 0;
_item 					= "safehack";
_itemAmount 		= _item call INV_GetItemAmount;

if (iscop) exitWith {	player groupChat "Police may not crack the safe code!" };
if (playersNumber west < 4 && !debug) exitwith { player groupchat "You need 4 police officers online to rob the bank!"; };
if (_itemAmount < 1) exitWith	{ player groupChat "You must have a vault code cracker!"; };
if (isCrackingSafe == 1) exitWith	{ player groupChat "You are already cracking a safe!";	};

if (isCrackingSafe == 0) then
{
	["CrackSafe_Log", format ["%1 (%2) is attempting to crack the safe.", PlayerName, getPlayerUID player]] call RM_fnc_LogToServer;
	isCrackingSafe = 1;
	[_item, -1] call INV_AddInvItem;

	player playmove "AinvPknlMstpSlayWrflDnon_medic";
	sleep 5;
	waituntil {animationstate player != "AinvPknlMstpSlayWrflDnon_medic"};

	if (round(random 100) < 70) exitWith
	{
		safeCrackFailed = safeCrackFailed + 1;
		player sideChat "Your cracker reads: [*%^&Error#$@$d]";
		if (safeCrackFailed >= 2) then
		{

			player sideChat "Speedys Security INC Has Detected You Trying To Crack The Safe";
			[] call OL_bank_AlarmSound;

			('if(iscop) then {playsound "beep";}') call OL_network_Swag;
			format ['server globalchat "Speedys Security INC Has Detected An Attempt To Hack Into The Bank Safe";'] call OL_network_Swag;

			safeCrackFailed = 0;
		};
		isCrackingSafe = 0;
	};

	player sideChat format ["Your cracker reads: [%1]", safeCodeSet];

	safeCrackFailed = 0;
	isCrackingSafe = 0;
};
