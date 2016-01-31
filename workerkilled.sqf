_killer = _this select 0;
_owner  = _this select 1;

//if(_killer == _owner)exitwith{};
if(_killer in coparray)exitwith{};

(format ['player globalchat "%1 killed %2s hooker!";', _killer, _owner]) call broadcast;

(format['if(!("Murder" in %1_reason))then{%1_reason = %1_reason + ["Murder"]}; %1_wanted = 1; kopfgeld_%1 = kopfgeld_%1 + 20000;', _killer,_owner]) call broadcast;


