private["_msg","_sender"];
_msg = ctrlText 1028;
if (_msg == "Message" || isNil "_msg") exitWith {};
_sender = name player;
_unit = _this select 0;
_gridPos = mapGridPosition getpos _unit;
closeDialog 0;
hintSilent parseText format["<t font='Zeppelin33' color='#00FF44'>911 Message Sent</t>"];

format['if (iscop) then { player globalChat "%1(911) %2: Traced To: %3" };', _sender, _msg, _gridPos] call OL_network_Swag;
