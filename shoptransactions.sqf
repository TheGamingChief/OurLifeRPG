////////////////////////////////////
////			         //
//      Copyright � TCG         //
//www.tcgaming.enjin.com       //
////////////////////////////////

private ["_menge"];
if (shopactivescript == 1) exitwith {player groupchat "script already active"};
_geld  = 'geld' call INV_GetItemAmount;
if ((_this select 1) == -1) exitWith {};
_art        = _this select 0;
_itemauswahl= _this select 1;
_menge      = _this select 2;

if (isNil "INV_ActiveShopNumber") then {
	INV_ActiveShopNumber = 0
};

 if (!(_menge call OL_ISSE_str_isInteger)) exitWith {player groupChat localize "STRS_inv_no_valid_number";};
 _menge      = _menge call OL_ISSE_StrToInt;
 if (_menge <= 0) exitWith {};
 _extrainfo  = _this select 3;
 _extraArr   = _this select 4;
 _item       = _extraArr select 0;
 _einzelCost = _extraArr select 1;
 _CostMitTax = _extraArr select 2;
 _itemnumber = _extraArr select 3;
 _cost       = _menge*_CostMitTax;
 _infos      = _item  call INV_getitemArray;
 _itemart    = _infos call INV_getitemType;
 _classname  = _infos call INV_getitemClassName;
 _shopnumber = INV_ActiveShopNumber;
 _fahne      = ((INV_ItemShops select _shopnumber) select 0);
 _crate      = ((INV_ItemShops select _shopnumber) select 2);
 _logic      = ((INV_ItemShops select _shopnumber) select 3);
 _shoparray  = ((INV_ItemShops select _shopnumber) select 4);
 _license    = ((INV_ItemShops select _shopnumber) select 6);
 _itemarray  = (_shoparray select _itemnumber);
 _exitvar    = 0;
 _license1   = _infos call INV_getitemLicense;
 _license2   = _infos call INV_getitemLicense2;



//===========================================================BUY===============================================================
if (_art == "itemkauf") then
{
	if (shopactivescript == 1) exitwith {player groupchat "script already active"};
	shopactivescript = 1;

	instock=true;
	_stock = [_item, INV_ActiveShopNumber] call INV_getstock;

	if (_stock != -1) then
	{
		if (_stock < _menge)then{_menge = _stock; _cost = _menge*_CostMitTax;};
	};

	if(_menge == 0)then{instock=false};

	_einzelSteuer = ( _CostMitTax - _einzelCost );
	_gesamtSteuer = _einzelSteuer*_menge;

	if (_itemart == "Item" and instock) then
	{
		if (!(_license1 call INV_HasLicense) and isciv and _license) exitWith {player groupChat format[localize "STRS_inv_buyitems_nolicense", (_license1 call INV_GetLicenseName)]; _exitvar = 1};
		if (!(_license2 call INV_HasLicense) and iscop and _license) exitWith {player groupChat format[localize "STRS_inv_buyitems_nolicensecop", (_license2 call INV_GetLicenseName)]; _exitvar = 1};

		_amtragen          = (_item call INV_GetItemAmount);
		_gesamtmenge       = _amtragen + _menge;
		_gesamtgewicht     = (_infos call INV_getitemTypeKg)*_menge;
		_inventargewicht   = call INV_GetOwnWeight;

		if (((_infos call INV_getitemIsIllegal)) and (! INV_CANDOILLEGAL)) exitWith {player groupChat localize "STRS_inv_buyitems_notallowed"; _exitvar = 1};

		if ((_gesamtgewicht + _inventargewicht) > INV_Weight) then
		{
			_menge = (floor((INV_Weight - _inventargewicht) / (_infos call INV_getitemTypeKg)));
			_cost  = _menge*_CostMitTax;
			if (_menge <= 0) exitWith {player groupChat localize "STRS_inv_buyitems_maxgewicht"; _exitvar = 1;shopactivescript = 0;};
		};

		if (_exitvar == 1) exitWith {shopactivescript = 0};

		[_CostMitTax, (_infos call INV_getitemClassName), "Item", _menge, _einzelCost, _item, (_item call INV_getitemName)] execVM "PurchaseItems.sqf";
	};

	if (((_itemart == "waffe") or (_itemart == "magazin")) and instock) then
	{
		if (!(_license1 call INV_HasLicense) and isciv and _license) exitWith {player groupChat format[localize "STRS_inv_buyitems_nolicense", (_license1 call INV_GetLicenseName)]; _exitvar = 1};
		if (!(_license2 call INV_HasLicense) and iscop and _license) exitWith {player groupChat format[localize "STRS_inv_buyitems_nolicensecop", (_license2 call INV_GetLicenseName)]; _exitvar = 1};

		if (_itemart == "Waffe") then
		{
			[_CostMitTax, (_infos call INV_getitemClassName), "Weapon", _menge, _einzelCost, _crate, (_item call INV_getitemName)] execVM "PurchaseItems.sqf";
		}
		else
		{
			[_CostMitTax, (_infos call INV_getitemClassName), "Magazine", _menge, _einzelCost, _crate, (_item call INV_getitemName)] execVM "PurchaseItems.sqf";
		};
	};

	if (_itemart == "fahrzeug" and instock) then
	{
		_menge = 1;
		if (!(_license1 call INV_HasLicense) and isciv and _license) exitWith {player groupChat format[localize "STRS_inv_buyitems_nolicense", (_license1 call INV_GetLicenseName)]; _exitvar = 1};
		if (!(_license2 call INV_HasLicense) and iscop and _license) exitWith {player groupChat format[localize "STRS_inv_buyitems_nolicensecop", (_license2 call INV_GetLicenseName)]; _exitvar = 1};
		//if(_shopnumber == 89 && !("mafial" call INV_HasLicense)) exitwith {Player groupchat "You need mafia license for vehicles in this shop."};
		if (INV_UsingCarshop == 1)  exitWith {player groupChat localize "STRS_inv_buyvehicles_store_in_use"; _exitvar = 1};
		[_CostMitTax, (_infos call INV_getitemClassName), "Vehicle", _menge, _einzelCost, _item, (_item call INV_getitemName)] execVM "PurchaseItems.sqf";
	};

	if (_shopnumber == 89) then
	{
			mafiabank = mafiabank + round(_cost / 2);
			publicvariable "mafiabank";
	};

	if(!instock)exitwith{player groupchat "out of stock"};

	if (_stock != -1 and _exitvar == 0) then
	{
		format['["%1", (%2 - %3), %4] call INV_itemstocksupdate;', _item, _stock, _menge, INV_ActiveShopNumber] call OL_network_Swag;
	};
};



