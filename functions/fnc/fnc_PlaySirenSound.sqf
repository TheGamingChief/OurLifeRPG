_siren = _this select 0;
_user  = _this select 1;

strn = format["v_%1_%2",round(time),round(random(599))];
_object = strn;

strn_array set[count(strn_array), _object];
call compile format['%1 = "HeliHEmpty" createVehicle getPos vehicle %2',_object,_user];
call compile format['%1 attachTo[vehicle %2,[0,0,-49]];',_object, _user];

_sleepTimer = switch (_siren) do {
  case "DD_Wail": {
    _Timer = 4.645;
    _Timer;
  };
  case "DD_Phaser": {
    _Timer = 0.902;
    _Timer;
  };
  case "DD_Yelp": {
    _Timer = 3.424;
    _Timer;
  };
};

while {(typeName strn == "STRING")} do {
  call compile format['%1 say "%2"',_object, _siren];
  sleep _sleepTimer;
};
