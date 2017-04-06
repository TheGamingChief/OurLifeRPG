_message = _this select 0;
_color = _this select 1;

if (count DD_Messages == 10) then{
  DD_Messages = [];
};
DD_Messages set [count(DD_Messages), [_message,_color]];

_hintStr = "<t size='1.25'>DEADdem's Message System</t><br/><br/>";
{
  if (_foreachindex == (count(DD_Messages) -1)) then{
    _hintStr = _hintStr + format["<br/>NEW MESSAGE<br/><t color='%2'>%1</t><br/>", _x select 0, _x select 1];
  } else {
    _hintStr = _hintStr + format["<t color='%2'>%1</t><br/>", _x select 0, _x select 1];
  };
} forEach DD_Messages;

hint parseText _hintStr;
