//Created By Speedy

CellSelect = lbCurSel 50007;

switch (CellSelect) do
{
		case 0: //Call 911/311
	{
		closeDialog 0;
		createDialog "UltRP_Dlg_Call_911_311";
	};
		case 1: //Call player
	{
		closeDialog 0;
		["use"] execVM "handy.sqf";
	};
};
