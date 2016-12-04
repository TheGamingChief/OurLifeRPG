civstatsdone = false;

'

if(local server) then

{

for [{_i=1}, {_i <= civscount}, {_i=_i+1}] do 

	{

	call compile format ["
	if(kopfgeld_civ%1 > 0)then{publicVariable ""kopfgeld_civ%1""};
	if(civ%1_arrest > 0)then{publicVariable ""civ%1_arrest""};
	if(civ%1_wanted > 0)then{publicVariable ""civ%1_wanted""};
	if(count civ%1_reason > 0)then{publicVariable ""civ%1_reason""};
	", _i];		

	};

publicvariable "gangsarray";
civstatsdone=true; publicvariable "civstatsdone";

};

' call broadcast;

waituntil {civstatsdone};

if (isciv) then 

{

call compile format['
%1_arrest = 0;
%1_wanted = 0;
%1_mayor = 0;
%1_reason = [];
kopfgeld_%1 = 0;
publicVariable "%1_mayor";
publicVariable "%1_arrest";
publicVariable "%1_wanted";
publicVariable "%1_reason";
publicVariable "kopfgeld_%1";
', player]; 

};

if (local_arrest == 1) then {player switchmove "civillying01"; waituntil {animationstate player == "civillying01"}; ["arrest", 20, player] execVM "civmenu.sqf";};
if (isdead == 1 and isciv) then {player setpos getpos deadcamlogic;[] execVM "rejoincamera.sqf";};
if(time > 20)then{skiptime (currentTime - daytime)};
