/////////////////////////////////
//Script created by Tiinusen//
//Last Modified by Tiinusen //
//      Copyright © TCG       //
//www.tcgaming.enjin.com//
////////////////////////////////
///-SCRIPT INFORMATION-//
//Runs the Script. with the parameters
//past in by the Broadcast.
//But Runs only if first object
//in Array is local.
//
//-SCRIPT CONDITONS-//
//Script Begins: On CodeBroadcast
//Script Ends  : On EOF

if(local(_this select 0))then
{
    (_this select 1) execVM (_this select 2) ;
}else{
    CodeBroadcast = _this;
    publicVariable "CodeBroadcast";
};