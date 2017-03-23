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
    format['if (player == %1) then {[%2,%1] execVM "ClientArrest.sqf"};',_target,_vcl] call OL_network_Swag;
  	detach _target;
  	_target setVariable ["Escorted",false,true];
};
