private["_msg","_sender"];
_msg = ctrlText 1028;
if (_msg == "Message" || isNil "_msg") exitWith {};
_sender = name player;
closeDialog 0;
hintSilent parseText format["<t font='Zeppelin33' color='#00FF44'>311 Message Sent</t>"];

format['player globalChat "%1(311) %2"',_sender,_msg] call OL_network_Swag;
