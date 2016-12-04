private ["_vcl","_target","_cop"];
_target = objNull;
_cop = _this select 0;
_vcl = (nearestobjects [getpos _cop, ["Air", "Ship", "LandVehicle"], 3] select 0);
{
    if(_x distance _vcl < 10)then
    {
        if(animationstate _x == "actspercmstpsnonwrfldnon_interrogate02_forgoten") then
        {
            _target = _x;
        };
		
		if(animationstate _x == "civillying01") then
        {
            _target = _x;
        };
    };
}forEach civarray;
if(isNull _target)then
{
    _cop sideChat "No Civilians restrained Close to Vehicle";
}else{
    [_target,[_vcl, _target],"ClientArrest.sqf"] execVM "CB.sqf";
	detach _target;
	_target setVariable ["Escort",false,true];
};