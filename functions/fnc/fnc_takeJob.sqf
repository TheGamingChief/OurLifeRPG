if !(gunrunavailable) exitwith {player groupchat "script already active"};
gunrunavailable = false;
fn_LeftgussNotification = {
    if ("gunshipment" call INV_GetItemAmount < 1) exitWith {
      player groupChat "You have walked away from Guss, Deals off!";
      deleteMarker "GunRunner";
      deleteMarker "GunRunner2";
      gunrunavailable = true;
    };
};

1001 cutText ["Guss: So here's the Job...","PLAIN DOWN"];
if (player distance OL_Shop_Guss >= 5) exitWith { [] call fn_LeftgussNotification };
uiSleep 3;
1001 cutText ["Guss: You go pickup my weapons shipment from the location marked on your map","PLAIN DOWN"];
if (player distance OL_Shop_Guss >= 5) exitWith { [] call fn_LeftgussNotification };
uiSleep 3;
1001 cutText ["Guss: You bring back the shipment in the allotted time.","PLAIN DOWN"];
if (player distance OL_Shop_Guss >= 5) exitWith { [] call fn_LeftgussNotification };
uiSleep 3;
1001 cutText ["Guss: You receive the biggest payout of your life.","PLAIN DOWN"];
if (player distance OL_Shop_Guss >= 5) exitWith { [] call fn_LeftgussNotification };
uiSleep 3;
1001 cutText ["Guss: You fail to make it in time or get caught by the cops the Deals Over!.","PLAIN DOWN"];
if (player distance OL_Shop_Guss >= 5) exitWith { [] call fn_LeftgussNotification };

_grLocation = ["gman1m","gman2m","gman3m","gman5m","gman5m","gman6m","gman7m","gman8m"];
_grSelection = _grLocation call bis_fnc_selectrandom;
_gman = gman;

_GRMARKER = createMarkerLocal ["GunRunner", (getMarkerPos _grSelection)];
_GRMARKER setMarkerShapeLocal "ELLIPSE";
_GRMARKER setMarkerSizeLocal [25,25];
_GRMARKER setMarkerColorLocal "ColorRed";

_GRMARKER2 = createMarkerLocal ["GunRunner2", (getMarkerPos _grSelection)];
_GRMARKER2 setMarkerTypeLocal "Warning";
_GRMARKER2 setMarkerColorLocal "ColorRed";
"GunRunner2" setMarkerTextLocal "!!! GUN SHIPMENT !!!";

_pos = getMarkerPos "GunRunner";
_group = createGroup east;
gman = _group createUnit ["TK_CIV_Worker02_EP1", _pos, [], 0, "FORM"];
gman setvehicleinit 'gman = this;this setVehicleVarName "gman";';
gman disableAI "MOVE";
gman disableAI "ANIM";
gman disableAI "FSM";

uiSleep 3;

1001 cutText ["Guss: The location has been marked on your map, you have 6 minutes to get there.","PLAIN DOWN"];
if (player distance OL_Shop_Guss >= 5) exitWith {[] call fn_LeftgussNotification;};
uiSleep 3;
1001 cutText ["Guss: Good Luck!","PLAIN DOWN"];
gunrun2available = true;

uiSleep 60;
if ("gunshipment" call INV_GetItemAmount > 0) exitWith {};
player groupChat "You have 5 Minutes Left!";
uiSleep 60;
if ("gunshipment" call INV_GetItemAmount > 0) exitWith {};
player groupChat "You have 4 Minutes Left!";
uiSleep 60;
if ("gunshipment" call INV_GetItemAmount > 0) exitWith {};
player groupChat "You have 3 Minutes Left!";
uiSleep 60;
if ("gunshipment" call INV_GetItemAmount > 0) exitWith {};
player groupChat "You have 2 Minutes Left!";
uiSleep 60;
if ("gunshipment" call INV_GetItemAmount > 0) exitWith {};
player groupChat "You have 1 Minute Left!";
uiSleep 60;

if ("gunshipment" call INV_GetItemAmount < 1) exitWith {
  player groupChat "Sorry, you didn't get to the shipment in time. Deal Cancelled!";
  deleteMarker "GunRunner";
  deleteMarker "GunRunner2";
  deleteVehicle _gman;
  gunrunavailable = true;
  gunrun2available = false;
};
