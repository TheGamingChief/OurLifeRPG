if(pickingup)exitwith{};

pickingup=true;

_this 		= _this select 3;
_gangarea 	= _this select 0;
_type		= _this select 1;
_OL_Shop_Gangarea1 	= [];

if (_gangarea==OL_Shop_Gangarea1) then {_OL_Shop_Gangarea1 = "West Side";};
if (_gangarea==OL_Shop_Gangarea2) then {_OL_Shop_Gangarea1 = "Little Havana";};
if (_gangarea==OL_Shop_Gangarea3) then {_OL_Shop_Gangarea1 = "East side";};
if (_gangarea==OL_Shop_Gangarea4) then {_OL_Shop_Gangarea1 = "The Safe House";};

player playmove "AinvPknlMstpSlayWrflDnon_medic";
waituntil {animationstate player != "AinvPknlMstpSlayWrflDnon_medic"};
sleep 5;

if(_type == "neutralise")then

{

_gangarea setpos [getpos _gangarea select 0, getpos _gangarea select 1, -3];
sleep 1;


	_mygang  = call INV_mygang;
	//_control = _gangarea getvariable "control";
	
	if(_mygang != "")then

		{

		//_gangarea setvariable["control", nil, true];
		format["hint ""%1 has been neutralised by %2!"";", _OL_Shop_Gangarea1, _mygang] call OL_network_Swag_civ;

		}; 


};

if(_type == "capture")then

{
_gangarea setpos [getpos _gangarea select 0, getpos _gangarea select 1, 0];

sleep 1;




	_mygang  = call INV_mygang;
	//_control = _gangarea getvariable "control";
	
	if(_mygang != "")then

		{

		_gangarea setvariable["control", _mygang, true];
		format["hint ""%1 has been captured by %2!"";", _OL_Shop_Gangarea1, _mygang] call OL_network_Swag_civ;

		}; 

	

};

pickingup=false;