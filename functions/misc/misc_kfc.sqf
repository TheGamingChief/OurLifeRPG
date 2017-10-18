if (_this select 0 == "pet") then {
   OL_Chicken = ["speedx","safehack","supgrade5","RepairKitsBreaksShops","drill","supgrade4","medikit","lockpick","ziptie","codeb","Gag","lighter"];
   _item = OL_Chicken select floor(random(count OL_Chicken));
   _amount = round (random 3);
   _chance = round (random 100);
  if (_chance < 40) exitWith {
    player setDamage 1;
	player groupChat "Fosters Chicken has SMITED you!";
    uiSleep 1;
    kfcavailable = false;
    uiSleep 1800;
    kfcavailable = true;
	};
  if (_chance > 40) exitWith {
    [_item, _amount] call INV_addInvItem;
	player groupchat format["You have been given %1 %2 by Fosters Chicken as a gift!",_amount,(_item call INV_getitemName)];
    uiSleep 1;
    kfcavailable = false;
	uiSleep 1800;
    kfcavailable = true;
	};
};

if (_this select 0 == "kick") then {
  player setDamage 0.9;
  player setHit ["legs", 1];
  player groupChat "You were attacked by Fosters Chicken! Be nice!";
  uiSleep 1;
  kfc2available = false;
  uiSleep 1800;
  kfc2available = true;
};
