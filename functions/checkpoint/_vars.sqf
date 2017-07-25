CPB_Admin_classnames = [
	["il_barrier", 							2000,   [0, 2, 0.4],   "Short Concreate Barrier"],
	["2mTape", 								5000,   [0, 2, 0.5],   "2M Cation Tape"],
	["armat_tarmac", 						10000,  [0, 2, 1.0],   "Tarmac"],
	["MBG_Cinderwall_5_InEditor", 			5000,   [0, 2, 1.0],   "5M Cinderblock Wall"],
	["MBG_Cinderwall_5_Corner_InEditor",	5000,   [0, 2, 1.0],   "5M Cinderblock Corner Wall"],
	["mbg_cinderwall_5_low_InEditor", 		5000,   [0, 2, 0.5],   "5M Cinderblock Short Wall"],
	["MBG_Cinderwall_5_Gate_InEditor", 		5000,   [0, 2, 1.0],   "5M Cinderblock Wall Gate"],
	["Barrack2", 							50000,  [0, 2, 0.7],   "Barrack"],
	["Fence_Ind_long",						1000,   [0, 2, 1.0],   "Wire Fence"],
	["HeliHCivil", 							1000,   [0, 2, 1.0],   "Helipad Marker"],
	["jerseybarrierc", 						1000,   [0, 2, 0.5],   "Jersey Barrier"],
	["TargetEpopup", 						1000,   [0, 2, .65],   "Popup Shooting Target"],
	["tcg_sign60", 							1000,   [0, 2, 1.0],   "Speed Limit Sign (60)"],
	["tcg_sign90", 							1000,   [0, 2, 1.0],   "Speed Limit Sign (90)"],
	["tcg_speedbump", 						5000,   [0, 2, .015],  "SpeedBump"],
	["Land_BagFenceLong", 					5000,   [0, 2, 0.5],   "Bag Fence Wall"],
	["Land_BagFenceCorner", 				5000,   [0, 2, 0.5],   "Bag Fence Corner"],
	["Land_fortified_nest_big", 			25000,  [0, 2, .72],   "Bag Nest"],
	["Land_HBarrier5", 						10000,  [0, 2, 1.0],   "Large H barrier Wall"],
	["Land_HBarrier_large", 				15000,  [0, 2, 1.0],   "Large H barrier"],
	["Land_HBarrier1", 						10000,  [0, 2, 1.0],   "Single H barrier"],
	["Concrete_Wall_EP1", 					10000,  [0, 2, 1.7],   "Tall Concreate Wall"],
	["FlagCarrierUSA_EP1", 					1,      [0, 2, 4.0],   "Merican Flag"],
	["Danger", 								1000,   [0, 2, 0.5],   "Danger Sign"],
	["Land_A_FuelStation_Shed", 			25000,  [0, 2, 2.845], "Fuel Shed"],
	["Land_A_CraneCon", 					150000, [0, 2, 17],    "Construction Crane"]
];

CPB_BASE_classnames = {
  ["roadblock",            1000,  [0, 2, 0.4], "Roadblock"],
  ["glt_roadsign_octagon", 1000,  [0, 2, 1.0], "Stop Sign"],
	["bargate",              1000,  [0, 2, 3.8], "Bar Gate"],
	["SearchLight_UN_EP1",   1000,  [0, 2, 0.0], "Search Light"],
	["roadcone",             1000,  [0, 2, 0.4], "Road Cone"],
	["roadbarrierlong",      1000,  [0, 2, 0.5], "Caution Barrier Large"],
	["roadbarriersmall",     1000,  [0, 2, 0.7], "Caution Barrier Small"],
	["bigbagfence",          5000,  [0, 2, 0.5], "Big Bag Fence"],
	["bunkersmall",          10000, [0, 2, 1.0], "Bunker"],
	["10mTape",              10000, [0, 2, 0.5], "Caution Tape (10M)"],
	["land_ladder_half",     1000,  [0, 2, 1.0], "Small Ladder"]
};

CPB_EMS_classnames = [
	["land_ladder",          2000,  [0, 2, 3.9], "Large Ladder"]
];

CPB_TOW_classnames = [
	["Arrow_Sign_Both",      1000, [0, 2, 1.9], "Arrow Sign (Both)"],
	["Arrow_Sign_Left",      1000, [0, 2, 1.9], "Arrow Sign (Left)"],
	["Arrow_Sign_Right",     1000, [0, 2, 1.9], "Arrow Sign (Right)"],
	["Traffic_Drum",         1000, [0, 2, 0.7], "Traffic Drum"],
	["Tent_Event",           1000, [0, 2, 2.3], "Tent Event"]
];

OL_CheckpointWL = [ //Not gonna say how much he paid...
	"76561198055543664", // Mark Stavaros
	"76561198065459565", // Isaac
	"76561198045257930"  // Lansing
];

AM_temp_carrying = false;
AM_checkpoint_tmpArray = [];
temp_item = objNull;
AM_checkpoint_sleep = 0.5;
