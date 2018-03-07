OL_CopBlacklisted = false;

waitUntil {OL_StatsLoadedFromDB};

[] call Messages_fnc_Request;

_iLostMyTaser = false;
{
  if ((_x == "x26") || (_x == "MakarovSD")) then {
    player removeWeapon _x;
    _iLostMyTaser = true;
  };
} forEach (weapons player);
{
  if ((_x == "8Rnd_9x18_MakarovSD") || (_x == "x26_Mag")) then {
    player removeMagazine _x;
  }
} forEach (magazines player);

if (_iLostMyTaser) then {
  player addWEapon "DDOPP_X3";
  for "_i" from 0 to 7 do {
    player addMagazine "DDOPP_3Rnd_X3";
  };
};

OL_PB_Ejected = false;
OL_PB_EndingPlayer = false;
OL_PB_WaitLoop = false;
OL_PB_Hits = 0;

OL_StoredWeapons = [];
OL_StoredMagazines = [];

OL_CallerNumber = "";
OL_InCall = false;
OL_RecivingCall = false;
OL_TempNumber = nil;
OL_CurrentCaller = [];
OL_PhoneRecents = [];

OL_Trunk_VehicleObject = objNull;

fnc_DBLClick = {
  switch (lbText [1500, lbCurSel 1500]) do {
    case ('Store Sections'): {
      [OL_ActiveShop] call Shops_fnc_DisplayList
    };
    case ('Bought Weapons/Mags'): {
      [] call Shops_fnc_DisplayStored
    };
  };
};

fnc_CloseShop = {
  if ((_this select 1) == 1) then {
    for "_i" from 0 to (_this select 0) do {
      uiSleep 0.01;
      closeDialog 0;
    };
  };
};
/*69 cutRsc ["OL_Twitter", "PLAIN"];*/
DDOPP_taser_enableEH = false;
DDOPP_taser_maxShootRange = 50;

DDOPP_taser_victimFx = {
	private ["_victim","_shooter","_stunTime"];
	_victim    = _this select 0;
	_shooter   = _this select 1;
	_stunTime  = _this select 2;

	if (_victim getVariable "isTazed") exitWith {};
	if ((animationState _victim) in DDOPP_taser_arrRestrainAnims) exitWith {};
	if (_shooter distance _victim > DDOPP_taser_maxShootRange) exitWith {};

	if (!(isnull _victim) && (alive _victim) && (vehicle _victim == _victim)) then {

		[[_victim,"Taser_Hit"],true] call DDOPP_public_say;

		if (animationState _victim in DDOPP_taser_arrProneAnims) then {
			[[_victim,"adthppnemstpsraswpstdnon_2"],true] call DDOPP_public_anim;
		} else {
			[[_victim,"adthpercmstpslowwrfldnon_4"],true] call DDOPP_public_anim;
		};

		(_victim) call DDOPP_taser_removeWeapons;

		if (_victim == player) then {
			(_stunTime/5) spawn {
				private "_loopTimes";
				_loopTimes = ((_this)-2);
				if (DDOPP_taser_enableHints) then {
					hintSilent parseText "<t size='1.25' font='Zeppelin32' color='#ff0000'>You have been tased!</t>";
				};
				disableuserinput true;
				"dynamicBlur" ppEffectEnable true;
				"dynamicBlur" ppEffectAdjust [15];
				"dynamicBlur" ppEffectCommit 2;
				"dynamicBlur" ppEffectAdjust [10];
				"dynamicBlur" ppEffectCommit ((_loopTimes*5)+10);
				for "_i" from 0 to (_loopTimes) do {
					cutRsc ["taser_hit_fx","PLAIN",1.5];
					uiSleep 5;
				};
				disableuserinput false;
				"dynamicBlur" ppEffectAdjust [0];
				"dynamicBlur" ppEffectCommit (10);
				uiSleep 3;
				if (DDOPP_taser_enableHints) then {
					hintSilent "";
				};
			};
		};

		_victim setVariable ["isTazed",true,true];

		if (DDOPP_taser_enableMessage) then {
			call compile format ["[[""%1 (%2) deployed a taser on %3 (%4)"",""globalChat""],true] call DDOPP_public_msg;",_shooter, (name _shooter), _victim, (name _victim)];
		};

		uiSleep _stunTime;

		_victim setVariable ["isTazed",false,true];

		if !((animationState _victim) in DDOPP_taser_arrRestrainAnims) then {
			[[_victim,"amovppnemrunsnonwnondf"],true] call DDOPP_public_anim;
	  };
	};
};

DDOPP_taser_removeWeapons = {
	private ["_victim","_weapons"];
	_victim  = _this;
  nonlethalweapons = nonlethalweapons + call OL_TFAR_getPlayerRadios;
	_weapons = weapons _victim - DDOPP_taser_arrNotWeapons - nonlethalweapons;
	if (count _weapons > 0) then {
		{_victim removeWeapon _x} forEach _weapons;
		call compile format ['
			weaponholder_%1 = createVehicle ["weaponHolder",(position _victim) , [], 0, "CAN_COLLIDE"];
			weaponholder_%1 setVehicleInit ''weaponholder_%1 = this; weaponholder_%1 setVehicleVarName "weaponholder_%1"; {this addWeaponCargo [_x,1]} forEach %2; if (!isMultiplayer || isServer) then {[weaponholder_%1] spawn {sleep 300; if (!isNil "weaponholder_%1") then {deleteVehicle weaponholder_%1}}};'';
			processInitCommands;
		', _victim, _weapons];
	};
};

DDOPP_taser_driveStun = {
	private ["_shooter","_victim","_stunTime"];
	_shooter  = player;
	_victim   = cursortarget;
	_stunTime = DDOPP_taser_koTimeDS;

	if (dialog) exitWith {};
	if ((!(getPlayerUID player in PO1_id)) && (!(getPlayerUID player in JrDeputy_id))) exitWith {};
	if ((((weaponState _shooter) select 0) in DDOPP_taser_arrHandgun) && (((weaponState _shooter) select 1) == "Drive_Stun_Mode")) then {
		if !(_victim iskindof "Man") exitWith {};
		if (_shooter distance _victim < DDOPP_taser_maxTouchRange) then {
			[[_shooter,"Taser_Spark"],true] call DDOPP_public_say;
			call compile format ["[[""[%1,%2,%3]"",""DDOPP_taser_VictimCheck""],true] call DDOPP_public_spawn", _victim, _shooter, _stunTime];
		};
	};
};
