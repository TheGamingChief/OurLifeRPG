hint format["%1",_this select 0];
_action = _this select 0;
if(_action == "D_PB_Create") then{
	if(!createDialog "D_PaintBallPlayers") exitWith {hint "Dialog error"};
	for[{_i = 0},{_i < count D_PB_TeamRed},{_i=_i+1}] do{
		_memberr= D_PB_TeamRed select _i;
		_memberr = name _memberr;
		lbAdd [1,_memberr];
	};
	for[{_i=0},{_i<count D_PB_TeamBlue},{_i=_i+1}] do{
		_memberb = D_PB_TeamBlue select _i;
		_memberb = name _memberb;
		lbAdd [2,_memberb];
	};
};
