private ["_percent"];
_percent = _this select 1;
((uiNamespace getVariable "RL_Dialog_loading") displayCtrl 1112) ctrlSetText (_this select 0);
((uiNamespace getVariable "RL_Dialog_loading") displayCtrl 1111) ctrlSetText format["ol_textures\misc\progressbar\progressbar%1.paa",_percent];
((uiNamespace getVariable "RL_Dialog_loading") displayCtrl 1113) ctrlSetText format["%1%2",_percent,"%"];
