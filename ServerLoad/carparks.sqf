INV_CanUseInventory     = true; 
INV_CanUseItem          = true; 
INV_CanDropItem         = true; 
INV_CanGiveItem         = true; 
INV_Tragfaehigkeit	= 60; 
if ((getPlayerUID player) in WeightIncrease1_id) then {INV_Tragfaehigkeit = 100;};
if ((getPlayerUID player) in WeightIncrease2_id) then {INV_Tragfaehigkeit = 150;};
if ((getPlayerUID player) in WeightIncrease3_id) then {INV_Tragfaehigkeit = 300;};
INV_InventarArray       = [];   
INV_SteuernGezahlt	= 0;

INV_VehicleGaragen = [

//Null Car Parks
//[boatdocks, 100],
//[carpark1, 30],
//[carpark2, 50],

[carpark3, 50]

];

INV_inactive_vcl_maxtime  = 60;           