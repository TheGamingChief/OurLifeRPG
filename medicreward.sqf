_ambulance1 = nearestObjects [player, ["S1203_ambulance_EP1"], 40];
_ambulance = _ambulance1 select 0;
if (!isNull _ambulance and _ambulance in INV_VehicleArray) exitwith {["geld", 15000] call INV_AddInventoryItem; player groupchat "You earned $15000";};
["geld", 5000] call INV_AddInventoryItem; player groupchat "You earned $5000. With an ambulance you would have earned $15000!";
exit