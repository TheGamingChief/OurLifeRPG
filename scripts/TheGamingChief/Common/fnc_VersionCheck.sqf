if (ol_version == 20170106) exitWith {};

titleText ["Your addons are out of date! \n Please update your addons via AddonSync! \n You will be kicked in a few moments!", "Black"];
uiSleep 8;
player setVariable ["AddonsOutOfDate", true];