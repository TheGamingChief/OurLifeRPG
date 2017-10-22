if (pickingup) exitwith { player groupchat "you are already picking up an item" };
if (player getVariable "KOED") exitWith { player groupChat "You are dead and cannot pick up any items!" };

pickingup = true;

_action	    = _this select 2;
_this 	    = _this select 3;
_object	    = _this select 0;
_item  	    = _this select 1;
_tamount    = _this select 2;
_infos      = _item call INV_getitemArray;
_name       = _infos call INV_getitemName;
_itemweight = (_infos call INV_getitemTypeKg)*_tamount;
_ownweight  = call INV_GetOwnWeight;
_amount     = _this select 2;
_exitvar    = 0;
_time       = round time;
_gridPos = mapGridPosition getpos player;

if ((_ownweight + _itemweight) > INV_Weight) then

{

_amount = (floor((INV_Weight - _ownweight) / (_infos call INV_getitemTypeKg)));

if (_amount <= 0) exitWith {player groupChat localize "STRS_inv_buyitems_maxgewicht"; _exitvar = 1;pickingup = false;};

};

if(_exitvar == 1)exitwith{pickingup = false;};
pickingup   = true;

_object setvariable ["droparray", nil, true];

if(primaryweapon player == "" and secondaryweapon player == "")then{player playmove "AmovPercMstpSnonWnonDnon_AinvPknlMstpSnonWnonDnon"}else{player playmove "AinvPknlMstpSlayWrflDnon"};

sleep 1;


[_item, _amount, "INV_InventarArray"] call INV_CreateItem;

player groupchat format["You picked up %1 %2", _amount, _name];

if (_item == "geld") then
{
["money_picked_up", format ["%1 (%2) has picked up $%3 at GRID: %4", PlayerName, getPlayerUID player, _amount, _gridPos]] call RM_fnc_LogToServer;
};

if(_amount < _tamount) then

{

_amount = _tamount - _amount;
_object setvariable ["droparray", [_amount, _item], true];
_n = iactionarr find _object;
iactionarr set [_n, 0];
iactionarr = iactionarr - [0, (iactionarr select (_n + 1))];
pickingup = false;
}
else
{

deletevehicle _object;
pickingup = false;
};

pickingup = false;
