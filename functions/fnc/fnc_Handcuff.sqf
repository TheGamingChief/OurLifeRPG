if (player distance civmenuciv >= 3) exitWith {hint "The person is too far away!"};
if (vehicle civmenuciv != civmenuciv) exitwith {player groupchat "The civ is in a vehicle!"};

if (animationstate civmenuciv == "actspercmstpsnonwrfldnon_interrogate02_forgoten") exitwith {
  ["HandCuffs", 1] call INV_AddInvItem;
  civmenuciv setVariable ["Cuffed",false,true];
  civmenuciv setVariable ["ZipTied",false,true];
  civmenuciv setVariable ["tf_voiceVolume", 1, true];
  civmenuciv setVariable ["tf_unable_to_use_radio", false, true];
  civmenuciv setVariable ["Gagged",false,true];

  if (player getVariable "Gagged") then {
	   format['if (rolestring == "%1") then {systemChat "Your Gag has been removed!";}', civmenuciv] call swag;
  };

  [civmenuciv,"restrain",30] call CBA_fnc_globalSay3d;
  hintSilent parseText format ["<t size='1.25' font='Zeppelin33' color='#D80C0C'>%1 Released</t>", civmenuciv];
  ["HandCuff_Log", format ["%1 (%2) was released by %3 (%4)", name civmenuciv, getPlayerUID civmenuciv, name player, getPlayerUID player]] call RM_fnc_LogToServer;
  format ['
  %1 switchMove "%2";
  if (rolestring == "%1") then {
    isstunned = false;
    StunActiveTime = 0;
  }', civmenuciv, "Normal"] call swag;
};

if ("HandCuffs" call INV_GetItemAmount == 0) exitwith {systemChat "You don't have any HandCuffs on you!"};

if ("HandCuffs" call INV_GetItemAmount > 0) then {
  ["HandCuffs", -1] call INV_AddInvItem;
  [civmenuciv,"restrain",30] call CBA_fnc_globalSay3d;
  hintSilent parseText format ["<t size='1.25' font='Zeppelin33' color='#D80C0C'>%1 Cuffed</t>", civmenuciv];
  (format ['if (rolestring == "%1") then {isstunned=true;}', civmenuciv]) call swag;
  civmenuciv setVariable ["tf_unable_to_use_radio", true, true];
  civmenuciv setVariable ["Cuffed",true,true];
  ["HandCuff_Log", format ["%1 (%2) was handcuffed by %3 (%4)", name civmenuciv, getPlayerUID civmenuciv, name player, getPlayerUID player]] call RM_fnc_LogToServer;
  format ['
  %1 switchMove "%2";
  if (player == %1) then {
    isstunned = true;
    [] spawn OL_events_isHandCuffed;
  };', civmenuciv, "actspercmstpsnonwrfldnon_interrogate02_forgoten"] call swag;
};
