_index  = [_this select 0] call DD_cloud_Index;
_id     = owner (_this select 1);
_return = [];

if (_index == -1) then {
  _return = "VAR_NOT_FOUND";
} else {
  _return = DD_Cloud select _index;
};

OL_ServerCloudPacket = _return;
_id publicVariableClient "OL_ServerCloudPacket";
