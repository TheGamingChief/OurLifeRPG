compSystemOpen = 
{
	createDialog "compSystem";
	compPlayers = playableUnits;
	{lbAdd [696903,format ["%1 - %2", _x, name _x]];} forEach compPlayers;
	lbSetCurSel [696903,0];
};

compSystemProccess = 
{
	_moneyValue = _this select 0;
	_player = lbCurSel 696903;
	_playerSelected = compPlayers select _player;
	_newMoneyValue = parseNumber _moneyValue;

	if ((_newMoneyValue >=1) && (_newMoneyValue <=5000000)) then{

		format["if(player == %1) then {kontostand = kontostand + %2;}", _playerSelected, _newMoneyValue] call broadcast;
		player sideChat format ['You gave %1: $%2', _playerSelected, _newMoneyValue];
		server globalChat format["(ADMIN)%1 has given %2 $%3",name player, _playerSelected, _newMoneyValue];
		["Admin_Log", format ["[COMP_SYSTEM] Admin %1 (%2) has given %3 (%4) $%5", name player, getPlayerUID player, name _playerSelected, getPlayerUID _playerSelected, _newMoneyValue]] call fn_RMLogToServer;
	}else{
		player sideChat "Ooops! You broke it!";
		player sideChat "Did you make sure it's between 1 and 5000000?";
	};
	
};

iddy_addLicenses =
{
	if ((getPlayerUID player) in SwagDevs) then {
		
		//Modification by CP3088 9/4/2015 (Love you idris :)
		INV_LizenzOwner = [];
		{
			_tmp = _x select 0;
			
			if (!(_tmp in INV_LizenzOwner)) then {
				INV_LizenzOwner = INV_LizenzOwner + [_tmp];
			};
		} forEach INV_Lizenzen;

		if ((getPlayerUID player) in SwagDevs)then {
			player groupChat format ["%1 has addedd all licenses to himself",name player];
		};
	} else { 'server groupChat format ["%1 has tried to use a license hack!!!",name player];' call broadcast; };
};