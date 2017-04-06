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
