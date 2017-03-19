_safe 					= _this select 0;
_item 					= "safehack";
_itemAmount 		= _item call INV_GetItemAmount;

if (iscop) exitWith {	player groupChat "Police may not crack the safe code!" };
if (playersNumber west < 4 && !debug) exitwith {player groupchat "You need 4 Police Officers online to rob the Bank!";};
if (_itemAmount < 1) exitWith	{ player groupChat "You must have a Vault Code Cracker!" };
if (isCrackingSafe == 1) exitWith	{ player groupChat "You are already cracking a safe!"	};

if (isCrackingSafe == 0) then
{
	isCrackingSafe = 1;
	[_item, -1] call INV_AddInventoryItem;

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

			('if(iscop) then {playsound "beep";}') call swag;
			format ['server globalchat "Speedys Security INC Has Detected An Attempt To Hack Into The Bank Safe";'] call swag;

			safeCrackFailed = 0;
		};
		isCrackingSafe = 0;
	};

	player sideChat format["Your cracker reads: [%1]", safeCodeSet];

	safeCrackFailed = 0;
	isCrackingSafe = 0;
};
