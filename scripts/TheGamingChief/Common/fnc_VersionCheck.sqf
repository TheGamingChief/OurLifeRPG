waitUntil {alive player};
if (ol_version == 20170207) exitWith {};

titleText ["Your addons are out of date! \n Please update your addons via AddonSync! \n You will be kicked in a few moments!", "Black"];
uiSleep 10;
player setVariable ["AddonsOutOfDate", true, true];