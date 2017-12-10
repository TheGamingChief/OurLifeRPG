_SenderName = (_this select 0) getVariable ["realname", name player];
_SenderNumber = _this select 1;

if (OL_inCall) exitWith { [["IN_CALL"], "Phone_fnc_CallFailed", _this select 0, false, true] call Network_fnc_MP };
if (OL_RecivingCall) exitWith { [["RECIVING_CALL"], "Phone_fnc_CallFailed", _this select 0, false, true] call Network_fnc_MP };

OL_RecivingCall = true;

systemChat format ["[Phone] You are reciving a call from %1 - %2", _SenderNumber, _SenderNumber];

OL_CurrentCaller = [_this select 0, _SenderName, _SenderNumber];
