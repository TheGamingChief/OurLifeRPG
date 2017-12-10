if (!createDialog "UI_ListMenuSmall") exitWith { hint "Dialog Error!" };

if (str (player getVariable ["OL_CallerInfo", []]) == "[]") exitWith {
  lbAdd [1500, "Call Player"];
  buttonSetAction [1600, "[] call OL_ui_PhoneMenu;"];
};

if (player getVariable ["OL_inCall", false]) exitWith {
  lbAdd [1500, "End Call"];
  buttonSetAction [1600, "[] call OL_phone_EndCall; closeDialog 0;"];
  lbSetCurSel [1500, 0];
};

lbAdd [1500, "Answer Call"];
lbAdd [1500, "Reject Call"];

buttonSetAction [1600, "[lbText [1500, lbCurSel 1500]] call OL_phone_CallActions;"];
