_FromName = _this select 0;
_FromNumber = _this select 1;

systemChat format ["[Message] You have received a message from (%1 - %2).", _FromName, _FromNumber];

[[OL_PhoneNumber, getPlayerUID player], "Messages_fnc_ServerRequest", false, false, true] call Network_fnc_MP;
