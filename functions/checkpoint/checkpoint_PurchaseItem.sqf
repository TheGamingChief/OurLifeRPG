_selection = _this select 0;
if (_selection == -1) exitWith { hint "You need to select an item first" };

_item  = classnames_total select _selection;
_class = _item select 0;
_price = _item select 1;
_pos   = _item select 2;

if (kontostand < _price) exitWith { player groupChat "You do not have enough money in your bank account" };

AM_temp_carrying = true;
temp_item = _class createVehicle position player;
temp_item setVariable ["AM_CP",1,true];
temp_item attachto[player, _pos];

kontostand = kontostand - _price;
player groupChat "You have been charged for buying this. Press 9 to drop it on the ground.";

closeDialog 0;
