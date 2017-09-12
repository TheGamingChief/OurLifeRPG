switch (_this select 1) do {
		case "GymMem1" : { INV_Weight = 70 };
		case "GymMem2" : { INV_Weight = 80 };
		case "GymMem3" : { INV_Weight = 90 };
		case "GymMem4" : { INV_Weight = 100 };
};
[(_this select 1), -1] call INV_AddInvItem;
player groupchat format ["You now can lift up to %1 pounds, but upon death you lose your strength.", INV_Weight];
