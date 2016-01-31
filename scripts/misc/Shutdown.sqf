//Shutdown Timer Made By Speedy For Our Life RPG
//WWW.OURLIFERPG.NET
//ts.ourliferpg.net
_shutdownTime = 60;
while {_shutdownTime >= 0} do
{
	titleText [format["Our Life RPG IS RESTARTING IN: T-(%1 SECONDS) SAVE YOUR STUFF!!", (_shutdownTime) ],"PLAIN"];
	_shutdownTime = _shutdownTime - 1;
	sleep 1;
};
if(_shutdownTime <= 0) then
{
	titleText [format["Our Life RPG IS RESTARTING! SEE YOU SOON"],"PLAIN"];
	sleep 5;
	hint "!!!!SHUTTING DOWN!!!!..." call broadcast;
};
