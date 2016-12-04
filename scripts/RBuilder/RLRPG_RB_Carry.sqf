_RLRPG_RB_Type = _this select 3;

{player removeAction _x}forEach RLRPG_RB_ActionArr;

RLRPG_RB_Obj = _RLRPG_RB_Type createVehicle [0,0,0];
RLRPG_RB_Obj attachTo [player,[0,2,0.5]];
if (RLRPG_RB_Obj isKindOf "ZavoraAnim") then {RLRPG_RB_Obj attachTo [player,[0,2,4]];};
if (RLRPG_RB_Obj isKindOf "il_barrier") then {RLRPG_RB_Obj attachTo [player,[0,2,0.5]]; RLRPG_RB_Obj setDir 90;};
if (RLRPG_RB_Obj isKindOf "spikestrip") then {RLRPG_RB_Obj attachTo [player,[0,4,0.1]];};

RLRPG_RB_InUse = 1;
RLRPG_RB_Place = player addaction ["Place","Scripts\RBuilder\RLRPG_RB_Place.sqf"];
RLRPG_RB_Cancel = player addaction ["Cancel","Scripts\RBuilder\RLRPG_RB_Cancel.sqf"];
