private["_cloudVariable", "_cloudItem", "_return"];
_cloudVariable = _this select 0;

_return = -1;

_cloudItem = {
	if (_x select 0 == _cloudVariable) exitWith {
		_x select 1;
	};
} forEach DD_Cloud;

if (isNil "_cloudItem") exitWith { _return };

_cloudItem;
