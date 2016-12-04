//When you alter _MARKERS ensure you edit burgler.sqf

_house  = ((_this select 3) select 0);
_housename = ((_this select 3) select 1);
_uid = getPlayerUID vehicle player;

_unit = _this;
_dist = 10;
_marker = "";
{_range = ((getMarkerPos _x) distance (player));
if (_range < _dist) then 
{_dist = _range; _marker = _x};	
} foreach Homearray;

switch true do
{
//1001
case (_marker == "Tezz"):{if(_uid == "125449478") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
//1002
case (_marker == "Retro"):{if(_uid == "116321862") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "Retro1"):{if(_uid == "116321862") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
//1004
case (_marker == "Redneck"):{if(_uid == "000000000") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
//1069
case (_marker == "ghostrecon"):{if(_uid == "9258182") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "ghostrecon2"):{if(_uid == "9258182") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
//1005
case (_marker == "zkb"):{if(_uid == "107407558") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
//1027
case (_marker == "Luc_1"):{if(_uid == "91412102") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "luc_2"):{if(_uid == "91412102") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "luc_3"):{if(_uid == "91412102") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "luc_4"):{if(_uid == "91412102") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "luc_5"):{if(_uid == "91412102") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
//1066
case (_marker == "Hidden_Ops_1"):{if(_uid == "138937222") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "Hidden_Ops_2"):{if(_uid == "138937222") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "Hidden_Ops_3"):{if(_uid == "138937222") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
//1096
case (_marker == "Kirby"):{if(_uid == "108645062" || _uid == "91078406") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "Kirby_1"):{if(_uid == "108645062" || _uid == "91078406") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
//1080
case (_marker == "UniqueChipmunk"):{if(_uid == "14920198") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
//1081
case (_marker == "Blackburn"):{if(_uid == "14920198") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
//1082
case (_marker == "Dalmiwert"):{if(_uid == "37682694") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
//1083
case (_marker == "michaelrasch"):{if(_uid == "16879558") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
//1084
case (_marker == "Fruerlund2"):{if(_uid == "37616582") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
//1051
case (_marker == "hagar"):{if(_uid == "111601990") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
//1053
case (_marker == "vandijk"):{if(_uid == "128724294") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "vandijk1"):{if(_uid == "128724294") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "vandijk2"):{if(_uid == "128724294") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
//1076
case (_marker == "AngelusofRuin"):{if(_uid == "724864") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "AngelusofRuin1"):{if(_uid == "724864") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "AngelusofRuin2"):{if(_uid == "724864") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
//1064
case (_marker == "unseen"):{if(_uid == "123949958") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
//1043
case (_marker == "Sgt.Maxiimus"):{if(_uid == "80174662") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "Sgt.Maxiimus1"):{if(_uid == "80174662") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
//1059
case (_marker == "cidos"):{if(_uid == "4225536") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "cidos1"):{if(_uid == "4225536") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
//1052
case (_marker == "Walter"):{if(_uid == "11455040") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "Walter1"):{if(_uid == "11455040") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "Walter2"):{if(_uid == "11455040") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
//1042
case (_marker == "Jacko1"):{if(_uid == "116321862") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "Jacko2"):{if(_uid == "116321862") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "Jacko3"):{if(_uid == "116321862") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
//1022
case (_marker == "Ken"):{if(_uid == "123425606") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
//1097
case (_marker == "RyanHooli"):{if(_uid == "105110342") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
//1035
case (_marker == "Hodge"):{if(_uid == "106425734") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "Hodge2"):{if(_uid == "106425734") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
//1075
case (_marker == "LtMartinez"):{if(_uid == "138536198") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
//1025
case (_marker == "CocaCola"):{if(_uid == "149034374") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
//1095
case (_marker == "HellDriven"):{if(_uid == "108429638") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "HellDriven_1"):{if(_uid == "144265734") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
//1085
case (_marker == "micheal"):{if(_uid == "125465286") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "micheal_2"):{if(_uid == "125465286") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "micheal_3"):{if(_uid == "125465286") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
//1102
case (_marker == "Jebus"):{if(_uid == "138937222") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "Jebus_1"):{if(_uid == "138937222") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
//1037
case (_marker == "Tom"):{if(_uid == "129034374") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
//1100
case (_marker == "Harris"):{if(_uid == "147499142") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "Harris_1"):{if(_uid == "147499142") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
//1065
case (_marker == "undeadlegend_1"):{if(_uid == "95049734") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "undeadlegend_2"):{if(_uid == "95049734") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "undeadlegend_3"):{if(_uid == "95049734") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
//1031
case (_marker == "legit"):{if(_uid == "108645062") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
//1036
case (_marker == "smoothface202"):{if(_uid == "142663686") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "smoothface2021"):{if(_uid == "142663686") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "smoothface2022"):{if(_uid == "142663686") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
//1086
case (_marker == "medic"):{if(_uid == "128718278") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "medic_2"):{if(_uid == "128718278") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "medic_3"):{if(_uid == "128718278") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
//1030
case (_marker == "killsteal"):{if(_uid == "87142726") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
//1063
case (_marker == "bobthebeastyy"):{if(_uid == "73142918") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
//1029
case (_marker == "Jacko2"):{if(_uid == "27320582") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
//1087
case (_marker == "blackburn_compound"):{if(_uid == "128482502") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "Blackburn"):{if(_uid == "128482502") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
//1041
case (_marker == "xEpicnatorx"):{if(_uid == "125885830") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
//1041
case (_marker == "dantheman221"):{if(_uid == "19050310") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
//1033 //BILBO SWAGGINS `NEED UID
case (_marker == "kilroy"):{if(_uid == "19050310") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
//1050
case (_marker == "Fab"):{if(_uid == "6692288") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
//1300 100 compound
case (_marker == "realray"):{if(_uid == "138536198") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
//1301 100 compound
case (_marker == "matthew"):{if(_uid == "724864") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
//1302 100 compound
case (_marker == "donatorcompound"):{if(_uid == "") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
//1303 100 compound
case (_marker == "donatorcompound1"):{if(_uid == "") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
//1304 100 compound
case (_marker == "donatorcompound2"):{if(_uid == "") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
//1305 100 compound / Timothy Halgat need uid
case (_marker == "donatorcompound3"):{if(_uid == "") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
//1306 100 compound
case (_marker == "donatorcompound4"):{if(_uid == "") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
//1307 100 compound
case (_marker == "donatorcompound5"):{if(_uid == "") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
//1067
case (_marker == "Mort_1"):{if(_uid == "140552006") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "Mort_2"):{if(_uid == "140552006") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "Mort_3"):{if(_uid == "140552006") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
//1070
case (_marker == "jgunn"):{if(_uid == "59252934") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
//1028
case (_marker == "jacko1"):{if(_uid == "108089094") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
//1072
case (_marker == "Shakedown"):{if(_uid == "67113798") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
//1300-1330 donatorcompound = 1300 donatorcompound_1 = 1301 donatorcompound_2 = 1302...
case (_marker == "TheManDude"):{if(_uid == "80174662") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "donatorcompound_1"):{if(_uid == "107275014") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "donatorcompound_2"):{if(_uid == "") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "donatorcompound_3"):{if(_uid == "138536198") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "donatorcompound_4"):{if(_uid == "138937222") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "donatorcompound_5"):{if(_uid == "142886854") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "donatorcompound_6"):{if(_uid == "108429638") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "donatorcompound_7"):{if(_uid == "19154694") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "donatorcompound_8"):{if(_uid == "95049734") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "donatorcompound_9"):{if(_uid == "108645062") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "donatorcompound_10"):{if(_uid == "6692288") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "donatorcompound_11"):{if(_uid == "") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "donatorcompound_12"):{if(_uid == "138937222") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "donatorcompound_13"):{if(_uid == "83432966") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "donatorcompound_14"):{if(_uid == "128482502") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "donatorcompound_15"):{if(_uid == "724864") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "donatorcompound_16"):{if(_uid == "80885830") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "donatorcompound_17"):{if(_uid == "106425734") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "donatorcompound_18"):{if(_uid == "11455040") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "donatorcompound_19"):{if(_uid == "14920198") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "donatorcompound_20"):{if(_uid == "128724294") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "donatorcompound_21"):{if(_uid == "108089094") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "donatorcompound_22"):{if(_uid == "142663686") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "donatorcompound_23"):{if(_uid == "125465286") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "donatorcompound_24"):{if(_uid == "134865542") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "donatorcompound_25"):{if(_uid == "128724294") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "donatorcompound_26"):{if(_uid == "9258182") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};



//1400-1452 donorh = 1400 donorh_1 = 1401 donorh_2 = 1402...
case (_marker == "donorh_52"):{if(_uid == "96468870") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "donorh_51"):{if(_uid == "37616582") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "donorh_50"):{if(_uid == "56510150") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "donorh_49"):{if(_uid == "142663686") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "donorh_48"):{if(_uid == "41458502") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "donorh_47"):{if(_uid == "128177030") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "donorh_46"):{if(_uid == "6295616") then {[ _house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "donorh_45"):{if(_uid == "125885830") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "donorh_44"):{if(_uid == "19050310") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "donorh_43"):{if(_uid == "139300038") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "donorh_42"):{if(_uid == "130489414") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "donorh_41"):{if(_uid == "81048134") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "donorh_40"):{if(_uid == "112021254") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "donorh_39"):{if(_uid == "129296006") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "donorh_38"):{if(_uid == "14920198") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "donorh_37"):{if(_uid == "80174662") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "donorh_36"):{if(_uid == "134681926") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "donorh_35"):{if(_uid == "124469318") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "donorh_34"):{if(_uid == "134656326") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "donorh_33"):{if(_uid == "135937542") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "donorh_32"):{if(_uid == "123425606") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "donorh_31"):{if(_uid == "70963334") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "donorh_30"):{if(_uid == "75876294") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "donorh_29"):{if(_uid == "127405510") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "donorh_28"):{if(_uid == "128718278") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "donorh_27"):{if(_uid == "93939078") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "donorh_26"):{if(_uid == "121367750") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "donorh_25"):{if(_uid == "37682694") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "donorh_24"):{if(_uid == "124612486") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "donorh_23"):{if(_uid == "106425734") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "donorh_22"):{if(_uid == "121084998") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "donorh_21"):{if(_uid == "58763078") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "donorh_20"):{if(_uid == "125456966") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "donorh_19"):{if(_uid == "94360006") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "donorh_18"):{if(_uid == "97919174") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "donorh_17"):{if(_uid == "98471494") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "donorh_16"):{if(_uid == "16879558") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "donorh_15"):{if(_uid == "121599942") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "donorh_14"):{if(_uid == "100892614") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "donorh_13"):{if(_uid == "144265734") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "donorh_12"):{if(_uid == "25116806") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "donorh_11"):{if(_uid == "59252934") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "donorh_10"):{if(_uid == "143500230") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "donorh_9"):{if(_uid == "113751750") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "donorh_8"):{if(_uid == "135034374") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "donorh_7"):{if(_uid == "122101382") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "donorh_6"):{if(_uid == "128650438") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "donorh_5"):{if(_uid == "107407558") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "donorh_4"):{if(_uid == "116321862") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "donorh_3"):{if(_uid == "125449478") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "donorh_2"):{if(_uid == "105110342") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "donorh_1"):{if(_uid == "79419270") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "donorh"):{if(_uid == "108429638") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "examplehouse1"):{if(_uid == "10080134") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "examplehouse2"):{if(_uid == "10080134") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "Ole"):{if(_uid == "148970438") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "Olegarage"):{if(_uid == "148970438") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "Pascal"):{if(_uid == "105713030") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "Pascalgarage"):{if(_uid == "105713030") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "David"):{if(_uid == "110854854") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "Davidgarage"):{if(_uid == "110854854") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "Suicide"):{if(_uid == "78967430") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "Suicidegarage"):{if(_uid == "78967430") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "Boazan"):{if(_uid == "87273670") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "Boazangarage"):{if(_uid == "87273670") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "Chivalrous"):{if(_uid == "98204102") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "Chivalrousgarage"):{if(_uid == "98204102") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "VladT"):{if(_uid == "38043846") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "Vladtgarage"):{if(_uid == "38043846") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "Sandman"):{if(_uid == "122181254") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "Sandmangarage"):{if(_uid == "122181254") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "Beunhaas"):{if(_uid == "92820038") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "Beunhaasgarage"):{if(_uid == "92820038") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "Liam"):{if(_uid == "10752192") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "Liamgarage"):{if(_uid == "10752192") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "Chris"):{if(_uid == "70925510") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "Chrisgarage"):{if(_uid == "70925510") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "ItzBam"):{if(_uid == "98271110") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "ItzBamgarage"):{if(_uid == "98271110") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};


//case (_marker == ""):{if(_uid == "") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
default {[_house,_housename] execVM "maphouse.sqf";};
};

