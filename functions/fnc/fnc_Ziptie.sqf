if (player distance civmenuciv >= 3) exitWith {hint "The person is too far away!"};

if (animationstate civmenuciv == "actspercmstpsnonwrfldnon_interrogate02_forgoten") exitwith {
  civmenuciv setVariable ["ZipTied",false,true];
  civmenuciv setVariable ["Cuffed",false,true];
  civmenuciv setVariable ["tf_voiceVolume", 1, true];
  civmenuciv setVariable ["Gagged",false,true];
  civmenuciv setVariable ["tf_unable_to_use_radio", false, true];
  (format['
  %1 switchMove "%2";
  if (rolestring == "%1") then {
    player groupchat "You have been let go!";
    isstunned = false;
  }', civmenuciv, "Normal"]) call swag;

  if (player getVariable "Gagged") then {
	   (format['if (rolestring == "%1") then {systemChat "Your Gag has been removed!";}', civmenuciv]) call swag;
  };
  player groupchat "You released the player";
};

if ("ziptie" call INV_GetItemAmount > 0) then {
  ["ziptie", -1] call INV_AddInvItem;
  if (vehicle civmenuciv != civmenuciv) exitwith {player groupchat "the civ is in a vehicle!"};
  if (!(civmenuciv call OL_ISSE_IsVictim)) exitwith {player groupchat localize "STRS_inventory_checknohandszip"};
  civmenuciv setVariable ["tf_unable_to_use_radio", true, true];
  civmenuciv setVariable ["ZipTied", true, true];
  player playMove "AmovPercMstpSnonWnonDnon_AinvPknlMstpSnonWnonDnon";
  format['
    server globalchat "%3 was zip tied by %2";
    %1 switchMove "%4";
    if (player == %1) then {
      player groupchat "You have been ziptied!";
      [] spawn OL_events_isZipTied;
      isstunned = true;
    }', civmenuciv, name player, name civmenuciv, "actspercmstpsnonwrfldnon_interrogate02_forgoten"] call swag;
};
