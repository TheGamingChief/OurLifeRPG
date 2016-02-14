_lotto     = (_this  select 0) call GetLottoArray;
_lottocost = (_lotto select 2);
_lottowin  = (_lotto select 3);
_winner    = random 5;
_geld      = 'geld' call INV_GetItemAmount;
_player = player;

if (playing_lotto == 1 ) exitWith {role groupChat "You still need to scratch the one you have before buying another!";};
if (_geld < _lottocost) exitWith {role groupChat "You need more money to play!";};
['geld', -(_lottocost)] call INV_AddInventoryItem;

player groupChat "Scratching your card...";
playsound "scratch";
playing_lotto = 1; 
sleep 10; 

if (_winner > 1) exitWith {player groupChat format ["You lost on the ticket - (%1)",_lotto select 1];playing_lotto = 0;};

	
[_player,"slotwin"] call fn_netSay3D;
['geld', _lottowin] call INV_AddInventoryItem;	
//player groupChat format[localize "STRS_lotto_winner", (_lottowin call ISSE_str_IntToStr)];
player groupchat format ["You won: $%1 on the (%2)!", _lottowin, _lotto select 1];
playing_lotto = 0;

