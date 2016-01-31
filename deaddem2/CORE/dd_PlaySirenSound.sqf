DD_f_PlaySirenSound = {
	_siren = _this select 0;
	_user= _this select 1;
	strn = format["v_%1_%2",round(time),round(random(599))];
	_object = strn;
	
	strn_array set[count(strn_array), _object];
	call compile format["%1 = ""HeliHEmpty"" createVehicle getpos vehicle %2;",_object, _user]; 
	call compile format["%1 attachto[vehicle %2,[0,0,-49]];",_object, _user];
	_sleepTimer = switch(_siren)do{
		case "vicsiren1":
		{
			_Timer = 10.2;
			_Timer;
		};
		case "vicsiren2":
		{
			_Timer = 4.23;
			_Timer;
		};
		case "vicsiren3":
		{
			_Timer =4.02;
			_Timer;
		};
	};

	while{(typeName strn == "STRING")}do{
		call compile format["%1 say ""%2""",_object, _siren];
		sleep _sleepTimer;
	};
};