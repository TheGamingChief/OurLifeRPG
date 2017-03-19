if (player distance civmenuciv >= 3) exitWith {hint "The person is too far away!"};

if (civmenuciv getVariable "Escorted") exitwith {
  civmenuciv setVariable ["Escorted",false,true];
  uiSleep 0.5;
  format['if (rolestring == "%1") then {systemchat "You are no longer being escorted.";}', civmenuciv] call swag;
  detach civmenuciv;
};

if (!(civmenuciv call OL_ISSE_IsVictim)) exitwith {player groupchat localize "STRS_inventory_checknohandszip"};
civmenuciv setVariable ["Escorted",true,true];
civmenuciv attachTo [player,[0.6,0.3,0]];
