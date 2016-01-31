_label = _this select 0;

if (_label == "basicintro") then 

{
titletext [localize "STRS_anfang_02","plain"];
sleep 7;
vehicle player say ["intro",1];
sleep 6;
titletext [localize "STRS_anfang_03","plain"];
sleep 7;
};

if (_label == "camera") then 
{
sleep 3;									
titletext [localize "STRS_anfang_laden","plain"] ;				
sleep 25;														
titletext [localize "STRS_anfang_06","plain"];
};

if (_label == "copintro") then 
{
titletext ["You are playing as a COP or COAST GUARD, FOLLOW THE RULES!","plain"];
sleep 5;
titletext [localize "STRS_maincoprules","plain"];
sleep 25;
};

if (_label == "civintro") then 
{
titletext ["You are playing as a CIVILIAN, FOLLOW THE RULES!","plain"];
sleep 5;
titletext [localize "STRS_maincivrules","plain"];
sleep 25;
};

if (_label == "govintro") then 
{
titletext ["You are playing as a Fire and Rescue, FOLLOW THE RULES!","plain"];
sleep 25;
};