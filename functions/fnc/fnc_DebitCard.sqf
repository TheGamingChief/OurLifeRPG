if (OL_SignUp) exitWith { player groupChat "You are already signing up for a debit card, please wait until the process is complete." };

if ("Debit_Card" call INV_GetItemAmount == 0) then {
	OL_SignUp = true;
	{
		player groupChat (_x select 0);
		uiSleep (_x select 1);
		if (player distance mainbank >= 15) exitWith { player groupChat "You have moved too far away from the Teller while signing up for your debit card." };
	} forEach OL_DebitCardSignup;
	if (player distance mainbank <= 15) then { ["Debit_Card", 1] call INV_AddInvItem };
} else { player groupChat "You currently have a debit card. Come back and sign up if you lose your debit card in the future." };

OL_SignUp = false;
