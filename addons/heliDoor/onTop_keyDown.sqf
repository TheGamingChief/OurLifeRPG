// onTop_keyDown.sqf
// norrin MARCH 2010

// ====================================================================================
private["_handled", "_ctrl", "_dikCode", "_shift", "_ctrl", "_alt"];
_ctrl = _this select 0;
_dikCode = _this select 1;
_shift = _this select 2;
_ctrl = _this select 3;
_alt = _this select 4;

// INCLUDE REQUIRED GAME CODES
#include "\ca\editor\Data\Scripts\dikCodes.h"

if (!_shift && !_ctrl && !_alt) then
{	
	if (_dikCode in ([DIK_INSERT]+(actionKeys "NetworkStats"))) then
	{	
		comment "INSERT - eject";
		titleText ["Move to seat","BLACK FADED", 0.2];
		detach player;
		player setVariable ["NORRN_heliDoor", true, true];
	};
	if (_dikCode in ([DIK_R]+(actionKeys "NetworkStats"))) then
	{	
		comment "R - reload";	
		reload player;
		//hintSilent "reload";
	};
};