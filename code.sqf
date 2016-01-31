////////////////////////////////////
////			         //
//      Copyright © TCG         //
//www.tcgaming.enjin.com       //
////////////////////////////////

_cell  = ((_this select 3) select 0);
_uid = getPlayerUID vehicle player;
_civ = player;	


if ((iscop) and (player distance armoryd <= 2)) then
{
policehq animate ["armoryD",1];
policehq say "dooropen";
sleep 8;
policehq animate ["armoryD",0];
policehq say "doorclose";
};



if ((_civ == civ39) and (player distance esud <= 4)) then
{
esud setPos [(getPos esud select 0),(getPos esud select 1),-5];
sleep 7;
esud setPos [(getPos esud select 0),(getPos esud select 1),0];
};

if ((_civ == civ40) and (player distance esud <= 4)) then
{
esud setPos [(getPos esud select 0),(getPos esud select 1),-5];
sleep 7;
esud setPos [(getPos esud select 0),(getPos esud select 1),0];
};


if ((player distance jail2 <= 4) and (_cell == 1)) then
{
	if (!(call INV_isArmed)) exitwith
	{
	player groupchat "You need a gun to bust them out of jail!";
	};
player groupchat format["Opening Cell %1", _cell];
cell1 setPos [(getPos cell1 select 0),(getPos cell1 select 1),-5];
format['hint "JAIL BREAK IN PROGRESS!!!";'] call broadcast;
sleep 15;
cell1 setPos [(getPos cell1 select 0),(getPos cell1 select 1),0];
};


if ((player distance jail2 <= 4) and (_cell == 2)) then
{
	if (!(call INV_isArmed)) exitwith
	{
	player groupchat "You need a gun to bust them out of jail!";
	};
player groupchat format["Opening Cell %1", _cell];
cell2 setPos [(getPos cell2 select 0),(getPos cell2 select 1),-5];
format['hint "JAIL BREAK IN PROGRESS!!!";'] call broadcast;
sleep 15;
cell2 setPos [(getPos cell2 select 0),(getPos cell2 select 1),0];
};

if ((player distance prisonfence2 <= 4) and (_cell == 3)) then
{
prisonf1 setPos [(getPos prisonf1 select 0),(getPos prisonf1 select 1),-5];
prisonf2 setPos [(getPos prisonf2 select 0),(getPos prisonf2 select 1),-5];
player groupchat "Opening Fence";
sleep 15;
prisonf1 setPos [(getPos prisonf1 select 0),(getPos prisonf1 select 1),0];
prisonf2 setPos [(getPos prisonf2 select 0),(getPos prisonf2 select 1),0];
};

if ((_civ == cop11) and (player distance swatd1 <= 4)) then
{
swatd1 setPos [(getPos swatd1 select 0),(getPos swatd1 select 1),-5];
sleep 7;
swatd1 setPos [(getPos swatd1 select 0),(getPos swatd1 select 1),0];
};

if ((_civ == cop12) and (player distance swatd1 <= 4)) then
{
swatd1 setPos [(getPos swatd1 select 0),(getPos swatd1 select 1),-5];
sleep 7;
swatd1 setPos [(getPos swatd1 select 0),(getPos swatd1 select 1),0];
};

if ((_civ == cop13) and (player distance swatd1 <= 4)) then
{
swatd1 setPos [(getPos swatd1 select 0),(getPos swatd1 select 1),-5];
sleep 7;
swatd1 setPos [(getPos swatd1 select 0),(getPos swatd1 select 1),0];
};

if ((_civ == cop10) and (player distance swatd1 <= 4)) then
{
swatd1 setPos [(getPos swatd1 select 0),(getPos swatd1 select 1),-5];
sleep 7;
swatd1 setPos [(getPos swatd1 select 0),(getPos swatd1 select 1),0];
};

if ((_civ == cop1) and (player distance swatd1 <= 4)) then
{
swatd1 setPos [(getPos swatd1 select 0),(getPos swatd1 select 1),-5];
sleep 7;
swatd1 setPos [(getPos swatd1 select 0),(getPos swatd1 select 1),0];
};

if ((_civ == civ40 or _civ == civ39) and (player distance impounddoor <= 4)) then
{
impounddoor setPos [(getPos impounddoor select 0),(getPos impounddoor select 1),-5];
player groupchat "Closing Gate in 15 seconds";
sleep 15;
impounddoor setPos [(getPos impounddoor select 0),(getPos impounddoor select 1),0];
};
