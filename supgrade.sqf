_art 	= _this select 0;
_item 	= _this select 1;
_vcl	= vehicle player;
_type	= typeof _vcl;

_blackList = ["il_bearcat", "schoolbus", "jailbus", "Ikarus_TK_CIV_EP1", "Ikarus", "MMT_USMC", "MMT_Civ", "cl_wheelchair"];

if(_art == "use")then

{
	if (_vcl == player) exitwith{player groupchat "You must be in a vehicle"};
	if (_vcl iskindof _type call INV_getitemTypeKg > 2) exitwith{player groupchat "You can't tune this vehicle"};
	if (_vcl iskindof "Motorcycle") exitwith{player groupchat "You can't upgrade this!"};
	if (_vcl iskindof "ship") exitwith{player groupchat "You can't upgrade boats"};
	if (typeOf _vcl in _blackList) exitWith {player groupChat "You can't upgrade this retard!"; [_item, -1] call INV_AddInvItem;};
	if (!(player == driver vehicle player)) exitWith {player groupChat "You must be the driver to tune this";};

	[_item, -1] call INV_AddInvItem;

	if(_item == "supgrade1" || _item == "tow_supgrade1")then{player groupchat "tuning vehicle...";UpgradingCar = true; _vcl setfuel 0; sleep 8; _vcl setfuel 1; _vcl setvariable ["tuning", 1, true]; player groupchat "vehicle tuned!";UpgradingCar = false;};
	if(_item == "supgrade2" || _item == "tow_supgrade2")then{player groupchat "tuning vehicle...";UpgradingCar = true; _vcl setfuel 0; sleep 8; _vcl setfuel 1; _vcl setvariable ["tuning", 2, true]; player groupchat "vehicle tuned!";UpgradingCar = false;};
	if(_item == "supgrade3" || _item == "tow_supgrade3" || _item == "supgrade3_pd")then{player groupchat "tuning vehicle...";UpgradingCar = true; _vcl setfuel 0; sleep 8; _vcl setfuel 1; _vcl setvariable ["tuning", 3, true]; player groupchat "vehicle tuned!";UpgradingCar = false;};
	if(_item == "supgrade4" || _item == "supgrade4_pd")then{player groupchat "tuning vehicle...";UpgradingCar = true; _vcl setfuel 0; sleep 9; _vcl setfuel 1; _vcl setvariable ["tuning", 4, true]; player groupchat "vehicle tuned!";UpgradingCar = false;};
	if(_item == "supgrade5" || _item == "supgrade5_pd")then{player groupchat "tuning vehicle...";UpgradingCar = true; _vcl setfuel 0; sleep 10; _vcl setfuel 1; _vcl setvariable ["tuning", 5, true]; player groupchat "vehicle tuned!";UpgradingCar = false;};
	if(_item == "speedx")then{player groupchat "tuning vehicle...";UpgradingCar = true; _vcl setfuel 0; sleep 10; _vcl setfuel 1; _vcl setvariable ["tuning", 6, true]; player groupchat "You're Fast X";UpgradingCar =false;};
};
