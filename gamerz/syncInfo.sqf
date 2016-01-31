while {true} do
{
	player setVariable ["Kontostand",Kontostand,true];
	_geld = ('geld' call INV_GetItemAmount);
	player setVariable ["moneyPlayer",_geld,true];
	sleep 10;
};