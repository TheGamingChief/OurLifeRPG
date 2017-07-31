_geld = "geld" call INV_GetItemAmount;
if ((_geld < gangCost) || (kontostand < gangcost)) exitWith { player groupChat "You do not have enough money to create a gang!" };

if (_geld > gangCost) then {
  ["geld", -(gangCost)] call INV_addInvItem;
} else {
  kontostand = kontostand - gangCost;
};

_id       = [4] call CP_misc_GetRandomCode;
_name     = _this select 0;
_owner    = player;
_members  = [];
_locked   = false;

_data = [_id, _name, _owner, _members, _locked];
[["ADD", _data], "Server_gangs_Update", false, true] call OL_network_MP;

OL_PlayerGangID = _id;
player groupChat format['You have created a gang called: "%1"', _name];
