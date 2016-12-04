_civ = civmenuciv;
if (player distance _civ >= 3) exitWith {hint "The person is too far away!"};

if (_civ getVariable "Escort") exitwith 

{
_civ setVariable ["Escort",false,true];
sleep 0.5;
(format['if (rolestring == "%1") then {systemchat "You are no longer being escorted.";}', _civ]) call broadcast;
detach _civ;
};


if (!(_civ call ISSE_IsVictim)) exitwith {player groupchat localize "STRS_inventory_checknohandszip"};
_civ setVariable ["Escort",true,true];
_civ attachTo [player,[0.6,0.3,0]];