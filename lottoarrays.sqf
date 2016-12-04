playing_lotto = 0;

LottoArray = 

[

//	0			 	1				 2			3		Position im Array
["lotto1", 	"Penny Saver Scratch Card",	 		1000,		15000],							
["lotto2", 	"Money Lover Scratch Card",		    5000,       75000],	
["lotto3", 	"Big Bucks Scratch Card",         	10000,  	150000],								
["lotto4",	"Fosters Fortune Scratch Card",			25000, 	    400000]

];

// Orte an denen man Lotto spielen kann( Händler)
LottoFlags = 									

[

[fuel2,["lotto1", "lotto2", "lotto3", "lotto4"]],
[fuel4,["lotto1", "lotto2", "lotto3", "lotto4"]],
[fuel5,["lotto1", "lotto2", "lotto3", "lotto4"]],
[fuel7,["lotto1", "lotto2", "lotto3", "lotto4"]],
[fuel8,["lotto1", "lotto2", "lotto3", "lotto4"]]

];

GetLottoArray = 

{

private ["_c", "_lotto"];	

for "_c" from 0 to (count LottoArray - 1) do

	{	

	if (((LottoArray select _c) select 0) == _this) exitWith { (LottoArray select _c) };

	};

};