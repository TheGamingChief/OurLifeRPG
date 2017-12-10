_PhoneNumber   = _this select 0;
_PlayerCalling = _this select 1;

player groupChat format ["You are receiving a call from %1. Press - to deal with the call.", _PlayerCalling getVariable ["realname", name player]];

player setVariable ["OL_CallerInfo", [_PhoneNumber, getPlayerUID _PlayerCalling], true];
