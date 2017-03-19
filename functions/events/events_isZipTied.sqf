while {player getVariable "ZipTied"} do
{
    _civ = player;
    _civ setVariable ["tf_unable_to_use_radio", true];
    if (!(animationstate player == "actspercmstpsnonwrfldnon_interrogate02_forgoten") && (player == vehicle player)) then {
    (format ["%1 switchmove ""%2"";", _civ, "actspercmstpsnonwrfldnon_interrogate02_forgoten"]) call swag;
    };
  _state = vehicle player;

  if !(player getVariable "ZipTied") exitwith
  {
    _civ setVariable ["ZipTied", false, true];
    _civ setVariable ["tf_voiceVolume", 1, true];
    _civ setVariable ["Gagged", false, true];
    _civ setVariable ["tf_unable_to_use_radio", false];
    isstunned = false;
  };

  if (player getVariable "KOED") exitwith
  {
    _civ setVariable ["ZipTied", false, true];
    _civ setVariable ["Cuffed", false, true];
    _civ setVariable ["Gagged", false, true];
    _civ setVariable ["tf_unable_to_use_radio", false];
    isstunned = false;
    if(animationstate _civ == "actspercmstpsnonwrfldnon_interrogate02_forgoten") then {
      (format ["%1 switchmove ""%2"";", _civ, "adthppnemstpsraswpstdnon_2"]) call swag;
    };
  };
  waitUntil {(animationState player != "actspercmstpsnonwrfldnon_interrogate02_forgoten") || vehicle player != _state};

  if(vehicle player != player) then
  {
    if(driver (vehicle player) == player) then {
      player action["eject",vehicle player]
    };
  };
};
