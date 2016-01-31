////////////////////////////////////
////			         //
//      Copyright © TCG         //
//www.tcgaming.enjin.com       //
////////////////////////////////
_detector = 
{
_pos = _this select 0;
_timenow = time;
_array = [];
	while{time < (_timenow + 10) || (!(isnull _pos))}do
	{
		sleep 1;
		if(!(isnull _pos))then
		{
			if(count(nearestObjects [_pos, ["Man"], 10]) > 0)then
			{
				//Hint "Player Detected";
				{
					_x setVariable ["flashed",true, true];
					_array set [count _array,_x];
				}foreach nearestObjects [_pos, ["Man"], 10];
			}else{
				//Hint "Player Not Detected";
				{
					_unit = _x;
					_unit setVariable ["flashed",false, true];
					{
						if(_x == _unit)then
						{
							_array = _array - [_x];
						};
					}foreach _array;
				}foreach _array;
			};
		};
	};
};

_detectorB = 
{
_pos = _this select 0;
_timenow = time;
_array = [];
	while{time < (_timenow + 10) || (!(isnull _pos))}do
	{
		sleep 1;
		if(!(isnull _pos))then
		{
			if(count(nearestObjects [_pos, ["Man"], 10]) > 0)then
			{
				//Hint "Player Detected";
				{
					_x setVariable ["flashedB",true, true];
					_array set [count _array,_x];
				}foreach nearestObjects [_pos, ["Man"], 10];
			}else{
				//Hint "Player Not Detected";
				{
					_unit = _x;
					_unit setVariable ["flashedB",false, true];
					{
						if(_x == _unit)then
						{
							_array = _array - [_x];
						};
					}foreach _array;
				}foreach _array;
			};
		};
	};
};


_shooter = _this Select 0; 
_ammotype = _this Select 4;
_bullet = nearestObject [_shooter , _ammotype];
_BPos = [];
while {!isNull _bullet and ((velocity _bullet)select 0 > 0.1)} do
{
	_BPos = getPos _bullet;
};
switch (_ammotype) do
{
    case "SmokeShell":
    {
		[_bullet] call _detector;
    };   
	case "G_40mm_Smoke":
    {
		[_bullet] call _detector;
    };   
    case "RAB_L111A1":
    {
		[_bullet] call _detectorB;
	};
};
sleep 10;
