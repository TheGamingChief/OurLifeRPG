if (!local_robBankPossible) exitwith { player groupchat "You are already robbing the bank" };
local_robBankPossible = false;

[] spawn {
	Safe1 animate ["Safe_Door", 1];
	uiSleep 30;
	Safe1 animate ["Safe_Door", 0];
};

if (alive player) then {
	['geld', robpoolsafe1] call INV_AddInvItem;
	player groupChat format["You successfully robbed the Bank for %1. Escape before the cops show up!", robpoolsafe1];
};

format['[%1] call OL_bank_BankRobbed', robpoolsafe1] call swag;

robpoolsafe1 = 0;
publicvariable "robpoolsafe1";

'if ((isciv) and (player distance mainbank < 50)) then {
	local_useBankPossible = false;
	["local_useBankPossible", true, 300, [false, false]] call CP_fnc_VarQueueAdd;
};' call swag;

["local_robBankPossible", true, 300, [false, false]] call CP_fnc_VarQueueAdd;
