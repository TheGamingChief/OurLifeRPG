/*
---------------------------------------------------------
	Copyright 2014 Our Life RPG
	File: Server Cleanup
	Author: Speedy
	Description: Server Cleanup script
	Contact: www.usborderwars.enjin.com
---------------------------------------------------------
*/

while {true} do
{
	sleep 600;
	player globalChat "Server Cleanup Starting In 1 Min....";
	sleep 660;
	player globalChat "Server Cleanup Starting!";
	{
		deleteVehicle _x;
	} forEach allDead;
	player globalChat "Server Cleanup Finished!";
};