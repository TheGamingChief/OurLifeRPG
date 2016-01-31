_civnumber = _this select 0;

//===================================COP MARKERS==========================================

if (_civnumber == 2) then 

{
														
if (not(iscop)) exitWith {};
				
_copnumber = 1; 
_copmarkerarray = []; 
_copmarkernamearray = [];
					
while {_copnumber <= copmcount} do 

	{
								
	_copmarker       = createMarkerLocal[format["cop%1_marker", _copnumber], [-100, -100]];																								
	_copmarkerarray       = _copmarkerarray + [_copmarker];										
	_markername           = format["cop%1_marker", _copnumber];														
	_copmarkernamearray   = _copmarkernamearray + [_markername];																						
	_copmarker setMarkerShapeLocal  "ICON";				
	_markername setMarkerTypeLocal  "Dot";				
	_markername setMarkerColorLocal "ColorBlue";																										
	_markername setMarkerSizeLocal  [1.2, 1.2];			
	format["cop%1_marker", _copnumber] 
	setMarkerTextLocal format["Cop%1" , _copnumber];												
	_copnumber = _copnumber + 1;														

	};
										
{_x SetMarkerPosLocal [(getMarkerPos "marker_dead" select 0)-1000,(getMarkerPos "marker_dead" select 1)-1000]} forEach _copmarkernamearray;				

while {true} do 

	{
								
	_counter = 0;		

	while {_counter < (count coparray - 1)} do 

		{
		
		_cop = coparray select _counter;																																													
		if (isnull _cop or !isPlayer _cop or copmarker_on == 0) then 

			{
																																
			(_copmarkernamearray select _counter) SetMarkerPosLocal (getmarkerpos "marker_dead");												

			} 
			else 
			{
								
			if (alive _cop) then {(_copmarkernamearray select _counter) SetMarkerPosLocal [position _cop select 0, position _cop select 1];};																																													
			sleep 1;

			};
																											
		_counter = _counter + 1;

		};

	sleep 1;			

	};

};