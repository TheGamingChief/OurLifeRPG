// script by eddiev223 and cobra

_selection = ((_this select 3)select 0);

_moneyearned = 0;
_distance = 0;


if (_selection == "start") then
{

pmissionactive = true;
deleteMarkerLocal "patrolmarker";


_newmarker = (floor(random(count coppatrolarray)));
_markerlocation = (coppatrolarray select _newmarker);
		
_markerobj = createmarkerlocal ["patrolmarker",[0,0]];
_markername = "patrolmarker";
_markerojb setmarkershapelocal "Icon";
//"patrolmarker" setMarkerBrushLocal "solid";
"patrolmarker" setmarkertypelocal "warning";
"patrolmarker" setmarkercolorlocal "coloryellow";
"patrolmarker" setmarkersizelocal [1, 1];
"patrolmarker" setmarkertextlocal "Patrol point";
_markername Setmarkerposlocal _markerlocation;
        
player sidechat "Your patrol mission will be available shortly, simply get to the patrol point, time is not a factor in how large the payment is.";

sleep 2;
_plocation = getpos player;
_distance = _plocation distance _markerlocation;

while {pmissionactive} do

	{

	if (player distance _markerlocation <= 30) then 
		{
		deleteMarkerLocal "patrolmarker";
		//_moneyearned = (ceil(_distance * patrolmoneyperkm));
		_moneyearned = (_distance * patrolmoneyperkm);
		Kontostand = Kontostand + _moneyearned;
		player sidechat format["You earned $%1 for patroling", _moneyearned];		
		player sidechat "Please wait a moment for a new patrol point...";
	
		sleep 5;
	
		_newmarker = (floor(random(count coppatrolarray)));
		_markerlocation = (coppatrolarray select _newmarker);
	
		_markerobj = createmarkerlocal ["patrolmarker",[0,0]];
		_markername = "patrolmarker";
		_markerojb setmarkershapelocal "icon";
		//"patrolmarker" setMarkerBrushLocal "solid";
		"patrolmarker" setmarkertypelocal "warning";
		"patrolmarker" setmarkercolorlocal "coloryellow";
		"patrolmarker" setmarkersizelocal [1, 1];
		"patrolmarker" setmarkertextlocal "Patrol point";
		_markername Setmarkerposlocal _markerlocation;
		player sidechat "New Patrol point added";
		
		_plocation = getpos player;
		_distance = _plocation distance _markerlocation;
		
	
		};

	sleep 5;
	};
deleteMarkerLocal "patrolmarker";



};

if (_selection == "end") then
{
pmissionactive = false;	
deleteMarkerLocal "patrolmarker";
player sidechat "Patrol mission ended you must wait 60s to get a new one";
patrolwaittime = true;
sleep 60;
patrolwaittime = false;

};


if (_selection == "start1") then
{

pmissionactive1 = true;
deleteMarkerLocal "patrolmarker1";


_newmarker1 = (floor(random(count coppatrolarray1)));
_markerlocation1 = (coppatrolarray1 select _newmarker1);
		
_markerobj1 = createmarkerlocal ["patrolmarker1",[0,0]];
_markername1 = "patrolmarker1";
_markerojb1 setmarkershapelocal "Icon";
//"patrolmarker" setMarkerBrushLocal "solid";
"patrolmarker1" setmarkertypelocal "warning";
"patrolmarker1" setmarkercolorlocal "colorred";
"patrolmarker1" setmarkersizelocal [1, 1];
"patrolmarker1" setmarkertextlocal "Guard point";
_markername1 Setmarkerposlocal _markerlocation1;
        
player sidechat "Your guard mission will be available shortly, simply get to the guard area and wait until told to move to next one";

sleep 2;
_plocation1 = getpos player;
_distance1 = _plocation1 distance _markerlocation1;
_time1 = 0;
while {pmissionactive1} do

	{

	if (player distance _markerlocation1 <= 10) then 
		{
		player sidechat "Guard this area for 5 minutes, 50m radius, if you leave mission fails";
		while {_time1 <= 300} do 
		{
			_time1 = _time1 + 1;
			if (player distance _markerlocation1 >= 51) exitWith {
			player groupchat "You left the area";
			pmissionactive1 = false;
			deleteMarkerLocal "patrolmarker1";
			};
			if (_time1 == 300) then 
			{
			_moneyearned1 = (ceil(5000 * patrolmoneyperkm1));
			Kontostand = Kontostand + _moneyearned1;
			player sidechat format["You earned $%1 for guarding the area", _moneyearned1];		
			player sidechat "You may go take another guard mission";
			deleteMarkerLocal "patrolmarker1";
			pmissionactive1 = false;
			};
		sleep 1;
		};
		sleep 1;
		deleteMarkerLocal "patrolmarker1";
		pmissionactive1 = false;
		};

	sleep 5;
	};
deleteMarkerLocal "patrolmarker1";



};

if (_selection == "end1") then
{
pmissionactive1 = false;	
deleteMarkerLocal "patrolmarker1";
player sidechat "You aborted the mission you must wait 5 Minutes to get a new one";
patrolwaittime1 = true;
sleep 300;
patrolwaittime1 = false;

};


