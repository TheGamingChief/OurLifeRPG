_moneyValue = _this select 0;
_player = _this select 1;
_newMoneyValue = parseNumber _moneyValue;

if ((_newMoneyValue >=1) && (_newMoneyValue <=5000000)) then{

	format["if(player == %1) then {kontostand = kontostand + %2;}", _player, _newMoneyValue] call broadcast;
	player sideChat format ['You gave %1: $%2', _player, _newMoneyValue];
	server globalChat format["(ADMIN)%1 has given %2 $%3",name player, _player, _newMoneyValue];
	format['if(getplayeruid player in Developer_id) then {player sideChat "[Dev] Admin %1 has given comp. $%3 to %2."}',name player, _player, _newMoneyValue] call swag;
	[format["[Dev] Admin %1 has given comp. $%3 to %2.",name player, _player, _newMoneyValue]] call fn_LogToServer;

}else{
	player sideChat "Ooops! You broke it!";
	player sideChat "Did you make sure it's between 1 and 5000000?";
};
