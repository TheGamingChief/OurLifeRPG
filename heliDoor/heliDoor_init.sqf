// heliDoor_init.sqf
// ©MARCH 2010 - norrin (norrin@iinet.net.au)

_vcl = _this select 0;

NORRN_heliDoor_keyDown = Compile preprocessfile "heliDoor\onTop_keyDown.sqf";

if (isServer) then
{
	_vcl setVariable ["NORRN_mountOn_vcl_pos0", false, true];
	_vcl setVariable ["NORRN_mountOn_vcl_pos1", false, true];
	sleep 2;
};

_nul  = [_vcl] execVM "heliDoor\mount_vcl_init.sqf";
_nul  = [_vcl] execVM "heliDoor\mount_vcl_init1.sqf";
	