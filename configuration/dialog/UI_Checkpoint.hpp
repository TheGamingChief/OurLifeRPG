class AM_CheckpointBuilder {
	idd=-1;
	onLoad = "player setVariable [""isInCPMenu"",true,true];";
	onUnload = "player setVariable [""isInCPMenu"",false,true];";
	controlsBackground[] = {
		UI_CheckpointBuilder_Background,
		UI_CheckpointBuilder_Frame
	};
	controls[]={
		UI_CheckpointBuilder_ListBox,
		UI_CheckpointBuilder_PurchaseBtn,
		UI_CheckpointBuilder_ClearBtn,
		UI_CheckpointBuilder_Title,
		UI_CheckpointBuilder_DeleteBtn,
		UI_CheckpointBuilder_Frame
	};
	class UI_CheckpointBuilder_Background: RscBackground
	{
		idc = 1800;
		x = 0.319546 * safezoneW + safezoneX;
		y = 0.21994 * safezoneH + safezoneY;
		w = 0.393717 * safezoneW;
		h = 0.525112 * safezoneH;
	};
	class UI_CheckpointBuilder_Frame: RscFrame
	{
		idc = 1802;
		colorText[] = {0.26953125, 0.46484375, 0.734375, 1};
		x = 0.319546 * safezoneW + safezoneX;
		y = 0.21994 * safezoneH + safezoneY;
		w = 0.393717 * safezoneW;
		h = 0.525112 * safezoneH;
	};
	class UI_CheckpointBuilder_ListBox: DA_Listbox
	{
		idc = 1500;
		x = 0.327749 * safezoneW + safezoneX;
		y = 0.264948 * safezoneH + safezoneY;
		w = 0.375908 * safezoneW;
		h = 0.42009 * safezoneH;
	};
	class UI_CheckpointBuilder_PurchaseBtn: RscButton
	{
		idc = 1700;
		text = "Purchase";
		x = 0.327749 * safezoneW + safezoneX;
		y = 0.702541 * safezoneH + safezoneY;
		w = 0.106632 * safezoneW;
		h = 0.0350075 * safezoneH;
		action="if (vehicle player == player) then { AM_checkpoint_tmpArray = [lbCursel 1500]; AM_checkpoint_tmpArray call OL_checkpoint_PurchaseItem };";

	};
	class UI_CheckpointBuilder_DeleteBtn: RscButton
	{
		idc = 1702;
		text = "Delete Single Block";
		x = 0.462387 * safezoneW + safezoneX;
		y = 0.702541 * safezoneH + safezoneY;
		w = 0.106632 * safezoneW;
		h = 0.0350075 * safezoneH;
		action="[] call OL_checkpoint_Delete";
	};
	class UI_CheckpointBuilder_ClearBtn: RscButton
	{
		idc = 1701;
		text = "Clear Checkpoint";
		x = 0.597025 * safezoneW + safezoneX;
		y = 0.702541 * safezoneH + safezoneY;
		w = 0.106632 * safezoneW;
		h = 0.0350075 * safezoneH;
		action="[] call OL_checkpoint_Clear";
	};
	class UI_CheckpointBuilder_Title: RscText
	{
		idc = 1000;
		text = "Checkpoint Builder";
		x = 0.450785 * safezoneW + safezoneX;
		y = 0.21994 * safezoneH + safezoneY;
		w = 0.146632 * safezoneW;
		h = 0.0525112 * safezoneH;
			font = "EtelkaNarrowMediumPro";
			color = "#FFFFFF";
			align = "center";
			valign = "middle";
			sizeEx = 0.05;
	};
};