//======================================================SELL===========================================================

if (_art == "itemverkauf") then

{
if (shopactivescript == 1) exitwith {player groupchat "script already active"};
shopactivescript = 1;
maxstock=false;
_stock    = [_item, INV_ActiveShopNumber] call INV_getstock;
_maxstock = [_item, INV_ActiveShopNumber] call INV_getmaxstock;

if (_maxstock != -1) then

	{

	if ((_stock + _menge) > _maxstock)then{maxstock=true; _menge = _maxstock - _stock;_cost = _menge*_CostMitTax;};

	};

if(_menge <= 0)exitwith{player groupchat "the shop has reached its maximum stock for this item/vehicle"};

if (_itemart == "item") then

	{

	if (_item call INV_GetItemAmount == 0) exitWith {player groupChat localize "STRS_inv_buyitems_sell_notenough"; _exitvar = 1};
	if (_item call INV_GetItemAmount < _menge) then {_menge = (_item call INV_GetItemAmount); _cost = _CostMitTax*_menge;};

	if (_infos call INV_getitemIsIllegal and _infos call INV_getitemKindOf == "drug") then

		{

		_list = _fahne getvariable "druglist";
		if(isnil "_list")then{_list = [[player, _menge, _cost/_menge, _item call INV_getitemName]]}else{_list = _list + [[player, _menge, _cost/_menge, _item call INV_getitemName]]};
		_fahne setvariable["druglist", _list, true];

		};
	_gridPos = mapGridPosition getpos player;
	['geld', _cost] call INV_AddInvItem;
	[_item, -(_menge)] call INV_AddInvItem;
	if(primaryweapon player == "" and secondaryweapon player == "")then{player playmove "AmovPercMstpSnonWnonDnon_AinvPknlMstpSnonWnonDnon"}else{player playmove "AinvPknlMstpSlayWrflDnon"};
	player groupChat format [localize "STRS_inv_shop_sold", (_menge call OL_ISSE_str_IntToStr), (_infos call INV_getitemName), (_cost call OL_ISSE_str_IntToStr)];
	["Sell_Log", format ["%1 (%2) has sold %3 %4 at %5 for $%6", PlayerName, getPlayerUID player, _menge, _infos call INV_getitemName, _gridPos, _cost]] call RM_fnc_LogToServer;
	};

if (_itemart == "waffe") then

	{

	_verkauft  = 0;
	_gewinn    = 0;
	_weaps      = {_x == (_infos call INV_getitemClassName)} count weapons player;
	if (_weaps == 0) exitWith {player groupChat localize "STRS_inv_buyitems_sell_notenough"; _exitvar = 1};
	if (_weaps < _menge) then {_menge = _weaps;};
	_cost = _CostMitTax;
	_gridPos = mapGridPosition getpos player;
	['geld', _cost] call INV_AddInvItem;
	if(primaryweapon player == "" and secondaryweapon player == "")then{player playmove "AmovPercMstpSnonWnonDnon_AinvPknlMstpSnonWnonDnon"}else{player playmove "AinvPknlMstpSlayWrflDnon"};

	for [{_i=0}, {_i < _menge}, {_i=_i+1}] do

		{

		player removeWeapon (_infos call INV_getitemClassName);

		};

	player groupChat format [localize "STRS_inv_buyitems_verkauft", 1, (_infos call INV_getitemName), (_CostMitTax call OL_ISSE_str_IntToStr)];
	["Sell_Log", format ["%1 (%2) has sold %3 at %4 for $%5", PlayerName, getPlayerUID player, _infos call INV_getitemName, _gridPos, _CostMitTax]] call RM_fnc_LogToServer;
	};

if (_itemart == "magazin") then

	{

	_verkauft  = 0;
	_gewinn    = 0;
	_mags      = {_x == (_infos call INV_getitemClassName)} count magazines player;
	_gridPos = mapGridPosition getpos player;
	if (_mags == 0) exitWith {player groupChat localize "STRS_inv_buyitems_sell_notenough"; _exitvar = 1};
	if (_mags < _menge) then {_menge = _mags;};
	_cost = _menge*_CostMitTax;
	['geld', _cost] call INV_AddInvItem;
	if(primaryweapon player == "" and secondaryweapon player == "")then{player playmove "AmovPercMstpSnonWnonDnon_AinvPknlMstpSnonWnonDnon"}else{player playmove "AinvPknlMstpSlayWrflDnon"};

	for [{_i=0}, {_i < _menge}, {_i=_i+1}] do

		{

		player removeMagazine (_infos call INV_getitemClassName);

		};

	player groupChat format [localize "STRS_inv_buyitems_verkauft", (_menge call OL_ISSE_str_IntToStr), (_infos call INV_getitemName), (_cost call OL_ISSE_str_IntToStr)];
	["Sell_Log", format ["%1 (%2) has sold %3 %4 at %5 for $%6", PlayerName, getPlayerUID player, _menge, (_infos call INV_getitemName), _gridPos, _cost]] call RM_fnc_LogToServer;
	_exitvar = 1;


	};

if(_itemart == "fahrzeug")then
{
	_menge = 1;
	_vehicle = call compile format["%1",_extrainfo];
	_gridPos = mapGridPosition getPos player;

	if((_vehicle distance player) > 25)exitWith{player groupChat "You are too far away from the vehicle!"};
	if(!(_vehicle in INV_VehicleArray))exitWith{player groupChat "You do not own this vehicle!"};
	if(!alive _vehicle)exitWith{player groupChat "The vehicle you are trying to sell if blowen up!"};

	["geld", (_CostMitTax)] call INV_AddInvItem;
	player groupChat format [localize "STRS_inv_shop_vehiclesold", (_CostMitTax call OL_ISSE_str_IntToStr)];

	["Sell_Log", format ["%1 (%2) has sold %3 at %4 for $%5", PlayerName, getPlayerUID player, _vehicle, _gridPos, _CostMitTax]] call RM_fnc_LogToServer;
	INV_VehicleArray = INV_VehicleArray - [_vehicle];
	deleteVehicle _vehicle;
};

if (_stock != -1 and _exitvar == 0) then

	{

	format['["%1", (%2 + %3), %4] call INV_itemstocksupdate;', _item, _stock, _menge, INV_ActiveShopNumber] call OL_network_Swag;

	};

//============================================== OIL TRADING SUPPLY/DEMAND ============================================

if (((INV_ItemShops select INV_ActiveShopNumber) select 0) == OilSell1) then

	{

	tankencost = tankencost - oilsellpricedec*_menge;
	sleep 0.1;
	if(tankencost < 100)then{tankencost = 100};

	publicvariable "tankencost";

	};

//=======================================================================================================================

if(maxstock)then{player groupchat "the shop has reached its maximum stock for this item/vehicle"};



};

sleep 3;
shopactivescript = 0;
