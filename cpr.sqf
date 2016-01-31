_vcl = _this select 0;
_damage = damage _vcl;

player groupchat format["%1", _vcl];

if (_damage < 0.9) exitWith{player groupChat "Player is not dead";};
_vcl setdamage 0;
