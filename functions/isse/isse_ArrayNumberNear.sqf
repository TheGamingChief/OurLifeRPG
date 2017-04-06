private ["_c", "_obj", "_arr", "_dis", "_res"];
_obj = _this select 0;
_arr = _this select 1;
_dis = _this select 2;
_res = 0;
if (isNull _obj) then
{
  _res = 0;
}
else
{
  for "_c" from 0 to (count _arr - 1) do {

    if (not(isNull(_arr select _c))) then
    {
      if ((_obj distance (_arr select _c)) < _dis) then
      {
        _res = _res + 1;
      };
    };
  };
};
_res
