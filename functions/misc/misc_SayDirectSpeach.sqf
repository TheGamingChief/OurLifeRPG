private ["_text", "_dis"];
_text = _this select 0;
_art  = _this select 1;

if (!(_text == "") || (_text == " ")) then {
  switch (_art) do {
    case "direct": {
      format ['
        if (player distance %1 < 50) then {
          titleText ["%2", "PLAIN"]
        };
      '] call OL_network_Swag;
    };
    case "side": {
      format ["%1 sideChat ""%2"";", player, _text] call OL_network_Swag;
    };
    case "global": {
      format ["%1 globalChat ""%2"";", player, _text] call OL_network_Swag;
    };
  };
};
