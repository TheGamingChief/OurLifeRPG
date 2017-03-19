_art  = ((_this select 3) select 0);
_vcl = (nearestobjects [getpos player, ["cl_del_mackr","cl_trucktest_mackr","cl_flatbed_mackr"], 10] select 0);
if (_art == 1) then 
{

if (isNil "_vcl") exitwith {player groupchat "This is the wrong type of truck";};
player groupchat "Stand by for pick up site";
sleep 5;
_shopo = [];
cmissionactive = true;
deleteMarkerLocal "cargomarker";
_newmarker = (floor(random(count cargoarray)));
_markerlocation = (cargoarray select _newmarker);
_markerobj = createmarkerlocal ["cargomarker",[0,0]];
_markername = "cargomarker";
_markerojb setmarkershapelocal "Icon";
"cargomarker" setmarkertypelocal "warning";
"cargomarker" setmarkercolorlocal "coloryellow";
"cargomarker" setmarkersizelocal [1, 1];
"cargomarker" setmarkertextlocal "Cargo Pickup";
_markername Setmarkerposlocal _markerlocation;
if (_newmarker == 0) then {_shopo = "Resource Sell Shop";};
if (_newmarker == 1) then {_shopo = "Assassin Shop";};
if (_newmarker == 2) then {_shopo = "Food Shop Patron";};
if (_newmarker == 3) then {_shopo = "Mid Car Shop";};
if (_newmarker == 4) then {_shopo = "Tuning Shop";};
player groupchat "Your pick up site is marked on the map";
player groupchat format["Once there talk to the %1", _shopo];

	while {cmissionactive} do
	{

	if (player distance _markerlocation <= 10) then 
		{
		player groupchat "Arrived at your Destination talk to shop owner to get loaded";
		deleteMarkerLocal "cargomarker";
		};
	sleep 5;
	};
};

if (_art == 2) then 
{

if (isNil "_vcl") exitwith {player groupchat "This is the wrong type of truck";};
player groupchat "Stand by for pick up site";
sleep 5;
_shopo = [];
cmissionactive2 = true;
deleteMarkerLocal "cargomarker";
_newmarker = (floor(random(count cargoarray)));
_markerlocation = (cargoarray select _newmarker);
_markerobj = createmarkerlocal ["cargomarker",[0,0]];
_markername = "cargomarker";
_markerojb setmarkershapelocal "Icon";
"cargomarker" setmarkertypelocal "warning";
"cargomarker" setmarkercolorlocal "coloryellow";
"cargomarker" setmarkersizelocal [1, 1];
"cargomarker" setmarkertextlocal "Cargo Pickup";
_markername Setmarkerposlocal _markerlocation;
if (_newmarker == 0) then {_shopo = "Resource Sell Shop";};
if (_newmarker == 1) then {_shopo = "Assassin Shop";};
if (_newmarker == 2) then {_shopo = "Food Shop Patron";};
if (_newmarker == 3) then {_shopo = "Mid Car Shop";};
if (_newmarker == 4) then {_shopo = "Tuning Shop";};
player groupchat "You have taken an illegal cargo run, dont get taken by the police";
player groupchat "Your pick up site is marked on the map";
player groupchat format["Once there talk to the %1", _shopo];
while {cmissionactive2} do
	{

	if (player distance _markerlocation <= 10) then 
		{
		player groupchat "Arrived at your Destination, talk to shop owner to get illegal loaded";
		deleteMarkerLocal "cargomarker";
		};
	sleep 5;
	};
};

if (_art == 3) then 
{
_paid = 25000;
_cargo = (nearestobjects [getpos player, ["Land_bags_stack_EP1","Land_bags_EP1","Land_Bag_EP1"], 10] select 0);
if (isNil "_cargo") exitwith {player groupchat "There is no storage on the truck";};
{deleteVehicle _x;_deleted = _deleted + 1;} forEach (nearestObjects [player,["Land_bags_stack_EP1","Land_bags_EP1","Land_Bag_EP1"], 20]);
player groupchat format["You have offloaded your cargo and were paid %1", _paid];
Kontostand = Kontostand + _paid;
cmissionactive1 = false;
};

if (_art == 4) then 
{
player setPos [(getPos _vcl select 0),(getPos _vcl select 1),(getPos _vcl select 2)+2];
};

if (_art == 5) then 
{
_cargo = (nearestobjects [getpos player, ["Land_Bag_EP1"], 5] select 0);
if (isNil "_cargo") exitwith {player groupchat "There is nothing illegal on this truck";};
{deleteVehicle _x;_deleted = _deleted + 1;} forEach (nearestObjects [player,["Land_bags_stack_EP1","Land_Bag_EP1"], 10]);
player groupchat "Illegal Items Removed, ticket the driver";
};


