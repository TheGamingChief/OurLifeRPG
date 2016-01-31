_art = (_this select 3) select 0;
if(cracking)exitwith{player groupchat "you are already cracking a safe"};
cracking = true;

if (triggeractivated trg1) then 
{
(format ["%1 switchmove ""%2"";", player, "UnaErc_UnaErcPoslechVelitele"]) call broadcast;
sleep 5;
	if (_art == "safe1") then 
	{
	(format ["%1 switchmove ""%2"";", player, "repairingkneel"]) call broadcast;
	('if(iscop) then {playsound "alarm1";}') call broadcast;
	(format ['server globalChat "A camera at the bank has seen someone cracking the safe!";']) call broadcast;
	sleep 70;
		if ((random 100) < 40) then 
		{
		(format ["%1 switchmove ""%2"";", player, ""]) call broadcast;
		player groupChat "You cracked the safe";
		cracking = false;
		Playsound "Unlock";
		Safecracked1 = TRUE;
		Sleep 60;
		Safecracked1 = FALSE;
		}
		else
		{
		(format ["%1 switchmove ""%2"";", player, ""]) call broadcast;
		player groupChat "You need to bring the Right Tools! Try Again.";
		cracking = false;
		};
	cracking = false;
	};
};
if (triggeractivated trg2) then
{
(format ["%1 switchmove ""%2"";", player, ""]) call broadcast;
player groupChat "You need a better Team";
cracking = false;
};
/*
if (_art == "safe2") then 
{
(format ["%1 switchmove ""%2"";", player, "repairingkneel"]) call broadcast;
sleep 5;
	if ((random 100) < 40) then 
	{
	(format ["%1 switchmove ""%2"";", player, ""]) call broadcast;
	player groupChat "You cracked the safe";
	cracking = false;
	Playsound "Unlock";
	Safecracked2 = TRUE;
	}
	else
	{
	(format ["%1 switchmove ""%2"";", player, ""]) call broadcast;
	player groupChat "You did not crack the safe, try again";
	cracking = false;
	};
cracking = false;
};

if (_art == "safe3") then 

{
(format ["%1 switchmove ""%2"";", player, "repairingkneel"]) call broadcast;
sleep 5;
	if ((random 100) < 40) then 
	{
	(format ["%1 switchmove ""%2"";", player, ""]) call broadcast;
	player groupChat "You cracked the safe";
	cracking = false;
	Playsound "Unlock";
	Safecracked3 = TRUE;
	}
	else
	{
	(format ["%1 switchmove ""%2"";", player, ""]) call broadcast;
	player groupChat "You did not crack the safe, try again";
	cracking = false;
	};
cracking = false;
};
*/