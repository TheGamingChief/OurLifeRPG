isprone = {
	if (animationstate player == "amovppnemrunsnonwnondf" || animationstate player == "amovppnemstpsnonwnondnon" || animationstate player == "amovppnemstpsraswrfldnon" || animationstate player == "amovppnemsprslowwrfldf") then {
		true
	} else {
		false
	};
};

TurnMayorFunc = {
	if (_this) then {
    	format["civ%1_mayor = 1;", rolenumber] call OL_network_Swag
	} else {
		format["civ%1_mayor = 0;", rolenumber] call OL_network_Swag
	};
};

DialogSpielerListe = {
	private ["_Fart", "_Fid", "_Fname", "_Fingame", "_Findex", "_Flistlen", "_Feigenenum"];
  _Fart = _this select 0;
  _Fid = _this select 1;
	_Fname = _this select 2;
	_Fingame = _this select 3;
  _Findex = 0;
	_Flistlen = 0;
  _Feigenenum = -1;

	for [{_c=0}, {_c < (count playerstringarray)}, {_c=_c+1}] do {
		_Fspieler = playerstringarray select _c;
   	if (((_Fart == 0) || ((_Fart == 1) && (_c > civscount)) || ((_Fart == 2) && (_c < civscount))) && ((_Fingame) || (_Fspieler call OL_ISSE_UnitExists))) then {
    	if (_Fname) then {
    		_Findex = lbAdd [_Fid, format ["%1 - (%2)", _Fspieler, name (call compile _Fspieler)]];
   		} else {
    		_Findex = lbAdd [_Fid, _Fspieler];
			};

			lbSetData [_Fid, _Findex, format["%1", _c]];
    	if (_Fspieler == rolestring) then {
				_Feigenenum = _Flistlen;
			};
			_Flistlen = _Flistlen + 1;
		};
	};
	[_Flistlen, _Feigenenum]
};

Isse_AddCrimeLogEntry = {
	private ["_logtime", "_logdate", "_logtext", "_logart", "_logplayer", "_zusatzinfo"];
  _logart = _this select 0;
  _logplayer = format["%1", _this select 1];
  _zusatzinfo = "";

	if (count _this > 2) then {
		_zusatzinfo = _this select 2};
		_logtime = time;
 		_logdate = date;
    _logtext = "";

	switch (_logart) do {
		case "Bank": {
			_logtext = format[localize "STRS_functions_crimelog_msg1", _zusatzinfo];
		};
	  case "Ticket": {
			_logtext = format[localize "STRS_functions_crimelog_msg9", _zusatzinfo];
		};
	};
  CopLog = CopLog + [ [_logplayer, _logtext, _logdate, _logtime] ];
};

SayDirectSpeach = {
	private ["_text", "_dis"];
  _text = _this select 0;
  _art  = _this select 1;

	if (not((_text == "") || (_text == " "))) then {
  	_text = format["%1 shouts: %2", player, _text];

		if (_art == "direct") then {
			_dis = 50;
    	format ["if ((player distance %1) < %3) then {
				titleText[""%2"", ""PLAIN""];
			};
			", player, _text, _dis] call OL_network_Swag;
 		};
		if (_art == "side") then {
   		format ["%1 sideChat ""%2"";", player, _text] call OL_network_Swag;
	 	};
		if (_art == "global") then {
			format ["%1 globalChat ""%2"";", player, _text] call OL_network_Swag;
		};
	};
};
