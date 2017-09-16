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
  if ((typeOf player == "Flyers_Mechanic") || (typeOf player == "Flyers_Mechanic_Vest") || (typeOf player == "Flyers_Supervisor") || (typeOf player == "Flyers_Supervisor_Vest")) then {
    format ["%1", _this] call OL_network_Swag;
  } else {
    diag_log "!!BROADCAST WAS CALLED!!";
    diag_log _this;
  };
};
