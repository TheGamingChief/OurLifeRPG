if (SigningUpForDebitCard) exitWith {player groupChat "You are already signing up for a debit card, please wait until the process is complete."};

fn_DebitCardSignupNotification = 
{
	player groupChat "You moved too far away from the Bank Teller while signing up for your debit card.";
	player groupChat "While signing up for a debit card, you must remain in the lobby of the bank.";
	SigningUpForDebitCard = false;
};

_DebitCardCount = "Debit_Card" call INV_GetItemAmount;

if (_DebitCardCount == 0) then
{
	SigningUpForDebitCard = true;

	player groupChat "While signing up for a debit card, you must remain in the lobby of the bank or you will not receive your debit card.";
	player groupChat "The Bank Teller asks you to have a seat and start filling out paperwork for your debit card.";
	sleep 10;
	
	if (player distance mainbank >= 15) exitWith {[] call fn_DebitCardSignupNotification;};

	player groupChat "After you return the papers to the Bank Teller with your information and I.D. the Bank Teller starts processing your paperwork.";
	sleep 10;

	if (player distance mainbank >= 15) exitWith {[] call fn_DebitCardSignupNotification;};
	
	player groupChat "The Bank Teller has completed processing your paperwork but has some questions about your account.";
	sleep 10;

	if (player distance mainbank >= 15) exitWith {[] call fn_DebitCardSignupNotification;};

	player groupChat "After answering the Bank Teller's questions the Bank Teller hands you your brand new debit card.";
	player groupChat "If you lose your debit card, come back to the bank and get a new one.";
	player groupChat "The bank has excellent fraud prevention so you will not need to worry about anyone being able to use your debit card.";

	["Debit_Card", 1] call INV_AddInvItem;
} else {
	player groupChat "You currently have a debit card. Come back and sign up if you lose your debit card in the future.";
};

SigningUpForDebitCard = false;