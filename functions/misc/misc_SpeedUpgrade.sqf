_item 		 = _this select 1;
_vcl			 = vehicle player;
_type			 = typeof _vcl;
_blacklist = ["il_bearcat", "schoolbus", "jailbus", "Ikarus_TK_CIV_EP1", "Ikarus", "MMT_USMC", "MMT_Civ", "cl_wheelchair"];
if (_vcl == player) exitwith { player groupchat "You must be in a vehicle" };
if (!(player == driver vehicle player)) exitWith { player groupChat "You must be the driver to tune this" };
if ((_vcl isKindOf "Motorcycle") || (_vcl isKindOf "Ship") || (_vcl isKindOf "Air") || (typeOf _vcl in _blackList)) exitwith { player groupchat "You cannot tune this vehicle" };

[_item, -1] call INV_AddInvItem;

{
	if (_item == (_x select 0)) exitWith {
		player groupChat "Tuning vehicle...";
		UpgradingCar = true;
		_vcl setFuel 0;
		uiSleep 10;
		_vcl setFuel 1;
		_vcl setVariable ["Tuning", (_x select 1), true];
		player groupChat "Vehicle tuned!";
		UpgradingCar = false;
	};
} forEach OL_SpeedUpgrades;
