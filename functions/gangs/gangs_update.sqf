_type = _this select 0;
_data = _this select 1;

switch (_type) do {
  case "ADD": {
    [format["Gang_%1", _data select 0], _data, "Gangs"] call DD_cloud_Add;
  };
  case "REMOVE": {
    [format["Gang_%1", _data select 0], 1] call DD_cloud_Delete;
  };
  case "UPDATE": {
    [format["Gang_%1", _data select 0], _data, "Gangs"] call DD_cloud_Add; //shut up
  };
  default {};
};

OL_GangsArray = [];
_rows = ["Gangs"] call DD_cloud_ListByKey;
{
  OL_GangsArray = OL_GangsArray + [_x select 1];
} forEach _rows;

publicVariable "OL_GangsArray";
