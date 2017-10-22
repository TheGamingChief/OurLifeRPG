[_this select 1, -1] call INV_AddInvItem;

switch (_this select 1) do {
  case "PD_Kit": {
    ["spikestrip", 3] call INV_AddInvItem;
    ["Itembag", 4] call INV_AddInvItem;
    ["Handcuffs", 4] call INV_AddInvItem;

    player groupchat "Added: 3 Spike Strips, 4 Handcuffs, 4 Evidance Bags";
  };
  case "CID_Kit": {
    ["Handcuffs", 4] call INV_AddInvItem;
    ["spikestrip", 2] call INV_AddInvItem;
    ["Itembag", 5] call INV_AddInvItem;
    ["RepairKitsBreaksShops", 2] call INV_AddInvItem;
    ["medikit", 2] call INV_AddInvItem;

    player groupchat "Added: 4 Handcuffs, 2 Spike Strips, 5 Evidance Bags, 2 Repair Kits, 2 Med Kits";
  };
  case "SWAT_Kit": {
    ["Handcuffs", 5] call INV_AddInvItem;
    ["spikestrip", 2] call INV_AddInvItem;
    ["Itembag", 2] call INV_AddInvItem;
    ["RepairKitsBreaksShops", 2] call INV_AddInvItem;
    ["medikit", 2] call INV_AddInvItem;

    player groupchat "Added: 5 Handcuffs, 2 Spike Strips, 2 Evidance Bags, 2 Repair Kits, 2 Med Kits";
  };
  case "K9_Kit": {
    ["Handcuffs", 4] call INV_AddInvItem;
    ["spikestrip", 4] call INV_AddInvItem;
    ["Itembag", 4] call INV_AddInvItem;

    player groupchat "Added: 3 Spike Strips, 3 Handcuffs, 4 Evidance Bags";
  };
  case "FTO_Kit": {
    ["Handcuffs", 4] call INV_AddInvItem;
    ["spikestrip", 3] call INV_AddInvItem;
    ["Itembag", 4] call INV_AddInvItem;
    ["Gag", 1] call INV_AddInvItem;
    ["RepairKitsBreaksShops", 2] call INV_AddInvItem;
    ["medikit", 2] call INV_AddInvItem;

    player groupchat "Added: 4 Handcuffs, 3 Spike Strips, 4 Evidance Bags, 1 Gag, 2 Repair Kits, 2 Med Kits";
  };
  case "AVIATION_Kit": {
    ["medikit", 2] call INV_AddInvItem;
    ["RepairKitsBreaksShops", 2] call INV_AddInvItem;
    ["Donut", 10] call INV_AddInvItem;

    player groupchat "Added: 2 Med Kits, 2 Repair Kits, 20 Donuts";
  };
};
