_ret = {
  if (_x select 0 == (player getVariable ["OL_Gang", "None"])) exitWith {
    _x
  };
} forEach OL_GangsArray;

if (isNil "_ret") exitWith {"No Gang"};
_ret;
