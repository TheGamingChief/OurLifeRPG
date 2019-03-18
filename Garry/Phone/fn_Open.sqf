if (_this select 0 == "MAIN") then {
  if (!createDialog "UI_Phone") exitWith { hint "Dialog Error! (UI_Phone)" };
} else {
  if (OL_InCall) exitWith {
    if (!createDialog "UI_PhoneActiveCaller") exitWith { hint "Dialog Error! (UI_PhoneActiveCaller)" };
    _display = (findDisplay 123456) displayCtrl 1100;
    _display ctrlSetStructuredText parseText format ["<t align='center' color='#FFFFFF'>%1 - %2</t><br/><t align='center' color='#FFFFFF'>%3", OL_CurrentCaller select 0, OL_CurrentCaller select 1, OL_CurrentCallTime];
  };
  if (OL_RecivingCall) exitWith {
    if (!createDialog "UI_PhoneActiveCaller") exitWith { hint "Dialog Error! (UI_PhoneActiveCaller)" };
    _display = (findDisplay 123456) displayCtrl 1100;
    _display ctrlSetStructuredText parseText format ["<t align='center' color='#FFFFFF'>%1 - %2</t><br/> <t align='center' color='#FFFFFF'>Calling... </t>", OL_CurrentCaller select 0, OL_CurrentCaller select 1];
  };

  if (!createDialog "UI_PhoneKeypad") exitWith { hint "Dialog Error! (UI_PhoneKeypad)" };

  ctrlSetText [1000, ""];
  ctrlSetText [1200, "OL_Textures\Garry\Phone\Phone_Keypad.paa"];
  ctrlEnable [1615, false];
  ctrlEnable [1616, false];
};
