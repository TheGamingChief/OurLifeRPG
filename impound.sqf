_vcl = _this select 0;
_art = _this select 1;

if(_art == "impound")then

{

if ((count crew _vcl) > 0) exitWith {player groupChat "The vehicle is not empty!"};
if(_vcl distance impoundarea2 < 30)exitwith{player groupchat "the vehicle is already impounded!"};
if(_vcl iskindof "air")exitwith{player groupchat "you cannot impound this vehicle!"};
if(_vcl distance impoundarea1 < 35)exitwith{player groupchat "You cannot impound here!"};
_incarpark = false;

{if ((player distance (_x select 0)) < (_x select 1)) then {_incarpark = true};} forEach INV_VehicleGaragen;

if(_incarpark)exitwith{player groupchat "this vehicle is in a carpark. you cannot impound it!"};

_vcl setpos [(getPos impoundarea1 select 0)-(random 20)+(random 20), (getPos impoundarea1 select 1)-(random 20)+(random 20), getPos impoundarea1 select 2];
_geld = 2500;
['geld', _geld] call INV_AddInvItem;
player groupChat "You have been paid $2500 for cleaning up the streets";
player groupChat localize "STRS_inventar_impound_success";

format['hint format[localize "STRS_inventar_impound_gesehen", %1, %2]', player, _vcl] call broadcast;

_vcl setdamage 0;
_vcl engineOn false;
_vcl setvehiclelock "locked";

};

if(_art == "buy")then

{

_geld = "geld" call INV_getitemamount;

if(_geld < impoundpay)exitwith{player groupchat "you do not have enough money"};

if(iscop and count (nearestobjects [getpos ccarspawn,["Ship","car","motorcycle","truck"], 3]) > 0)exitwith{player groupchat "there is a vehicle blocking the spawn!"};

["geld", -impoundpay] call INV_AddInvItem;

_vcl = call compile format["%1", _vcl];

if(isciv)then

	{

	_vcl setpos getpos impoundarea2;
	_vcl setdir getdir impoundarea2;

	};

if(iscop and player distance ccarspawn < 100) then

	{

	_vcl setpos getpos ccarspawn;
	_vcl setdir getdir ccarspawn;

	};

if(iscop and player distance ccarspawn1 < 100) then

	{

	_vcl setpos getpos ccarspawn1;
	_vcl setdir getdir ccarspawn1;

	};

if(iscop and player distance ccarspawn2 < 100) then

	{

	_vcl setpos getpos ccarspawn2;
	_vcl setdir getdir ccarspawn2;
	
	};

player groupchat format["You payed the $%1 fine and retrieved your vehicle!", impoundpay];

};





