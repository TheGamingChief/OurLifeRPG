isprone = {
	if(animationstate player == "amovppnemrunsnonwnondf" or
	animationstate player == "amovppnemstpsnonwnondnon" or
	animationstate player == "amovppnemstpsraswrfldnon" or
	animationstate player == "amovppnemsprslowwrfldf"
	) then {true}else{false};
};

TurnMayorFunc =

{

if (_this) then

	{

    	format["civ%1_mayor = 1;", rolenumber] call swag;

	} else {format["civ%1_mayor = 0;", rolenumber] call swag;};

};

DialogSpielerListe = {
private ["_Fart", "_Fid", "_Fname", "_Fingame", "_Findex", "_Flistlen", "_Feigenenum"];
    _Fart = _this select 0;
   _Fid = _this select 1;
_Fname = _this select 2;
_Fingame = _this select 3;
   _Findex = 0;
_Flistlen = 0;
   _Feigenenum = -1;
  for [{
_c=0}, {
_c < (count playerstringarray)}, {
_c=_c+1}] do {
   _Fspieler = playerstringarray select _c;
   if ( ((_Fart == 0) or ((_Fart == 1) and (_c > civscount)) or ((_Fart == 2) and (_c < civscount))) and ((_Fingame) or (_Fspieler call OL_ISSE_UnitExists)) ) then
 {
    if (_Fname) then
 {
    _Findex = lbAdd [_Fid, format ["%1 - (%2)", _Fspieler, name (call compile _Fspieler)]];
   } else {
    _Findex = lbAdd [_Fid, _Fspieler];
};

   lbSetData [_Fid, _Findex, format["%1", _c]];
    if (_Fspieler == rolestring) then
 {
_Feigenenum = _Flistlen;
};

  _Flistlen = _Flistlen + 1;
};

  };

[_Flistlen, _Feigenenum]};

Isse_AddCrimeLogEntry = {
private ["_logtime", "_logdate", "_logtext", "_logart", "_logplayer", "_zusatzinfo"];
  _logart = _this select 0;
   _logplayer = format["%1", _this select 1];
  _zusatzinfo = "";
 if (count _this > 2) then
 {
_zusatzinfo = _this select 2};

    _logtime = time;
 _logdate = date;
    _logtext = "";
 switch (_logart) do {
  case "Bank": {
_logtext = format[localize "STRS_functions_crimelog_msg1", _zusatzinfo];
};

   case "Stole": {
_logtext = format[localize "STRS_functions_crimelog_msg2"];
};

  case "KilledCiv": {
_logtext = format[localize "STRS_functions_crimelog_msg3", _zusatzinfo];
};

    case "KilledCop": {
_logtext = format[localize "STRS_functions_crimelog_msg4", _zusatzinfo];
};

  case "KilledWorker": {
_logtext = format[localize "STRS_functions_crimelog_msg13", _zusatzinfo];
};

  case "PrisonIn": {
_logtext = format[localize "STRS_functions_crimelog_msg5"];
};

    case "PrisonOut": {
_logtext = format[localize "STRS_functions_crimelog_msg6"];
};

case "PrisonEsc": {
_logtext = format[localize "STRS_functions_crimelog_msg7"];
};

    case "Died": {
_logtext = format[localize "STRS_functions_crimelog_msg8"];
};

    case "Ticket": {
_logtext = format[localize "STRS_functions_crimelog_msg9", _zusatzinfo];
};

 case "Bomb": {
_logtext = format[localize "STRS_functions_crimelog_msg10"];
};

case "slave": {
_logtext = format[localize "STRS_functions_crimelog_msg11"];
};

 case "Speed": {
_logtext = format[localize "STRS_functions_crimelog_msg12"];
};

case "StoleVcl": {
_logtext = format[localize "STRS_functions_crimelog_msg13", _zusatzinfo];
};

case "AttemptedStoleVcl": {
_logtext = format[localize "STRS_functions_crimelog_msg14", _zusatzinfo];
};

case "Assassin": {
_logtext = format[localize "STRS_functions_crimelog_msg15"];
};

};

  CopLog = CopLog + [ [_logplayer, _logtext, _logdate, _logtime] ];
};

Bomb_Vehicle = {
  if (count _this > 1) then
 {
 if (not(isNull (_this select 1))) then
 {
  _obj = _this select 1;
    if (((getPos _obj) select 2) > 5) then
 {
_obj setDamage 1;
   } else {
 "Bo_GBU12_LGB" createVehicle (_this select 0);
  _obj setDamage 1;
};

   };

    } else {
 "Bo_GBU12_LGB" createVehicle (_this select 0);
    };

  if (count _this > 2) then
 {
 format ["if ((random 100) < 10) then
 {
hint format[localize ""STRS_vehiclebomb_public_explode"", %1];
[""Bomb"", %1] spawn Isse_AddCrimeLogEntry;
};

", player, longrolenumber] call swag;
 };

};

GetRandomObjectName = {
 private ["_name"];
   if (isNil("GespawnteObjekteCounter")) then
 {
GespawnteObjekteCounter = 0;
};

_name = format["SpawnedObject_%1_%2_%3", round(time), rolenumber, GespawnteObjekteCounter];
GespawnteObjekteCounter = GespawnteObjekteCounter + 1;
_name};

CreateObjectClient = {
 private ["_classname", "_position", "_dir", "_obj", "_extraInit", "_objname"];
 _classname = _this select 0;
   _pos = _this select 1;
   _dir = _this select 2;
 _extraInit = _this select 3;
  _objname = (call GetRandomObjectName);
_obj = dummyobj;
 call compile format['   %4 = "%1" CreateVehicle %2;
 %4 setVehicleInit ''this setVehicleVarName "%4";
 %4 = this;
 this setDir %3;
 call compile ''''%5'''';
'';
  ', _classname, _pos, round(_dir), _objname, _extraInit];
    processInitCommands;
   _objname};

SayDirectSpeach = {
 private ["_text", "_dis"];
   _text = _this select 0;
    _art = _this select 1;
    if (not ((_text == "") or (_text == " ")) ) then
 {
    _text = format["%1 shouts: %2", player, _text];
  if (_art == "direct") then
 {
_dis = 50;
    format ["if ((player distance %1) < %3) then
 {
titleText[""%2"", ""PLAIN""];
};

", player, _text, _dis] call swag;
 };

   if (_art == "side") then
 {
   format ["%1 sideChat ""%2"";
", player, _text] call swag;
};

if (_art == "global") then
 {
 format ["%1 globalChat ""%2"";
", player, _text] call swag;
  };

};

};
