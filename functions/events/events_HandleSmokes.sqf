_ammotype = _this select 4;
if (!(_ammotype in ["SmokeShell", "G_40mm_Smoke", "RAB_L111A1"])) exitWith {}; //Handles

_shooter = _this select 0;
_bullet = nearestObject [_shooter, _ammotype];
_timenow = time;
_BPos = [];
_array = [];
_arrayDone = [];
_gasMask = 'Gas_Mask' call INV_GetItemAmount;
while {!isNull _bullet and ((velocity _bullet)select 0 > 0.1)} do {
	_BPos = getPos _bullet;
};

while {time < (_timenow + 10) || (!(isnull _bullet))} do {
	uiSleep 1;

	{
		if (!(_x in _arrayDone)) then {
			_array = _array + [_x];
		};
	} forEach nearestObjects [_bullet, ["Man"], 10];

	if (count _array > 0) then {
    //You must reconfig this IF when changing the handles.
		if (_ammotype == "SmokeShell" || _ammotype == "G_40mm_Smoke") then {
			format["if ((player in %1) && (%2 < 1)) then { [] spawn OL_fnc_TearGassed };", _array, _gasMask] call OL_network_Swag;
		} else {
			format["if (player in %1) then { [] spawn OL_fnc_FlashBanged };", _array] call OL_network_Swag;
		};
		_arrayDone = _arrayDone + _array;
	};
};
