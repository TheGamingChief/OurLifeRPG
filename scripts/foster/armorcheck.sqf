sleep 60;
_armor = 'PDArmor' call INV_GetItemAmount; 

if ((isciv) and (_armor < 1)) exitWith {};
if (isciv) then {
['PDArmor', -(_armor)] call INV_AddInvItem;
player groupChat "Your playing as a Civilian. Police Body Armor Removed!";
};