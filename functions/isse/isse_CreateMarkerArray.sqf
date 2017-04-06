private ["_name", "_text", "_color", "_shape", "_pos", "_typ", "_marker", "_size"];
_pos = [0,0];
if ((typeName (_this select 0)) == "OBJECT") then
{
  _pos = [((getPos (_this select 0)) select 0), ((getPos (_this select 0)) select 1)];
};
if ((typeName (_this select 0)) == "ARRAY") then
{
  _pos = [((_this select 0) select 0), ((_this select 0) select 1)];
};
_text  = "";
if (count _this > 1) then {_text  = _this select 1};
_typ   = "Destroy";
if (count _this > 2) then {_typ   = _this select 2};
_color = "ColorRed";
if (count _this > 3) then {_color = _this select 3};
_shape = "ICON";
if (count _this > 4) then {_shape = _this select 4};
_size  = [1, 1];
if (count _this > 5) then {_size  = _this select 5};

if (isNil("GespawnteMarkerCounter")) then {GespawnteMarkerCounter = 0;};
_name = format["SpawnedMarker_%1", GespawnteMarkerCounter];
if (count _this > 6) then {_name  = _this select 6};
_marker = createMarkerLocal [_name, _pos];
_marker setMarkerShapeLocal _shape;
_marker setMarkerTypeLocal  _typ;
_marker setMarkerColorLocal _color;
_marker setMarkerTextLocal  _text;
_marker setMarkerSizeLocal  _size;
GespawnteMarkerCounter = GespawnteMarkerCounter + 1;
[_name, _marker]
