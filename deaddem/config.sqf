DEAD_ServerTitle = "Our Life RPG";
DEAD_ServerShort = "OLRPG";
DEAD_ScriptEnable = true; // Boolean to judge whether these scripts are to be used;
publicvariable "DEAD_ScriptEnable"; // Just in case someone does something nasty like disabling it on the fly.
if(!DEAD_ScriptEnable) exitWith{};
// Begin Compiling Functions;
[] execVM "deaddem\errorhint.sqf";
[] execVM "deaddem\successhint.sqf";
[] execVM "deaddem\noticehint.sqf";
[] execVM "deaddem\reportlog.sqf";
[] execVM "deaddem\dispatchHint.sqf";
[] execVM "deaddem\governerhint.sqf";
[] execVM "deaddem\functions.sqf";
