closedialog 0;
if (!(createDialog "itemkaufdialog")) exitWith {hint "Dialog Error!"};

if (isNil "INV_ShopDialoge") then {INV_ShopDialoge = 0} else {INV_ShopDialoge = INV_ShopDialoge + 1};

private["_exitvar", "_item", "_preis", "_preisOhneTax", "_zerostockcount", "_name", "_index", "_infos","_stock","_maxstock","_sellnumber","_demand","_itemsellarray"];

_this   = _this select 3;
INV_ActiveShopNumber    = (_this select 0);

if (isNil "INV_ActiveShopNumber") then {
	INV_ActiveShopNumber = 0
};

INV_ActiveSellShopArray = [];
INV_ActiveBuyShopArray  = [];
_shop		= ((INV_ItemShops select INV_ActiveShopNumber) select 0);
_itembuyarray   = ((INV_ItemShops select INV_ActiveShopNumber) select 4);
_itemsellarray  = ((INV_ItemShops select INV_ActiveShopNumber) select 5);

//--------------------------------------BUY-----------------------------------------
_CopOnlyShops = [copuntrained,copbasic1,copbasic2,copbasic4,copbasic6,coppo1,coppo2,coppo3,copcpl,copsgt,ftobox,cidbox,copdeputy,copsheriff,copsheriffdnr,copsheriffmks,coplt,copcpt,copchief,copmedalbox,copair2,copswat1,copswat2,copswat3,copswat4,copswat5,copswate,copswatd,copswatvehicle,copcoastguard,copcoastguardair,copairweapon2,copVIPBox,copVIPBox2,copk92,corsbox,corcbox,copsgtdeputy];
_ESUOnlyShops = [tdoc,tdoc2,tdoc3,tdoc4,tdoc5,tdoc6,tdocsub,tdoc2sub,tdoc3sub,tdoc4sub,tdoc5sub,tdoc6sub,tdoc7,tdoc7sub,tdoc8];
_EMT1 = [tdoc3,tdoc3sub];
_EMT2 = [tdoc7,tdoc7sub];
_EMT3 = [tdoc,tdoc6sub];
_EMT_FD = [tdoc4,tdoc4sub,tdoc8];
_EMT_Air = [tdoc5,tdoc5sub];
_EMT_Command = [tdoc6,tdocsub];
_vipCop = [copVIPBox,copVIPBox2,copVIPBox3,copswatd];
_donor1 = [dshop1];
_donor2 = [dshop2];
_donor3 = [dshop3];
_donor4 = [dshop4];
_donor5 = [dshop5];
_donor6 = [dshop6];
_PO1 = [coppo1];
_PO2 = [coppo2];
_PO3 = [coppo3];
_Cpl = [copcpl];
_Sgt = [copsgt];
_copfto = [ftobox];
_Deputy = [copdeputy,copsheriffdnr,copsheriffmks];
_SgtDeputy = [copsgtdeputy];
_Sheriff = [copsheriff];
_Lt = [coplt];
_Cpt = [copcpt];
_Chief = [copchief];
_Medal = [copmedalbox];
_K9 = [copk9,copk9p,copk9c];
_PDAviation = [copav1,copav2,copav3,copair2];
_SWAT = [copswat1,copswat2,copswat3,copswat4,copswat5,copswatvehicle];
_CID = [cidbox];
_CoastGuard = [copcoastguard,copcoastguardair];
_undercoverbox = [specbox];
_terrorVIP = [terrorvip,vipterrorair];
_weaponx = [txwshop];
_itemx = [txeshop];
_carx = [carx];
_helix = [helix];
_boatx = [boatx];
_CommandPMC = [pmcbox1];
_PMC = [pmcbox,pmcbox2];
_Tow = [tow_box,towcarshop,towcarshop_1,towcarshop_2];

if (_shop in _CopOnlyShops) then
{
	_PlayerTeam = str(playerSide);
	if (!isCop) exitWith {player groupchat "Only Cops may use this shop!"; closedialog 0};
};
if (_shop in _ESUOnlyShops) then
{
	_PlayerTeam = str(playerSide);
	if (_PlayerTeam != "GUER") exitWith {player groupchat "Only EMS may use this shop!"; closedialog 0};
};

