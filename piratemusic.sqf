private ["_boat"];
_boat = vehicle player;

_boat removeaction pirateAction;
                clearvehicleinit _boat;
                _boat setVehicleInit "this say 'pirate'"; processInitCommands;
                sleep 41;
pirateAction = _boat addAction ["Play Pirate Music","piratemusic.sqf",[],1,false,true,"","_this in _target"];