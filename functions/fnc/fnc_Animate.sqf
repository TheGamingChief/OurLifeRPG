_unit = _this select 0;
_anim = _this select 1;
_mode = _this select 2;

switch (_mode) do {
  case 0: {
    _unit switchMove _anim;
  };
  case 1: {
    _unit playMove _anim;
  };
  case 2: {
    _unit playMoveNow _anim;
  };
};
