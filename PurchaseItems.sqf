//[_costWithTax, _className, _type, _quantity, _individualCost, _otherValue1] execVM "PurchaseItems.sqf";
_costWithTax = _this select 0;
_className = _this select 1;
_type = _this select 2;
_quantity = _this select 3;
_individualCost = _this select 4;
_otherValue1 = _this select 5;
_name = _this select 6;

if (isNil "INV_ActiveShopNumber") then {
	INV_ActiveShopNumber = 0
};

_logic = ((INV_ItemShops select INV_ActiveShopNumber) select 3);
_wallet = "geld" call INV_GetItemAmount;
_bankBalance = Kontostand;
_DebitCardCount = "Debit_Card" call INV_GetItemAmount;
_totalCost = (_costWithTax * _quantity);
_gridPos = mapGridPosition getpos player;


if((_type == "Vehicle") && (count (nearestObjects [getPos _logic,["Ship","car","motorcycle","truck","Air"], 3]) > 0))exitWith
{
    player groupChat "There is a vehicle blocking the spawn!";
};


_fn_AddTaxes =
{
	_individualTax = (_costWithTax - _individualCost);
	_totalTax = (_individualTax * _quantity);
	INV_SteuernGezahlt = (INV_SteuernGezahlt + _totalTax);
};

_fn_CreateorAddSomething =
{
	if (_type == "License") then
	{
		_license = ((INV_Lizenzen select _otherValue1) select 0);

		INV_LizenzOwner = INV_LizenzOwner + [_license];
	};

	if (_type == "Item") then
	{
		if(primaryweapon player == "" and secondaryweapon player == "")then{player playmove "AmovPercMstpSnonWnonDnon_AinvPknlMstpSnonWnonDnon"}else{player playmove "AinvPknlMstpSlayWrflDnon"};

		[_otherValue1, _quantity, "INV_InventarArray"] call INV_CreateItem;
		[] call _fn_AddTaxes;

		if(_totalCost == 0)exitwith{player groupchat format['You took %1 %2', (_quantity call OL_ISSE_str_IntToStr), _className]};
	};

	if (_type == "Vehicle") then
	{
		[] call _fn_AddTaxes;

		[_otherValue1, _logic] spawn
		{
			INV_UsingCarshop = 1;
			player groupChat format["Please wait 5 seconds until your vehicle spawns."];
			sleep 5;
			INV_UsingCarshop = 0;
			if (not(alive player)) exitWith {};
			[_this select 0, _this select 1] spawn INV_CreateVehicle;
		};
	};

	if (_type == "Weapon") then
	{
		[] call _fn_AddTaxes;
		[_className, _quantity, _otherValue1] spawn INV_CreateWeapon;
	};

	if (_type == "Magazine") then
	{
		[] call _fn_AddTaxes;
		[_className, _quantity, _otherValue1] spawn INV_CreateMag;
	};
};

if (_type == "License") then
{
	_name = _className;
};

if (_type == "Item") then
{
	if ((_totalCost > _wallet) and (_DebitCardCount == 0)) then
	{
		_newQuantity = (floor(_wallet / _costWithTax));
		_newTotalCost  = _newQuantity * _costWithTax;

		if (_quantity == 0) exitWith {player groupChat format["You do not have enough money in your wallet to purchase %3 %1 for $%2.",_name, _totalCost, _quantity];};

		_quantity = _newQuantity;
		_totalCost = _newTotalCost;
	};

	if(_DebitCardCount > 0) then
	{
		if (_totalCost > _wallet) then
		{
			if (_totalCost > _bankBalance) then
			{
				_newQuantity = (floor(_bankBalance / _costWithTax));
				_newTotalCost  = _newQuantity * _costWithTax;

				if (_quantity > 0) then
				{
					_quantity = _newQuantity;
					_totalCost = _newTotalCost;
				};

				if (_quantity == 0) then
				{
					_newQuantity = (floor(_wallet / _costWithTax));
					_newTotalCost  = _newQuantity * _costWithTax;

					if (_quantity == 0) exitWith {player groupChat format["You do not have enough money in your wallet or bank account to purchase %3 %1 for $%2",_name, _totalCost, _quantity];};

					_quantity = _newQuantity;
					_totalCost = _newTotalCost;
				};
			};
		};
	};
};


if(_totalCost > _wallet) then
{
	if (_DebitCardCount > 0) then
	{
		if(_totalCost > Kontostand) then
		{
			player groupChat format["You do not have enough money in your wallet or bank account to purchase %3 %1 for $%2",_name, _totalCost, _quantity];
		}
		else
		{
			[] call _fn_CreateorAddSomething;
			Kontostand = Kontostand - _totalCost;
			player groupChat format["You have purchased %3 %1 for $%2 with a debit card.",_name, _totalCost, _quantity];
			["Buy_Log", format ["%1 (%2) has purchased %3 %4 at %5 for $%6 with a debit card.", name player, getPlayerUID player, _quantity, _name, _gridPos, _totalCost]] call RM_fnc_LogToServer;
		};
	}
	else
	{
		player groupChat format["You do not have enough money in your wallet to purchase %3 %1 for $%2.",_name, _totalCost, _quantity];
		player groupChat format["You can visit the bank and sign up for a debit card."];
	};
}
else
{
	[] call _fn_CreateorAddSomething;
	["geld", -(_totalCost)] call INV_AddInvItem;
	player groupChat format["You have purchased %3 %1 for %2 with money in your wallet.",_name, _totalCost, _quantity];
	["Buy_Log", format ["%1 (%2) has purchased %3 %4 at %5 for $%6", name player, getPlayerUID player, _quantity, _name, _gridPos, _totalCost]] call RM_fnc_LogToServer;
};
