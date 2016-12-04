if ((_this select 0) == "") exitWith {player groupChat localize "STRS_inv_no_selection";};
_item        = _this select 0;
_fabriknum   = _this select 1;
_facname     = ((INV_ItemFabriken select _fabriknum) select 1);
_type        = _this select 2;
_queue       = (INV_ItemFabriken select _fabriknum) select 8;
_ablage      = (INV_ItemFabriken select _fabriknum) select 7;
_spawn       = (INV_ItemFabriken select _fabriknum) select 4;
_crate       = (INV_ItemFabriken select _fabriknum) select 3;
_name        = (INV_ItemFabriken select _fabriknum) select 2;
_infos       = _item call INV_getitemArray;
_cost        = (_infos call INV_getitemBuyCost)*0.5;
_itemart     = _infos call INV_getitemType;
_amount      = (["geld",_ablage] call INV_GetStorageAmount);
dd_item = _item;
if (_type == "mani") then {
    if (_amount < _cost) exitWith {player groupChat localize "STRS_inv_fac_not_enough"};
    ["geld", -(_cost), _ablage] call INV_AddItemStorage;
 
    call compile format['%1 = %1 + [_item]; %2pend = %2pend + 1;', _queue, _item];
    player groupChat "Added to the production line";
};
 
if (_type == "create")then {

    if(_itemArt != "Fahrzueg")then{call compile format['favail = %1avail; if(%1avail > 0)then{%1avail = %1avail - 1;};', _item]};
    if (favail < 1)exitwith{player groupchat "There are no vehicles of this type available"};
 
    if (_itemart == "Item") then {player groupchat "creating...";fvspam=true;sleep 1;[_item, 1, _ablage] spawn INV_CreateItem;fvspam=false};
    if (_itemart == "waffe") then {player groupchat "creating...";fvspam=true;sleep 1;[(_infos call INV_getitemClassName), 1, _crate] spawn INV_CreateWeapon;fvspam=false};
    if (_itemart == "magazin") then {player groupchat "creating...";fvspam=true;sleep 1;[(_infos call INV_getitemClassName), 1, _crate] spawn INV_CreateMag;fvspam=false};
	if (_itemart == "Fahrzeug") then {player groupchat "creating...";fvspam=true;sleep 5;[_item, _spawn] spawn INV_CreateVehicle;fvspam=false};
 
    if (_itemart == "Fahrzeug") then {
        if (_facname == "factory1") then {
            player groupchat "Creating...";
            fvspam = true;
            sleep 5;
            _exitvar = false;
 
            _spawnindex =
            {
 
                if(count(nearestObjects[_x,["Car", "Air", "Ship", "Truck", "Motorcycle"], 5]) == 0)exitWith{
                    (_forEachIndex);   
                };
            } forEach _spawn;  
 
 
 
            systemChat str _spawn;
            systemChat format ["Spawn index %1 - Amount %2", _spawnindex, count(_spawn)];
 
            if (isNil "_spawnindex") exitwith {
                player groupchat "There is a vehicle blocking the spawn!";
                _exitvar = true;
            };
 
            call compile format['favail = %1avail; if(%1avail > 0)then{%1avail = %1avail - 1;};', _item];
            [_item,(_spawn select _spawnindex)] spawn INV_CreateVehicle;
            fvspam = false;
            player groupchat "Item created!";
           
 
        } else {
            player groupchat "Creating...";
            fvspam = true;
            sleep 5;
            [_item, _spawn] spawn INV_CreateVehicle;
            fvspam = false;
        };
    };
};
if (_type == "export") then {
 
    if (fvspam)exitwith{};
 
    call compile format['favail = %1avail',_item];
 
    if (favail < 1)exitwith{player groupchat "There are no items/vehicles of this type available."};
 
    if (_itemart == "magazin")exitwith{player groupchat "You cannot sell this item!"};
 
    if (_itemart == "Fahrzeug") then {
        _iarr = _item call INV_getitemArray;
        _price = (_iarr call INV_getitemCostWithTax)*1;
        ['geld',_price] call INV_AddInvItem;
		["Factory_Log", format ["%1 just got %2 for selling a vehicle!", name player,_price]] call fn_RMLogToServer;
        player groupchat format["The vehicle has been sold for $%1!",_price];
        call compile format['if(%1avail > 0)then{%1avail = %1avail - 1;};',_item];
    };
 
    if (_itemart == "waffe") then {
        _iarr = _item call INV_getitemArray;
        _price = (_iarr call INV_getitemCostWithTax)*1;
        ['geld',_price] call INV_AddInvItem;
		["Factory_Log", format ["%1 just got %2 for selling a weapon!", name player,_price]] call fn_RMLogToServer;
        player groupchat format["The weapon has been sold for $%1!",_price];
        call compile format['if(%1avail > 0)then{%1avail = %1avail - 1;};',_item];
    };
};