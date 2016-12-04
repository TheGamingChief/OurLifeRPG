HowManyBruv = {
	_Key = _this select 0;
	_Array = _this select 1;

	_Amount = 0;
	{
		if(_x == _Key)then{
			_Amount = _Amount + 1;
		};
	}forEach _Array;

	_Amount;
};
CreateNestedMagArray = {
	_mags = magazines player;
	_giveReturn = [];
	_doneMags = [];
	{

		if(_x in _doneMags)then{
		}else{			
			_howManyOfCurrent = [_x, magazines player] call HowManyBruv;
			_doneMags set[(count(_doneMags)), _x];
			_giveReturn set[count(_giveReturn), [_x, _howManyOfCurrent]];
		};
	}forEach _mags;
	_giveReturn;
};
/*
while {true} do {
	_sleepTime = random(60) + 300;
	_sleepTime = (round _sleepTime);
	
	sleep _sleepTime;
	
	systemChat "[Server] Saving Stats...";
	[] call fnc_SaveStats;
};