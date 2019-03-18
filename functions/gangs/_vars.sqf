gangincome  = 3200;
gangCost	  = 125000;
gangdeltime	= 900;
gangmember	= false;
gangleader	= false;
gangareas		= [OL_Shop_Gangarea1,OL_Shop_Gangarea2,OL_Shop_Gangarea3,OL_Shop_Gangarea4];

OL_GangsArray   = [];
OL_PlayerGangID = -1;
OL_GangMaxSize  = 5; // Not Incl Owner
if (!isServer) then {  Server_Gangs_Update = {} };
