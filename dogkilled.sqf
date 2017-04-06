_killer = _this select 0;
_owner  = _this select 1;

if(_killer == _owner)exitwith{};
if(_killer in coparray)exitwith{};

(format ['player globalchat "%1 killed %2s K9!";', _killer, _owner]) call OL_network_Swag;
[_killer, "Murder"] call OL_player_WarrantAdd;
