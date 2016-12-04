waitUntil{OL_StatsLoadedFromDB};
_armor = 'PDArmor' call INV_GetItemAmount;
_spike = 'spikestrip' call INV_GetItemAmount;
_bag = 'Itembag' call INV_GetItemAmount;
_donut = 'Donut' call INV_GetItemAmount;

if (isciv) then {
['PDArmor', -(_armor)] call INV_AddInvItem;
['spikestrip', -(_spike)] call INV_AddInvItem;
['Itembag', -(_bag)] call INV_AddInvItem;
['Donut', -(_donut)] call INV_AddInvItem;
Player removeWeapon "x26";
Player removeWeapon "MakarovSD";
player removeMagazines "x26_Mag";
player removeMagazines "8Rnd_9x18_MakarovSD";
player removeMagazines "SmokeShell";
player removeMagazines "RAB_L111A1";
};