disableSerialization;


_dialog = 1000 cutRsc["DD_HUD","PLAIN"];
_controller = uiNamespace getVariable "DD_UI";
_imgSrcVest = _controller displayCtrl 1200;


while{true}do{

	_vestState = player getVariable["bodyarmorhits",0];

	if(_vestState == 0)then{
		_imgSrcVest ctrlSetText "";
	};
	if(_vestState <= 4)then{
		_imgSrcVest ctrlSetText "ol_textures\deaddem2\images\armor_full.paa";
	};
	if(_vestState > 4 and _vestState < 7)then{
		_imgSrcVest ctrlSetText "ol_textures\deaddem2\images\armor_half.paa";
	};
	if(_vestState >= 7)then{
		_imgSrcVest ctrlSetText "ol_textures\deaddem2\images\armor_one.paa";
	};	
	sleep 1;

};
