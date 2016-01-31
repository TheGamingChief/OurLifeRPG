player removeAction RLRPG_RB_Place;
player removeAction RLRPG_RB_Cancel;

deleteVehicle RLRPG_RB_Obj;
RLRPG_RB_InUse = 0;
RLRPG_RB_Actions = 0;

player execVM "Scripts\RBuilder\RLRPG_RB_Actions.sqf";