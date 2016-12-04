]_selection = ((_this select 3) select 0);

if (_selection == "open") exitwith {dar_ilpd animate ["CellDoorA",1]; dar_ilpd say "dooropen"};
if (_selection == "close") exitwith {dar_ilpd animate ["CellDoorA",0]; dar_ilpd say "dooropen"};