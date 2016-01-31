////////////////////////////////////
////	Modified		 //
//      Copyright © TCG         //
//www.tcgaming.enjin.com       //
////////////////////////////////
/// Intelectual Property


_art = _this select 0;

if (_art == "init") then 

{

INV_hunger         = 25;
INV_HungerProSek   = 0.015;
INV_HungerSchaden  = 0.1; 
INV_HungerStartVal = 1;
hungernachricht   = 0;
_sleepTime         = 15;

while {!dedicatedserver} do 

	{

	if (INV_hunger < 100) then 

		{

		INV_hunger = INV_hunger + (INV_HungerProSek*_sleepTime);

		if ((hungernachricht == 0) and (INV_hunger >= 90) and (INV_hunger < 91)) then 

			{

			titleText [localize "STRS_inv_item_nahrung_verhungern", "plain"];

			hungernachricht = hungernachricht + 1;	

			};

		if ((hungernachricht == 1) and (INV_hunger >= 91) and (INV_hunger < 92)) then 

			{

			titleText [localize "STRS_inv_item_nahrung_verhungern", "plain"];

			hungernachricht = hungernachricht + 1;	

			};

		if ((hungernachricht == 2) and (INV_hunger >= 92) and (INV_hunger < 93)) then 

			{

			titleText [localize "STRS_inv_item_nahrung_verhungern", "plain"];

			hungernachricht = hungernachricht + 1;	

			};

		if ((hungernachricht == 3) and (INV_hunger >= 93) and (INV_hunger < 94)) then 

			{

			titleText [localize "STRS_inv_item_nahrung_verhungern", "plain"];

			hungernachricht = hungernachricht + 1;	

			};

		if ((hungernachricht == 4) and (INV_hunger >= 94) and (INV_hunger < 95)) then 

			{

			titleText [localize "STRS_inv_item_nahrung_verhungern", "plain"];

			hungernachricht = hungernachricht + 1;	

			};

		if ((hungernachricht == 5) and (INV_hunger >= 95) and (INV_hunger < 96)) then 

			{

			titleText [localize "STRS_inv_item_nahrung_verhungern", "plain"];

			hungernachricht = hungernachricht + 1;	

			};

		if ((hungernachricht == 6) and (INV_hunger >= 96) and (INV_hunger < 97)) then 

			{

			titleText [localize "STRS_inv_item_nahrung_verhungern", "plain"];

			hungernachricht = hungernachricht + 1;	

			};

		if ((hungernachricht == 7) and (INV_hunger >= 97) and (INV_hunger < 98)) then 

			{

			titleText [localize "STRS_inv_item_nahrung_verhungern", "plain"];

			hungernachricht = hungernachricht + 1;	

			};

		if ((hungernachricht == 8) and (INV_hunger >= 98) and (INV_hunger < 99)) then 

			{

			titleText [localize "STRS_inv_item_nahrung_verhungern", "plain"];

			hungernachricht = hungernachricht + 1;	

			};

		if ((hungernachricht == 9) and (INV_hunger >= 99) and (INV_hunger < 100)) then 

			{

			titleText [localize "STRS_inv_item_nahrung_verhungern", "plain"];

			hungernachricht = hungernachricht + 1;	

			};

		if ((hungernachricht > 0) and (INV_hunger <= 90)) then 

			{

			hungernachricht = 0;

			};

		if (!alive player) then 

			{

			INV_hunger = 1;

			};

		} 
	else 
		{

		titleText [localize "STRS_inv_item_nahrung_verhungern", "plain"];
		player setDamage ((damage player) + (INV_HungerSchaden*_sleepTime));
		INV_hunger = 100;

		};

	sleep _sleepTime;

	};

};


if (_art == "use") then 

{

_item   = _this select 1;
_anzahl = _this select 2;
_maxanzahl =   _item call INV_getitemamount;
_hungerStillen = 0;

if( _anzahl >  _maxanzahl) then { _anzahl =  _maxanzahl;};

switch _item do 

	{	

	case "D5W":  { _hungerStillen = 5; };

	case "blowfish":  { _hungerStillen = 8; };
	
	case "perch":  { _hungerStillen = 6; };

	case "walleye":  { _hungerStillen = 7; };

	case "trout":  { _hungerStillen = 7; };

	case "mackerel":  { _hungerStillen = 8; };

	case "herring":  { _hungerStillen = 8; };

	case "bass":  { _hungerStillen = 8; };

	case "straw":  { _hungerStillen = 3; };

	case "Donut":     { _hungerStillen = 10;  };

	case "Bread":     { _hungerStillen = 5;  };

	case "boar":     { _hungerStillen = 10;  };

	case "rabbit":     { _hungerStillen = 10;  };

	case "strangemeat":     { _hungerStillen = 15;  };
	
	case "bread":     { _hungerStillen = 5;  };
	
	case "apple":     { _hungerStillen = 7;  };
	
	case "Stoer":     { _hungerStillen = 75;  };
	
	case "coconut":     { _hungerStillen = 10;  };

	case "banana":     { _hungerStillen = 7;  };

	case "getreide":     { _hungerStillen = 2;  };

	case "hgbar":     { _hungerStillen = 4;  };

	case "tcgmp":     { _hungerStillen = 5;  };

	case "doshd":     { _hungerStillen = 5;  };

	case "gdar":     { _hungerStillen = 5;  };

	case "bjerk":     { _hungerStillen = 5;  };

	case "Frozens":     { _hungerStillen = 4;  };

	case "wulf":     { _hungerStillen = 6;  };

	case "fuzz":     { _hungerStillen = 4;  };

	case "inby":     { _hungerStillen = 4;  };
	
	};




[_item, -(_anzahl)] call INV_AddInvItem;

INV_hunger = INV_hunger - (_hungerStillen*_anzahl);

if (INV_hunger < 0) then {INV_hunger = 0};

player groupChat format[localize "STRS_inv_item_nahrung_gegessen", ((round (100-INV_hunger)) call ISSE_str_IntToStr)];

};
