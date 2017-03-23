_moneyValue = _this select 0;
_player = lbCurSel 696903;
_playerSelected = compPlayers select _player;
_newMoneyValue = parseNumber _moneyValue;

if ((_newMoneyValue >=1) && (_newMoneyValue <=5000000)) then{
  format["if(player == %1) then {kontostand = kontostand + %2;}", _playerSelected, _newMoneyValue] call OL_network_Swag;
  player sideChat format ['You gave %1: $%2', _playerSelected, _newMoneyValue];
  server globalChat format["(ADMIN)%1 has given %2 $%3",name player, _playerSelected, _newMoneyValue];
  ["Admin_Log", format ["[COMP_SYSTEM] Admin %1 (%2) has given %3 (%4) $%5", name player, getPlayerUID player, name _playerSelected, getPlayerUID _playerSelected, _newMoneyValue]] call RM_fnc_LogToServer;
}else{
  player sideChat "Ooops! You broke it!";
  player sideChat "Did you make sure it's between 1 and 5000000?";
};
