private ["_chat", "_text", "_cond"];
_chat = _this select 0;
_text = _this select 1;
_cond = false;

if (isNil (_this select 2)) then { _cond = true } else { _cond = call compile format["%1", _this select 2] };

if (typeName _chat != "SCALAR") exitWith { player globalChat "Tell Foster to fix his chat message." };

if (typeName _text != "STRING") then { _text = str _text };

if (_cond) then {
  switch (_chat) do {
    case 0: { systemChat _text };
    case 1: { player globalChat _text };
    case 2: { player sideChat _text };
    case 3: { player groupChat _text };
    case 4: { player commandChat _text };
    case 5: { server globalChat _text };
    case 6: { hint _text };
  };
};
