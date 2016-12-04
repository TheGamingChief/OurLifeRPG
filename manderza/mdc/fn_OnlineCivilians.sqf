_return = [];
if(!isMultiplayer)exitWith{civarray};

{	
	if(side _x == civilian)then{
		_return set[count(_return), _x];
	};
}forEach playableUnits;
_return;