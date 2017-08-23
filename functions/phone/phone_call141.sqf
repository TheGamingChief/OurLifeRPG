private["_msg","_sender"];
_msg = ctrlText 1028;
if (_msg == "Message" || isNil "_msg") exitWith {};
_sender = name player;
closeDialog 0;
hintSilent parseText format["<t font='Zeppelin33' color='#00FF44'>141 Message Sent</t>"];

format['player globalChat "(141) %1"',_msg] call OL_network_Swag;
