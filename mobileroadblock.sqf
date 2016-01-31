// script by eddiev223
_selection = _this select 0;
_item    = _this select 1;
if (_selection == "use") then
{
	
_item, -(1)] call INV_AddInvItem;	
// make roadblock array and location modifiers
_roadblockarray = ["Land_CncBlock_Stripes","Land_CncBlock_Stripes","Land_CncBlock_Stripes","Land_CncBlock_Stripes"];
_locationarray = [[0,0,0],[0,4,0],[0,8,0],[0,12,0]];

//count how many entries
_number = count _roadblockarray;

// gets player location and modifies it for direction
_playerlocation = [(position player select 0) + (sin(getdir player)*2), (position player select 1) + (cos(getdir player)*2), 0];


for [{_x=0},{_x<=_number},{_x=_x+1}] do

{
	

_thebuilding = _roadblockarray select _x;
//_thelocationmod = _locationarraymod select _x;
_addtox = (_locationarray select _x) select 0;
_addtoy	= (_locationarray select _x) select 1;
_addtoz	= (_locationarray select _x) select 2;

_thenewlocation = [(_playerlocation select 0) + _addtox, (_playerlocation select 1) + _addtoy,  (_playerlocation select 2) + _addtoz];

call compile format ["_thebuilding%1 =  _thebuilding createvehicle [0, 0, 0];
_thebuilding%1 setdir getdir player;
_thebuilding%1 setpos _thenewlocation;
",_x];

};


};