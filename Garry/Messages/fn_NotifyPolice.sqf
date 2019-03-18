_Player = _this select 0;
_Message = _this select 1;

format ['
if (iscop) then {
  player sideChat "[911 Message] %1 - %2 - %3";
};
', _Player, _Message, mapGridPosition _Player] call OL_network_Swag;

systemChat "[Message] 911 Message Sent!";

closeDialog 0;
