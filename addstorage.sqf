private ["_maxweight"];

if (isNil "INV_StorageSperre") then {INV_StorageSperre = false;};
if (INV_StorageSperre) exitWith {player groupChat localize "STRS_inv_storage_spam";};
INV_StorageSperre = true;
_art      = _this select 0;
_arrname  = _this select 1;
_amount    = _this select 2;
if (!(_amount call OL_ISSE_str_isInteger)) exitWith {player groupChat localize "STRS_inv_no_valid_number"; INV_StorageSperre = false;};
_amount    = _amount call OL_ISSE_StrToInt;
if (_amount <= 0) exitWith {INV_StorageSperre = false;};
_item     = _this select 3;
_infos    = _item call INV_getitemArray;
_public   = _this select 4;
_arr      = call compile _arrname;
_vclStore = false;
_vclClass = "";
_packed   = false;
_storageweight = 0;

if (count (_this select 5) > 0) then

{

_extra = _this select 5;

if (_extra select 0 == "vcl") then

	{

	_vclStore = true;
	_vclClass = _extra select 1;
	_maxweight = _vclClass call INV_getvehmaxkg;

	};

};

if (_art == "nehmen") then {

if (not([_item, _amount] call INV_CanCarryItems)) then

	{

	player groupChat localize "STRS_inv_buyitems_get_zuschwer";

	}
	else
	{

	if ([_item, -(_amount), _arrname] call INV_AddItemStorage) then

		{

		_gridPos = mapGridPosition getpos player;

		if ((_item == "geld") && (_gridPos == "064060") && (vehicle player == player)) then
		{
		["money_picked_up_factory", format ["%1 (%2) has picked up $%3 at the vehicle factory (GRID: %4)", name player, getPlayerUID player, _amount, _gridPos]] call RM_fnc_LogToServer;
		};

		if ((_item == "geld") && (_gridPos == "063060") && (vehicle player == player)) then
		{
		["money_picked_up_factory", format ["%1 (%2) has picked up $%3 at the vehicle factory (GRID: %4)", name player, getPlayerUID player, _amount, _gridPos]] call RM_fnc_LogToServer;
		};

		if ((_item == "geld") && (_gridPos == "080054") && (vehicle player == player)) then
		{
		["money_picked_up_factory", format ["%1 (%2) has picked up $%3 at the weapons factory (GRID: %4)", name player, getPlayerUID player, _amount, _gridPos]] call RM_fnc_LogToServer;
		};

		if ((_item == "geld") && (_gridPos == "079054") && (vehicle player == player)) then
		{
		["money_picked_up_factory", format ["%1 (%2) has picked up $%3 at the Illegal Weapons factory (GRID: %4)", name player, getPlayerUID player, _amount, _gridPos]] call RM_fnc_LogToServer;
		};

		if ((_item == "geld") && (vehicle player != player)) then
		{
		["money_picked_up_trunk", format ["%1 (%2) has picked up $%3 in a vehicle at GRID: %4", name player, getPlayerUID player, _amount, _gridPos]] call RM_fnc_LogToServer;
		};

		[_item, _amount] call INV_AddInvItem;
		player groupChat format[localize "STRS_inv_storage_took", (_amount call OL_ISSE_str_IntToStr)];
		_packed = true;

		}
		else
		{

		player groupChat localize "STRS_inv_storage_toomuch";

		};

	};

};

if (_art == "ablegen") then

{

if(_vclStore)then

	{

	_storageweight = ( (_arrname call INV_GetStorageWeight) + (_amount * (_infos call INV_getitemTypeKg)) );

	};

if(_storageweight > _maxweight)exitwith{player groupchat "The vehicle's storage is full";};

if
(
(_arrname call INV_StorageIsFactory) and
	(
	(_item call INV_getitemKindOf != "ressource") and
	(_item call INV_getitemKindOf != "drug") and
	(_item call INV_getitemKindOf != "geld")
	)
) exitWith

	{

	player groupChat localize "STRS_inv_storage_dropnotallowed";

	};

if (not([_item, -(_amount)] call INV_AddInvItem)) then

	{

	player groupChat localize "STRS_inv_storage_dropunablesomuch";

	}
	else
	{

	if ([_item, _amount, _arrname, _vclClass] call INV_AddItemStorage) then

		{

		player groupChat format[localize "STRS_inv_storage_dropped", (_amount call OL_ISSE_str_IntToStr)];
		_packed = true;
		_gridPos = mapGridPosition getpos player;

		if ((_item == "geld") && (_gridPos == "064060") && (vehicle player == player)) then
		{
		["money_dropped_factory", format ["%1 (%2) has dropped $%3 at the vehicle factory (GRID: %4)", name player, getPlayerUID player, _amount, _gridPos]] call RM_fnc_LogToServer;
		};

		if ((_item == "geld") && (_gridPos == "063060") && (vehicle player == player)) then
		{
		["money_dropped_factory", format ["%1 (%2) has dropped $%3 at the vehicle factory (GRID: %4)", name player, getPlayerUID player, _amount, _gridPos]] call RM_fnc_LogToServer;
		};

		if ((_item == "geld") && (_gridPos == "080054") && (vehicle player == player)) then
		{
		["money_dropped_factory", format ["%1 (%2) has dropped $%3 at the weapons factory (GRID: %4)", name player, getPlayerUID player, _amount, _gridPos]] call RM_fnc_LogToServer;
		};

		if ((_item == "geld") && (_gridPos == "079054") && (vehicle player == player)) then
		{
		["money_dropped_factory", format ["%1 (%2) has dropped $%3 at the Illegal Weapons factory (GRID: %4)", name player, getPlayerUID player, _amount, _gridPos]] call RM_fnc_LogToServer;
		};

		if ((_item == "geld") && (vehicle player != player)) then
		{
		["money_dropped_trunk", format ["%1 (%2) has dropped $%3 in a vehicle at GRID: %4", name player, getPlayerUID player, _amount, _gridPos]] call RM_fnc_LogToServer;
		};

		}
		else
		{

		player groupChat localize "STRS_inv_storage_cannotdropsomuch";

		};

	};

};

if (_art == "delete") then

{

if ([_item, -(_amount), _arrname] call INV_AddItemStorage) then

	{

	player groupChat format[localize "STRS_inv_storage_deleted", (_amount call OL_ISSE_str_IntToStr)];
	_packed = true;

	}
	else
	{

	player groupChat localize "STRS_inv_storage_toomuch";

	};

};

if (_art == "add") then

{

if
(
(_arrname call INV_StorageIsFactory) and
	(
	(_item call INV_getitemKindOf != "ressource") and
	(_item call INV_getitemKindOf != "drug") and
	(_item call INV_getitemKindOf != "geld")
	)
) exitWith

	{

	player groupChat localize "STRS_inv_storage_dropnotallowed";

	};

if ([_item, _amount, _arrname, _vclClass] call INV_AddItemStorage) then

	{

	player groupChat format[localize "STRS_inv_storage_dropped", (_amount call OL_ISSE_str_IntToStr)];
	_packed = true;

	}
	else
	{

	player groupChat localize "STRS_inv_storage_cannotdropsomuch";

	};

};

if (_packed) then

	{

	if (_public == "public") then {publicVariable _arrname;};

	if (player == vehicle player) then

	{

	format ["%1 playmove ""AmovPercMstpSnonWnonDnon_AinvPknlMstpSnonWnonDnon"";", player] call swag;

	};

waituntil {animationstate player != "AmovPercMstpSnonWnonDnon_AinvPknlMstpSnonWnonDnon"};

};

INV_StorageSperre = false;
