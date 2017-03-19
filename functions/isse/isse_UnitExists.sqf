private ["_obj"];
if ((typeName _this) == "STRING") then
{
  if ((isnil(_this)) or (_this == "scalar bool array string 0xe0ffffef") or (_this == "<NULL-Object>") or (_this == "Error: No vehicle")) then
  {
    false
  }
  else
  {
    _obj = call compile format ["%1", _this];
    if (format ["%1", isplayer _obj] == "true") then
    {
      true
    }
    else
    {
      false
    };
  };
}
else
{
  if (isNull _this) then
  {
    false
  }
  else
  {
    true
  };
};
