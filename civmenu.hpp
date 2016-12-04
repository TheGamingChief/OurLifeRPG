class civmenu

{

idd = -1;
movingEnable = true;
controlsBackground[] = {DLG_BACK1, background};
objects[] = { };
controls[] = {button_disarm, button_drugs, arrest_text, arrest_slider, button_arrest, button_restrain, ticket_eingabe, button_ticket, warning_eingabe, button_arrestMax, button_warningcheck, cancel, button_heal, button_inventarsearch, dummybutton};

class DLG_BACK1: RscBackground                   {x = 0.40; y = 0.25;w = 0.22; h = 0.73;};
class background : RscBgRahmen                   {x = 0.40; y = 0.25;w = 0.22; h = 0.73;text = $STRD_description_civmenu_header;};
class button_disarm : RscButton          {idc = 1;x = 0.41; y = 0.28;w = 0.20; h = 0.04;text = $STRD_description_civmenu_disarm;   action = "[2] execVM ""civmenuinit.sqf""; closedialog 0";};
class button_drugs : RscButton           {idc = 2;x = 0.41; y = 0.33;w = 0.20; h = 0.04;text = $STRD_description_civmenu_drugs;    action = "[1] execVM ""civmenuinit.sqf""; closedialog 0";};
class arrest_text : RscText              {idc = 4;x = 0.41; y = 0.38;w = 0.20; h = 0.04;style = ST_CENTER;text = $STRD_description_civmenu_arrest;};
class arrest_slider : RscSliderH         {idc = 3;x = 0.41; y = 0.43;w = 0.20; h = 0.03;};
class button_arrest : RscButton          {idc = 5;x = 0.41; y = 0.48;w = 0.20; h = 0.04;text = $STRD_description_civmenu_arrest;   action = "[3, sliderPosition 3] execVM ""civmenuinit.sqf""; closedialog 0";};
class button_restrain : RscButton        {idc = 6;x = 0.41; y = 0.53;w = 0.20; h = 0.04;text = "Restrain/Release";                 action = "[] execVM ""Restrain.sqf""; closedialog 0";};
class ticket_eingabe : RscEdit          {idc = 11;x = 0.41; y = 0.58;w = 0.20; h = 0.03;text = "1000";};
class button_ticket : RscButton                  {x = 0.41; y = 0.63;w = 0.20; h = 0.04;text = $STRD_description_civmenu_ticket;   action = "[4, ctrlText 11] execVM ""civmenuinit.sqf""; closedialog 0";};
class warning_eingabe : RscEdit          {idc = 69;x = 0.41; y = 0.68;w = 0.20; h = 0.03;text = "Speeding";};
class button_arrestMax : RscButton                  {x = 0.41; y = 0.73;w = 0.20; h = 0.04;text = "Arrest (Max) WIP";   action = "closedialog 0";};
class cancel : RscButton                         {x = 0.41; y = 0.93;w = 0.20; h = 0.04;text = $STRD_description_cancel;           action = "closedialog 0";};
class button_heal : RscButton           {idc = 13;x = 0.41; y = 0.83;w = 0.20; h = 0.04;text = $STRD_description_civmenu_heal;     action = "[5] execVM ""civmenuinit.sqf""; closedialog 0";};
class button_warningcheck : RscButton           {idc = 52;x = 0.41; y = 0.78;w = 0.20; h = 0.04;text = "Check Warning";     action = "[8] execVM ""civmenuinit.sqf""; closedialog 0";};
class button_inventarsearch : RscButton {idc = 14;x = 0.41; y = 0.88;w = 0.20; h = 0.04;text = $STRD_description_civmenu_inventar; action = "[6] execVM ""civmenuinit.sqf""; closedialog 0";};
class dummybutton : RscDummy            {idc = 1006;};

};


class civinteraktion

{

idd = -1;movingEnable = true;
controlsBackground[] = {DLG_BACK1, background};
objects[] = { };
controls[] = {button_steal, cancel, button_inventarsearch, dummybutton, button_Ziptie};

class DLG_BACK1: RscBackground                  {x = 0.40; y = 0.25;w = 0.22; h = 0.58;};
class background : RscBgRahmen                  {x = 0.40;  y = 0.25;w = 0.22; h = 0.58;text = $STRD_description_civmenu_header;};
class button_steal : RscButton         {idc = 1; x = 0.41; y = 0.28;w = 0.20; h = 0.04; text = $STRD_description_civmenu_steal;   action = "[20] execVM ""civmenuinit.sqf""; closedialog 0";};
class button_inventarsearch : RscButton{idc = 14;x = 0.41; y = 0.33;w = 0.20; h = 0.04; text = $STRD_description_civmenu_inventar;action = "[6] execVM ""civmenuinit.sqf""; closedialog 0";};
class button_Ziptie : RscButton{idc = 14;x = 0.41; y = 0.38;w = 0.20; h = 0.04; text = $STRD_description_civmenu_ZipTie;action = "execVM ""ziptie.sqf""; closedialog 0";};
class cancel : RscButton                        {x = 0.41; y = 0.78;w = 0.20; h = 0.04; text = $STRD_description_cancel;          action = "closedialog 0";};
class dummybutton : RscDummy           {idc = 1006;};

};