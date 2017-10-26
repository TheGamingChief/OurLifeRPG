_jail = nearestObject [player, "Land_revier"];
_timer = 15;
_percent = 0;
_chance = floor(random 20);
_alarm = floor(random 5);

if (player getVariable "KOED" || !(alive player)) exitWith { player groupChat "You are dead and cannot crack the jail control room door." };
if ("JailCracker" call INV_GetItemAmount == 0) exitWith { player groupChat "You need a jail cracker to crack the jail control room door." };
if (isNull _jail) exitWith { player groupChat "You must be near the jail to crack the jail control room door." };
if ((iscop || ismedic) && !isciv) exitWith { player groupChat "Why are you trying to break into here? Just open the door (not hard)" };
if ((_jail animationPhase "Open_wache" == 1) && (_jail animationPhase "Open_schranke" == 1)) exitWith { player groupChat "The jail control room door is already open." };
if (player distance getMarkerPos "ControlDoorMrk" > 5) exitWith { player groupChat "You must be near the control room door." };

if (OL_CrackingJail) exitWith { player groupChat "You are already cracking the jail control door." };

OL_CrackingJail = true;

[player, "RepairingKneel", 0, true] call OL_fnc_Animate;

2254 cutRsc ["RL_Dialog_loading", "plain"];

while {_percent >= 0} do {
    if (_percent >= 100) exitWith {
        if (_chance >= 15) then {
            _jail animate ["Open_wache", 1];
            _jail animate ["Open_schranke", 1];
            player groupChat "You managed to crack the jail control room door.";
        } else {
            player groupChat "You failed to open the jail control room door.";
        };

				if (_alarm >= 4) then {
					format ['if (iscop) then { player sideChat "Someone was seen trying to break into the jail control room door!"; playSound "alarm1"; };'] call OL_network_Swag;
					_jail say ["alarm1", 5];
				};
    };

    if (player getVariable "KOED" || !(alive player)) exitWith { player groupChat "You died and stopped cracking the jail door!" };
    if (player distance getMarkerPos "ControlDoorMrk" > 10) exitWith { player groupChat "You must stay within 10(m) of the control room door!" };
    if (animationState player == "actspercmstpsnonwrfldnon_interrogate02_forgoten") exitWith { player groupChat "You were handcuffed and have stopped cracking the jail control room door!" };

    [1112, "Attempting To Crack Jail Control Room Door! Please Wait....", _percent] call OL_misc_LoadingSetText;

    _percent = _percent + 10;
    uiSleep 1;
};

[player, "normal", 0, true] call OL_fnc_Animate;
OL_CrackingJail = false;
2254 cutRsc["Default", "plain"];
