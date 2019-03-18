_Weight            = (call INV_GetOwnWeight) - 2;
_Spikestrip_Weight = "spikestrip" call INV_getitemTypeKg;
_Itembag_Weight    = "Itembag" call INV_getitemTypeKg;
_Handcuff_Weight   = "Handcuffs" call INV_getitemTypeKg;
_RepairKit_Weight  = "RepairKitsBreaksShops" call INV_getitemTypeKg;
_Medkit_Weight     = "medikit" call INV_getitemTypeKg;
_Gag_Weight        = "Gag" call INV_getitemTypeKg;
_Donut_Weight      = "Donut" call INV_getItemTypeKg;

switch (_this select 1) do {
  case "PD_Kit": {
    _TotalAfter = ((3 * _Spikestrip_Weight) + (4 * _Itembag_Weight) + (4 * _Handcuff_Weight));

    if ((_TotalAfter + _Weight) > INV_Weight) exitWith { player groupChat "You do not have enough room to use this kit." };

    ["spikestrip", 3] call INV_AddInvItem;
    ["Itembag", 4] call INV_AddInvItem;
    ["Handcuffs", 4] call INV_AddInvItem;

    player groupchat "Added: 3 Spike Strips, 4 Handcuffs, 4 Evidence Bags";

    [_this select 1, -1] call INV_AddInvItem;
  };
  case "CID_Kit": {
    _TotalAfter = ((2 * _Spikestrip_Weight) + (5 * _Itembag_Weight) + (4 * _Handcuff_Weight) + (2 * _RepairKit_Weight) + (2 * _Medkit_Weight));

    if ((_TotalAfter + _Weight) > INV_Weight) exitWith { player groupChat "You do not have enough room to use this kit." };

    ["Handcuffs", 4] call INV_AddInvItem;
    ["spikestrip", 2] call INV_AddInvItem;
    ["Itembag", 5] call INV_AddInvItem;
    ["RepairKitsBreaksShops", 2] call INV_AddInvItem;
    ["medikit", 2] call INV_AddInvItem;

    player groupchat "Added: 4 Handcuffs, 2 Spike Strips, 5 Evidence Bags, 2 Repair Kits, 2 Med Kits";

    [_this select 1, -1] call INV_AddInvItem;
  };
  case "SWAT_Kit": {
    _TotalAfter = ((2 * _Spikestrip_Weight) + (2 * _Itembag_Weight) + (5 * _Handcuff_Weight) + (2 * _RepairKit_Weight) + (2 * _Medkit_Weight));

    if ((_TotalAfter + _Weight) > INV_Weight) exitWith { player groupChat "You do not have enough room to use this kit." };

    ["Handcuffs", 5] call INV_AddInvItem;
    ["spikestrip", 2] call INV_AddInvItem;
    ["Itembag", 2] call INV_AddInvItem;
    ["RepairKitsBreaksShops", 2] call INV_AddInvItem;
    ["medikit", 2] call INV_AddInvItem;

    player groupchat "Added: 5 Handcuffs, 2 Spike Strips, 2 Evidence Bags, 2 Repair Kits, 2 Med Kits";

    [_this select 1, -1] call INV_AddInvItem;
  };
  case "K9_Kit": {
    _TotalAfter = ((4 * _Spikestrip_Weight) + (4 * _Itembag_Weight) + (4 * _Handcuff_Weight));

    if ((_TotalAfter + _Weight) > INV_Weight) exitWith { player groupChat "You do not have enough room to use this kit." };

    ["Handcuffs", 4] call INV_AddInvItem;
    ["spikestrip", 4] call INV_AddInvItem;
    ["Itembag", 4] call INV_AddInvItem;

    player groupchat "Added: 3 Spike Strips, 3 Handcuffs, 4 Evidence Bags";

    [_this select 1, -1] call INV_AddInvItem;
  };
  case "FTO_Kit": {
    _TotalAfter = ((3 * _Spikestrip_Weight) + (4 * _Itembag_Weight) + (4 * _Handcuff_Weight) + (2 * _RepairKit_Weight) + (2 * _Medkit_Weight) + (1 * _Gag_Weight));

    if ((_TotalAfter + _Weight) > INV_Weight) exitWith { player groupChat "You do not have enough room to use this kit." };

    ["Handcuffs", 4] call INV_AddInvItem;
    ["spikestrip", 3] call INV_AddInvItem;
    ["Itembag", 4] call INV_AddInvItem;
    ["Gag", 1] call INV_AddInvItem;
    ["RepairKitsBreaksShops", 2] call INV_AddInvItem;
    ["medikit", 2] call INV_AddInvItem;

    player groupchat "Added: 4 Handcuffs, 3 Spike Strips, 4 Evidence Bags, 1 Gag, 2 Repair Kits, 2 Med Kits";
  };
  case "AVIATION_Kit": {
    _TotalAfter = ((2 * _RepairKit_Weight) + (2 * _Medkit_Weight) + (10 * _Donut_Weight));

    if ((_TotalAfter + _Weight) > INV_Weight) exitWith { player groupChat "You do not have enough room to use this kit." };

    ["medikit", 2] call INV_AddInvItem;
    ["RepairKitsBreaksShops", 2] call INV_AddInvItem;
    ["Donut", 10] call INV_AddInvItem;

    player groupchat "Added: 2 Med Kits, 2 Repair Kits, 20 Donuts";

    [_this select 1, -1] call INV_AddInvItem;
  };
};
