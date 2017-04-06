switch (_this select 0) do {
  case "donut 1": {
    if ("geld" call INV_GetItemAmount < 125) exitWith {player groupChat "You do not have enough money to buy this amount of donuts."};
    1001 cutText ["Employee: Welcome to Dunkin Bronuts, How may I take your order?","PLAIN DOWN"];
    uiSleep 5;
    1001 cutText ["One Donut Please!","PLAIN DOWN"];
    ["geld", -125] call INV_AddInvItem;
    uiSleep 5;
    1001 cutText ["Employee: Here you go, Have a nice day!","PLAIN DOWN"];
    ["Donut", 1] call INV_AddInvItem;
    player groupChat "You have Received (1) Donuts!";
  };
  case "donut 6": {
    if ("geld" call INV_GetItemAmount < 750) exitWith {player groupChat "You do not have enough money to buy this amount of donuts."};
    1001 cutText ["Employee: Welcome to Dunkin Bronuts, How may I take your order?","PLAIN DOWN"];
    uiSleep 5;
    1001 cutText ["Half a Dozen Donut's Please!","PLAIN DOWN"];
    ['geld', -750] call INV_AddInvItem;
    uiSleep 5;
    1001 cutText ["Employee: Here you go, Have a nice day!","PLAIN DOWN"];
    ['Donut', 6] call INV_AddInvItem;
    player groupChat "You have Received (6) Donuts!";
  };
  case "donut 12": {
    if ("geld" call INV_GetItemAmount < 1500) exitWith {player groupChat "You do not have enough money to buy this amount of donuts."};
    1001 cutText ["Employee: Welcome to Dunkin Bronuts, How may I take your order?","PLAIN DOWN"];
    uiSleep 5;
    1001 cutText ["A Dozen Donut's Please!","PLAIN DOWN"];
    ["geld", -1500] call INV_AddInvItem;
    uiSleep 5;
    1001 cutText ["Employee: Here you go, Have a nice day!","PLAIN DOWN"];
    ["Donut", 12] call INV_AddInvItem;
    player groupChat "You have Received (12) Donuts!";
  };
};
