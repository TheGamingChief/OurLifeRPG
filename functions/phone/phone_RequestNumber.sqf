_PhoneNumber = [10] call CP_misc_GetRandomCode;
if (_PhoneNumber call OL_phone_inUse) exitWith { [] call OL_phone_RequestNumber };

_CurrPhoneNumber = player getVariable ["OL_PhoneNumber", "0000000000"];

if (_CurrPhoneNumber != "0000000000") exitWith { player groupChat "You already have a phone number." };

format ["[%1, %2, %3] call Server_phone_RegisterNumber;", str (_PhoneNumber), str (getPlayerUID player), str (player getVariable "realname")] call OL_network_Swag;
player groupChat format ["Registered Phone Number: %1", _PhoneNumber];
player setVariable ["OL_PhoneNumber", _PhoneNumber, true];
