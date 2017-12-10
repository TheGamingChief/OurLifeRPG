_Number = _this select 0;

if (!([_Number] call OL_phone_isOnline)) exitWith { systemChat "[Phone] The number you are trying to dial is not online." };
if (!([_Number] call OL_phone_isExists)) exitWith { systemChat "[Phone] The number you are trying to dial does not exist." };

_User = ["NUMBER", _Number] call OL_phone_getInfo;

systemChat str _User;

_PhoneNumber = _User select 0;
_PlayerID    = _User select 1;
_Name        = _User select 2;

format ["if (getPlayerUID player == %1) then { [%1, %2] call OL_phone_ReceivingCall };", str (_PlayerID), player] call OL_network_Swag;
