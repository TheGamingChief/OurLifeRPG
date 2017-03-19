_art = _this select 0;

if (_art == "use") then 

{
if(player distance PB_3 <= 15) then 
{
["codeb", -1] call INV_AddInvItem;
if ((random 100) < 50) then 
{	
player groupchat format ["The code to unlock is %1",armat_JailCode];
}else{
player groupchat "Code Breaker Malfunction, Silent Alarm Triggered";		
server globalChat "Jail Gate Sensor has gone off!";	
};
};

}else
{
player groupchat "You are not close enough to a gate to the jail";
};
};

if(player distance PB_3 <= 15) then 
{
["codeb", -1] call INV_AddInvItem;
if ((random 100) < 50) then 
{	
player groupchat format ["The code to unlock is %1",armat_JailCode];
}else{
player groupchat "Code Breaker Malfunction, Silent Alarm Triggered";		
server globalChat "Jail Gate Sensor has gone off!";
};
};

}else
{
player groupchat "You are not close enough to a gate to the jail";
};
};
								
		