if(_shop in _Tow and !((getPlayerUID player) in Tow_id)) exitwith {player groupchat "You are not a Flyer's Auto Repair & Towing employee!"; closedialog 0};

if(_shop in _undercoverbox and !((getPlayerUID player) in Undercover_id)) exitwith {player groupchat "You are not an Undercover Officer!"; closedialog 0};

if(_shop in _donor1 and !((getPlayerUID player) in Donate_id)) exitwith {player groupchat "You're not a Tier 1 Donator!"; closedialog 0};
if(_shop in _donor2 and !((getPlayerUID player) in Donate_id2)) exitwith {player groupchat "You're not a Tier 2 Donator!"; closedialog 0};
if(_shop in _donor3 and !((getPlayerUID player) in Donate_id3)) exitwith {player groupchat "You're not a Tier 3 Donator!"; closedialog 0};
if(_shop in _donor4 and !((getPlayerUID player) in Donate_id4)) exitwith {player groupchat "You're not a Tier 4 Donator!"; closedialog 0};
if(_shop in _donor5 and !((getPlayerUID player) in Donate_id5)) exitwith {player groupchat "You're not a Tier 5 Donator!"; closedialog 0};
if(_shop in _donor6 and !((getPlayerUID player) in Donate_id6)) exitwith {player groupchat "You're not a Tier 6 Donator!"; closedialog 0};

if(_shop in _weaponx and !((getPlayerUID player) in OL_TierX_ID)) exitwith {player groupchat "You're not a Tier X Donator!"; closedialog 0};
if(_shop in _carx and !((getPlayerUID player) in OL_TierX_ID)) exitwith {player groupchat "You're not a Tier X Donator!"; closedialog 0};
if(_shop in _itemx and !((getPlayerUID player) in OL_TierX_ID)) exitwith {player groupchat "You're not a Tier X Donator!"; closedialog 0};
if(_shop in _helix and !((getPlayerUID player) in OL_TierX_ID)) exitwith {player groupchat "You're not a Tier X Donator!"; closedialog 0};
if(_shop in _boatx and !((getPlayerUID player) in OL_TierX_ID)) exitwith {player groupchat "You're not a Tier X Donator!"; closedialog 0};

if(_shop in _PO1 and !((getPlayerUID player) in PO1_id)) exitwith {player groupchat "You're not a Rookie Patrol Officer!"; closedialog 0};
if(_shop in _PO2 and !((getPlayerUID player) in PO2_id)) exitwith {player groupchat "You're not a Patrol Officer!"; closedialog 0};
if(_shop in _PO3 and !((getPlayerUID player) in PO3_id)) exitwith {player groupchat "You're not a Senior Patrol Officer!"; closedialog 0};
if(_shop in _Cpl and !((getPlayerUID player) in Cpl_id)) exitwith {player groupchat "You're not a Patrol Corporal!"; closedialog 0};
if(_shop in _Sgt and !((getPlayerUID player) in Sgt_id)) exitwith {player groupchat "You're not a Patrol Sergeant!"; closedialog 0};
if(_shop in _copfto and !((getPlayerUID player) in FTO_id)) exitwith {player groupchat "You're not a F.T.O!"; closedialog 0};
if(_shop in _Deputy and !((getPlayerUID player) in Deputy_id)) exitwith {player groupchat "You're not a Sheriff's Deputy!"; closedialog 0};
if(_shop in _SgtDeputy and !((getPlayerUID player) in SgtDeputy_id)) exitwith {player groupchat "You're not a Sheriff's Sgt Deputy!"; closedialog 0};
if(_shop in _Sheriff and !((getPlayerUID player) in Sheriff_id)) exitwith {player groupchat "You're not the Sheriff Command!"; closedialog 0};
if(_shop in _Lt and !((getPlayerUID player) in Lt_id)) exitwith {player groupchat "You're not a Patrol Lieutenant!"; closedialog 0};
if(_shop in _Cpt and !((getPlayerUID player) in Cpt_id)) exitwith {player groupchat "You're not a Patrol Captain!"; closedialog 0};
if(_shop in _Chief and !((getPlayerUID player) in Chief_id)) exitwith {player groupchat "You're not the Chief of Police!"; closedialog 0};
if(_shop in _Medal and !((getPlayerUID player) in Chief_id)) exitwith {player groupchat "You're not the Medal winner!"; closedialog 0};
if(_shop in _K9 and !((getPlayerUID player) in K9_id)) exitwith {player groupchat "You're not a K-9 Officer!"; closedialog 0};
if(_shop in _PDAviation and !((getPlayerUID player) in PDAviation_id)) exitwith {player groupchat "You're not a Police Pilot!"; closedialog 0};
if(_shop in _CID and !((getPlayerUID player) in Undercover_id)) exitwith {player groupchat "You're not a C.I.D Officer!"; closedialog 0};
if(_shop in _SWAT and !((getPlayerUID player) in SWAT_id)) exitwith {player groupchat "You're not a S.W.A.T. Officer!"; closedialog 0};
if(_shop in _CoastGuard and !((getPlayerUID player) in CoastGuard_id)) exitwith {player groupchat "You're not Coast Guard Personnel!"; closedialog 0};
if(_shop in _vipCop and !((getPlayerUID player) in Donate_id)) exitwith {player groupchat "You're not a donator!"; closedialog 0};

