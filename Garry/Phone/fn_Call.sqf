if (true) exitWith { systemChat "Not Implemented" };

_PhoneNumber  = _this select 0;
_ReceiverInfo = ["PHONENUMBER", _PhoneNumber] call Phone_fnc_RetrieveInfo;

if (count _ReceiverInfo < 1) exitWith { systemChat "[Phone] The number you are trying to call does not exists." };

_ReceiverID     = _ReceiverInfo select 1;
_ReceiverOnline = false;

{
  if ((getPlayerUID _x) == _ReceiverID) exitWith { _ReceiverOnline = true };
} forEach playerarray;

if (!_ReceiverOnline) exitWith { systemChat "[Phone] The player you are trying to call is not online." };

OL_InCall = true;

if (!createDialog "UI_PhoneActiveCaller") exitWith { hint "Dialog Error! (UI_PhoneActiveCaller)" };

_inContacts = {
  if ((_x select 1) == _PhoneNumber) exitWith { true };
} forEach OL_PhoneContacts;

if (isNil "_inContacts") then { _inContacts = false };

_display = (findDisplay 123456) displayCtrl 1100;

if (_inContacts) then {
  _display ctrlSetStructuredText parseText format ["<t align='center' color='#FFFFFF'>%1 - %2</t><br/><t align='center' color='#FFFFFF'>Calling...", _ReceiverInfo select 2, _PhoneNumber]
} else {
  _display ctrlSetStructuredText parseText format ["<t align='center' color='#FFFFFF'>%1</t><br/><t align='center' color='#FFFFFF'>Calling...", _PhoneNumber]
};

[[player, OL_PhoneNumber], "Phone_fnc_RecivingCall", _ReceiverID, false, true] call OL_Network_MP;
