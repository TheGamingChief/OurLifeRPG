/*---------------------------------------------------------------------------
DEADdem was here 7JULY2016 :P

EXPLAINATION ON HOW TO USE _fileList:
 	_arr select 0:
 		Name of the function, if select 2 is false, the function will be titled
 		"DD_fnc_<name of function>". If select 2 is true, it doesn't really do anything.

 	_arr select 1:
 		Path of file to be made into a function or to be executed.

 	_arr select 2:
 		If true, the file will be executed in a NON-SCHEDULED environment off
 		the main game thread. If false, it will be simply created into assigned
 		to the configured function.

P.S: At the time of writing this, I'm under the influence of alcohol so sorry if its messy :(
---------------------------------------------------------------------------*/
//systemChat "Intializing Manderza Keksimus";
_fileList = [
	["CreateEvents","network", false],
	["MPExec", "network", false],
	["MP", "network", false],

	["Dialog", "mdc", false],
	["AddNote", "mdc", false],
	["RunSearch", "mdc", false],
	["AddWarrant", "mdc", false],
	["DeleteEntry", "mdc", false],
	["RevokeLicense", "mdc", false],
	["OnlineCivilians", "mdc", false],
	["LicenseMenu", "mdc", false],
	["NoteMenu", "mdc", false],
	["DeleteNote", "mdc", false],
	["SpeedCam", "common", true]
];



{
	if(!(_x select 2))then{
		call compile format['DD_%2_%1 = compile preprocessFile "manderza\%2\fn_%1.sqf";', _x select 0, _x select 1];
		//diag_log format["DARZA: Function DD_%2_%1 created @ file manderza\%2\fn_%1!", _x select 0, _X select 1];
	}else{
		call compile preprocessFile format["manderza\%2\fn_%1.sqf", _x select 0, _x select 1];
		//diag_log format["DARZA: Script DD_%2_%1 executed! created @ file manderza\%2\fn_%1!", _x select 0, _x select 1];		
	};
}forEach _fileList;


call DD_Network_CreateEvents;
player setVariable["Notes", [], true];
player setVariable["Warrants", [], true];
player setVariable["Licenses", [], true];