if (_art == 6) then 
{
if (isNil "_vcl") exitwith {player groupchat "The truck is not close enough";};
cmissionactive = false;
player groupchat "Stand by while cargo is loaded";
sleep 5;
cmissionactive1 = true;
_cargo = (nearestobjects [getpos player, ["Land_bags_stack_EP1","Land_bags_EP1"], 20] select 0);
if (!isNil "_cargo") exitwith {player groupchat "You already have cargo in your truck";};
		
_cargo1 = "Land_bags_stack_EP1" createvehicle (getpos _vcl);
_cargo1 attachto [_vcl, [.5,-1,1.5]];
_cargo2 = "Land_bags_stack_EP1" createvehicle (getpos _vcl);
_cargo2 attachto [_vcl, [.5,-2,1.5]];
_cargo3 = "Land_bags_stack_EP1" createvehicle (getpos _vcl);
_cargo3 attachto [_vcl, [.5,-3,1.5]];
_cargo4 = "Land_bags_stack_EP1" createvehicle (getpos _vcl);
_cargo4 attachto [_vcl, [.5,-4,1.5]];
_cargo5 = "Land_bags_stack_EP1" createvehicle (getpos _vcl);
_cargo5 attachto [_vcl, [.5,-5,1.5]];
		
player groupchat "Cargo is now loaded, check map for your destination";
deleteMarkerLocal "cargomarker1";
_newmarker1 = (floor(random(count cargoarray1)));
_markerlocation1 = (cargoarray1 select _newmarker1);
_markerobj1 = createmarkerlocal ["cargomarker1",[0,0]];
_markername1 = "cargomarker1";
_markerojb1 setmarkershapelocal "Icon";
"cargomarker1" setmarkertypelocal "warning";
"cargomarker1" setmarkercolorlocal "colorred";
"cargomarker1" setmarkersizelocal [1, 1];
"cargomarker1" setmarkertextlocal "Cargo Drop";
_markername1 Setmarkerposlocal _markerlocation1;
	while {cmissionactive1} do
	{

	if (player distance _markerlocation1 <= 10) then 
		{
		player groupchat "Arrived at your Destination, talk to shop owner to get paid";
		deleteMarkerLocal "cargomarker1";
		};
	sleep 5;
	};


};

if (_art == 7) then 
{
if (isNil "_vcl") exitwith {player groupchat "The truck is not close enough";};
cmissionactive2 = false;
player groupchat "Stand by while illegal cargo is loaded";
sleep 5;
cmissionactive1 = true;
_cargo = (nearestobjects [getpos player, ["Land_bags_stack_EP1","Land_bags_EP1"], 20] select 0);
if (!isNil "_cargo") exitwith {player groupchat "You already have cargo in your truck";};
		
_cargo1 = "Land_bags_stack_EP1" createvehicle (getpos _vcl);
_cargo1 attachto [_vcl, [.5,-1,1.5]];
_cargo2 = "Land_Bag_EP1" createvehicle (getpos _vcl);
_cargo2 attachto [_vcl, [.5,-2,1.5]];
_cargo3 = "Land_bags_stack_EP1" createvehicle (getpos _vcl);
_cargo3 attachto [_vcl, [.5,-3,1.5]];
_cargo4 = "Land_Bag_EP1" createvehicle (getpos _vcl);
_cargo4 attachto [_vcl, [.5,-4,1.5]];
_cargo5 = "Land_bags_stack_EP1" createvehicle (getpos _vcl);
_cargo5 attachto [_vcl, [.5,-5,1.5]];
		
player groupchat "Cargo is now loaded, check map for your destination";
deleteMarkerLocal "cargomarker1";
_newmarker1 = (floor(random(count cargoarray2)));
_markerlocation1 = (cargoarray2 select _newmarker1);
_markerobj1 = createmarkerlocal ["cargomarker1",[0,0]];
_markername1 = "cargomarker1";
_markerojb1 setmarkershapelocal "Icon";
"cargomarker1" setmarkertypelocal "warning";
"cargomarker1" setmarkercolorlocal "colorred";
"cargomarker1" setmarkersizelocal [1, 1];
"cargomarker1" setmarkertextlocal "Cargo Drop";
_markername1 Setmarkerposlocal _markerlocation1;
	while {cmissionactive1} do
	{

	if (player distance _markerlocation1 <= 10) then 
		{
		player groupchat "Arrived at your Destination, talk to drug dealer to get paid";
		deleteMarkerLocal "cargomarker1";
		};
	sleep 5;
	};


};

if (_art == 8) then 
{
_paid = 40000;
_cargo = (nearestobjects [getpos player, ["Land_bags_stack_EP1","Land_Bag_EP1"], 20] select 0);
if (isNil "_cargo") exitwith {player groupchat "There is no storage on the truck";};
{deleteVehicle _x;_deleted = _deleted + 1;} forEach (nearestObjects [player,["Land_bags_stack_EP1","Land_Bag_EP1"], 20]);
player groupchat format["You have offloaded your cargo and were paid %1", _paid];
Kontostand = Kontostand + _paid;
cmissionactive1 = false;
};

if (_art == 9) then 
{
player groupchat "Cancelled Trucking Mission";
cmissionactive 		 = false;
cmissionactive1		 = false;
cmissionactive2		 = false;
deleteMarkerLocal "cargomarker1";
deleteMarkerLocal "cargomarker";
};
