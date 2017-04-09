{
	_shopObj 	 = _x select 0;
	_shopName  = _x select 1;
	_shopSpawn = [_x select 2, _x select 3];
	_buySell 	 = [_x select 4, _x select 5];
	_dkdc			 = _x select 6;

	_extras = if ((count _x) > 7) then {
		[_x select 7, _x select 8, _x select 9]
	} else {
		[true, ["mil_box", "ColorOrange"], "true"]
	};

	_hasMarker = _extras select 0;
	_marker 	 = _extras select 1;
	_condition = _extras select 2;

	missionNamespace setVariable [format ["OL_Shops_%1", str _shopOBJ], [_shopOBJ, _shopName, _shopSpawn, _buySell, _dkdc, _hasMarker, _marker, _condition]];

	if (_hasMarker) then {
		_curMarker = createMarkerLocal [format ["Shop_Marker_%1", str _shopOBJ], position _shopOBJ];
		_curMarker setMarkerShapeLocal "ICON";
		_curMarker setMarkerTypeLocal (_marker select 0);
		_curMarker setMarkerColorLocal (_marker select 1);
		_curMarker setMarkerTextLocal _shopName;
	};

	_shopOBJ addAction [format ["<t color='#FF6600'>Access Shop:</t> %1", _shopName], "noscript.sqf", format["[%1] call OL_shops_Open", _shopOBJ], 1, false, false, "LeanRight", _condition];
} forEach OL_Shops;
