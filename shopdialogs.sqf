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
_whitelist = ((INV_ItemShops select INV_ActiveShopNumber) select 7);

//--------------------------------------BUY-----------------------------------------
_CopOnlyShops = [copuntrained,copbasic1,copbasic2,copbasic4,copbasic6,copbasicfto,coppo1,coppo2,coppo3,copcpl,copsgt,ftobox,ftoboxs,ftoboxc,cidbox,copdeputy,copsheriff,copsheriffdnr,copsheriffmks,coplt,copcpt,copchief,copmedalbox,copair2,copswat1,copswat2,copswat3,copswat4,copswat5,copswate,copswatd,copswatvehicle,copcoastguard,copcoastguardair,copairweapon2,copVIPBox,copVIPBox2,copk92,copsgtdeputy];
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
_copfto = [ftobox,ftoboxs,ftoboxc];
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
_undercoverbox = [OL_Shop_Undercover];
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

if (!(getPlayerUID player in (call compile _whitelist))) exitWith {
	player groupChat "You are not whitelisted for this shop!";
	closeDialog 0;
};

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
