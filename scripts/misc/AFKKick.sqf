
idleTime = 0;

while {true} do
{
	_Playerpos	= getPos player;
	_pos0		= _Playerpos select 0;
	_pos1		= _Playerpos select 1;
	_pos2		= _Playerpos select 2;
	
	sleep 0.5;
	
	_Playerposc	= getPos player;
	_pos0c		= _Playerposc select 0;
	_pos1c		= _Playerposc select 1;
	_pos2c		= _Playerposc select 2;
	
	if ((_pos0 != _pos0c) and (_pos1 != _pos1c) and (_pos2 != _pos2c)) then
	{
		idleTime = 0;
	};
	
	if (idleTime == 1140) then
	{
		titleText ["You have not moved in 19 minutes! You will be kicked to the lobby in 1 minute!", "BLACK"];
		sleep 5;
		titleText ["", "BLACK IN"];
	};

	if (idleTime == 1200) then
	{
		titleText ["You have not moved in 20 minutes! You have been kicked to the lobby!", "BLACK"];
		sleep 6;
		failMission "END1";
	};
	sleep 0.5;
	idleTime = idleTime + 1;
};