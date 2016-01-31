RLRPG_RB_InUse 		= false;
RLRPG_RB_Actions 		= false;


IF (!RLRPG_RB_InUse) then
{
	RLRPG_RB_Cone = player addAction ["Deploy Road Cone","Scripts\RBuilder\RLRPG_RB_Carry.sqf","Land_coneLight"];
	RLRPG_RB_RBarrier = player addAction ["Deploy Road Barrier","Scripts\RBuilder\RLRPG_RB_Carry.sqf","RoadBarrier_long"];
	RLRPG_RB_RBarrierL = player addAction ["Deploy Road Barrier (Small)","Scripts\RBuilder\RLRPG_RB_Carry.sqf","RoadBarrier_light"];
	RLRPG_RB_Guardrail = player addAction ["Deploy Guardrail","Scripts\RBuilder\RLRPG_RB_Carry.sqf","Land_RedWhiteBarrier"];
	RLRPG_RB_Roadblock = player addAction ["Deploy Concrete Roadblock","Scripts\RBuilder\RLRPG_RB_Carry.sqf","Land_CncBlock_Stripes"];
	RLRPG_RB_Roadbar = player addAction ["Deploy Concrete Road Barrier","Scripts\RBuilder\RLRPG_RB_Carry.sqf","il_barrier"];
	RLRPG_RB_StopSign = player addAction ["Deploy Stop Sign","Scripts\RBuilder\RLRPG_RB_Carry.sqf","glt_roadsign_octagon"];
	RLRPG_RB_SpikeStrip = player addAction ["Deploy SpikeStrip","Scripts\RBuilder\RLRPG_RB_Carry.sqf","spikestrip"];
	
	RLRPG_RB_CLOSE = player addAction ["Close Roadblock Builder","Scripts\RBuilder\RLRPG_RB_Close.sqf"];
		
	RLRPG_RB_ActionArr = [RLRPG_RB_Cone,RLRPG_RB_RBarrier,RLRPG_RB_RBarrierL,RLRPG_RB_Guardrail,RLRPG_RB_Roadblock,RLRPG_RB_Roadbar,RLRPG_RB_StopSign,RLRPG_RB_SpikeStrip,RLRPG_RB_CLOSE];
	RLRPG_RB_Actions = true;
};
	
IF (RLRPG_RB_InUse) then
{
	{player removeAction _x} forEach RLRPG_RB_ActionArr;
};