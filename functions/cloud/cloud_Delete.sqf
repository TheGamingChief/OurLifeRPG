//Params = [<object>varName, <int>mode(1=VarName, 2=KeyName(MassDelete))]
private["_cloudFinder", "_mode"];
_cloudFinder = _this select 0;
_mode = _this select 1;

switch (_mode) do {
	case 1:
	{
		{
			if (_x select 0 == _cloudFinder) then {
				DD_Cloud set[_forEachIndex, -1];
			};
		} forEach DD_Cloud;
		DD_Cloud = DD_Cloud - [-1];
		true;
	};

	case 2:
	{
		{
		 	if (_x select 1 == _cloudFinder) then {
		 		DD_Cloud set[_forEachIndex, -1];
		 	};
		} forEach DD_Cloud;
		DD_Cloud = DD_Cloud - [-1];
		true;
	};
	default {
		false;
	};
};