if(_shop in _EMT1 and !((getPlayerUID player) in EMT1_id)) exitwith {player groupchat "You're not an EMT 1"; closedialog 0};
if(_shop in _EMT2 and !((getPlayerUID player) in EMT2_id)) exitwith {player groupchat "You're not an EMT 2"; closedialog 0};
if(_shop in _EMT3 and !((getPlayerUID player) in EMT3_id)) exitwith {player groupchat "You're not a FireFighter 1"; closedialog 0};
if(_shop in _EMT_FD and !((getPlayerUID player) in FD_id)) exitwith {player groupchat "You're not a FireFighter 2"; closedialog 0};
if(_shop in _EMT_Air and !((getPlayerUID player) in AirESU_id)) exitwith {player groupchat "You're not an EMT Air"; closedialog 0};
if(_shop in _EMT_Command and !((getPlayerUID player) in ESUCommand_id)) exitwith {player groupchat "You're not in EMS Command"; closedialog 0};

if(_shop in _PMC and !((getPlayerUID player) in PMC_id)) exitwith {player groupchat "You are not PMC!"; closedialog 0};
if(_shop in _CommandPMC and !((getPlayerUID player) in CommandPMC_id)) exitwith {player groupchat "You are not PMC Command!"; closedialog 0};

for [{_i=0}, {_i < (count _itembuyarray)}, {_i=_i+1}] do

{

_item         = _itembuyarray select _i;
_infos        = _item call INV_getitemArray;
_stock        = [_item, INV_ActiveShopNumber] call INV_getstock;
_preisOhneTax = _infos call INV_getitemBuyCost;
_preis        = _infos call INV_getitemSteuer;
_name         = (_infos call INV_getitemName);

if(_stock != -1) then

	{

	_maxstock     = [_item, INV_ActiveShopNumber] call INV_getmaxstock;
	_demand       = _preis*0.25*(_stock-(_maxstock*0.5))/(0.5*_maxstock);
	_preis        = round((_preisOhneTax*(_preis/_preisOhneTax)) - _demand);

	};

if(_infos call INV_getitemType == "item")then

	{

	if (_item call INV_getitemIsIllegal) then

		{

		_preis        	= _infos call INV_getitemSteuer;
		_control = _shop getvariable "control";
		if (isNil "_control") exitWith {};
		if(_control == (call INV_mygang) and _infos call INV_getitemKindOf == "drug")then{_preis = 0};

		};

	};

if (_stock != -1) then

	{

	if (_infos call INV_getitemType == "item") then

		{

		_index = lbAdd [1, format ["%1 ($%2, %3kg, Stock: %4)", _name, (_preis), (_infos call INV_getitemTypeKg), _stock] ];

		}
		else
		{

		_index = lbAdd [1, format ["%1 ($%2, Stock: %3)", _name, (_preis call OL_ISSE_str_IntToStr), _stock] ];

		};

	}
	else
	{

	if (_infos call INV_getitemType == "item") then

		{

		_index = lbAdd [1, format ["%1 ($%2, %3kg)", _name, (_preis), (_infos call INV_getitemTypeKg)] ];

		}
		else
		{

		_index = lbAdd [1, format ["%1 ($%2)", _name, (_preis call OL_ISSE_str_IntToStr)] ];

		};

	};

lbSetData [1, _index, format ["%1", _item] ];
INV_ActiveBuyShopArray = INV_ActiveBuyShopArray + [ [_item, _preisOhneTax, _preis, _i] ];

};

