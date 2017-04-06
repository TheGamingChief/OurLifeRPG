/***********************************************/
/*  Our Life RPG v15                           */
/*    File: Init.sqf                           */
/*    Decsription: Main entry point            */
/***********************************************/

waitUntil { vehicle player == player || isServer };
call compile preprocessFile "configuration\configuration.sqf";
call compile preprocessFile "configuration\modules.sqf";
