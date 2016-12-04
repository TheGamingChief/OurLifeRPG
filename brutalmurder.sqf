_shooter = _this select 0;
_self = player;
player setdamage 1;
bledout = true;
uncontime = 0;
(format ["[""KilledCiv"", %1] spawn Isse_AddCrimeLogEntry; if(%1 in civarray and !(%1 in pmcarray))then{if(!(""Brutal Murder"" in %1_reason))then{%1_reason = %1_reason + [""Brutal Murder""]}; %1_wanted = 1; kopfgeld_%1 = kopfgeld_%1 + 80000};", _shooter]) call broadcast;
if (ispmc and _shooter in pmcarray) exitwith {(format ["[""KilledCiv"", %1] spawn Isse_AddCrimeLogEntry; if(%1 in pmcarray)then{if(!(""Brutal Murder"" in %1_reason))then{%1_reason = %1_reason + [""Brutal Murder""]}; %1_wanted = 1; kopfgeld_%1 = kopfgeld_%1 + 80000};", _shooter]) call broadcast;};
_bounty = call compile format ["kopfgeld_%1", _self];
_bounty = ceil _bounty;
_bounty2 = _bounty / 2;
if (_bounty >= 100000) then
{(format['if (player == %2 and ispmc)then{kontostand = kontostand + %1; player groupChat "You got 1/2 of the bounty, Totaling $%1"}', _bounty2, _shooter]) call broadcast;} else {(format ["[""KilledCiv"", %1] spawn Isse_AddCrimeLogEntry; if(%1 in pmcarray)then{if(!(""Brutal Murder"" in %1_reason))then{%1_reason = %1_reason + [""Brutal Murder""]}; %1_wanted = 1; kopfgeld_%1 = kopfgeld_%1 + 80000};", _shooter]) call broadcast;};