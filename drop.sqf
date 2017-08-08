_item   = _this select 0;
_amount = _this select 1;
_gridPos = mapGridPosition getpos player;

if ((!INV_CanUseInventory) or (!INV_CanDropItem)) exitWith {player groupChat localize "STRS_inv_inventar_cannotdrop";};

if(!isnull (nearestobjects[getpos player,["EvMoney","Suitcase"], 1] select 0))exitwith{player groupchat "You cannot drop items on top of each other. move and try again."};

if (_amount <= 0) exitwith {format["hint ""%1 has dropped %2!"";", (player getVariable "RealName"), _amount] call OL_network_Swag;};

if (_item call INV_getitemDropable) then {
	if ([_item, -(_amount)] call INV_AddInvItem) then	{
		player groupChat localize "STRS_inv_inventar_weggeworfen";
		if(primaryweapon player == "" and secondaryweapon player == "")then{player playmove "AmovPercMstpSnonWnonDnon_AinvPknlMstpSnonWnonDnon"}else{player playmove "AinvPknlMstpSlayWrflDnon"};

		uiSleep 1.5;

		private "_class";
		switch (_item) do {
			case "geld": 			{ _class = "EvMoney"  };
			case "oil":				{ _class = "Barrel4"  };
			case "oilbarrel":	{ _class = "Barrel4"  };
			default 					{ _class = "Suitcase" };
		};

		if (_item == "geld") then {
			["money_dropped", format ["%1 (%2) has dropped $%3 at GRID: %4", player getVariable "RealName", getPlayerUID player, _amount, _gridPos]] call RM_fnc_LogToServer;
			_object setVariable ["owner", getPlayerUID player,true];
		};

		_pos = getposASL player;
		_object = _class createvehicle _pos;
		_object setposASL getposASL player;
		_object setvariable ["droparray", [_amount, _item], true];

	}	else {
		player groupChat "You don't have that many objects to drop";
	};
} else {
	player groupChat "You are not allowed to drop this object";
};
