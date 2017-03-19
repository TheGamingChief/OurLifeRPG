if !(platesavailable) exitwith {player groupChat "You are already making a license plate, please wait."};
platesavailable = false;

_payout = 2500;

player groupChat "Loading License Plate Machine...";
uiSleep 10;
player groupChat "Processing License Plate...";
playsound "Oil_pump";
uiSleep 10;
player groupChat "Finalizing License Plate...";
uiSleep 10;
player groupChat "License Plate Complete!";
uiSleep 5;
player groupChat format["You've been paid $%1",_payout];
['geld',_payout] call INV_AddInvItem;
uiSleep 10;
player groupChat "You can now make another License Plate!";
platesavailable = true;
