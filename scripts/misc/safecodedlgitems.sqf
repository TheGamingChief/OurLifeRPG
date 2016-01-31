_art 	   = _this select 0;

if (_art == "submit") then
{
	_codeInput = ctrlText 2920;
	
	if (_codeInput != safeCodeSet) exitWith
	{
		player groupChat "That code is incorrect!";
		format['[0,1,2,["robwrongcode", %1]] execVM "bankrob.sqf";', _safeh] call broadcast;
		format['server globalChat "Speedys Security INC Has Detected An Attempt To Hack Into The Bank Safe!";'] call broadcast;
		('if(iscop) then {playsound "beep";}') call broadcast;
		sleep 4;
		format['server globalChat "Speedys Security INC Has Reset The Safe Master Code!"'] call broadcast;
		[] call resetSafeCode;
	};
	
	if (_codeInput == safeCodeSet) then
	{
		player sideChat "The code is correct! The code has been reset by Speedys Security INC automatic bank reset system!";
		format['[0,1,2,["robstart", %1]] execVM "bankrob.sqf";', _safeh] call broadcast;
        ('if(iscop) then {playsound "beep";}') call broadcast;
        "if (iscop) then {player sideChat ""ATTENTION All Officers 10-19 to the Bank, currently being robbed by armed gunmen!""};" call broadcast;
		[] call resetSafeCode;
		if (player distance safe1 <= 3) then
		{
	22254 cutRsc["RL_Dialog_loading", "plain"];
	sleep 1;
	player sidechat "This might take 65 sec. or longer!";
	player playmove "AinvPknlMstpSlayWrflDnon_medic";
	[1112, "Starting Cracking",0] call RL_LoadingSetText;
	[1112, "Cracking...",1] call RL_LoadingSetText;
	player playmove "AinvPknlMstpSlayWrflDnon_medic";
	sleep 1;
	[1112, "Cracking...",2] call RL_LoadingSetText;
	sleep 1;
	[1112, "Cracking...",3] call RL_LoadingSetText;
	player playmove "AinvPknlMstpSlayWrflDnon_medic";
	sleep 1;
	[1112, "Cracking...",4] call RL_LoadingSetText;
	player playmove "AinvPknlMstpSlayWrflDnon_medic";
	sleep 1;
	[1112, "Cracking...",5] call RL_LoadingSetText;
	sleep 1;
	[1112, "Cracking...",6] call RL_LoadingSetText;
	player playmove "AinvPknlMstpSlayWrflDnon_medic";
	sleep 1;
	[1112, "Cracking...",7] call RL_LoadingSetText;
	sleep 1;
	[1112, "Cracking...",8] call RL_LoadingSetText;
	player playmove "AinvPknlMstpSlayWrflDnon_medic";
	sleep 1;
	[1112, "Cracking...",9] call RL_LoadingSetText;
	sleep 1;
	[1112, "Cracking...",10] call RL_LoadingSetText;
	player playmove "AinvPknlMstpSlayWrflDnon_medic";
	sleep 1;
	waituntil {animationstate player != "AinvPknlMstpSlayWrflDnon_medic"};
	[1112, "Taking money...",15] call RL_LoadingSetText;
	sleep 1;
	[1112, "Taking money...",20] call RL_LoadingSetText;
	player playmove "AinvPknlMstpSlayWrflDnon_medic";
	sleep 1;
	[1112, "Taking money...",25] call RL_LoadingSetText;
	sleep 1;
	[1112, "Taking money...",30] call RL_LoadingSetText;
	player playmove "AinvPknlMstpSlayWrflDnon_medic";
	sleep 1;
	[1112, "Taking money...",35] call RL_LoadingSetText;
	sleep 1;
	player playmove "AinvPknlMstpSlayWrflDnon_medic";
	[1112, "Taking money...",40] call RL_LoadingSetText;
	sleep 1;
	[1112, "Taking money...",45] call RL_LoadingSetText;
	player playmove "AinvPknlMstpSlayWrflDnon_medic";
	sleep 1;
	[1112, "Taking money...",50] call RL_LoadingSetText;
	sleep 1;
	player playmove "AinvPknlMstpSlayWrflDnon_medic";
	waituntil {animationstate player != "AinvPknlMstpSlayWrflDnon_medic"};
	[1112, "Taking money...",55] call RL_LoadingSetText;
	sleep 1;
	player playmove "AinvPknlMstpSlayWrflDnon_medic";
	[1112, "Taking money...",60] call RL_LoadingSetText;
	sleep 1;
	[1112, "Taking money...",65] call RL_LoadingSetText;
	player playmove "AinvPknlMstpSlayWrflDnon_medic";
	sleep 1;
	[1112, "Taking money...",70] call RL_LoadingSetText;
	sleep 1;
	player playmove "AinvPknlMstpSlayWrflDnon_medic";
	[1112, "Taking money...",75] call RL_LoadingSetText;
	sleep 1;
	[1112, "Taking money...",80] call RL_LoadingSetText;
	player playmove "AinvPknlMstpSlayWrflDnon_medic";
	sleep 1;
	[1112, "Taking money...",85] call RL_LoadingSetText;
	sleep 1;
	player playmove "AinvPknlMstpSlayWrflDnon_medic";
	[1112, "Taking money...",90] call RL_LoadingSetText;
	sleep 1;
	[1112, "RUN!!!!!!!!!!!",100] call RL_LoadingSetText;
	22254 cutRsc["Default", "plain"];
	(format['if(!("Robbed the Bank" in %1_reason))then{%1_reason = %1_reason + ["Robbed the Bank"]}; %1_wanted = 1; kopfgeld_%1 = kopfgeld_%1 + wantedamountforbank;', player]) call broadcast;	
	[0,1,2,["ausrauben", Safe1]] execVM "bankrob.sqf";
		};
	};
};