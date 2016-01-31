_action = _this select 0;
hint "action.";
switch (_action) do{
	case "red_join":
	{
		if(player in D_PB_TeamRed or player in D_PB_TeamBlue) exitWith {player groupChat "You are already in a team!"};
		if(count D_PB_TeamRed == 5) exitWith {player groupChat "Team Red is full"};
		if(D_PB_InSession) exitWith {player groupChat "There is a Paintball Match in Session!"};
		D_PB_TeamRed = D_PB_TeamRed + [player];
		publicVariable "D_PB_TeamRed";
		[] execVM "deaddem\Paintball\wait.sqf";
	};
	case "blue_join":
	{
		if(player in D_PB_TeamRed or player in D_PB_TeamBlue) exitWith {player groupChat "You are already in a team!"};
		if(count D_PB_TeamBlue == 5) exitWith {player groupChat "Team Blue is full"};
		if(D_PB_InSession) exitWith {player groupChat "There is a Paintball Match in Session!"};
		D_PB_TeamBlue = D_PB_TeamBlue + [player];
		publicVariable "D_PB_TeamBlue";
		[] execVM "deaddem\Paintball\wait.sqf";
	};
};