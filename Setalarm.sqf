private ["_obj","_radar","_espera","_lista","_SoundOn","_activa"];

_side = _this select 0;
_obj  = _this select 1;
_dist = _this select 2;

if (not isServer) exitWith {};

_espera = false;
_activa = false;

while {true} do
{
_radar = createTrigger ["EmptyDetector", position _obj];
_radar setTriggerActivation [_side, "present", true];
_radar setTriggerArea [_dist, _dist, 0, true];
_radar setTriggerStatements ["this", "", ""];
_radar setTriggerText "Area de deteccion";
_radar setTriggerTimeout [0, 0, 0, false];
_radar setTriggerType "SWITCH";

_espera = true;
while {_espera} do
{
 _lista = list _radar;
 sleep 1.00;
 if (count _lista > 0) then
 {
  if (not _activa) then
  {
   _soundOn = createSoundSource ["Sound_Alarm", position _obj, [], 0];
   _activa = true;
   sleep 1;
   deletevehicle _soundOn;
  }
 }
 else
 {
  if (_activa) then
  {
   deletevehicle _soundOn;
   _activa = false;
   _espera = false;
  };
 };
};
	sleep 1;
};