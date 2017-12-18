_Player = _this select 0;
_Message = _this select 1;

format ['
if (ismedic) then {
  player sideChat "[411 Message] %1 - %2 - %3";
};
', _Player, _Message, mapGridPosition _Player] call OL_network_Swag;

systemChat "[Message] 411 Message Sent!";

closeDialog 0;
