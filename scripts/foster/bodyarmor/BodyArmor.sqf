//Made by Foster - OLRPG

player addEventHandler["HandleDamage", {[_this select 1, _this select 2, _this select 4] call DamageModifier;}];

armor_rounds = [
	"B_545x39_SD",
	"B_545x39_Ball",
	"B_762x39_Ball",
	"B_556x45_Ball",
	"B_556x45_SD",
	"B_762x51_noTracer",
	"B_556x45_Ball_SD",
	"B_762x51_Ball",
	"B_127x99_Ball_noTracer",
	"B_12Gauge_74Slug",
	"B_762x54_Ball",
	"B_762x54_noTracer",
	"B_127x108_Ball",
	"B_9x39_SP5",
	"B_127x107_Ball",
	"B_145x115_AP",
	"B_762x51_3RndBurst",
	"B_127x99_Ball",
	"B_77x56_Ball",
	"B_19mm_HE",
	"B_86x70_Ball_noTracer",
	"B_303_Ball",
	"B_127x108_APHE",
	"G_40mm_HE",
	"G_30mm_HE",
	"RH_44mag_Ball",
	"RH_357mag_Ball",
	"RH_50_AE_Ball",
	"RH_32ACP",
	"B_45ACP_noCartridge_Ball",
	"RH_B_22LR_SD",
	"KPFS_762x25_Ball",
	"RH_762x25",
	"RH_45ACP",
	"C1987_B_9x19_Ball",
	"B_765x17_Ball",
	"B_9x18_Ball",
	"B_9x18_SD",
	"B_45ACP_Ball",
	"B_12Gauge_Pellets",
	"B_9x19_Ball",
	"RH_B_9x19_Ball",
	"RH_B_9x19_SD",
	"B_9x19_SD"
];

DamageModifier = {
	private ["_vs","_damage","_hitcount","_selection","_ammo"];
	_selection = _this select 0;
	_damage = _this select 1;
	_ammo = _this select 2;
	if (_selection != "head_hit" and _damage > 0.01) then {
		if (('PDArmor' call INV_GetItemAmount) > 0) then {
			_hitcount = player getvariable "bodyarmorhits";
			if (isnil "_hitcount") then {player setvariable ["bodyarmorhits",0,false];};
			_vs = false;
			if (_damage >= 1 and _selection != "Hands" and _selection != "Legs" and _hitcount == 0) then {
				player setvariable ["bodyarmorhits",(_hitcount + 10),false];
								_damage = 0.75;
			} else {
				if (_ammo in armor_rounds) then {
					_vs = true;
					_damage = _damage - (_damage * 0.50);
					if (_selection == "body") then {
						player setvariable ["bodyarmorhits",(_hitcount + 4),false];
						};					
				};
				if (!_vs) then {
					_damage = _damage - (_damage * 0.25);
					
				};
			};
			_hitcount = player getvariable "bodyarmorhits";
			if (_hitcount >= 10) then {
			    ['PDArmor', -1] call INV_AddInventoryItem;	
				player setvariable ["bodyarmorhits",0,false];
				player GroupChat "Your body armor has been depleted!";
			};				
		};
	};
_damage;
};