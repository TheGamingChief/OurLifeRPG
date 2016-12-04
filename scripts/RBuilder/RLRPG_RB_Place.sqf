_RLRPG_RB_Type = ((_this select 3)select 1);

player removeAction RLRPG_RB_Place;
player removeAction RLRPG_RB_Cancel;

detach RLRPG_RB_Obj;
RLRPG_RB_Obj setPos [getPos RLRPG_RB_Obj select 0, getPos RLRPG_RB_Obj select 1, 0];

RLRPG_RB_InUse = 0;
RLRPG_RB_Actions = 0;

player execVM "Scripts\RBuilder\RLRPG_RB_Actions.sqf";