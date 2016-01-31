_art         = _this select 0;
_stunbullets = ["B_12Gauge_74Slug","8Rnd_B_Beneli_74Slug","F_40mm_White",1,"8Rnd_9x18_MakarovSD"];
_pballbullets = ["cal68_fieldpaint","cal68_propaint1","cal68_propaint2","cal68_specpaint1","cal68_specpaint2","cal68_propaint"];
if (_art == "fired") then 
{
_ammo   = _this select 1;
_wep	= _this select 2;  
_bullet = nearestObject  [getpos player, _ammo];
	if(_wep == "Saiga12K")exitwith{};
	if (not(_ammo == (_stunbullets select 0))and(not(_ammo == (_stunbullets select 4)))) exitWith {};
_vel   = velocity _bullet;										
_pos   = getpos   _bullet;										
_teiler = (_stunbullets select 3);					
_bullet = (_stunbullets select 2) createVehicle _pos;
_bullet setVelocity [(_vel select 0)/_teiler, (_vel select 1)/_teiler, (_vel select 2)/_teiler];																																		
};


if (_art == "hit") then 
{
	_shooter   = _this select 1;
	_selection = _this select 2;
	_damage    = _this select 3;
	_plydmg = getDammage player;
	if(_damage < 0.01 or _selection == "")exitwith{};
	if(vehicle player != player)exitWith {format['if (player == %1) then {server globalChat "The person you tried to tase is in a vehicle!"',_shooter] call swag};
	if ((_plydmg) < 0.5) then {player setDammage 0};
	if(_selection == "Legs")exitwith{if(!canstand player)exitwith{};player setHit["Legs", 1];};
	if(_selection == "Hands")exitwith{if(handshit player == 1)exitwith{};player setHit["Hands", 1];};																													
	isstunned = true;
	StunActiveTime = StunActiveTime + StunTimePerHit;
	if(vehicle player != player)exitWith{};
	"dynamicBlur" ppEffectEnable true; 
	"dynamicBlur" ppEffectAdjust [10]; 
	"dynamicBlur" ppEffectCommit 0; 
	waitUntil {ppEffectCommitted "dynamicBlur"}; 
	"dynamicBlur" ppEffectEnable true; 
	"dynamicBlur" ppEffectAdjust [0]; 
	"dynamicBlur" ppEffectCommit StunActiveTime;
	if(_selection != "Melee")then{(format["server globalchat ""%1 was tased by %2"";", name player, name _shooter]) call broadcast};																																																								
	if(!(call isprone)) then
	{
	(format ["%1 switchmove ""%2"";", player, "adthpercmstpslowwrfldnon_4"]) call broadcast;
	}
	else
	{
	(format ["%1 switchmove ""%2"";", player, "adthppnemstpsraswpstdnon_2"]) call broadcast;
	};
_weapons = weapons player - nonlethalweapons;
	if (count _weapons > 0) then 
	{
	{player removeWeapon _x} forEach _weapons;																														
	call compile format ['waffenhalter%1 = "weaponholder" createVehicle getpos player; waffenhalter%1 setVehicleInit "this setVehicleVarName ""waffenhalter%1""; waffenhalter%1 = this;"; processInitCommands;', rolenumber];
	sleep 0.5;																		
	(format ["{waffenhalter%2 ADDWEAPONCARGO [_x, 1];} forEach %3; waffenhalter%2 setpos %4; if (isServer) then {[waffenhalter%2, 300] spawn ISSE_DeleteVehicle;};", player, rolenumber, _weapons, (getpos player)]) call broadcast;			
	sleep 0.5;	
	};
while{StunActiveTime > 0} do {if(StunActiveTime > MaxStunTime)then{StunActiveTime = MaxStunTime}; StunActiveTime = StunActiveTime - 1; sleep 1;};
StunActiveTime = 0;
	if (animationstate player != "civillying01" and animationstate player != "civilsitting" and animationstate player != "civillying01" and animationstate player != "civilsitting02" and animationstate player != "civilsitting03") then  
	{
	isstunned = false;	
	if(player call ISSE_IsVictim)then{(format ["%1 switchmove ""%2"";", player, "amovppnemstpsnonwnondnon"]) call broadcast};																						
	};
																							
};

if (_art == "pball") then 
{
player setdamage 0;																							
};
