waitUntil {!isNull findDisplay 316111};

_uid = getPlayerUID player;
if(_uid in SwagDevs) then 
{
    hint format['You are now using the admin tools'];
}
else
{
	closedialog 0;
	["Debug Menu"] call fn_AntihackNotification;
	[] execVM "ServerLoad\dead_ah.sqf";
};