#define CellMenu_option 50007
disableSerialization;

private ["_start","_panelOptions","_displayCell","_serverCellSelect"];

	_start = createDialog "CellMenu";
	
	_displayCell = uiNamespace getVariable "CellMenu";
	_serverCellSelect = _displayCell displayCtrl CellMenu_option;
	
	_panelOptions = [
		"Call 311/911/141",
		"Call Player"
	];
	
	{
		_serverCellSelect lbAdd _x;
	} forEach _panelOptions;
