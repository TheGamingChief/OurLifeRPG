

	_loopasdf=1;
    
    _loopasdfg=1;
    
    while {_loopasdf<=1} do {
        "if (iscop) then {Kontostand = (Kontostand + govconvoybonus); player sidechat format[""-----  Our Life RPG Comp System: YOU HAVE RECIEVED 50,000 AS COMPENSATION ----- "", govconvoybonus];};" call broadcast;
		//format['server globalChat "(ADMIN)%1 Has Given Out Comp";', name player] call broadcast;
        
        _loopasdf=_loopasdf+1;
        };
        
    hint "Compensation Received.";
        
        
    while {_loopasdfg<=1} do {
        "if (isciv) then {Kontostand = (Kontostand + govconvoybonus); player sidechat format[""----- Our Life RPG Comp System: YOU HAVE RECIEVED 50,000 AS COMPENSATION ----- "", govconvoybonus];};" call broadcast;
		//format['server globalChat "(ADMIN)%1 Has Given Out Comp";', name player] call broadcast;
        
        _loopasdfg=_loopasdfg+1;
        };

        

    