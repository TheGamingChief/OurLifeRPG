_geld = "geld" call INV_GetItemAmount;
if ((_geld < gangCost) && (kontostand < gangcost)) exitWith { player groupChat "You do not have enough money to create a gang!" };
if (OL_PlayerGangID != -1) exitWith { player groupChat "You are already in a gang!" };

if (_geld > gangCost) then {
  ["geld", -(gangCost)] call INV_addInvItem;
} else {
  kontostand = kontostand - gangCost;
};

_id       = call compile ([4] call CP_misc_GetRandomCode);
_name     = _this select 0;
_owner    = str player;
_members  = [];
_locked   = false;

_data = [_id, _name, _owner, _members, _locked];
[["ADD", _data], "Server_Gangs_Update", false, true, false] call OL_network_MP;

OL_PlayerGangID = _id;
player groupChat format['You have created a gang called: %1', _name];
