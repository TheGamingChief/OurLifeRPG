_art         = _this select 0;
_item        = _this select 1;
_menge       = _this select 2;
_itemanzeige = (_item call INV_getitemName);

if(primaryweapon player == "" and secondaryweapon player == "")then{player playmove "AmovPercMstpSnonWnonDnon_AinvPknlMstpSnonWnonDnon"}else{player playmove "AinvPknlMstpSlayWrflDnon"};

if (_art == "uebergabe") then 

{	

_spielernum   = call compile (_this select 3);
_spieler      = INV_PLAYERSTRINGLIST select _spielernum;
_playerobject = INV_PLAYERLIST       select _spielernum;
_gridPos = mapGridPosition getpos player;

if (_menge <= 0) exitWith {player groupChat "You cannot give less than 0";};
if (!(_spieler call ISSE_UnitExists))                exitWith {player groupChat localize "STRS_inv_not_ingame";};
if (_playerobject == player)                         exitWith {player groupChat localize "STRS_inv_inventar_uebergabe_self";};
if (player distance _playerobject > 20)              exitWith {player groupChat localize "STRS_inv_inventar_uebergabe_distance";};	
if (!(_item call INV_getitemGiveable))               exitWith {player groupChat localize "STRS_inv_inventar_uebergabe_verbot";};
if (!([_item, -(_menge)] call INV_AddInvItem)) exitWith {player groupChat localize "STRS_inv_inventar_uebergabe_zuwenig";};
if (_menge < 0) exitWith {player groupChat localize "STRS_give_minus_then";};
format ["if (player == %1) then {[""bekommen"", ""%2"", %3, %4] execVM ""give.sqf"";};", _playerobject, _item, _menge, player] call broadcast;
				
player groupChat format [localize "STRS_inv_inventar_uebergabe_success_self", name _playerobject, (_menge call ISSE_str_IntToStr), _itemanzeige];

if (_item == "geld") then 
{
["money_handed_to_player", format ["%1 (%2) has handed $%3 to %4 (%5) at GRID: %6", name player, getPlayerUID player, _menge, _playerobject, getPlayerUID _playerobject, _gridPos]] call fn_RMLogToServer;
};


};

if (_art == "bekommen") then 

{

_spieler = _this select 3;

if ([_item, _menge] call INV_AddInvItem) then 

	{

	player groupChat format[localize "STRS_inv_inventar_gotfromotherplayer", (_menge call ISSE_str_IntToStr), _itemanzeige, name _spieler];	

	} 
	else 
	{

	format ["if (player == %1) then {[""%2"", %3] call INV_AddInvItem;};", _spieler, _item, _menge] call broadcast;

	};

};
