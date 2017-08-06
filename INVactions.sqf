_action = _this select 0;
_item   = _this select 1;
_amount = _this select 2;

if (!(_amount call OL_ISSE_str_isInteger))   exitWith {player groupChat localize "STRS_inv_no_valid_number";};
_amount = _amount call OL_ISSE_StrToInt;
if (_amount > (_item call INV_GetItemAmount)) exitWith {};
_player = _this select 3;
if ((player call OL_ISSE_IsVictim) or (!INV_CanUseInventory)) exitWith {player groupChat localize "STRS_inv_cannotUseNow";};
INV_InventarGiveReceiver = _player;

if ((_action == "use") and (INV_CanUseItem)) then {
	_filename = _item call INV_getitemFilename;
	switch (typeName _filename) do {
	    case ("STRING"): {
				if (_filename != "") then {
					["use", _item, _amount, []] execVM _filename;
				}	else {
					player groupChat localize "STRS_inv_inventar_cannotuse";
				};
	    };
			case ("CODE"): {
				["use", _item, _amount, []] spawn _filename;
			};
			default {
				player globalChat format["Master Array ERROR: %1", _filename];
			};
	};
};

if ((_action == "drop") and (INV_CanDropItem)) then

{

[_item, _amount] execVM "drop.sqf";

};

if ((_action == "give") and (INV_CanGiveItem)) then

{

["uebergabe", _item, _amount, _player] execVM "give.sqf";

};
