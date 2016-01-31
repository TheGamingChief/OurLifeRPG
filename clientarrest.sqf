////////////////////////////////////
////			         //
//      Copyright © TCG         //
//www.tcgaming.enjin.com       //
////////////////////////////////
///-SCRIPT INFORMATION-//
//Initializing Profile Default
//
//-SCRIPT CONDITONS-//
//Script Begins: On Server Initialization
//Script Ends  : On EOF
//Wulfer Intelectual Property

private ["_vcl","_target"];
_vcl = _this select 0;
_target = _this select 1;
_target moveInCargo _vcl;
