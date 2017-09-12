private["_cloudVariable", "_cloudData", "_cloudKey"];
_cloudVariable = _this select 0;
_cloudData = _this select 1;
_cloudKey = _this select 2;

_cloudPiece = [_cloudVariable] call DD_cloud_Index;
if ((_cloudPiece) == -1) then{
	DD_Cloud set[count(DD_Cloud), [_cloudVariable, _cloudData, _cloudKey]];
	true;
} else {
	_index = {
		if (_x select 0 == _cloudVariable) exitWith { _forEachIndex };
	} forEach DD_Cloud;
	if (isNil "_index") exitWith { false };

	DD_Cloud set [_index, [_cloudVariable, _cloudData, _cloudKey]];
	true;
};
