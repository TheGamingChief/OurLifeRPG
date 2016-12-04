private ["_car"];
_car = vehicle player;

_car removeaction jihadAction;
                clearvehicleinit _car;
                _car setVehicleInit "this say 'Bombcar'"; processInitCommands;
                sleep 24;
pirateAction = _car addAction ["Play Jihad Music","bombcarmusic.sqf",[],1,false,true,"","_this in _target"];