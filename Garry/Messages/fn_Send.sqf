_Message     = _this select 0;
_PhoneNumber = _this select 1;

if (_PhoneNumber == "") then { _PhoneNumber = [_this select 2, 7, true] call OL_misc_StringTrim };
if (_PhoneNumber == "") exitWith { systemChat "[Message Error] Unable to send message due to there being no phone number." };

if (_PhoneNumber == "911") exitWith { [player, _Message] call Messages_fnc_NotifyPolice };
if (_PhoneNumber == "411") exitWith { [player, _Message] call Messages_fnc_NotifyEMS };

_isValid = ["PHONENUMBER", _PhoneNumber] call Phone_fnc_RetrieveInfo;
if (count _isValid < 1) exitWith { systemChat "[Message Error] Unable to send message due to the the number being invalid." };

[[_Message, _PhoneNumber, player getVariable ["realname", name player], getPlayerUID player, OL_PhoneNumber, [time / 60 / 60] call BIS_fnc_timeToString], "Server_Messages_SendMessage", false, false, true] call OL_Network_MP;

if (dialog) then { closeDialog 0 };

systemChat "[Message] Message Sent!";
