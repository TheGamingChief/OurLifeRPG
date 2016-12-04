_selection = ((_this select 3) select 0);

if (_selection == "donut 1") then
{
_wallet = "geld" call INV_GetItemAmount; 
1001 cutText ["Employee: Welcome to Dunkin Bronuts, How may I take your order?","PLAIN DOWN"];
sleep 5;
1001 cutText ["One Donut Please!","PLAIN DOWN"];
['geld', -125] call INV_AddInvItem;
sleep 5;
1001 cutText ["Employee: Here you go, Have a nice day!","PLAIN DOWN"];
['Donut', 1] call INV_AddInvItem;
player groupchat "You have Received (1) Donuts!";
};

if (_selection == "donut 6") then
{
_wallet = "geld" call INV_GetItemAmount; 
1001 cutText ["Employee: Welcome to Dunkin Bronuts, How may I take your order?","PLAIN DOWN"];
sleep 5;
1001 cutText ["Half a Dozen Donut's Please!","PLAIN DOWN"];
['geld', -750] call INV_AddInvItem;
sleep 5;
1001 cutText ["Employee: Here you go, Have a nice day!","PLAIN DOWN"];
['Donut', 6] call INV_AddInvItem;
player groupchat "You have Received (6) Donuts!";
};

if (_selection == "donut 12") then
{
_wallet = "geld" call INV_GetItemAmount; 
1001 cutText ["Employee: Welcome to Dunkin Bronuts, How may I take your order?","PLAIN DOWN"];
sleep 5;
1001 cutText ["A Dozen Donut's Please!","PLAIN DOWN"];
['geld', -1500] call INV_AddInvItem;
sleep 5;
1001 cutText ["Employee: Here you go, Have a nice day!","PLAIN DOWN"];
['Donut', 12] call INV_AddInvItem;
player groupchat "You have Received (12) Donuts!";
};