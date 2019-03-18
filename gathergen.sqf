_type    = ((_this select 3)select 0);
_item    = _this select 0;
_chance  = _this select 1;
_maxzahl = _this select 2;

if (isNil("INV_FarmSpamSchutz")) then {INV_FarmSpamSchutz = false;};
if (INV_FarmSpamSchutz) exitWith {};
INV_FarmSpamSchutz = true;

if ( (_chance > (random 100)) ) then

{

if (_type == "Man") then { titletext ["Gathering...", "PLAIN DOWN", 0.1] };
if (_type == "Ship") then { titletext ["Fishing...", "PLAIN DOWN", 0.1] };
if (_type == "Tractor") then { titletext ["Harvesting...", "PLAIN DOWN", 0.1] };

_anzahl = (ceil(random(_maxzahl)));

if ([_item, _anzahl] call INV_AddInvItem) then

	{

	if(_anzahl == 0)exitwith{player groupchat "The stores are full with this item";};

	player groupChat format[localize "STRS_inv_buyitems_get_erhalten", (_anzahl call OL_ISSE_str_IntToStr), (_item call INV_getitemName)];

	}
	else
	{

	player groupChat localize "STRS_inv_buyitems_get_zuschwer";

	};

};

sleep 0.1;

INV_FarmSpamSchutz = false;
