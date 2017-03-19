_ret = false;

for "_i" from 0 to (count OL_GangsArray - 1) do {
  if ((OL_GangsArray select _i) select 0) == _this) exitWith {
    _ret = true;
  };
};

_ret;