//--------------------------------------SELL-----------------------------------------

for [{_i=0}, {_i < (count _itemsellarray)}, {_i=_i+1}] do

{

_item         = _itemsellarray select _i;
_infos        = _item call INV_getitemArray;
_stock        = [_item, INV_ActiveShopNumber] call INV_getstock;
_preisOhneTax = (_infos call INV_getitemBuyCost)*0.5;
_preis        = (_infos call INV_getitemSteuer)*0.5;
_name         = (_infos call INV_getitemName);
_sellnumber   = _i;

if(_stock != -1) then

	{

	_maxstock     = [_item, INV_ActiveShopNumber] call INV_getmaxstock;
	_demand       = _preis*0.5*(_stock-(_maxstock*0.5))/(0.5*_maxstock);
	_preis        = round((_preisOhneTax*(_preis/_preisOhneTax)) - _demand);

	};

if(_infos call INV_getitemType == "item")then{if (_item call INV_getitemIsIllegal)then{_preis = (_infos call INV_getitemSellCost)};};

if (((INV_ItemShops select INV_ActiveShopNumber) select 0) == OilSell1)then
{
	switch (_item) do
	{
	case "oil";
	case "OilBarrel": {_demand = ((tankencost - 100)/200);_preis = round((_preisOhneTax*(_preis/_preisOhneTax))*_demand);if(_preis < oilbaseprice)then{_preis = oilbaseprice};};
	};


};

if ((_infos call INV_getitemType) == "Waffe") then

	{

	if (player hasweapon (_infos call INV_getitemClassName)) then

		{

		INV_ActiveSellShopArray = INV_ActiveSellShopArray + [ [_item, _preisOhneTax, _preis, _sellnumber] ];
		_index = lbAdd [101, format["%1 ($%2)", _name, _preis] ];
		lbSetData [101, _index, _item];

		};

	};

if ((_infos call INV_getitemType) == "Magazin") then

	{

	if ((_infos call INV_getitemClassName) in (magazines player)) then

		{

		INV_ActiveSellShopArray = INV_ActiveSellShopArray + [ [_item, _preisOhneTax, _preis, _sellnumber] ];
		_mags      = {_x == (_infos call INV_getitemClassName)} count magazines player;
		_menge = _mags;
		_index = lbAdd [101, format["%1 ($%2 %3x)", _name, (_preis call OL_ISSE_str_IntToStr), (_menge call OL_ISSE_str_IntToStr)] ];
		lbSetData [101, _index, _item];

		};

	};

if ((_infos call INV_getitemType) == "Item") then

	{

	if ( ((_item call INV_GetItemAmount) > 0) and (_item call INV_getitemDropable) ) then

		{

		INV_ActiveSellShopArray = INV_ActiveSellShopArray + [ [_item, _preisOhneTax, _preis, _sellnumber] ];
		index = lbAdd [101, format["%1 ($%2, %5kg, %4x)", _name, (_preis call OL_ISSE_str_IntToStr), 0, (_item call INV_GetItemAmount), (_infos call INV_getitemTypeKg)] ];
		lbSetData [101, _index, (format ["%1", _item])];

		};

	};

if ((_infos call INV_getitemType) == "Fahrzeug") then

	{

	for [{_j=0}, {_j < (count INV_VehicleArray)}, {_j=_j+1}] do

		{

		if (!(isNull(INV_VehicleArray select _j))) then

			{

			_vehicle = (INV_VehicleArray select _j);

			if ((typeOf _vehicle) == _item) then

				{

				INV_ActiveSellShopArray = INV_ActiveSellShopArray + [ [_item, _preisOhneTax, _preis, _sellnumber] ];
				_index = lbAdd [101, format["%1 ($%2, %3)", _vehicle, (_preis call OL_ISSE_str_IntToStr), _name] ];
				lbSetData [101, _index, format["%1", _vehicle] ];

				};

			};

		};

	};

};

