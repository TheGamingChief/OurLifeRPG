disableSerialization;
_civ = civmenuciv;
_RealName = name _civ;
_Name = (findDisplay 6959) displayCtrl 1000;
_Rob = (findDisplay 6959) displayCtrl 1601;
_PatDown = (findDisplay 6959) displayCtrl 1603;
_CheckInventory = (findDisplay 6959) displayCtrl 1609;
_ZipTie = (findDisplay 6959) displayCtrl 1602;
_Escort = (findDisplay 6959) displayCtrl 1605;
_Gag = (findDisplay 6959) displayCtrl 1607;
_ThrowInCar = (findDisplay 6959) displayCtrl 1619;
_Name ctrlSetText format["Interact - %1", _RealName];

if (!(_civ call ISSE_IsVictim)) then {_Rob ctrlEnable false};
if (!(_civ call ISSE_IsVictim)) then {_PatDown ctrlEnable false};
if (!(_civ call ISSE_IsVictim)) then {_CheckInventory ctrlEnable false};
if (!(_civ call ISSE_IsVictim)) then {_ZipTie ctrlEnable false};
if("ziptie" call INV_GetItemAmount == 0) then{_ZipTie ctrlEnable false};
if("Gag" call INV_GetItemAmount == 0) then{_Gag ctrlEnable false};
if (!(_civ getVariable "ZipTied")) then {_Gag ctrlEnable false};
if (!(_civ getVariable "ZipTied")) then {_Escort ctrlEnable false};
if (!(_civ getVariable "ZipTied")) then {_ThrowInCar ctrlEnable false};
if (_civ getVariable "ZipTied") then {_ZipTie ctrlSetText "Remove Zip Ties"};
if (_civ getVariable "Cuffed") then {if (call INV_isArmed) then {_ZipTie ctrlSetText "Remove Handcuffs";_ZipTie ctrlEnable true;}};
if (_civ getVariable "Cuffed") then {if !(call INV_isArmed) then {_ZipTie ctrlSetText "Remove Handcuffs";_ZipTie ctrlEnable false;}};
if (_civ getVariable "Gagged") then {_Gag ctrlSetText "Remove Gag";_Gag ctrlEnable true};
if (_civ getVariable "Escort") then {_Escort ctrlSetText "Stop Escorting";_Escort ctrlEnable true};
if (_civ getVariable "Cuffed") then {_Escort ctrlEnable false};
if (_civ getVariable "Cuffed") then {if (call INV_isArmed) then {_Escort ctrlEnable true;}};

if (_civ getVariable "KOED") then {
	_Rob ctrlEnable false;
	_PatDown ctrlEnable false;
	_CheckInventory ctrlEnable false;
};