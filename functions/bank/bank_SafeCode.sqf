closeDialog 0;

if (_this select 0 == "submit") then {
	_codeInput = ctrlText 2920;

	if (player distance safe1 > 3) 	exitWith { player sideChat "You are too far away from the Safe!" };
	if (!local_robBankPossible)			exitWith { player sideChat "You have robbed the bank too recently!" };
	if (!(call INV_isArmed)) 				exitWith {
		player sideChat "You need a gun to rob the Safe dumbass!";
		format ['server globalchat "Some idiot just tried to rob the Bank without a weapon!"'] call OL_network_Swag;
 	};
	if (_codeInput != safeCodeSet) 	exitWith {
		player groupChat "That code is incorrect!";
		[] call OL_bank_AlarmSound;
		format['server globalChat "Speedys Security INC Has Detected An Attempt To Hack Into The Bank Safe!";'] call OL_network_Swag;
		sleep 4;
		format['server globalChat "Speedys Security INC Has Reset The Safe Master Code!"'] call OL_network_Swag;
		[] call OL_bank_ResetCode;
	};
	if (robpoolsafe1 < 50000) 			exitwith { player sideChat "Make sure there is at least 50k in the Safe!" };

	player sideChat "The code is correct! The code has been reset by Speedys Security INC automatic bank reset system!";

	'titleText [localize "STRS_bank_rob_titlemsg", "plain"]' call OL_network_Swag;
	[] call OL_bank_AlarmSound;

  'if(iscop) then {playsound "beep"; player sideChat "ATTENTION All Officers 10-19 to the Bank, currently being robbed by armed gunmen!";}' call OL_network_Swag;

	[] call OL_bank_ResetCode;
	[] spawn {
		22254 cutRsc["RL_Dialog_loading", "plain"];
		sleep 1;
		player sidechat "This might take 65 sec. or longer!";
		player playmove "AinvPknlMstpSlayWrflDnon_medic";
		["Starting Cracking",0] call OL_Misc_LoadingSetText;
		["Cracking...",1] call OL_Misc_LoadingSetText;
		player playmove "AinvPknlMstpSlayWrflDnon_medic";
		sleep 1;
		["Cracking...",2] call OL_Misc_LoadingSetText;
		sleep 1;
		["Cracking...",3] call OL_Misc_LoadingSetText;
		player playmove "AinvPknlMstpSlayWrflDnon_medic";
		sleep 1;
		["Cracking...",4] call OL_Misc_LoadingSetText;
		player playmove "AinvPknlMstpSlayWrflDnon_medic";
		sleep 1;
		["Cracking...",5] call OL_Misc_LoadingSetText;
		sleep 1;
		["Cracking...",6] call OL_Misc_LoadingSetText;
		player playmove "AinvPknlMstpSlayWrflDnon_medic";
		sleep 1;
		["Cracking...",7] call OL_Misc_LoadingSetText;
		sleep 1;
		["Cracking...",8] call OL_Misc_LoadingSetText;
		player playmove "AinvPknlMstpSlayWrflDnon_medic";
		sleep 1;
		["Cracking...",9] call OL_Misc_LoadingSetText;
		sleep 1;
		["Cracking...",10] call OL_Misc_LoadingSetText;
		player playmove "AinvPknlMstpSlayWrflDnon_medic";
		sleep 1;
		waituntil {animationstate player != "AinvPknlMstpSlayWrflDnon_medic"};
		["Taking money...",15] call OL_Misc_LoadingSetText;
		sleep 1;
		["Taking money...",20] call OL_Misc_LoadingSetText;
		player playmove "AinvPknlMstpSlayWrflDnon_medic";
		sleep 1;
		["Taking money...",25] call OL_Misc_LoadingSetText;
		sleep 1;
		["Taking money...",30] call OL_Misc_LoadingSetText;
		player playmove "AinvPknlMstpSlayWrflDnon_medic";
		sleep 1;
		["Taking money...",35] call OL_Misc_LoadingSetText;
		sleep 1;
		player playmove "AinvPknlMstpSlayWrflDnon_medic";
		["Taking money...",40] call OL_Misc_LoadingSetText;
		sleep 1;
		["Taking money...",45] call OL_Misc_LoadingSetText;
		player playmove "AinvPknlMstpSlayWrflDnon_medic";
		sleep 1;
		["Taking money...",50] call OL_Misc_LoadingSetText;
		sleep 1;
		player playmove "AinvPknlMstpSlayWrflDnon_medic";
		waituntil {animationstate player != "AinvPknlMstpSlayWrflDnon_medic"};
		["Taking money...",55] call OL_Misc_LoadingSetText;
		sleep 1;
		player playmove "AinvPknlMstpSlayWrflDnon_medic";
		["Taking money...",60] call OL_Misc_LoadingSetText;
		sleep 1;
		["Taking money...",65] call OL_Misc_LoadingSetText;
		player playmove "AinvPknlMstpSlayWrflDnon_medic";
		sleep 1;
		["Taking money...",70] call OL_Misc_LoadingSetText;
		sleep 1;
		player playmove "AinvPknlMstpSlayWrflDnon_medic";
		["Taking money...",75] call OL_Misc_LoadingSetText;
		sleep 1;
		["Taking money...",80] call OL_Misc_LoadingSetText;
		player playmove "AinvPknlMstpSlayWrflDnon_medic";
		sleep 1;
		["Taking money...",85] call OL_Misc_LoadingSetText;
		sleep 1;
		player playmove "AinvPknlMstpSlayWrflDnon_medic";
		["Taking money...",90] call OL_Misc_LoadingSetText;
		sleep 1;
		["RUN!!!!!!!!!!!",100] call OL_Misc_LoadingSetText;
		22254 cutRsc["Default", "plain"];
		[player, "Robbed Bank"] call OL_player_WarrantAdd;
		[Safe1] call OL_bank_RobSafe;
	};
};
