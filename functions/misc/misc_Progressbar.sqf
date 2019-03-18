((uiNamespace getVariable "UI_Progressbar") displayCtrl 1100) ctrlSetText format ["%1 (%2%3)", _this select 0, _this select 1, "%"];
((uiNamespace getVariable "UI_Progressbar") displayCtrl 1200) progressSetPosition ((_this select 1) / 100);