//---------------------------------SETDATA----------------------------------------

buttonSetAction [3,  "[""itemkauf"",    lbCurSel 1,   ctrlText 2,   lbData [101, (lbCurSel 1)  ], INV_ActiveBuyShopArray select (lbCurSel 1)]    execVM ""shoptransactions.sqf"";"];

buttonSetAction [103, "[""itemverkauf"", lbCurSel 101, ctrlText 102, lbData [101, (lbCurSel 101)], INV_ActiveSellShopArray select (lbCurSel 101)] execVM ""shoptransactions.sqf"";"];

ctrlSetText [101,format [localize "STRS_inv_shopdialog_itemshop", ('geld' call INV_GetItemAmount)]];

//--------------------------------REFRESH-----------------------------------------

while {ctrlVisible 1015} do {
	_cursel = (lbCurSel 1);
	if (_cursel >= 0) then {
		_item = (INV_ActiveBuyShopArray select (lbCurSel 1)) select 0;
		_preis = (INV_ActiveBuyShopArray select (lbCurSel 1)) select 2;
		_infos = _item call INV_getitemArray;
		_slider = ctrlText 2;
		if (!(_slider call OL_ISSE_str_isInteger)) then {_slider = "0";};
		_slider = _slider call OL_ISSE_StrToInt;
		if (_slider < 0) then {_slider = 0;};
		_moneyanzeige = (_slider*_preis);
		if (_moneyanzeige > 5000000) then {_moneyanzeige = " > 5000000";};
		if (_infos call INV_getitemType == "item") then {
			ctrlSetText [3, format ["Buy ($%1, %2kg)", _moneyanzeige, (_slider*(_infos call INV_getitemTypeKg))]];
		} else {
			ctrlSetText [3, format ["Buy ($%1)", _moneyanzeige]];
		};
	} else {
		ctrlSetText [3,  "/"];
	};

	_cursel = (lbCurSel 101);
	if (_cursel >= 0) then {
		_item = (INV_ActiveSellShopArray select (lbCurSel 101)) select 0;
		_preis = (INV_ActiveSellShopArray select (lbCurSel 101)) select 2;
		_infos = _item call INV_getitemArray;
		_slider = ctrlText 102;
		if (!(_slider call OL_ISSE_str_isInteger)) then {_slider = "0";};
		_slider = _slider call OL_ISSE_StrToInt;
		if (_slider < 0) then {_slider = 0;};
		_moneyanzeige = ((_slider*_preis) call OL_ISSE_str_IntToStr);
		if (_infos call INV_getitemType == "item") then {
			ctrlSetText [103, format ["Sell ($%1, %2kg)", _moneyanzeige, (_slider*(_infos call INV_getitemTypeKg))]];
		} else {
			ctrlSetText [103, format ["Sell ($%1)", _moneyanzeige]];
		};
	} else {
		ctrlSetText [103,  "/"];
	};

	CtrlSettext [100,  format[localize "STRS_inv_shopdialog_money", ('money' call INV_GetItemAmount)]];
	sleep 0.1;
	if (INV_ShopDialoge > 1) exitWith {};
};

INV_ShopDialoge = INV_ShopDialoge - 1;
