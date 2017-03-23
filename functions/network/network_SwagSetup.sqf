ISSE_pub_varCount = _this select 0;
ISSE_pub_varNum   = _this select 1;
ISSE_pub_varName  = format["ISSE_pub_Pstr_%1", ISSE_pub_varNum];

for [{_i=0}, {_i <= (ISSE_pub_varCount)}, {_i=_i+1}] do {
  _varName = format["ISSE_pub_Pstr_%1", _i];
  call compile format['%1 = " ";', _varName];
  _varName addPublicVariableEventHandler {
    call compile (_this select 1);
  };
};

broadcast = {
	diag_log "!!BROADCAST WAS CALLED!!";
	diag_log _this;
};
