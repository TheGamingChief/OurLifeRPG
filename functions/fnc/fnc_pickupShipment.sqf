if !(gunrun2available) exitwith {player groupchat "script already active"};
gunrun2available = false;
_gman = gman;
deleteMarker "GunRunner";
deleteMarker "GunRunner2";

1001 cutText ["Guss's Henchmen: I see you made it...","PLAIN DOWN"];
uiSleep 3;
1001 cutText ["Guss's Henchmen: Take this Shipment back to Guss.","PLAIN DOWN"];
uiSleep 3;
1001 cutText ["Guss's Henchmen: You have 6 Minutes, Dont get caught by the cops...","PLAIN DOWN"];
['gunshipment', 1] call INV_AddInvItem;
1001 cutText ["Guss's Henchmen: Here you go, Now get going!","PLAIN DOWN"];
player groupChat "You have received the Shipment from Guss's Henchmen...";
uiSleep 10;
deleteVehicle _gman;
deleteMarker "GunRunner";
deleteMarker "GunRunner2";

uiSleep 60;
player groupChat "You have 5 Minutes Left!";
if ("gunshipment" call INV_GetItemAmount < 1) exitWith {};
uiSleep 60;
player groupChat "You have 4 Minutes Left!";
if ("gunshipment" call INV_GetItemAmount < 1) exitWith {};
uiSleep 60;
if ("gunshipment" call INV_GetItemAmount < 1) exitWith {};
player groupChat "You have 3 Minutes Left!";
uiSleep 60;
if ("gunshipment" call INV_GetItemAmount < 1) exitWith {};
player groupChat "You have 2 Minutes Left!";
uiSleep 60;
if ("gunshipment" call INV_GetItemAmount < 1) exitWith {};
player groupChat "You have 1 Minute Left!";
uiSleep 60;

if ("gunshipment" call INV_GetItemAmount > 0) exitWith {
  player groupChat "Sorry, you didn't get the shipment to Guss in time. Deal Cancelled!";
  ['gunshipment', -1] call INV_AddInvItem;
  gunrunavailable = true;
};
